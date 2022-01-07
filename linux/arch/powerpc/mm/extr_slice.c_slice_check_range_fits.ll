; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/mm/extr_slice.c_slice_check_range_fits.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/mm/extr_slice.c_slice_check_range_fits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mm_struct = type { i32 }
%struct.slice_mask = type { i32, i32 }

@SLICE_LOW_TOP = common dso_local global i32 0, align 4
@SLICE_NUM_HIGH = common dso_local global i64 0, align 8
@SLICE_HIGH_SHIFT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mm_struct*, %struct.slice_mask*, i64, i64)* @slice_check_range_fits to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @slice_check_range_fits(%struct.mm_struct* %0, %struct.slice_mask* %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mm_struct*, align 8
  %7 = alloca %struct.slice_mask*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  store %struct.mm_struct* %0, %struct.mm_struct** %6, align 8
  store %struct.slice_mask* %1, %struct.slice_mask** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %17 = load i64, i64* %8, align 8
  %18 = load i64, i64* %9, align 8
  %19 = add i64 %17, %18
  %20 = sub i64 %19, 1
  store i64 %20, i64* %10, align 8
  store i32 0, i32* %11, align 4
  %21 = load i64, i64* %8, align 8
  %22 = call i64 @slice_addr_is_low(i64 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %38

24:                                               ; preds = %4
  %25 = load i64, i64* %10, align 8
  %26 = load i32, i32* @SLICE_LOW_TOP, align 4
  %27 = sub nsw i32 %26, 1
  %28 = sext i32 %27 to i64
  %29 = call i64 @min(i64 %25, i64 %28)
  store i64 %29, i64* %12, align 8
  %30 = load i64, i64* %12, align 8
  %31 = call i32 @GET_LOW_SLICE_INDEX(i64 %30)
  %32 = add i32 %31, 1
  %33 = shl i32 1, %32
  %34 = load i64, i64* %8, align 8
  %35 = call i32 @GET_LOW_SLICE_INDEX(i64 %34)
  %36 = shl i32 1, %35
  %37 = sub i32 %33, %36
  store i32 %37, i32* %11, align 4
  br label %38

38:                                               ; preds = %24, %4
  %39 = load i32, i32* %11, align 4
  %40 = load %struct.slice_mask*, %struct.slice_mask** %7, align 8
  %41 = getelementptr inbounds %struct.slice_mask, %struct.slice_mask* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = and i32 %39, %42
  %44 = load i32, i32* %11, align 4
  %45 = icmp ne i32 %43, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %38
  store i32 0, i32* %5, align 4
  br label %86

47:                                               ; preds = %38
  %48 = load i64, i64* @SLICE_NUM_HIGH, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %85

50:                                               ; preds = %47
  %51 = load i64, i64* %10, align 8
  %52 = call i64 @slice_addr_is_low(i64 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %85, label %54

54:                                               ; preds = %50
  %55 = load i64, i64* %8, align 8
  %56 = call i64 @GET_HIGH_SLICE_INDEX(i64 %55)
  store i64 %56, i64* %13, align 8
  %57 = load i64, i64* %10, align 8
  %58 = load i64, i64* @SLICE_HIGH_SHIFT, align 8
  %59 = shl i64 1, %58
  %60 = call i64 @ALIGN(i64 %57, i64 %59)
  store i64 %60, i64* %14, align 8
  %61 = load i64, i64* %14, align 8
  %62 = call i64 @GET_HIGH_SLICE_INDEX(i64 %61)
  %63 = load i64, i64* %13, align 8
  %64 = sub i64 %62, %63
  store i64 %64, i64* %15, align 8
  %65 = load i64, i64* %13, align 8
  store i64 %65, i64* %16, align 8
  br label %66

66:                                               ; preds = %81, %54
  %67 = load i64, i64* %16, align 8
  %68 = load i64, i64* %13, align 8
  %69 = load i64, i64* %15, align 8
  %70 = add i64 %68, %69
  %71 = icmp ult i64 %67, %70
  br i1 %71, label %72, label %84

72:                                               ; preds = %66
  %73 = load i64, i64* %16, align 8
  %74 = load %struct.slice_mask*, %struct.slice_mask** %7, align 8
  %75 = getelementptr inbounds %struct.slice_mask, %struct.slice_mask* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @test_bit(i64 %73, i32 %76)
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %80, label %79

79:                                               ; preds = %72
  store i32 0, i32* %5, align 4
  br label %86

80:                                               ; preds = %72
  br label %81

81:                                               ; preds = %80
  %82 = load i64, i64* %16, align 8
  %83 = add i64 %82, 1
  store i64 %83, i64* %16, align 8
  br label %66

84:                                               ; preds = %66
  br label %85

85:                                               ; preds = %84, %50, %47
  store i32 1, i32* %5, align 4
  br label %86

86:                                               ; preds = %85, %79, %46
  %87 = load i32, i32* %5, align 4
  ret i32 %87
}

declare dso_local i64 @slice_addr_is_low(i64) #1

declare dso_local i64 @min(i64, i64) #1

declare dso_local i32 @GET_LOW_SLICE_INDEX(i64) #1

declare dso_local i64 @GET_HIGH_SLICE_INDEX(i64) #1

declare dso_local i64 @ALIGN(i64, i64) #1

declare dso_local i32 @test_bit(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
