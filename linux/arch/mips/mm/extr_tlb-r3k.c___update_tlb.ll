; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/mm/extr_tlb-r3k.c___update_tlb.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/mm/extr_tlb-r3k.c___update_tlb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }
%struct.vm_area_struct = type { i64 }

@current_cpu_data = common dso_local global i32 0, align 4
@current = common dso_local global %struct.TYPE_2__* null, align 8
@PAGE_MASK = common dso_local global i64 0, align 8
@BARRIER = common dso_local global i32 0, align 4
@cpu = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__update_tlb(%struct.vm_area_struct* %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.vm_area_struct*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.vm_area_struct* %0, %struct.vm_area_struct** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = call i64 @cpu_asid_mask(i32* @current_cpu_data)
  store i64 %11, i64* %7, align 8
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %16 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %14, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %3
  br label %59

20:                                               ; preds = %3
  %21 = call i64 (...) @read_c0_entryhi()
  %22 = load i64, i64* %7, align 8
  %23 = and i64 %21, %22
  %24 = trunc i64 %23 to i32
  store i32 %24, i32* %10, align 4
  %25 = load i64, i64* %8, align 8
  %26 = call i32 @local_irq_save(i64 %25)
  %27 = load i64, i64* @PAGE_MASK, align 8
  %28 = load i64, i64* %5, align 8
  %29 = and i64 %28, %27
  store i64 %29, i64* %5, align 8
  %30 = load i64, i64* %5, align 8
  %31 = load i32, i32* %10, align 4
  %32 = sext i32 %31 to i64
  %33 = or i64 %30, %32
  %34 = trunc i64 %33 to i32
  %35 = call i32 @write_c0_entryhi(i32 %34)
  %36 = load i32, i32* @BARRIER, align 4
  %37 = call i32 (...) @tlb_probe()
  %38 = call i32 (...) @read_c0_index()
  store i32 %38, i32* %9, align 4
  %39 = load i32, i32* %6, align 4
  %40 = call i32 @pte_val(i32 %39)
  %41 = call i32 @write_c0_entrylo0(i32 %40)
  %42 = load i64, i64* %5, align 8
  %43 = load i32, i32* %10, align 4
  %44 = sext i32 %43 to i64
  %45 = or i64 %42, %44
  %46 = trunc i64 %45 to i32
  %47 = call i32 @write_c0_entryhi(i32 %46)
  %48 = load i32, i32* %9, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %20
  %51 = call i32 (...) @tlb_write_random()
  br label %54

52:                                               ; preds = %20
  %53 = call i32 (...) @tlb_write_indexed()
  br label %54

54:                                               ; preds = %52, %50
  %55 = load i32, i32* %10, align 4
  %56 = call i32 @write_c0_entryhi(i32 %55)
  %57 = load i64, i64* %8, align 8
  %58 = call i32 @local_irq_restore(i64 %57)
  br label %59

59:                                               ; preds = %54, %19
  ret void
}

declare dso_local i64 @cpu_asid_mask(i32*) #1

declare dso_local i64 @read_c0_entryhi(...) #1

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32 @write_c0_entryhi(i32) #1

declare dso_local i32 @tlb_probe(...) #1

declare dso_local i32 @read_c0_index(...) #1

declare dso_local i32 @write_c0_entrylo0(i32) #1

declare dso_local i32 @pte_val(i32) #1

declare dso_local i32 @tlb_write_random(...) #1

declare dso_local i32 @tlb_write_indexed(...) #1

declare dso_local i32 @local_irq_restore(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
