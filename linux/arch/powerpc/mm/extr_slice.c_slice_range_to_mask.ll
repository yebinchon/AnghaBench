; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/mm/extr_slice.c_slice_range_to_mask.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/mm/extr_slice.c_slice_range_to_mask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.slice_mask = type { i32, i32 }

@SLICE_NUM_HIGH = common dso_local global i64 0, align 8
@SLICE_LOW_TOP = common dso_local global i32 0, align 4
@SLICE_HIGH_SHIFT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i64, %struct.slice_mask*)* @slice_range_to_mask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @slice_range_to_mask(i64 %0, i64 %1, %struct.slice_mask* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.slice_mask*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  store %struct.slice_mask* %2, %struct.slice_mask** %6, align 8
  %12 = load i64, i64* %4, align 8
  %13 = load i64, i64* %5, align 8
  %14 = add i64 %12, %13
  %15 = sub i64 %14, 1
  store i64 %15, i64* %7, align 8
  %16 = load %struct.slice_mask*, %struct.slice_mask** %6, align 8
  %17 = getelementptr inbounds %struct.slice_mask, %struct.slice_mask* %16, i32 0, i32 0
  store i32 0, i32* %17, align 4
  %18 = load i64, i64* @SLICE_NUM_HIGH, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %3
  %21 = load %struct.slice_mask*, %struct.slice_mask** %6, align 8
  %22 = getelementptr inbounds %struct.slice_mask, %struct.slice_mask* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load i64, i64* @SLICE_NUM_HIGH, align 8
  %25 = call i32 @bitmap_zero(i32 %23, i64 %24)
  br label %26

26:                                               ; preds = %20, %3
  %27 = load i64, i64* %4, align 8
  %28 = call i64 @slice_addr_is_low(i64 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %46

30:                                               ; preds = %26
  %31 = load i64, i64* %7, align 8
  %32 = load i32, i32* @SLICE_LOW_TOP, align 4
  %33 = sub nsw i32 %32, 1
  %34 = sext i32 %33 to i64
  %35 = call i64 @min(i64 %31, i64 %34)
  store i64 %35, i64* %8, align 8
  %36 = load i64, i64* %8, align 8
  %37 = call i32 @GET_LOW_SLICE_INDEX(i64 %36)
  %38 = add i32 %37, 1
  %39 = shl i32 1, %38
  %40 = load i64, i64* %4, align 8
  %41 = call i32 @GET_LOW_SLICE_INDEX(i64 %40)
  %42 = shl i32 1, %41
  %43 = sub i32 %39, %42
  %44 = load %struct.slice_mask*, %struct.slice_mask** %6, align 8
  %45 = getelementptr inbounds %struct.slice_mask, %struct.slice_mask* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 4
  br label %46

46:                                               ; preds = %30, %26
  %47 = load i64, i64* @SLICE_NUM_HIGH, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %70

49:                                               ; preds = %46
  %50 = load i64, i64* %7, align 8
  %51 = call i64 @slice_addr_is_low(i64 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %70, label %53

53:                                               ; preds = %49
  %54 = load i64, i64* %4, align 8
  %55 = call i64 @GET_HIGH_SLICE_INDEX(i64 %54)
  store i64 %55, i64* %9, align 8
  %56 = load i64, i64* %7, align 8
  %57 = load i64, i64* @SLICE_HIGH_SHIFT, align 8
  %58 = shl i64 1, %57
  %59 = call i64 @ALIGN(i64 %56, i64 %58)
  store i64 %59, i64* %10, align 8
  %60 = load i64, i64* %10, align 8
  %61 = call i64 @GET_HIGH_SLICE_INDEX(i64 %60)
  %62 = load i64, i64* %9, align 8
  %63 = sub i64 %61, %62
  store i64 %63, i64* %11, align 8
  %64 = load %struct.slice_mask*, %struct.slice_mask** %6, align 8
  %65 = getelementptr inbounds %struct.slice_mask, %struct.slice_mask* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load i64, i64* %9, align 8
  %68 = load i64, i64* %11, align 8
  %69 = call i32 @bitmap_set(i32 %66, i64 %67, i64 %68)
  br label %70

70:                                               ; preds = %53, %49, %46
  ret void
}

declare dso_local i32 @bitmap_zero(i32, i64) #1

declare dso_local i64 @slice_addr_is_low(i64) #1

declare dso_local i64 @min(i64, i64) #1

declare dso_local i32 @GET_LOW_SLICE_INDEX(i64) #1

declare dso_local i64 @GET_HIGH_SLICE_INDEX(i64) #1

declare dso_local i64 @ALIGN(i64, i64) #1

declare dso_local i32 @bitmap_set(i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
