; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/mm/extr_slice.c_slice_init_new_context_exec.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/mm/extr_slice.c_slice_init_new_context_exec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mm_struct = type { i32 }
%struct.slice_mask = type { i64, i32 }

@mmu_virtual_psize = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"slice_init_new_context_exec(mm=%p)\0A\00", align 1
@SLB_ADDR_LIMIT_DEFAULT = common dso_local global i32 0, align 4
@SLICE_NUM_LOW = common dso_local global i32 0, align 4
@SLICE_NUM_HIGH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @slice_init_new_context_exec(%struct.mm_struct* %0) #0 {
  %2 = alloca %struct.mm_struct*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.slice_mask*, align 8
  %6 = alloca i32, align 4
  store %struct.mm_struct* %0, %struct.mm_struct** %2, align 8
  %7 = load i32, i32* @mmu_virtual_psize, align 4
  store i32 %7, i32* %6, align 4
  %8 = load %struct.mm_struct*, %struct.mm_struct** %2, align 8
  %9 = call i32 @slice_dbg(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), %struct.mm_struct* %8)
  %10 = load %struct.mm_struct*, %struct.mm_struct** %2, align 8
  %11 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %10, i32 0, i32 0
  %12 = load i32, i32* @SLB_ADDR_LIMIT_DEFAULT, align 4
  %13 = call i32 @mm_ctx_set_slb_addr_limit(i32* %11, i32 %12)
  %14 = load %struct.mm_struct*, %struct.mm_struct** %2, align 8
  %15 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %14, i32 0, i32 0
  %16 = load i32, i32* %6, align 4
  %17 = call i32 @mm_ctx_set_user_psize(i32* %15, i32 %16)
  %18 = load %struct.mm_struct*, %struct.mm_struct** %2, align 8
  %19 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %18, i32 0, i32 0
  %20 = call i8* @mm_ctx_low_slices(i32* %19)
  store i8* %20, i8** %4, align 8
  %21 = load i8*, i8** %4, align 8
  %22 = load i32, i32* %6, align 4
  %23 = shl i32 %22, 4
  %24 = load i32, i32* %6, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* @SLICE_NUM_LOW, align 4
  %27 = ashr i32 %26, 1
  %28 = call i32 @memset(i8* %21, i32 %25, i32 %27)
  %29 = load %struct.mm_struct*, %struct.mm_struct** %2, align 8
  %30 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %29, i32 0, i32 0
  %31 = call i8* @mm_ctx_high_slices(i32* %30)
  store i8* %31, i8** %3, align 8
  %32 = load i8*, i8** %3, align 8
  %33 = load i32, i32* %6, align 4
  %34 = shl i32 %33, 4
  %35 = load i32, i32* %6, align 4
  %36 = or i32 %34, %35
  %37 = load i32, i32* @SLICE_NUM_HIGH, align 4
  %38 = ashr i32 %37, 1
  %39 = call i32 @memset(i8* %32, i32 %36, i32 %38)
  %40 = load %struct.mm_struct*, %struct.mm_struct** %2, align 8
  %41 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %40, i32 0, i32 0
  %42 = load i32, i32* %6, align 4
  %43 = call %struct.slice_mask* @slice_mask_for_size(i32* %41, i32 %42)
  store %struct.slice_mask* %43, %struct.slice_mask** %5, align 8
  %44 = load %struct.slice_mask*, %struct.slice_mask** %5, align 8
  %45 = getelementptr inbounds %struct.slice_mask, %struct.slice_mask* %44, i32 0, i32 0
  store i64 -1, i64* %45, align 8
  %46 = load i32, i32* @SLICE_NUM_HIGH, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %1
  %49 = load %struct.slice_mask*, %struct.slice_mask** %5, align 8
  %50 = getelementptr inbounds %struct.slice_mask, %struct.slice_mask* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* @SLICE_NUM_HIGH, align 4
  %53 = call i32 @bitmap_fill(i32 %51, i32 %52)
  br label %54

54:                                               ; preds = %48, %1
  ret void
}

declare dso_local i32 @slice_dbg(i8*, %struct.mm_struct*) #1

declare dso_local i32 @mm_ctx_set_slb_addr_limit(i32*, i32) #1

declare dso_local i32 @mm_ctx_set_user_psize(i32*, i32) #1

declare dso_local i8* @mm_ctx_low_slices(i32*) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i8* @mm_ctx_high_slices(i32*) #1

declare dso_local %struct.slice_mask* @slice_mask_for_size(i32*, i32) #1

declare dso_local i32 @bitmap_fill(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
