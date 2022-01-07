; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/mm/extr_tlb-r4k.c_local_flush_tlb_all.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/mm/extr_tlb-r4k.c_local_flush_tlb_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32 }

@cpu_has_tlbinv = common dso_local global i64 0, align 8
@current_cpu_data = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @local_flush_tlb_all() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = load i64, i64* %1, align 8
  %6 = call i32 @local_irq_save(i64 %5)
  %7 = call i64 (...) @read_c0_entryhi()
  store i64 %7, i64* %2, align 8
  %8 = call i32 (...) @htw_stop()
  %9 = call i32 @write_c0_entrylo0(i32 0)
  %10 = call i32 @write_c0_entrylo1(i32 0)
  %11 = call i32 (...) @num_wired_entries()
  store i32 %11, i32* %3, align 4
  %12 = load i64, i64* @cpu_has_tlbinv, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %42

14:                                               ; preds = %0
  %15 = load i32, i32* %3, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %42, label %17

17:                                               ; preds = %14
  %18 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @current_cpu_data, i32 0, i32 0), align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %17
  %21 = call i32 @write_c0_index(i32 0)
  %22 = call i32 (...) @mtc0_tlbw_hazard()
  %23 = call i32 (...) @tlbinvf()
  br label %24

24:                                               ; preds = %20, %17
  %25 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @current_cpu_data, i32 0, i32 0), align 4
  %26 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @current_cpu_data, i32 0, i32 1), align 4
  %27 = add nsw i32 %25, %26
  store i32 %27, i32* %4, align 4
  %28 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @current_cpu_data, i32 0, i32 0), align 4
  store i32 %28, i32* %3, align 4
  br label %29

29:                                               ; preds = %38, %24
  %30 = load i32, i32* %3, align 4
  %31 = load i32, i32* %4, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %41

33:                                               ; preds = %29
  %34 = load i32, i32* %3, align 4
  %35 = call i32 @write_c0_index(i32 %34)
  %36 = call i32 (...) @mtc0_tlbw_hazard()
  %37 = call i32 (...) @tlbinvf()
  br label %38

38:                                               ; preds = %33
  %39 = load i32, i32* %3, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %3, align 4
  br label %29

41:                                               ; preds = %29
  br label %58

42:                                               ; preds = %14, %0
  br label %43

43:                                               ; preds = %47, %42
  %44 = load i32, i32* %3, align 4
  %45 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @current_cpu_data, i32 0, i32 2), align 4
  %46 = icmp slt i32 %44, %45
  br i1 %46, label %47, label %57

47:                                               ; preds = %43
  %48 = load i32, i32* %3, align 4
  %49 = call i64 @UNIQUE_ENTRYHI(i32 %48)
  %50 = call i32 @write_c0_entryhi(i64 %49)
  %51 = load i32, i32* %3, align 4
  %52 = call i32 @write_c0_index(i32 %51)
  %53 = call i32 (...) @mtc0_tlbw_hazard()
  %54 = call i32 (...) @tlb_write_indexed()
  %55 = load i32, i32* %3, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %3, align 4
  br label %43

57:                                               ; preds = %43
  br label %58

58:                                               ; preds = %57, %41
  %59 = call i32 (...) @tlbw_use_hazard()
  %60 = load i64, i64* %2, align 8
  %61 = call i32 @write_c0_entryhi(i64 %60)
  %62 = call i32 (...) @htw_start()
  %63 = call i32 (...) @flush_micro_tlb()
  %64 = load i64, i64* %1, align 8
  %65 = call i32 @local_irq_restore(i64 %64)
  ret void
}

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i64 @read_c0_entryhi(...) #1

declare dso_local i32 @htw_stop(...) #1

declare dso_local i32 @write_c0_entrylo0(i32) #1

declare dso_local i32 @write_c0_entrylo1(i32) #1

declare dso_local i32 @num_wired_entries(...) #1

declare dso_local i32 @write_c0_index(i32) #1

declare dso_local i32 @mtc0_tlbw_hazard(...) #1

declare dso_local i32 @tlbinvf(...) #1

declare dso_local i32 @write_c0_entryhi(i64) #1

declare dso_local i64 @UNIQUE_ENTRYHI(i32) #1

declare dso_local i32 @tlb_write_indexed(...) #1

declare dso_local i32 @tlbw_use_hazard(...) #1

declare dso_local i32 @htw_start(...) #1

declare dso_local i32 @flush_micro_tlb(...) #1

declare dso_local i32 @local_irq_restore(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
