; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/xen/extr_mmu_pv.c_xen_destroy_contiguous_region.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/xen/extr_mmu_pv.c_xen_destroy_contiguous_region.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@discontig_frames = common dso_local global i64* null, align 8
@MAX_CONTIG_ORDER = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@xen_reservation_lock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xen_destroy_contiguous_region(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %10 = load i64*, i64** @discontig_frames, align 8
  store i64* %10, i64** %5, align 8
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* @MAX_CONTIG_ORDER, align 4
  %13 = icmp ugt i32 %11, %12
  %14 = zext i1 %13 to i32
  %15 = call i64 @unlikely(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  br label %56

18:                                               ; preds = %2
  %19 = load i32, i32* %3, align 4
  %20 = call i64 @phys_to_virt(i32 %19)
  store i64 %20, i64* %9, align 8
  %21 = load i64, i64* %9, align 8
  %22 = inttoptr i64 %21 to i8*
  %23 = load i32, i32* @PAGE_SIZE, align 4
  %24 = load i32, i32* %4, align 4
  %25 = shl i32 %23, %24
  %26 = call i32 @memset(i8* %22, i32 0, i32 %25)
  %27 = load i64, i64* %7, align 8
  %28 = call i32 @spin_lock_irqsave(i32* @xen_reservation_lock, i64 %27)
  %29 = load i64, i64* %9, align 8
  %30 = call i64 @virt_to_mfn(i64 %29)
  store i64 %30, i64* %6, align 8
  %31 = load i64, i64* %9, align 8
  %32 = load i32, i32* %4, align 4
  %33 = load i64*, i64** %5, align 8
  %34 = call i32 @xen_zap_pfn_range(i64 %31, i32 %32, i32* null, i64* %33)
  %35 = load i32, i32* %4, align 4
  %36 = load i32, i32* %4, align 4
  %37 = zext i32 %36 to i64
  %38 = shl i64 1, %37
  %39 = load i64*, i64** %5, align 8
  %40 = call i32 @xen_exchange_memory(i32 1, i32 %35, i64* %6, i64 %38, i32 0, i64* %39, i32 0)
  store i32 %40, i32* %8, align 4
  %41 = load i32, i32* %8, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %18
  %44 = load i64, i64* %9, align 8
  %45 = load i32, i32* %4, align 4
  %46 = load i64*, i64** %5, align 8
  %47 = call i32 @xen_remap_exchanged_ptes(i64 %44, i32 %45, i64* %46, i64 0)
  br label %53

48:                                               ; preds = %18
  %49 = load i64, i64* %9, align 8
  %50 = load i32, i32* %4, align 4
  %51 = load i64, i64* %6, align 8
  %52 = call i32 @xen_remap_exchanged_ptes(i64 %49, i32 %50, i64* null, i64 %51)
  br label %53

53:                                               ; preds = %48, %43
  %54 = load i64, i64* %7, align 8
  %55 = call i32 @spin_unlock_irqrestore(i32* @xen_reservation_lock, i64 %54)
  br label %56

56:                                               ; preds = %53, %17
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @phys_to_virt(i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @virt_to_mfn(i64) #1

declare dso_local i32 @xen_zap_pfn_range(i64, i32, i32*, i64*) #1

declare dso_local i32 @xen_exchange_memory(i32, i32, i64*, i64, i32, i64*, i32) #1

declare dso_local i32 @xen_remap_exchanged_ptes(i64, i32, i64*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
