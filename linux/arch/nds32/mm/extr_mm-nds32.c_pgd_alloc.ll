; ModuleID = '/home/carl/AnghaBench/linux/arch/nds32/mm/extr_mm-nds32.c_pgd_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/arch/nds32/mm/extr_mm-nds32.c_pgd_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mm_struct = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@PTRS_PER_PGD = common dso_local global i32 0, align 4
@FIRST_KERNEL_PGD_NR = common dso_local global i32 0, align 4
@NR_PAGETABLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @pgd_alloc(%struct.mm_struct* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.mm_struct*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store %struct.mm_struct* %0, %struct.mm_struct** %3, align 8
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call i64 @__get_free_pages(i32 %7, i32 0)
  %9 = inttoptr i64 %8 to i32*
  store i32* %9, i32** %4, align 8
  %10 = load i32*, i32** %4, align 8
  %11 = icmp ne i32* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  store i32* null, i32** %2, align 8
  br label %62

13:                                               ; preds = %1
  store i32 0, i32* %6, align 4
  br label %14

14:                                               ; preds = %22, %13
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* @PTRS_PER_PGD, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %25

18:                                               ; preds = %14
  %19 = load i32*, i32** %4, align 8
  store i32 1, i32* %19, align 4
  %20 = load i32*, i32** %4, align 8
  %21 = getelementptr inbounds i32, i32* %20, i32 1
  store i32* %21, i32** %4, align 8
  br label %22

22:                                               ; preds = %18
  %23 = load i32, i32* %6, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %6, align 4
  br label %14

25:                                               ; preds = %14
  %26 = load i32, i32* @PTRS_PER_PGD, align 4
  %27 = load i32*, i32** %4, align 8
  %28 = sext i32 %26 to i64
  %29 = sub i64 0, %28
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  store i32* %30, i32** %4, align 8
  %31 = call i32* @pgd_offset_k(i32 0)
  store i32* %31, i32** %5, align 8
  %32 = load i32*, i32** %4, align 8
  %33 = load i32, i32* @FIRST_KERNEL_PGD_NR, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  %36 = load i32*, i32** %5, align 8
  %37 = load i32, i32* @FIRST_KERNEL_PGD_NR, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  %40 = load i32, i32* @PTRS_PER_PGD, align 4
  %41 = load i32, i32* @FIRST_KERNEL_PGD_NR, align 4
  %42 = sub nsw i32 %40, %41
  %43 = sext i32 %42 to i64
  %44 = mul i64 %43, 4
  %45 = trunc i64 %44 to i32
  %46 = call i32 @memcpy(i32* %35, i32* %39, i32 %45)
  %47 = load i32*, i32** %4, align 8
  %48 = ptrtoint i32* %47 to i64
  %49 = load i32*, i32** %4, align 8
  %50 = ptrtoint i32* %49 to i64
  %51 = load i32, i32* @PTRS_PER_PGD, align 4
  %52 = sext i32 %51 to i64
  %53 = mul i64 %52, 4
  %54 = add i64 %50, %53
  %55 = call i32 @cpu_dcache_wb_range(i64 %48, i64 %54)
  %56 = load i32*, i32** %4, align 8
  %57 = bitcast i32* %56 to i64*
  %58 = call i32 @virt_to_page(i64* %57)
  %59 = load i32, i32* @NR_PAGETABLE, align 4
  %60 = call i32 @inc_zone_page_state(i32 %58, i32 %59)
  %61 = load i32*, i32** %4, align 8
  store i32* %61, i32** %2, align 8
  br label %62

62:                                               ; preds = %25, %12
  %63 = load i32*, i32** %2, align 8
  ret i32* %63
}

declare dso_local i64 @__get_free_pages(i32, i32) #1

declare dso_local i32* @pgd_offset_k(i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @cpu_dcache_wb_range(i64, i64) #1

declare dso_local i32 @inc_zone_page_state(i32, i32) #1

declare dso_local i32 @virt_to_page(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
