; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/oprofile/extr_op_model_cell.c_cell_handle_interrupt_spu.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/oprofile/extr_op_model_cell.c_cell_handle_interrupt_spu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_regs = type { i32 }
%struct.op_counter_config = type { i64 }

@cntr_lock = common dso_local global i32 0, align 4
@oprofile_running = common dso_local global i32 0, align 4
@pm_interval = common dso_local global i32 0, align 4
@reset_value = common dso_local global i32* null, align 8
@trace_address = common dso_local global i32 0, align 4
@CBE_PM_TRACE_BUF_EMPTY = common dso_local global i32 0, align 4
@spu_evnt_phys_spu_indx = common dso_local global i32 0, align 4
@NUM_SPUS_PER_NODE = common dso_local global i32 0, align 4
@oprof_spu_smpl_arry_lck = common dso_local global i32 0, align 4
@NUM_INTERVAL_CYC = common dso_local global i32 0, align 4
@hdw_thread = common dso_local global i32 0, align 4
@virt_cntr_inter_mask = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pt_regs*, %struct.op_counter_config*)* @cell_handle_interrupt_spu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cell_handle_interrupt_spu(%struct.pt_regs* %0, %struct.op_counter_config* %1) #0 {
  %3 = alloca %struct.pt_regs*, align 8
  %4 = alloca %struct.op_counter_config*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [2 x i32], align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  store %struct.pt_regs* %0, %struct.pt_regs** %3, align 8
  store %struct.op_counter_config* %1, %struct.op_counter_config** %4, align 8
  %16 = call i32 (...) @smp_processor_id()
  store i32 %16, i32* %5, align 4
  %17 = load i64, i64* %15, align 8
  %18 = call i32 @spin_lock_irqsave(i32* @cntr_lock, i64 %17)
  %19 = load i32, i32* %5, align 4
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %5, align 4
  %21 = call i32 @cbe_disable_pm(i32 %20)
  %22 = load i32, i32* %5, align 4
  %23 = call i32 @cbe_get_and_clear_pm_interrupts(i32 %22)
  store i32 %23, i32* %8, align 4
  store i32 11259375, i32* %11, align 4
  store i32 16702650, i32* %7, align 4
  store i32 -559038801, i32* %10, align 4
  %24 = load i32, i32* @oprofile_running, align 4
  %25 = icmp eq i32 %24, 1
  br i1 %25, label %26, label %106

26:                                               ; preds = %2
  %27 = load i32, i32* %8, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %106

29:                                               ; preds = %26
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* @pm_interval, align 4
  %32 = call i32 @cbe_write_pm(i32 %30, i32 %31, i32 0)
  %33 = load i32, i32* %8, align 4
  %34 = call i32 @CBE_PM_CTR_OVERFLOW_INTR(i32 0)
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %49

37:                                               ; preds = %29
  %38 = load %struct.op_counter_config*, %struct.op_counter_config** %4, align 8
  %39 = getelementptr inbounds %struct.op_counter_config, %struct.op_counter_config* %38, i64 0
  %40 = getelementptr inbounds %struct.op_counter_config, %struct.op_counter_config* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %37
  %44 = load i32, i32* %5, align 4
  %45 = load i32*, i32** @reset_value, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @cbe_write_ctr(i32 %44, i32 0, i32 %47)
  br label %49

49:                                               ; preds = %43, %37, %29
  %50 = load i32, i32* %5, align 4
  %51 = load i32, i32* @trace_address, align 4
  %52 = call i32 @cbe_read_pm(i32 %50, i32 %51)
  store i32 %52, i32* %12, align 4
  br label %53

53:                                               ; preds = %59, %49
  %54 = load i32, i32* %12, align 4
  %55 = load i32, i32* @CBE_PM_TRACE_BUF_EMPTY, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  %58 = xor i1 %57, true
  br i1 %58, label %59, label %66

59:                                               ; preds = %53
  %60 = load i32, i32* %5, align 4
  %61 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  %62 = call i32 @cbe_read_trace_buffer(i32 %60, i32* %61)
  %63 = load i32, i32* %5, align 4
  %64 = load i32, i32* @trace_address, align 4
  %65 = call i32 @cbe_read_pm(i32 %63, i32 %64)
  store i32 %65, i32* %12, align 4
  br label %53

66:                                               ; preds = %53
  %67 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  %68 = load i32, i32* %67, align 4
  %69 = and i32 %68, -65536
  store i32 %69, i32* %7, align 4
  %70 = load i32, i32* %7, align 4
  %71 = ashr i32 %70, 14
  store i32 %71, i32* %11, align 4
  %72 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  %73 = load i32, i32* %72, align 4
  store i32 %73, i32* %10, align 4
  %74 = load i32, i32* @spu_evnt_phys_spu_indx, align 4
  %75 = load i32, i32* %5, align 4
  %76 = call i32 @cbe_cpu_to_node(i32 %75)
  %77 = load i32, i32* @NUM_SPUS_PER_NODE, align 4
  %78 = mul nsw i32 %76, %77
  %79 = add nsw i32 %74, %78
  store i32 %79, i32* %14, align 4
  %80 = load i64, i64* %13, align 8
  %81 = call i32 @spin_lock_irqsave(i32* @oprof_spu_smpl_arry_lck, i64 %80)
  %82 = load i32, i32* %14, align 4
  %83 = call i32 @spu_sync_buffer(i32 %82, i32* %11, i32 1)
  %84 = load i64, i64* %13, align 8
  %85 = call i32 @spin_unlock_irqrestore(i32* @oprof_spu_smpl_arry_lck, i64 %84)
  %86 = call i32 (...) @smp_wmb()
  %87 = load i32, i32* %5, align 4
  %88 = load i32, i32* @pm_interval, align 4
  %89 = load i32, i32* @NUM_INTERVAL_CYC, align 4
  %90 = call i32 @cbe_write_pm(i32 %87, i32 %88, i32 %89)
  %91 = load i32, i32* %5, align 4
  %92 = load i32, i32* @hdw_thread, align 4
  %93 = load i32, i32* @virt_cntr_inter_mask, align 4
  %94 = call i32 @cbe_enable_pm_interrupts(i32 %91, i32 %92, i32 %93)
  %95 = load i32, i32* %5, align 4
  %96 = load i32, i32* @trace_address, align 4
  %97 = call i32 @cbe_write_pm(i32 %95, i32 %96, i32 0)
  %98 = load i32, i32* %5, align 4
  %99 = load i32, i32* @pm_interval, align 4
  %100 = load i32, i32* @NUM_INTERVAL_CYC, align 4
  %101 = call i32 @cbe_write_pm(i32 %98, i32 %99, i32 %100)
  %102 = load i32, i32* %5, align 4
  %103 = call i32 @write_pm_cntrl(i32 %102)
  %104 = load i32, i32* %5, align 4
  %105 = call i32 @cbe_enable_pm(i32 %104)
  br label %106

106:                                              ; preds = %66, %26, %2
  %107 = load i64, i64* %15, align 8
  %108 = call i32 @spin_unlock_irqrestore(i32* @cntr_lock, i64 %107)
  ret void
}

declare dso_local i32 @smp_processor_id(...) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @cbe_disable_pm(i32) #1

declare dso_local i32 @cbe_get_and_clear_pm_interrupts(i32) #1

declare dso_local i32 @cbe_write_pm(i32, i32, i32) #1

declare dso_local i32 @CBE_PM_CTR_OVERFLOW_INTR(i32) #1

declare dso_local i32 @cbe_write_ctr(i32, i32, i32) #1

declare dso_local i32 @cbe_read_pm(i32, i32) #1

declare dso_local i32 @cbe_read_trace_buffer(i32, i32*) #1

declare dso_local i32 @cbe_cpu_to_node(i32) #1

declare dso_local i32 @spu_sync_buffer(i32, i32*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @smp_wmb(...) #1

declare dso_local i32 @cbe_enable_pm_interrupts(i32, i32, i32) #1

declare dso_local i32 @write_pm_cntrl(i32) #1

declare dso_local i32 @cbe_enable_pm(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
