; ModuleID = '/home/carl/AnghaBench/linux/drivers/android/extr_binder_alloc_selftest.c_binder_selftest_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/android/extr_binder_alloc_selftest.c_binder_selftest_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.binder_alloc = type { i32 }

@BUFFER_NUM = common dso_local global i32 0, align 4
@binder_selftest_run = common dso_local global i32 0, align 4
@binder_selftest_lock = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"STARTED\0A\00", align 1
@binder_selftest_failures = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [17 x i8] c"%d tests FAILED\0A\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"PASSED\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @binder_selftest_alloc(%struct.binder_alloc* %0) #0 {
  %2 = alloca %struct.binder_alloc*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.binder_alloc* %0, %struct.binder_alloc** %2, align 8
  %6 = load i32, i32* @BUFFER_NUM, align 4
  %7 = zext i32 %6 to i64
  %8 = call i8* @llvm.stacksave()
  store i8* %8, i8** %3, align 8
  %9 = alloca i64, i64 %7, align 16
  store i64 %7, i64* %4, align 8
  %10 = load i32, i32* @binder_selftest_run, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  store i32 1, i32* %5, align 4
  br label %37

13:                                               ; preds = %1
  %14 = call i32 @mutex_lock(i32* @binder_selftest_lock)
  %15 = load i32, i32* @binder_selftest_run, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %13
  %18 = load %struct.binder_alloc*, %struct.binder_alloc** %2, align 8
  %19 = getelementptr inbounds %struct.binder_alloc, %struct.binder_alloc* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %17, %13
  br label %35

23:                                               ; preds = %17
  %24 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %25 = load %struct.binder_alloc*, %struct.binder_alloc** %2, align 8
  %26 = call i32 @binder_selftest_alloc_offset(%struct.binder_alloc* %25, i64* %9, i32 0)
  store i32 0, i32* @binder_selftest_run, align 4
  %27 = load i64, i64* @binder_selftest_failures, align 8
  %28 = icmp sgt i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %23
  %30 = load i64, i64* @binder_selftest_failures, align 8
  %31 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i64 %30)
  br label %34

32:                                               ; preds = %23
  %33 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  br label %34

34:                                               ; preds = %32, %29
  br label %35

35:                                               ; preds = %34, %22
  %36 = call i32 @mutex_unlock(i32* @binder_selftest_lock)
  store i32 0, i32* %5, align 4
  br label %37

37:                                               ; preds = %35, %12
  %38 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %38)
  %39 = load i32, i32* %5, align 4
  switch i32 %39, label %41 [
    i32 0, label %40
    i32 1, label %40
  ]

40:                                               ; preds = %37, %37
  ret void

41:                                               ; preds = %37
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @mutex_lock(i32*) #2

declare dso_local i32 @pr_info(i8*, ...) #2

declare dso_local i32 @binder_selftest_alloc_offset(%struct.binder_alloc*, i64*, i32) #2

declare dso_local i32 @mutex_unlock(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
