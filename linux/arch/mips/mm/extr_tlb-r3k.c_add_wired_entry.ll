; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/mm/extr_tlb-r3k.c_add_wired_entry.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/mm/extr_tlb-r3k.c_add_wired_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@current_cpu_data = common dso_local global i32 0, align 4
@add_wired_entry.wired = internal global i64 0, align 8
@r3k_have_wired_reg = common dso_local global i64 0, align 8
@BARRIER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @add_wired_entry(i64 %0, i64 %1, i64 %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store i64 %0, i64* %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %14 = call i64 @cpu_asid_mask(i32* @current_cpu_data)
  store i64 %14, i64* %9, align 8
  %15 = load i64, i64* @r3k_have_wired_reg, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %46

17:                                               ; preds = %4
  %18 = load i64, i64* %10, align 8
  %19 = call i32 @local_irq_save(i64 %18)
  %20 = call i64 (...) @read_c0_entryhi()
  %21 = load i64, i64* %9, align 8
  %22 = and i64 %20, %21
  store i64 %22, i64* %11, align 8
  %23 = call i64 (...) @read_c0_pagemask()
  store i64 %23, i64* %12, align 8
  %24 = call i64 (...) @read_c0_wired()
  store i64 %24, i64* %13, align 8
  %25 = load i64, i64* %13, align 8
  %26 = add i64 %25, 1
  %27 = call i32 @write_c0_wired(i64 %26)
  %28 = load i64, i64* %13, align 8
  %29 = shl i64 %28, 8
  %30 = call i32 @write_c0_index(i64 %29)
  %31 = load i64, i64* %8, align 8
  %32 = call i32 @write_c0_pagemask(i64 %31)
  %33 = load i64, i64* %7, align 8
  %34 = call i32 @write_c0_entryhi(i64 %33)
  %35 = load i64, i64* %5, align 8
  %36 = call i32 @write_c0_entrylo0(i64 %35)
  %37 = load i32, i32* @BARRIER, align 4
  %38 = call i32 (...) @tlb_write_indexed()
  %39 = load i64, i64* %11, align 8
  %40 = call i32 @write_c0_entryhi(i64 %39)
  %41 = load i64, i64* %12, align 8
  %42 = call i32 @write_c0_pagemask(i64 %41)
  %43 = call i32 (...) @local_flush_tlb_all()
  %44 = load i64, i64* %10, align 8
  %45 = call i32 @local_irq_restore(i64 %44)
  br label %70

46:                                               ; preds = %4
  %47 = load i64, i64* @add_wired_entry.wired, align 8
  %48 = icmp ult i64 %47, 8
  br i1 %48, label %49, label %69

49:                                               ; preds = %46
  %50 = load i64, i64* %10, align 8
  %51 = call i32 @local_irq_save(i64 %50)
  %52 = call i64 (...) @read_c0_entryhi()
  %53 = load i64, i64* %9, align 8
  %54 = and i64 %52, %53
  store i64 %54, i64* %11, align 8
  %55 = load i64, i64* %5, align 8
  %56 = call i32 @write_c0_entrylo0(i64 %55)
  %57 = load i64, i64* %7, align 8
  %58 = call i32 @write_c0_entryhi(i64 %57)
  %59 = load i64, i64* @add_wired_entry.wired, align 8
  %60 = call i32 @write_c0_index(i64 %59)
  %61 = load i64, i64* @add_wired_entry.wired, align 8
  %62 = add i64 %61, 1
  store i64 %62, i64* @add_wired_entry.wired, align 8
  %63 = call i32 (...) @tlb_write_indexed()
  %64 = load i64, i64* %11, align 8
  %65 = call i32 @write_c0_entryhi(i64 %64)
  %66 = call i32 (...) @local_flush_tlb_all()
  %67 = load i64, i64* %10, align 8
  %68 = call i32 @local_irq_restore(i64 %67)
  br label %69

69:                                               ; preds = %49, %46
  br label %70

70:                                               ; preds = %69, %17
  ret void
}

declare dso_local i64 @cpu_asid_mask(i32*) #1

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i64 @read_c0_entryhi(...) #1

declare dso_local i64 @read_c0_pagemask(...) #1

declare dso_local i64 @read_c0_wired(...) #1

declare dso_local i32 @write_c0_wired(i64) #1

declare dso_local i32 @write_c0_index(i64) #1

declare dso_local i32 @write_c0_pagemask(i64) #1

declare dso_local i32 @write_c0_entryhi(i64) #1

declare dso_local i32 @write_c0_entrylo0(i64) #1

declare dso_local i32 @tlb_write_indexed(...) #1

declare dso_local i32 @local_flush_tlb_all(...) #1

declare dso_local i32 @local_irq_restore(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
