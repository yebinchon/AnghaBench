; ModuleID = '/home/carl/AnghaBench/linux/arch/csky/kernel/extr_dumpstack.c_show_trace.c'
source_filename = "/home/carl/AnghaBench/linux/arch/csky/kernel/extr_dumpstack.c_show_trace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@THREAD_MASK = common dso_local global i64 0, align 8
@THREAD_SIZE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [13 x i8] c"\0ACall Trace:\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"\0A[<%08lx>] %pS\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @show_trace(i64* %0) #0 {
  %2 = alloca i64*, align 8
  %3 = alloca i64*, align 8
  %4 = alloca i64*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64, align 8
  store i64* %0, i64** %2, align 8
  %7 = load i64*, i64** %2, align 8
  %8 = ptrtoint i64* %7 to i64
  %9 = load i64, i64* @THREAD_MASK, align 8
  %10 = and i64 %8, %9
  store i64 %10, i64* %6, align 8
  %11 = load i64, i64* %6, align 8
  %12 = inttoptr i64 %11 to i64*
  store i64* %12, i64** %4, align 8
  %13 = load i64, i64* %6, align 8
  %14 = load i64, i64* @THREAD_SIZE, align 8
  %15 = add i64 %13, %14
  %16 = inttoptr i64 %15 to i64*
  store i64* %16, i64** %3, align 8
  %17 = load i64*, i64** %2, align 8
  store i64* %17, i64** %5, align 8
  %18 = call i32 @pr_info(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  br label %19

19:                                               ; preds = %41, %1
  %20 = load i64*, i64** %5, align 8
  %21 = load i64*, i64** %4, align 8
  %22 = icmp ugt i64* %20, %21
  br i1 %22, label %23, label %27

23:                                               ; preds = %19
  %24 = load i64*, i64** %5, align 8
  %25 = load i64*, i64** %3, align 8
  %26 = icmp ult i64* %24, %25
  br label %27

27:                                               ; preds = %23, %19
  %28 = phi i1 [ false, %19 ], [ %26, %23 ]
  br i1 %28, label %29, label %42

29:                                               ; preds = %27
  %30 = load i64*, i64** %5, align 8
  %31 = getelementptr inbounds i64, i64* %30, i32 1
  store i64* %31, i64** %5, align 8
  %32 = load i64, i64* %30, align 8
  store i64 %32, i64* %6, align 8
  %33 = load i64, i64* %6, align 8
  %34 = call i64 @__kernel_text_address(i64 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %29
  %37 = load i64, i64* %6, align 8
  %38 = load i64, i64* %6, align 8
  %39 = inttoptr i64 %38 to i8*
  %40 = call i32 (i8*, ...) @pr_cont(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i64 %37, i8* %39)
  br label %41

41:                                               ; preds = %36, %29
  br label %19

42:                                               ; preds = %27
  %43 = call i32 (i8*, ...) @pr_cont(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  ret void
}

declare dso_local i32 @pr_info(i8*) #1

declare dso_local i64 @__kernel_text_address(i64) #1

declare dso_local i32 @pr_cont(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
