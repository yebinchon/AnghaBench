; ModuleID = '/home/carl/AnghaBench/linux/arch/sh/mm/extr_tlb-sh5.c___update_tlb.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sh/mm/extr_tlb-sh5.c___update_tlb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.tlb_info, %struct.tlb_info }
%struct.tlb_info = type { i64, i64, i64 }
%struct.vm_area_struct = type { i32 }
%struct.TYPE_4__ = type { i64 }

@MMU_VPN_MASK = common dso_local global i64 0, align 8
@PTEH_ASID_SHIFT = common dso_local global i64 0, align 8
@PTEH_VALID = common dso_local global i64 0, align 8
@_PAGE_FLAGS_HARDWARE_MASK = common dso_local global i64 0, align 8
@FAULT_CODE_ITLB = common dso_local global i32 0, align 4
@cpu_data = common dso_local global %struct.TYPE_5__* null, align 8
@TLB_STEP = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__update_tlb(%struct.vm_area_struct* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_4__, align 8
  %5 = alloca %struct.vm_area_struct*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.tlb_info*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 0
  store i64 %2, i64* %12, align 8
  store %struct.vm_area_struct* %0, %struct.vm_area_struct** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 0, i64* %8, align 8
  %13 = call i32 (...) @get_thread_fault_code()
  store i32 %13, i32* %11, align 4
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  store i64 %15, i64* %7, align 8
  %16 = load i64, i64* %6, align 8
  %17 = load i64, i64* @MMU_VPN_MASK, align 8
  %18 = and i64 %16, %17
  %19 = call i64 @neff_sign_extend(i64 %18)
  store i64 %19, i64* %8, align 8
  %20 = call i64 (...) @get_asid()
  %21 = load i64, i64* @PTEH_ASID_SHIFT, align 8
  %22 = shl i64 %20, %21
  %23 = load i64, i64* %8, align 8
  %24 = or i64 %23, %22
  store i64 %24, i64* %8, align 8
  %25 = load i64, i64* @PTEH_VALID, align 8
  %26 = load i64, i64* %8, align 8
  %27 = or i64 %26, %25
  store i64 %27, i64* %8, align 8
  %28 = load i64, i64* @_PAGE_FLAGS_HARDWARE_MASK, align 8
  %29 = load i64, i64* %7, align 8
  %30 = and i64 %29, %28
  store i64 %30, i64* %7, align 8
  %31 = load i32, i32* %11, align 4
  %32 = load i32, i32* @FAULT_CODE_ITLB, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %3
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** @cpu_data, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 1
  store %struct.tlb_info* %37, %struct.tlb_info** %9, align 8
  br label %41

38:                                               ; preds = %3
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** @cpu_data, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  store %struct.tlb_info* %40, %struct.tlb_info** %9, align 8
  br label %41

41:                                               ; preds = %38, %35
  %42 = load %struct.tlb_info*, %struct.tlb_info** %9, align 8
  %43 = getelementptr inbounds %struct.tlb_info, %struct.tlb_info* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  store i64 %44, i64* %10, align 8
  %45 = load i64, i64* %10, align 8
  %46 = call i32 @__flush_tlb_slot(i64 %45)
  %47 = load i64, i64* %10, align 8
  %48 = load i64, i64* %8, align 8
  %49 = load i64, i64* %7, align 8
  call void asm sideeffect "putcfg $0,1,$2\0A\0A\09putcfg $0,0,$1\0A", "r,r,r,~{dirflag},~{fpsr},~{flags}"(i64 %47, i64 %48, i64 %49) #2, !srcloc !2
  %50 = load i64, i64* @TLB_STEP, align 8
  %51 = load i64, i64* %10, align 8
  %52 = add i64 %51, %50
  store i64 %52, i64* %10, align 8
  %53 = load i64, i64* %10, align 8
  %54 = load %struct.tlb_info*, %struct.tlb_info** %9, align 8
  %55 = getelementptr inbounds %struct.tlb_info, %struct.tlb_info* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = icmp ugt i64 %53, %56
  br i1 %57, label %58, label %62

58:                                               ; preds = %41
  %59 = load %struct.tlb_info*, %struct.tlb_info** %9, align 8
  %60 = getelementptr inbounds %struct.tlb_info, %struct.tlb_info* %59, i32 0, i32 2
  %61 = load i64, i64* %60, align 8
  store i64 %61, i64* %10, align 8
  br label %62

62:                                               ; preds = %58, %41
  %63 = load i64, i64* %10, align 8
  %64 = load %struct.tlb_info*, %struct.tlb_info** %9, align 8
  %65 = getelementptr inbounds %struct.tlb_info, %struct.tlb_info* %64, i32 0, i32 0
  store i64 %63, i64* %65, align 8
  ret void
}

declare dso_local i32 @get_thread_fault_code(...) #1

declare dso_local i64 @neff_sign_extend(i64) #1

declare dso_local i64 @get_asid(...) #1

declare dso_local i32 @__flush_tlb_slot(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{i32 1466, i32 1483, i32 1485}
