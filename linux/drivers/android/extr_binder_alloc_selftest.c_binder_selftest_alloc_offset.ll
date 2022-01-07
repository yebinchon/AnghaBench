; ModuleID = '/home/carl/AnghaBench/linux/drivers/android/extr_binder_alloc_selftest.c_binder_selftest_alloc_offset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/android/extr_binder_alloc_selftest.c_binder_selftest_alloc_offset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.binder_alloc = type { i32 }

@BUFFER_NUM = common dso_local global i32 0, align 4
@BUFFER_MIN_SIZE = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@SAME_PAGE_UNALIGNED = common dso_local global i32 0, align 4
@LOOP_END = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.binder_alloc*, i64*, i32)* @binder_selftest_alloc_offset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @binder_selftest_alloc_offset(%struct.binder_alloc* %0, i64* %1, i32 %2) #0 {
  %4 = alloca %struct.binder_alloc*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.binder_alloc* %0, %struct.binder_alloc** %4, align 8
  store i64* %1, i64** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = load i32, i32* @BUFFER_NUM, align 4
  %12 = icmp eq i32 %10, %11
  br i1 %12, label %13, label %17

13:                                               ; preds = %3
  %14 = load %struct.binder_alloc*, %struct.binder_alloc** %4, align 8
  %15 = load i64*, i64** %5, align 8
  %16 = call i32 @binder_selftest_alloc_size(%struct.binder_alloc* %14, i64* %15)
  br label %69

17:                                               ; preds = %3
  %18 = load i32, i32* %6, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %17
  br label %28

21:                                               ; preds = %17
  %22 = load i64*, i64** %5, align 8
  %23 = load i32, i32* %6, align 4
  %24 = sub nsw i32 %23, 1
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i64, i64* %22, i64 %25
  %27 = load i64, i64* %26, align 8
  br label %28

28:                                               ; preds = %21, %20
  %29 = phi i64 [ 0, %20 ], [ %27, %21 ]
  store i64 %29, i64* %9, align 8
  %30 = load i64, i64* %9, align 8
  store i64 %30, i64* %8, align 8
  %31 = load i32, i32* @BUFFER_MIN_SIZE, align 4
  %32 = load i32, i32* @BUFFER_NUM, align 4
  %33 = mul nsw i32 %31, %32
  %34 = load i32, i32* @PAGE_SIZE, align 4
  %35 = icmp sge i32 %33, %34
  %36 = zext i1 %35 to i32
  %37 = call i32 @BUILD_BUG_ON(i32 %36)
  %38 = load i32, i32* @SAME_PAGE_UNALIGNED, align 4
  store i32 %38, i32* %7, align 4
  br label %39

39:                                               ; preds = %66, %28
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* @LOOP_END, align 4
  %42 = icmp slt i32 %40, %41
  br i1 %42, label %43, label %69

43:                                               ; preds = %39
  %44 = load i32, i32* %7, align 4
  %45 = srem i32 %44, 2
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %43
  %48 = load i64, i64* %8, align 8
  %49 = load i32, i32* @PAGE_SIZE, align 4
  %50 = call i64 @ALIGN(i64 %48, i32 %49)
  store i64 %50, i64* %8, align 8
  br label %56

51:                                               ; preds = %43
  %52 = load i32, i32* @BUFFER_MIN_SIZE, align 4
  %53 = sext i32 %52 to i64
  %54 = load i64, i64* %8, align 8
  %55 = add i64 %54, %53
  store i64 %55, i64* %8, align 8
  br label %56

56:                                               ; preds = %51, %47
  %57 = load i64, i64* %8, align 8
  %58 = load i64*, i64** %5, align 8
  %59 = load i32, i32* %6, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i64, i64* %58, i64 %60
  store i64 %57, i64* %61, align 8
  %62 = load %struct.binder_alloc*, %struct.binder_alloc** %4, align 8
  %63 = load i64*, i64** %5, align 8
  %64 = load i32, i32* %6, align 4
  %65 = add nsw i32 %64, 1
  call void @binder_selftest_alloc_offset(%struct.binder_alloc* %62, i64* %63, i32 %65)
  br label %66

66:                                               ; preds = %56
  %67 = load i32, i32* %7, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %7, align 4
  br label %39

69:                                               ; preds = %13, %39
  ret void
}

declare dso_local i32 @binder_selftest_alloc_size(%struct.binder_alloc*, i64*) #1

declare dso_local i32 @BUILD_BUG_ON(i32) #1

declare dso_local i64 @ALIGN(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
