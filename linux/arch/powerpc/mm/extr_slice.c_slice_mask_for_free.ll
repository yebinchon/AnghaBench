; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/mm/extr_slice.c_slice_mask_for_free.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/mm/extr_slice.c_slice_mask_for_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mm_struct = type { i32 }
%struct.slice_mask = type { i32, i32 }

@SLICE_NUM_HIGH = common dso_local global i64 0, align 8
@SLICE_NUM_LOW = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mm_struct*, %struct.slice_mask*, i64)* @slice_mask_for_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @slice_mask_for_free(%struct.mm_struct* %0, %struct.slice_mask* %1, i64 %2) #0 {
  %4 = alloca %struct.mm_struct*, align 8
  %5 = alloca %struct.slice_mask*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.mm_struct* %0, %struct.mm_struct** %4, align 8
  store %struct.slice_mask* %1, %struct.slice_mask** %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = load %struct.slice_mask*, %struct.slice_mask** %5, align 8
  %9 = getelementptr inbounds %struct.slice_mask, %struct.slice_mask* %8, i32 0, i32 0
  store i32 0, i32* %9, align 4
  %10 = load i64, i64* @SLICE_NUM_HIGH, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %18

12:                                               ; preds = %3
  %13 = load %struct.slice_mask*, %struct.slice_mask** %5, align 8
  %14 = getelementptr inbounds %struct.slice_mask, %struct.slice_mask* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load i64, i64* @SLICE_NUM_HIGH, align 8
  %17 = call i32 @bitmap_zero(i32 %15, i64 %16)
  br label %18

18:                                               ; preds = %12, %3
  store i64 0, i64* %7, align 8
  br label %19

19:                                               ; preds = %37, %18
  %20 = load i64, i64* %7, align 8
  %21 = load i64, i64* @SLICE_NUM_LOW, align 8
  %22 = icmp ult i64 %20, %21
  br i1 %22, label %23, label %40

23:                                               ; preds = %19
  %24 = load %struct.mm_struct*, %struct.mm_struct** %4, align 8
  %25 = load i64, i64* %7, align 8
  %26 = call i32 @slice_low_has_vma(%struct.mm_struct* %24, i64 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %36, label %28

28:                                               ; preds = %23
  %29 = load i64, i64* %7, align 8
  %30 = trunc i64 %29 to i32
  %31 = shl i32 1, %30
  %32 = load %struct.slice_mask*, %struct.slice_mask** %5, align 8
  %33 = getelementptr inbounds %struct.slice_mask, %struct.slice_mask* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = or i32 %34, %31
  store i32 %35, i32* %33, align 4
  br label %36

36:                                               ; preds = %28, %23
  br label %37

37:                                               ; preds = %36
  %38 = load i64, i64* %7, align 8
  %39 = add i64 %38, 1
  store i64 %39, i64* %7, align 8
  br label %19

40:                                               ; preds = %19
  %41 = load i64, i64* %6, align 8
  %42 = sub i64 %41, 1
  %43 = call i64 @slice_addr_is_low(i64 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %40
  br label %67

46:                                               ; preds = %40
  store i64 0, i64* %7, align 8
  br label %47

47:                                               ; preds = %64, %46
  %48 = load i64, i64* %7, align 8
  %49 = load i64, i64* %6, align 8
  %50 = call i64 @GET_HIGH_SLICE_INDEX(i64 %49)
  %51 = icmp ult i64 %48, %50
  br i1 %51, label %52, label %67

52:                                               ; preds = %47
  %53 = load %struct.mm_struct*, %struct.mm_struct** %4, align 8
  %54 = load i64, i64* %7, align 8
  %55 = call i32 @slice_high_has_vma(%struct.mm_struct* %53, i64 %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %63, label %57

57:                                               ; preds = %52
  %58 = load i64, i64* %7, align 8
  %59 = load %struct.slice_mask*, %struct.slice_mask** %5, align 8
  %60 = getelementptr inbounds %struct.slice_mask, %struct.slice_mask* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @__set_bit(i64 %58, i32 %61)
  br label %63

63:                                               ; preds = %57, %52
  br label %64

64:                                               ; preds = %63
  %65 = load i64, i64* %7, align 8
  %66 = add i64 %65, 1
  store i64 %66, i64* %7, align 8
  br label %47

67:                                               ; preds = %45, %47
  ret void
}

declare dso_local i32 @bitmap_zero(i32, i64) #1

declare dso_local i32 @slice_low_has_vma(%struct.mm_struct*, i64) #1

declare dso_local i64 @slice_addr_is_low(i64) #1

declare dso_local i64 @GET_HIGH_SLICE_INDEX(i64) #1

declare dso_local i32 @slice_high_has_vma(%struct.mm_struct*, i64) #1

declare dso_local i32 @__set_bit(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
