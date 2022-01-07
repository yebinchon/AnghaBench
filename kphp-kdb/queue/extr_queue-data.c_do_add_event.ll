; ModuleID = '/home/carl/AnghaBench/kphp-kdb/queue/extr_queue-data.c_do_add_event.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/queue/extr_queue-data.c_do_add_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@verbosity = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"Queue name [%s], data %d:[%s] { & %d = %d} ttl = %d\0A\00", align 1
@MAX_QNAME = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @do_add_event(i8* %0, i32 %1, i8* %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i8* %0, i8** %9, align 8
  store i32 %1, i32* %10, align 4
  store i8* %2, i8** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  %16 = load i32, i32* @verbosity, align 4
  %17 = icmp sgt i32 %16, 2
  br i1 %17, label %18, label %27

18:                                               ; preds = %7
  %19 = load i32, i32* @stderr, align 4
  %20 = load i8*, i8** %9, align 8
  %21 = load i32, i32* %12, align 4
  %22 = load i8*, i8** %11, align 8
  %23 = load i32, i32* %13, align 4
  %24 = load i32, i32* %14, align 4
  %25 = load i32, i32* %15, align 4
  %26 = call i32 @fprintf(i32 %19, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i8* %20, i32 %21, i8* %22, i32 %23, i32 %24, i32 %25)
  br label %27

27:                                               ; preds = %18, %7
  %28 = load i32, i32* %10, align 4
  %29 = icmp sle i32 %28, 0
  br i1 %29, label %40, label %30

30:                                               ; preds = %27
  %31 = load i32, i32* %12, align 4
  %32 = icmp sle i32 %31, 0
  br i1 %32, label %40, label %33

33:                                               ; preds = %30
  %34 = load i32, i32* %10, align 4
  %35 = load i32, i32* @MAX_QNAME, align 4
  %36 = icmp sgt i32 %34, %35
  br i1 %36, label %40, label %37

37:                                               ; preds = %33
  %38 = load i32, i32* %12, align 4
  %39 = icmp sgt i32 %38, 32768
  br i1 %39, label %40, label %41

40:                                               ; preds = %37, %33, %30, %27
  store i32 0, i32* %8, align 4
  br label %50

41:                                               ; preds = %37
  %42 = load i8*, i8** %9, align 8
  %43 = call i32 @get_queue(i8* %42, i32 0)
  %44 = load i8*, i8** %11, align 8
  %45 = load i32, i32* %12, align 4
  %46 = load i32, i32* %13, align 4
  %47 = load i32, i32* %14, align 4
  %48 = load i32, i32* %15, align 4
  %49 = call i32 @add_event(i32 %43, i8* %44, i32 %45, i32 %46, i32 %47, i32 %48)
  store i32 %49, i32* %8, align 4
  br label %50

50:                                               ; preds = %41, %40
  %51 = load i32, i32* %8, align 4
  ret i32 %51
}

declare dso_local i32 @fprintf(i32, i8*, i8*, i32, i8*, i32, i32, i32) #1

declare dso_local i32 @add_event(i32, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @get_queue(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
