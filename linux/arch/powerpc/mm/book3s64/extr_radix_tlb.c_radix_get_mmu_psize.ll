; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/mm/book3s64/extr_radix_tlb.c_radix_get_mmu_psize.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/mm/book3s64/extr_radix_tlb.c_radix_get_mmu_psize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@mmu_psize_defs = common dso_local global %struct.TYPE_2__* null, align 8
@mmu_virtual_psize = common dso_local global i64 0, align 8
@MMU_PAGE_2M = common dso_local global i64 0, align 8
@MMU_PAGE_1G = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @radix_get_mmu_psize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @radix_get_mmu_psize(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = sext i32 %5 to i64
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** @mmu_psize_defs, align 8
  %8 = load i64, i64* @mmu_virtual_psize, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i64 %8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = shl i64 1, %11
  %13 = icmp eq i64 %6, %12
  br i1 %13, label %14, label %17

14:                                               ; preds = %1
  %15 = load i64, i64* @mmu_virtual_psize, align 8
  %16 = trunc i64 %15 to i32
  store i32 %16, i32* %4, align 4
  br label %46

17:                                               ; preds = %1
  %18 = load i32, i32* %3, align 4
  %19 = sext i32 %18 to i64
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** @mmu_psize_defs, align 8
  %21 = load i64, i64* @MMU_PAGE_2M, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = shl i64 1, %24
  %26 = icmp eq i64 %19, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %17
  %28 = load i64, i64* @MMU_PAGE_2M, align 8
  %29 = trunc i64 %28 to i32
  store i32 %29, i32* %4, align 4
  br label %45

30:                                               ; preds = %17
  %31 = load i32, i32* %3, align 4
  %32 = sext i32 %31 to i64
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** @mmu_psize_defs, align 8
  %34 = load i64, i64* @MMU_PAGE_1G, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = shl i64 1, %37
  %39 = icmp eq i64 %32, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %30
  %41 = load i64, i64* @MMU_PAGE_1G, align 8
  %42 = trunc i64 %41 to i32
  store i32 %42, i32* %4, align 4
  br label %44

43:                                               ; preds = %30
  store i32 -1, i32* %2, align 4
  br label %48

44:                                               ; preds = %40
  br label %45

45:                                               ; preds = %44, %27
  br label %46

46:                                               ; preds = %45, %14
  %47 = load i32, i32* %4, align 4
  store i32 %47, i32* %2, align 4
  br label %48

48:                                               ; preds = %46, %43
  %49 = load i32, i32* %2, align 4
  ret i32 %49
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
