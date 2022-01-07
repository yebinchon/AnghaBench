; ModuleID = '/home/carl/AnghaBench/kphp-kdb/text/extr_text-data.c_do_delete_message.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/text/extr_text-data.c_do_delete_message.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lev_del_message = type { i32 }

@verbosity = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"do_delete_message(%d,%d):\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"adjust_message returned %d\0A\00", align 1
@write_all_events = common dso_local global i64 0, align 8
@LEV_TX_DEL_MESSAGE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @do_delete_message(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.lev_del_message*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* @verbosity, align 4
  %9 = icmp sgt i32 %8, 1
  br i1 %9, label %10, label %15

10:                                               ; preds = %2
  %11 = load i32, i32* @stderr, align 4
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* %5, align 4
  %14 = call i32 (i32, i8*, i32, ...) @fprintf(i32 %11, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %12, i32 %13)
  br label %15

15:                                               ; preds = %10, %2
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* %5, align 4
  %18 = call i32 @adjust_message(i32 %16, i32 %17, i32 -1, i32 -1, i32 0)
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* @verbosity, align 4
  %20 = icmp sgt i32 %19, 1
  br i1 %20, label %21, label %25

21:                                               ; preds = %15
  %22 = load i32, i32* @stderr, align 4
  %23 = load i32, i32* %6, align 4
  %24 = call i32 (i32, i8*, i32, ...) @fprintf(i32 %22, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %23)
  br label %25

25:                                               ; preds = %21, %15
  %26 = load i32, i32* %6, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %25
  %29 = load i32, i32* %6, align 4
  store i32 %29, i32* %3, align 4
  br label %47

30:                                               ; preds = %25
  %31 = load i32, i32* %6, align 4
  %32 = and i32 %31, 1
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %30
  %35 = load i64, i64* @write_all_events, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %44

37:                                               ; preds = %34, %30
  %38 = load i32, i32* @LEV_TX_DEL_MESSAGE, align 4
  %39 = load i32, i32* %4, align 4
  %40 = call %struct.lev_del_message* @alloc_log_event(i32 %38, i32 4, i32 %39)
  store %struct.lev_del_message* %40, %struct.lev_del_message** %7, align 8
  %41 = load i32, i32* %5, align 4
  %42 = load %struct.lev_del_message*, %struct.lev_del_message** %7, align 8
  %43 = getelementptr inbounds %struct.lev_del_message, %struct.lev_del_message* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 4
  br label %44

44:                                               ; preds = %37, %34
  %45 = load i32, i32* %6, align 4
  %46 = and i32 %45, 1
  store i32 %46, i32* %3, align 4
  br label %47

47:                                               ; preds = %44, %28
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

declare dso_local i32 @fprintf(i32, i8*, i32, ...) #1

declare dso_local i32 @adjust_message(i32, i32, i32, i32, i32) #1

declare dso_local %struct.lev_del_message* @alloc_log_event(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
