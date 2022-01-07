; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/oprofile/extr_op_model_cell.c_cell_handle_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/oprofile/extr_op_model_cell.c_cell_handle_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_regs = type { i32 }
%struct.op_counter_config = type { i32 }

@profiling_mode = common dso_local global i64 0, align 8
@PPU_PROFILING = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pt_regs*, %struct.op_counter_config*)* @cell_handle_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cell_handle_interrupt(%struct.pt_regs* %0, %struct.op_counter_config* %1) #0 {
  %3 = alloca %struct.pt_regs*, align 8
  %4 = alloca %struct.op_counter_config*, align 8
  store %struct.pt_regs* %0, %struct.pt_regs** %3, align 8
  store %struct.op_counter_config* %1, %struct.op_counter_config** %4, align 8
  %5 = load i64, i64* @profiling_mode, align 8
  %6 = load i64, i64* @PPU_PROFILING, align 8
  %7 = icmp eq i64 %5, %6
  br i1 %7, label %8, label %12

8:                                                ; preds = %2
  %9 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %10 = load %struct.op_counter_config*, %struct.op_counter_config** %4, align 8
  %11 = call i32 @cell_handle_interrupt_ppu(%struct.pt_regs* %9, %struct.op_counter_config* %10)
  br label %16

12:                                               ; preds = %2
  %13 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %14 = load %struct.op_counter_config*, %struct.op_counter_config** %4, align 8
  %15 = call i32 @cell_handle_interrupt_spu(%struct.pt_regs* %13, %struct.op_counter_config* %14)
  br label %16

16:                                               ; preds = %12, %8
  ret void
}

declare dso_local i32 @cell_handle_interrupt_ppu(%struct.pt_regs*, %struct.op_counter_config*) #1

declare dso_local i32 @cell_handle_interrupt_spu(%struct.pt_regs*, %struct.op_counter_config*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
