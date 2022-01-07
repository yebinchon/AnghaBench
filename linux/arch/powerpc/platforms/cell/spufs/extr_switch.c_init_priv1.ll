; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/cell/spufs/extr_switch.c_init_priv1.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/cell/spufs/extr_switch.c_init_priv1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spu_state = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }

@MFC_STATE1_LOCAL_STORAGE_DECODE_MASK = common dso_local global i32 0, align 4
@MFC_STATE1_MASTER_RUN_CONTROL_MASK = common dso_local global i32 0, align 4
@MFC_STATE1_PROBLEM_STATE_MASK = common dso_local global i32 0, align 4
@MFC_STATE1_RELOCATE_MASK = common dso_local global i32 0, align 4
@MFC_STATE1_BUS_TLBIE_MASK = common dso_local global i32 0, align 4
@CLASS0_ENABLE_DMA_ALIGNMENT_INTR = common dso_local global i32 0, align 4
@CLASS0_ENABLE_INVALID_DMA_COMMAND_INTR = common dso_local global i32 0, align 4
@CLASS0_ENABLE_SPU_ERROR_INTR = common dso_local global i32 0, align 4
@CLASS1_ENABLE_SEGMENT_FAULT_INTR = common dso_local global i32 0, align 4
@CLASS1_ENABLE_STORAGE_FAULT_INTR = common dso_local global i32 0, align 4
@CLASS2_ENABLE_SPU_STOP_INTR = common dso_local global i32 0, align 4
@CLASS2_ENABLE_SPU_HALT_INTR = common dso_local global i32 0, align 4
@CLASS2_ENABLE_SPU_DMA_TAG_GROUP_COMPLETE_INTR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.spu_state*)* @init_priv1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_priv1(%struct.spu_state* %0) #0 {
  %2 = alloca %struct.spu_state*, align 8
  store %struct.spu_state* %0, %struct.spu_state** %2, align 8
  %3 = load i32, i32* @MFC_STATE1_LOCAL_STORAGE_DECODE_MASK, align 4
  %4 = load i32, i32* @MFC_STATE1_MASTER_RUN_CONTROL_MASK, align 4
  %5 = or i32 %3, %4
  %6 = load i32, i32* @MFC_STATE1_PROBLEM_STATE_MASK, align 4
  %7 = or i32 %5, %6
  %8 = load i32, i32* @MFC_STATE1_RELOCATE_MASK, align 4
  %9 = or i32 %7, %8
  %10 = load i32, i32* @MFC_STATE1_BUS_TLBIE_MASK, align 4
  %11 = or i32 %9, %10
  %12 = load %struct.spu_state*, %struct.spu_state** %2, align 8
  %13 = getelementptr inbounds %struct.spu_state, %struct.spu_state* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  store i32 %11, i32* %14, align 4
  %15 = load i32, i32* @CLASS0_ENABLE_DMA_ALIGNMENT_INTR, align 4
  %16 = load i32, i32* @CLASS0_ENABLE_INVALID_DMA_COMMAND_INTR, align 4
  %17 = or i32 %15, %16
  %18 = load i32, i32* @CLASS0_ENABLE_SPU_ERROR_INTR, align 4
  %19 = or i32 %17, %18
  %20 = load %struct.spu_state*, %struct.spu_state** %2, align 8
  %21 = getelementptr inbounds %struct.spu_state, %struct.spu_state* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  store i32 %19, i32* %22, align 4
  %23 = load i32, i32* @CLASS1_ENABLE_SEGMENT_FAULT_INTR, align 4
  %24 = load i32, i32* @CLASS1_ENABLE_STORAGE_FAULT_INTR, align 4
  %25 = or i32 %23, %24
  %26 = load %struct.spu_state*, %struct.spu_state** %2, align 8
  %27 = getelementptr inbounds %struct.spu_state, %struct.spu_state* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 2
  store i32 %25, i32* %28, align 4
  %29 = load i32, i32* @CLASS2_ENABLE_SPU_STOP_INTR, align 4
  %30 = load i32, i32* @CLASS2_ENABLE_SPU_HALT_INTR, align 4
  %31 = or i32 %29, %30
  %32 = load i32, i32* @CLASS2_ENABLE_SPU_DMA_TAG_GROUP_COMPLETE_INTR, align 4
  %33 = or i32 %31, %32
  %34 = load %struct.spu_state*, %struct.spu_state** %2, align 8
  %35 = getelementptr inbounds %struct.spu_state, %struct.spu_state* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 3
  store i32 %33, i32* %36, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
