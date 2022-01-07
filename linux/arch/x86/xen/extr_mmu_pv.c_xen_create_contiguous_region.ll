; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/xen/extr_mmu_pv.c_xen_create_contiguous_region.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/xen/extr_mmu_pv.c_xen_create_contiguous_region.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@discontig_frames = common dso_local global i64* null, align 8
@MAX_CONTIG_ORDER = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@xen_reservation_lock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xen_create_contiguous_region(i32 %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca %struct.TYPE_2__, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %16 = load i64*, i64** @discontig_frames, align 8
  store i64* %16, i64** %10, align 8
  %17 = load i32, i32* %6, align 4
  %18 = call i64 @phys_to_virt(i32 %17)
  store i64 %18, i64* %14, align 8
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* @MAX_CONTIG_ORDER, align 4
  %21 = icmp ugt i32 %19, %20
  %22 = zext i1 %21 to i32
  %23 = call i64 @unlikely(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %4
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %5, align 4
  br label %79

28:                                               ; preds = %4
  %29 = load i64, i64* %14, align 8
  %30 = inttoptr i64 %29 to i8*
  %31 = load i32, i32* @PAGE_SIZE, align 4
  %32 = load i32, i32* %7, align 4
  %33 = shl i32 %31, %32
  %34 = call i32 @memset(i8* %30, i32 0, i32 %33)
  %35 = load i64, i64* %12, align 8
  %36 = call i32 @spin_lock_irqsave(i32* @xen_reservation_lock, i64 %35)
  %37 = load i64, i64* %14, align 8
  %38 = load i32, i32* %7, align 4
  %39 = load i64*, i64** %10, align 8
  %40 = call i32 @xen_zap_pfn_range(i64 %37, i32 %38, i64* %39, i32* null)
  %41 = load i64, i64* %14, align 8
  %42 = call i64 @virt_to_pfn(i64 %41)
  store i64 %42, i64* %11, align 8
  %43 = load i32, i32* %7, align 4
  %44 = zext i32 %43 to i64
  %45 = shl i64 1, %44
  %46 = load i64*, i64** %10, align 8
  %47 = load i32, i32* %7, align 4
  %48 = load i32, i32* %8, align 4
  %49 = call i32 @xen_exchange_memory(i64 %45, i32 0, i64* %46, i32 1, i32 %47, i64* %11, i32 %48)
  store i32 %49, i32* %13, align 4
  %50 = load i32, i32* %13, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %28
  %53 = load i64, i64* %14, align 8
  %54 = load i32, i32* %7, align 4
  %55 = load i64, i64* %11, align 8
  %56 = call i32 @xen_remap_exchanged_ptes(i64 %53, i32 %54, i64* null, i64 %55)
  br label %62

57:                                               ; preds = %28
  %58 = load i64, i64* %14, align 8
  %59 = load i32, i32* %7, align 4
  %60 = load i64*, i64** %10, align 8
  %61 = call i32 @xen_remap_exchanged_ptes(i64 %58, i32 %59, i64* %60, i64 0)
  br label %62

62:                                               ; preds = %57, %52
  %63 = load i64, i64* %12, align 8
  %64 = call i32 @spin_unlock_irqrestore(i32* @xen_reservation_lock, i64 %63)
  %65 = load i64, i64* %14, align 8
  %66 = call i32 @virt_to_machine(i64 %65)
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  store i32 %66, i32* %67, align 4
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i32*, i32** %9, align 8
  store i32 %69, i32* %70, align 4
  %71 = load i32, i32* %13, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %62
  br label %77

74:                                               ; preds = %62
  %75 = load i32, i32* @ENOMEM, align 4
  %76 = sub nsw i32 0, %75
  br label %77

77:                                               ; preds = %74, %73
  %78 = phi i32 [ 0, %73 ], [ %76, %74 ]
  store i32 %78, i32* %5, align 4
  br label %79

79:                                               ; preds = %77, %25
  %80 = load i32, i32* %5, align 4
  ret i32 %80
}

declare dso_local i64 @phys_to_virt(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @xen_zap_pfn_range(i64, i32, i64*, i32*) #1

declare dso_local i64 @virt_to_pfn(i64) #1

declare dso_local i32 @xen_exchange_memory(i64, i32, i64*, i32, i32, i64*, i32) #1

declare dso_local i32 @xen_remap_exchanged_ptes(i64, i32, i64*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @virt_to_machine(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
