; ModuleID = '/home/carl/AnghaBench/linux/arch/sh/mm/extr_tlb-pteaex.c___update_tlb.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sh/mm/extr_tlb-pteaex.c___update_tlb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64 }
%struct.vm_area_struct = type { i64 }
%struct.TYPE_4__ = type { i64, i64 }

@current = common dso_local global %struct.TYPE_5__* null, align 8
@MMU_VPN_MASK = common dso_local global i64 0, align 8
@MMU_PTEH = common dso_local global i32 0, align 4
@MMU_PTEAEX = common dso_local global i32 0, align 4
@_PAGE_FLAGS_HARDWARE_MASK = common dso_local global i64 0, align 8
@MMU_PTEL = common dso_local global i32 0, align 4
@MMU_PTEA = common dso_local global i32 0, align 4
@_PAGE_WT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__update_tlb(%struct.vm_area_struct* %0, i64 %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.TYPE_4__, align 8
  %6 = alloca %struct.vm_area_struct*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = bitcast %struct.TYPE_4__* %5 to { i64, i64 }*
  %12 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %11, i32 0, i32 0
  store i64 %2, i64* %12, align 8
  %13 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %11, i32 0, i32 1
  store i64 %3, i64* %13, align 8
  store %struct.vm_area_struct* %0, %struct.vm_area_struct** %6, align 8
  store i64 %1, i64* %7, align 8
  %14 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %15 = icmp ne %struct.vm_area_struct* %14, null
  br i1 %15, label %16, label %25

16:                                               ; preds = %4
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** @current, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %21 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %19, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %16
  br label %47

25:                                               ; preds = %16, %4
  %26 = load i64, i64* %8, align 8
  %27 = call i32 @local_irq_save(i64 %26)
  %28 = load i64, i64* %7, align 8
  %29 = load i64, i64* @MMU_VPN_MASK, align 8
  %30 = and i64 %28, %29
  store i64 %30, i64* %10, align 8
  %31 = load i64, i64* %10, align 8
  %32 = load i32, i32* @MMU_PTEH, align 4
  %33 = call i32 @__raw_writel(i64 %31, i32 %32)
  %34 = call i64 (...) @get_asid()
  %35 = load i32, i32* @MMU_PTEAEX, align 4
  %36 = call i32 @__raw_writel(i64 %34, i32 %35)
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  store i64 %38, i64* %9, align 8
  %39 = load i64, i64* @_PAGE_FLAGS_HARDWARE_MASK, align 8
  %40 = load i64, i64* %9, align 8
  %41 = and i64 %40, %39
  store i64 %41, i64* %9, align 8
  %42 = load i64, i64* %9, align 8
  %43 = load i32, i32* @MMU_PTEL, align 4
  %44 = call i32 @__raw_writel(i64 %42, i32 %43)
  call void asm sideeffect "ldtlb", "~{memory},~{dirflag},~{fpsr},~{flags}"() #2, !srcloc !2
  %45 = load i64, i64* %8, align 8
  %46 = call i32 @local_irq_restore(i64 %45)
  br label %47

47:                                               ; preds = %25, %24
  ret void
}

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32 @__raw_writel(i64, i32) #1

declare dso_local i64 @get_asid(...) #1

declare dso_local i32 @local_irq_restore(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{i32 1149}
