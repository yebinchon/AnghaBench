; ModuleID = '/home/carl/AnghaBench/linux/drivers/android/extr_binder_alloc_selftest.c_binder_selftest_free_seq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/android/extr_binder_alloc_selftest.c_binder_selftest_free_seq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.binder_alloc = type { i32 }

@BUFFER_NUM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.binder_alloc*, i64*, i32*, i32, i64)* @binder_selftest_free_seq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @binder_selftest_free_seq(%struct.binder_alloc* %0, i64* %1, i32* %2, i32 %3, i64 %4) #0 {
  %6 = alloca %struct.binder_alloc*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.binder_alloc* %0, %struct.binder_alloc** %6, align 8
  store i64* %1, i64** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  store i64 %4, i64* %10, align 8
  %12 = load i32, i32* %9, align 4
  %13 = load i32, i32* @BUFFER_NUM, align 4
  %14 = icmp eq i32 %12, %13
  br i1 %14, label %15, label %21

15:                                               ; preds = %5
  %16 = load %struct.binder_alloc*, %struct.binder_alloc** %6, align 8
  %17 = load i64*, i64** %7, align 8
  %18 = load i32*, i32** %8, align 8
  %19 = load i64, i64* %10, align 8
  %20 = call i32 @binder_selftest_alloc_free(%struct.binder_alloc* %16, i64* %17, i32* %18, i64 %19)
  br label %48

21:                                               ; preds = %5
  store i32 0, i32* %11, align 4
  br label %22

22:                                               ; preds = %45, %21
  %23 = load i32, i32* %11, align 4
  %24 = load i32, i32* @BUFFER_NUM, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %48

26:                                               ; preds = %22
  %27 = load i32*, i32** %8, align 8
  %28 = load i32, i32* %9, align 4
  %29 = load i32, i32* %11, align 4
  %30 = call i64 @is_dup(i32* %27, i32 %28, i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %26
  br label %45

33:                                               ; preds = %26
  %34 = load i32, i32* %11, align 4
  %35 = load i32*, i32** %8, align 8
  %36 = load i32, i32* %9, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  store i32 %34, i32* %38, align 4
  %39 = load %struct.binder_alloc*, %struct.binder_alloc** %6, align 8
  %40 = load i64*, i64** %7, align 8
  %41 = load i32*, i32** %8, align 8
  %42 = load i32, i32* %9, align 4
  %43 = add nsw i32 %42, 1
  %44 = load i64, i64* %10, align 8
  call void @binder_selftest_free_seq(%struct.binder_alloc* %39, i64* %40, i32* %41, i32 %43, i64 %44)
  br label %45

45:                                               ; preds = %33, %32
  %46 = load i32, i32* %11, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %11, align 4
  br label %22

48:                                               ; preds = %15, %22
  ret void
}

declare dso_local i32 @binder_selftest_alloc_free(%struct.binder_alloc*, i64*, i32*, i64) #1

declare dso_local i64 @is_dup(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
