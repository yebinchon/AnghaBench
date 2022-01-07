; ModuleID = '/home/carl/AnghaBench/git/extr_transport-helper.c_udt_copy_task_routine.c'
source_filename = "/home/carl/AnghaBench/git/extr_transport-helper.c_udt_copy_task_routine.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.unidirectional_transfer = type { i64 }

@SSTATE_FINISHED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @udt_copy_task_routine to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @udt_copy_task_routine(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.unidirectional_transfer*, align 8
  store i8* %0, i8** %3, align 8
  %5 = load i8*, i8** %3, align 8
  %6 = bitcast i8* %5 to %struct.unidirectional_transfer*
  store %struct.unidirectional_transfer* %6, %struct.unidirectional_transfer** %4, align 8
  br label %7

7:                                                ; preds = %46, %1
  %8 = load %struct.unidirectional_transfer*, %struct.unidirectional_transfer** %4, align 8
  %9 = getelementptr inbounds %struct.unidirectional_transfer, %struct.unidirectional_transfer* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @SSTATE_FINISHED, align 8
  %12 = icmp ne i64 %10, %11
  br i1 %12, label %13, label %47

13:                                               ; preds = %7
  %14 = load %struct.unidirectional_transfer*, %struct.unidirectional_transfer** %4, align 8
  %15 = getelementptr inbounds %struct.unidirectional_transfer, %struct.unidirectional_transfer* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = call i64 @STATE_NEEDS_READING(i64 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %13
  %20 = load %struct.unidirectional_transfer*, %struct.unidirectional_transfer** %4, align 8
  %21 = call i64 @udt_do_read(%struct.unidirectional_transfer* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %19
  store i8* null, i8** %2, align 8
  br label %49

24:                                               ; preds = %19
  br label %25

25:                                               ; preds = %24, %13
  %26 = load %struct.unidirectional_transfer*, %struct.unidirectional_transfer** %4, align 8
  %27 = getelementptr inbounds %struct.unidirectional_transfer, %struct.unidirectional_transfer* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = call i64 @STATE_NEEDS_WRITING(i64 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %25
  %32 = load %struct.unidirectional_transfer*, %struct.unidirectional_transfer** %4, align 8
  %33 = call i64 @udt_do_write(%struct.unidirectional_transfer* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %31
  store i8* null, i8** %2, align 8
  br label %49

36:                                               ; preds = %31
  br label %37

37:                                               ; preds = %36, %25
  %38 = load %struct.unidirectional_transfer*, %struct.unidirectional_transfer** %4, align 8
  %39 = getelementptr inbounds %struct.unidirectional_transfer, %struct.unidirectional_transfer* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = call i64 @STATE_NEEDS_CLOSING(i64 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %37
  %44 = load %struct.unidirectional_transfer*, %struct.unidirectional_transfer** %4, align 8
  %45 = call i32 @udt_close_if_finished(%struct.unidirectional_transfer* %44)
  br label %46

46:                                               ; preds = %43, %37
  br label %7

47:                                               ; preds = %7
  %48 = load i8*, i8** %3, align 8
  store i8* %48, i8** %2, align 8
  br label %49

49:                                               ; preds = %47, %35, %23
  %50 = load i8*, i8** %2, align 8
  ret i8* %50
}

declare dso_local i64 @STATE_NEEDS_READING(i64) #1

declare dso_local i64 @udt_do_read(%struct.unidirectional_transfer*) #1

declare dso_local i64 @STATE_NEEDS_WRITING(i64) #1

declare dso_local i64 @udt_do_write(%struct.unidirectional_transfer*) #1

declare dso_local i64 @STATE_NEEDS_CLOSING(i64) #1

declare dso_local i32 @udt_close_if_finished(%struct.unidirectional_transfer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
