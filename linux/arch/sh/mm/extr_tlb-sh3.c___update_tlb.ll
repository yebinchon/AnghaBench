; ModuleID = '/home/carl/AnghaBench/linux/arch/sh/mm/extr_tlb-sh3.c___update_tlb.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sh/mm/extr_tlb-sh3.c___update_tlb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }
%struct.vm_area_struct = type { i64 }

@current = common dso_local global %struct.TYPE_2__* null, align 8
@MMU_VPN_MASK = common dso_local global i64 0, align 8
@MMU_PTEH = common dso_local global i32 0, align 4
@_PAGE_FLAGS_HARDWARE_MASK = common dso_local global i64 0, align 8
@MMU_PTEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__update_tlb(%struct.vm_area_struct* %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.vm_area_struct*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.vm_area_struct* %0, %struct.vm_area_struct** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %11 = icmp ne %struct.vm_area_struct* %10, null
  br i1 %11, label %12, label %21

12:                                               ; preds = %3
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %17 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %15, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %12
  br label %42

21:                                               ; preds = %12, %3
  %22 = load i64, i64* %7, align 8
  %23 = call i32 @local_irq_save(i64 %22)
  %24 = load i64, i64* %5, align 8
  %25 = load i64, i64* @MMU_VPN_MASK, align 8
  %26 = and i64 %24, %25
  %27 = call i64 (...) @get_asid()
  %28 = or i64 %26, %27
  store i64 %28, i64* %9, align 8
  %29 = load i64, i64* %9, align 8
  %30 = load i32, i32* @MMU_PTEH, align 4
  %31 = call i32 @__raw_writel(i64 %29, i32 %30)
  %32 = load i32, i32* %6, align 4
  %33 = call i64 @pte_val(i32 %32)
  store i64 %33, i64* %8, align 8
  %34 = load i64, i64* @_PAGE_FLAGS_HARDWARE_MASK, align 8
  %35 = load i64, i64* %8, align 8
  %36 = and i64 %35, %34
  store i64 %36, i64* %8, align 8
  %37 = load i64, i64* %8, align 8
  %38 = load i32, i32* @MMU_PTEL, align 4
  %39 = call i32 @__raw_writel(i64 %37, i32 %38)
  call void asm sideeffect "ldtlb", "~{memory},~{dirflag},~{fpsr},~{flags}"() #2, !srcloc !2
  %40 = load i64, i64* %7, align 8
  %41 = call i32 @local_irq_restore(i64 %40)
  br label %42

42:                                               ; preds = %21, %20
  ret void
}

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i64 @get_asid(...) #1

declare dso_local i32 @__raw_writel(i64, i32) #1

declare dso_local i64 @pte_val(i32) #1

declare dso_local i32 @local_irq_restore(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{i32 987}
