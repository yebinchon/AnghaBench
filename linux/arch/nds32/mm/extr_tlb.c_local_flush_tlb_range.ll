; ModuleID = '/home/carl/AnghaBench/linux/arch/nds32/mm/extr_tlb.c_local_flush_tlb_range.c'
source_filename = "/home/carl/AnghaBench/linux/arch/nds32/mm/extr_tlb.c_local_flush_tlb_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_area_struct = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@cid_lock = common dso_local global i32 0, align 4
@NDS32_SR_TLB_MISC = common dso_local global i32 0, align 4
@TLB_MISC_mskCID = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @local_flush_tlb_range(%struct.vm_area_struct* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.vm_area_struct*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.vm_area_struct* %0, %struct.vm_area_struct** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %10 = load i64, i64* %6, align 8
  %11 = load i64, i64* %5, align 8
  %12 = sub i64 %10, %11
  %13 = icmp ugt i64 %12, 4194304
  br i1 %13, label %14, label %17

14:                                               ; preds = %3
  %15 = call i32 (...) @__nds32__tlbop_flua()
  %16 = call i32 (...) @__nds32__isb()
  br label %53

17:                                               ; preds = %3
  %18 = load i64, i64* %7, align 8
  %19 = call i32 @spin_lock_irqsave(i32* @cid_lock, i64 %18)
  %20 = load i32, i32* @NDS32_SR_TLB_MISC, align 4
  %21 = call i64 @__nds32__mfsr(i32 %20)
  store i64 %21, i64* %8, align 8
  %22 = load i64, i64* %8, align 8
  %23 = load i64, i64* @TLB_MISC_mskCID, align 8
  %24 = xor i64 %23, -1
  %25 = and i64 %22, %24
  %26 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %27 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %26, i32 0, i32 0
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = or i64 %25, %31
  store i64 %32, i64* %9, align 8
  %33 = load i64, i64* %9, align 8
  %34 = load i32, i32* @NDS32_SR_TLB_MISC, align 4
  %35 = call i32 @__nds32__mtsr_dsb(i64 %33, i32 %34)
  br label %36

36:                                               ; preds = %40, %17
  %37 = load i64, i64* %5, align 8
  %38 = load i64, i64* %6, align 8
  %39 = icmp ult i64 %37, %38
  br i1 %39, label %40, label %47

40:                                               ; preds = %36
  %41 = load i64, i64* %5, align 8
  %42 = call i32 @__nds32__tlbop_inv(i64 %41)
  %43 = call i32 (...) @__nds32__isb()
  %44 = load i64, i64* @PAGE_SIZE, align 8
  %45 = load i64, i64* %5, align 8
  %46 = add i64 %45, %44
  store i64 %46, i64* %5, align 8
  br label %36

47:                                               ; preds = %36
  %48 = load i64, i64* %8, align 8
  %49 = load i32, i32* @NDS32_SR_TLB_MISC, align 4
  %50 = call i32 @__nds32__mtsr_dsb(i64 %48, i32 %49)
  %51 = load i64, i64* %7, align 8
  %52 = call i32 @spin_unlock_irqrestore(i32* @cid_lock, i64 %51)
  br label %53

53:                                               ; preds = %47, %14
  ret void
}

declare dso_local i32 @__nds32__tlbop_flua(...) #1

declare dso_local i32 @__nds32__isb(...) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @__nds32__mfsr(i32) #1

declare dso_local i32 @__nds32__mtsr_dsb(i64, i32) #1

declare dso_local i32 @__nds32__tlbop_inv(i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
