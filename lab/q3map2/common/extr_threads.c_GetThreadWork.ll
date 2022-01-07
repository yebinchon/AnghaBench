; ModuleID = '/home/carl/AnghaBench/lab/q3map2/common/extr_threads.c_GetThreadWork.c'
source_filename = "/home/carl/AnghaBench/lab/q3map2/common/extr_threads.c_GetThreadWork.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@dispatch = common dso_local global i32 0, align 4
@workcount = common dso_local global i32 0, align 4
@oldf = common dso_local global i32 0, align 4
@pacifier = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [6 x i8] c"%i...\00", align 1
@stdout = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @GetThreadWork() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = call i32 (...) @ThreadLock()
  %5 = load i32, i32* @dispatch, align 4
  %6 = load i32, i32* @workcount, align 4
  %7 = icmp eq i32 %5, %6
  br i1 %7, label %8, label %10

8:                                                ; preds = %0
  %9 = call i32 (...) @ThreadUnlock()
  store i32 -1, i32* %1, align 4
  br label %34

10:                                               ; preds = %0
  %11 = load i32, i32* @dispatch, align 4
  %12 = mul nsw i32 10, %11
  %13 = load i32, i32* @workcount, align 4
  %14 = sdiv i32 %12, %13
  store i32 %14, i32* %3, align 4
  %15 = load i32, i32* %3, align 4
  %16 = load i32, i32* @oldf, align 4
  %17 = icmp ne i32 %15, %16
  br i1 %17, label %18, label %28

18:                                               ; preds = %10
  %19 = load i32, i32* %3, align 4
  store i32 %19, i32* @oldf, align 4
  %20 = load i64, i64* @pacifier, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %18
  %23 = load i32, i32* %3, align 4
  %24 = call i32 @Sys_Printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %23)
  %25 = load i32, i32* @stdout, align 4
  %26 = call i32 @fflush(i32 %25)
  br label %27

27:                                               ; preds = %22, %18
  br label %28

28:                                               ; preds = %27, %10
  %29 = load i32, i32* @dispatch, align 4
  store i32 %29, i32* %2, align 4
  %30 = load i32, i32* @dispatch, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* @dispatch, align 4
  %32 = call i32 (...) @ThreadUnlock()
  %33 = load i32, i32* %2, align 4
  store i32 %33, i32* %1, align 4
  br label %34

34:                                               ; preds = %28, %8
  %35 = load i32, i32* %1, align 4
  ret i32 %35
}

declare dso_local i32 @ThreadLock(...) #1

declare dso_local i32 @ThreadUnlock(...) #1

declare dso_local i32 @Sys_Printf(i8*, i32) #1

declare dso_local i32 @fflush(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
