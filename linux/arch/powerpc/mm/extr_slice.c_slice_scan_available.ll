; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/mm/extr_slice.c_slice_scan_available.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/mm/extr_slice.c_slice_scan_available.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.slice_mask = type { i32, i32 }

@SLICE_LOW_SHIFT = common dso_local global i64 0, align 8
@SLICE_HIGH_SHIFT = common dso_local global i64 0, align 8
@SLICE_LOW_TOP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, %struct.slice_mask*, i32, i64*)* @slice_scan_available to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @slice_scan_available(i64 %0, %struct.slice_mask* %1, i32 %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.slice_mask*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64*, align 8
  %10 = alloca i64, align 8
  store i64 %0, i64* %6, align 8
  store %struct.slice_mask* %1, %struct.slice_mask** %7, align 8
  store i32 %2, i32* %8, align 4
  store i64* %3, i64** %9, align 8
  %11 = load i64, i64* %6, align 8
  %12 = call i64 @slice_addr_is_low(i64 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %35

14:                                               ; preds = %4
  %15 = load i64, i64* %6, align 8
  %16 = call i64 @GET_LOW_SLICE_INDEX(i64 %15)
  store i64 %16, i64* %10, align 8
  %17 = load i64, i64* %10, align 8
  %18 = load i32, i32* %8, align 4
  %19 = sext i32 %18 to i64
  %20 = add i64 %17, %19
  %21 = load i64, i64* @SLICE_LOW_SHIFT, align 8
  %22 = shl i64 %20, %21
  %23 = load i64*, i64** %9, align 8
  store i64 %22, i64* %23, align 8
  %24 = load %struct.slice_mask*, %struct.slice_mask** %7, align 8
  %25 = getelementptr inbounds %struct.slice_mask, %struct.slice_mask* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i64, i64* %10, align 8
  %28 = trunc i64 %27 to i32
  %29 = shl i32 1, %28
  %30 = and i32 %26, %29
  %31 = icmp ne i32 %30, 0
  %32 = xor i1 %31, true
  %33 = xor i1 %32, true
  %34 = zext i1 %33 to i32
  store i32 %34, i32* %5, align 4
  br label %64

35:                                               ; preds = %4
  %36 = load i64, i64* %6, align 8
  %37 = call i64 @GET_HIGH_SLICE_INDEX(i64 %36)
  store i64 %37, i64* %10, align 8
  %38 = load i64, i64* %10, align 8
  %39 = load i32, i32* %8, align 4
  %40 = sext i32 %39 to i64
  %41 = add i64 %38, %40
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %50

43:                                               ; preds = %35
  %44 = load i64, i64* %10, align 8
  %45 = load i32, i32* %8, align 4
  %46 = sext i32 %45 to i64
  %47 = add i64 %44, %46
  %48 = load i64, i64* @SLICE_HIGH_SHIFT, align 8
  %49 = shl i64 %47, %48
  br label %52

50:                                               ; preds = %35
  %51 = load i64, i64* @SLICE_LOW_TOP, align 8
  br label %52

52:                                               ; preds = %50, %43
  %53 = phi i64 [ %49, %43 ], [ %51, %50 ]
  %54 = load i64*, i64** %9, align 8
  store i64 %53, i64* %54, align 8
  %55 = load i64, i64* %10, align 8
  %56 = load %struct.slice_mask*, %struct.slice_mask** %7, align 8
  %57 = getelementptr inbounds %struct.slice_mask, %struct.slice_mask* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @test_bit(i64 %55, i32 %58)
  %60 = icmp ne i32 %59, 0
  %61 = xor i1 %60, true
  %62 = xor i1 %61, true
  %63 = zext i1 %62 to i32
  store i32 %63, i32* %5, align 4
  br label %64

64:                                               ; preds = %52, %14
  %65 = load i32, i32* %5, align 4
  ret i32 %65
}

declare dso_local i64 @slice_addr_is_low(i64) #1

declare dso_local i64 @GET_LOW_SLICE_INDEX(i64) #1

declare dso_local i64 @GET_HIGH_SLICE_INDEX(i64) #1

declare dso_local i32 @test_bit(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
