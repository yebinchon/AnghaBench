; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/oprofile/extr_op_model_cell.c_cell_handle_interrupt_ppu.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/oprofile/extr_op_model_cell.c_cell_handle_interrupt_ppu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_regs = type { i32 }
%struct.op_counter_config = type { i64 }

@cntr_lock = common dso_local global i32 0, align 4
@oprofile_running = common dso_local global i32 0, align 4
@num_counters = common dso_local global i32 0, align 4
@reset_value = common dso_local global i32* null, align 8
@hdw_thread = common dso_local global i32 0, align 4
@virt_cntr_inter_mask = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pt_regs*, %struct.op_counter_config*)* @cell_handle_interrupt_ppu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cell_handle_interrupt_ppu(%struct.pt_regs* %0, %struct.op_counter_config* %1) #0 {
  %3 = alloca %struct.pt_regs*, align 8
  %4 = alloca %struct.op_counter_config*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.pt_regs* %0, %struct.pt_regs** %3, align 8
  store %struct.op_counter_config* %1, %struct.op_counter_config** %4, align 8
  store i64 0, i64* %8, align 8
  %11 = call i32 (...) @smp_processor_id()
  store i32 %11, i32* %5, align 4
  %12 = load i64, i64* %8, align 8
  %13 = call i32 @spin_lock_irqsave(i32* @cntr_lock, i64 %12)
  %14 = load i32, i32* %5, align 4
  %15 = call i32 @cbe_disable_pm(i32 %14)
  %16 = load i32, i32* %5, align 4
  %17 = call i32 @cbe_get_and_clear_pm_interrupts(i32 %16)
  store i32 %17, i32* %9, align 4
  %18 = load i32, i32* @oprofile_running, align 4
  %19 = icmp eq i32 %18, 1
  br i1 %19, label %20, label %72

20:                                               ; preds = %2
  %21 = load i32, i32* %9, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %72

23:                                               ; preds = %20
  %24 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %25 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %6, align 4
  %28 = call i32 @is_kernel_addr(i32 %27)
  store i32 %28, i32* %7, align 4
  store i32 0, i32* %10, align 4
  br label %29

29:                                               ; preds = %62, %23
  %30 = load i32, i32* %10, align 4
  %31 = load i32, i32* @num_counters, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %65

33:                                               ; preds = %29
  %34 = load i32, i32* %9, align 4
  %35 = load i32, i32* %10, align 4
  %36 = call i32 @CBE_PM_CTR_OVERFLOW_INTR(i32 %35)
  %37 = and i32 %34, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %61

39:                                               ; preds = %33
  %40 = load %struct.op_counter_config*, %struct.op_counter_config** %4, align 8
  %41 = load i32, i32* %10, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.op_counter_config, %struct.op_counter_config* %40, i64 %42
  %44 = getelementptr inbounds %struct.op_counter_config, %struct.op_counter_config* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %61

47:                                               ; preds = %39
  %48 = load i32, i32* %6, align 4
  %49 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %50 = load i32, i32* %10, align 4
  %51 = load i32, i32* %7, align 4
  %52 = call i32 @oprofile_add_ext_sample(i32 %48, %struct.pt_regs* %49, i32 %50, i32 %51)
  %53 = load i32, i32* %5, align 4
  %54 = load i32, i32* %10, align 4
  %55 = load i32*, i32** @reset_value, align 8
  %56 = load i32, i32* %10, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %55, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @cbe_write_ctr(i32 %53, i32 %54, i32 %59)
  br label %61

61:                                               ; preds = %47, %39, %33
  br label %62

62:                                               ; preds = %61
  %63 = load i32, i32* %10, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %10, align 4
  br label %29

65:                                               ; preds = %29
  %66 = load i32, i32* %5, align 4
  %67 = load i32, i32* @hdw_thread, align 4
  %68 = load i32, i32* @virt_cntr_inter_mask, align 4
  %69 = call i32 @cbe_enable_pm_interrupts(i32 %66, i32 %67, i32 %68)
  %70 = load i32, i32* %5, align 4
  %71 = call i32 @cbe_enable_pm(i32 %70)
  br label %72

72:                                               ; preds = %65, %20, %2
  %73 = load i64, i64* %8, align 8
  %74 = call i32 @spin_unlock_irqrestore(i32* @cntr_lock, i64 %73)
  ret void
}

declare dso_local i32 @smp_processor_id(...) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @cbe_disable_pm(i32) #1

declare dso_local i32 @cbe_get_and_clear_pm_interrupts(i32) #1

declare dso_local i32 @is_kernel_addr(i32) #1

declare dso_local i32 @CBE_PM_CTR_OVERFLOW_INTR(i32) #1

declare dso_local i32 @oprofile_add_ext_sample(i32, %struct.pt_regs*, i32, i32) #1

declare dso_local i32 @cbe_write_ctr(i32, i32, i32) #1

declare dso_local i32 @cbe_enable_pm_interrupts(i32, i32, i32) #1

declare dso_local i32 @cbe_enable_pm(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
