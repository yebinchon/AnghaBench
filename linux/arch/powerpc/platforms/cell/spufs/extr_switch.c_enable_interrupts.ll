; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/cell/spufs/extr_switch.c_enable_interrupts.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/cell/spufs/extr_switch.c_enable_interrupts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spu_state = type { i32 }
%struct.spu = type { i32 }

@CLASS1_ENABLE_SEGMENT_FAULT_INTR = common dso_local global i64 0, align 8
@CLASS1_ENABLE_STORAGE_FAULT_INTR = common dso_local global i64 0, align 8
@CLASS0_INTR_MASK = common dso_local global i32 0, align 4
@CLASS1_INTR_MASK = common dso_local global i32 0, align 4
@CLASS2_INTR_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.spu_state*, %struct.spu*)* @enable_interrupts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @enable_interrupts(%struct.spu_state* %0, %struct.spu* %1) #0 {
  %3 = alloca %struct.spu_state*, align 8
  %4 = alloca %struct.spu*, align 8
  %5 = alloca i64, align 8
  store %struct.spu_state* %0, %struct.spu_state** %3, align 8
  store %struct.spu* %1, %struct.spu** %4, align 8
  %6 = load i64, i64* @CLASS1_ENABLE_SEGMENT_FAULT_INTR, align 8
  %7 = load i64, i64* @CLASS1_ENABLE_STORAGE_FAULT_INTR, align 8
  %8 = or i64 %6, %7
  store i64 %8, i64* %5, align 8
  %9 = load %struct.spu*, %struct.spu** %4, align 8
  %10 = getelementptr inbounds %struct.spu, %struct.spu* %9, i32 0, i32 0
  %11 = call i32 @spin_lock_irq(i32* %10)
  %12 = load %struct.spu*, %struct.spu** %4, align 8
  %13 = load i32, i32* @CLASS0_INTR_MASK, align 4
  %14 = call i32 @spu_int_stat_clear(%struct.spu* %12, i32 0, i32 %13)
  %15 = load %struct.spu*, %struct.spu** %4, align 8
  %16 = load i32, i32* @CLASS1_INTR_MASK, align 4
  %17 = call i32 @spu_int_stat_clear(%struct.spu* %15, i32 1, i32 %16)
  %18 = load %struct.spu*, %struct.spu** %4, align 8
  %19 = load i32, i32* @CLASS2_INTR_MASK, align 4
  %20 = call i32 @spu_int_stat_clear(%struct.spu* %18, i32 2, i32 %19)
  %21 = load %struct.spu*, %struct.spu** %4, align 8
  %22 = call i32 @spu_int_mask_set(%struct.spu* %21, i32 0, i64 0)
  %23 = load %struct.spu*, %struct.spu** %4, align 8
  %24 = load i64, i64* %5, align 8
  %25 = call i32 @spu_int_mask_set(%struct.spu* %23, i32 1, i64 %24)
  %26 = load %struct.spu*, %struct.spu** %4, align 8
  %27 = call i32 @spu_int_mask_set(%struct.spu* %26, i32 2, i64 0)
  %28 = load %struct.spu*, %struct.spu** %4, align 8
  %29 = getelementptr inbounds %struct.spu, %struct.spu* %28, i32 0, i32 0
  %30 = call i32 @spin_unlock_irq(i32* %29)
  ret void
}

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @spu_int_stat_clear(%struct.spu*, i32, i32) #1

declare dso_local i32 @spu_int_mask_set(%struct.spu*, i32, i64) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
