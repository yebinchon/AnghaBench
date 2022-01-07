; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/cell/spufs/extr_switch.c_setup_spu_status_part2.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/cell/spufs/extr_switch.c_setup_spu_status_part2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spu_state = type { %struct.TYPE_6__*, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32* }
%struct.TYPE_4__ = type { i32 }
%struct.spu = type { i32 }

@SPU_STATUS_INVALID_INSTR = common dso_local global i32 0, align 4
@SPU_STATUS_SINGLE_STEP = common dso_local global i32 0, align 4
@SPU_STATUS_STOPPED_BY_HALT = common dso_local global i32 0, align 4
@SPU_STATUS_STOPPED_BY_STOP = common dso_local global i32 0, align 4
@SPU_STATUS_RUNNING = common dso_local global i32 0, align 4
@SPU_STOPPED_STATUS_R = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.spu_state*, %struct.spu*)* @setup_spu_status_part2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setup_spu_status_part2(%struct.spu_state* %0, %struct.spu* %1) #0 {
  %3 = alloca %struct.spu_state*, align 8
  %4 = alloca %struct.spu*, align 8
  %5 = alloca i32, align 4
  store %struct.spu_state* %0, %struct.spu_state** %3, align 8
  store %struct.spu* %1, %struct.spu** %4, align 8
  %6 = load i32, i32* @SPU_STATUS_INVALID_INSTR, align 4
  %7 = load i32, i32* @SPU_STATUS_SINGLE_STEP, align 4
  %8 = or i32 %6, %7
  %9 = load i32, i32* @SPU_STATUS_STOPPED_BY_HALT, align 4
  %10 = or i32 %8, %9
  %11 = load i32, i32* @SPU_STATUS_STOPPED_BY_STOP, align 4
  %12 = or i32 %10, %11
  %13 = load i32, i32* @SPU_STATUS_RUNNING, align 4
  %14 = or i32 %12, %13
  store i32 %14, i32* %5, align 4
  %15 = load %struct.spu_state*, %struct.spu_state** %3, align 8
  %16 = getelementptr inbounds %struct.spu_state, %struct.spu_state* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* %5, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %31, label %22

22:                                               ; preds = %2
  %23 = load i32, i32* @SPU_STOPPED_STATUS_R, align 4
  %24 = load %struct.spu_state*, %struct.spu_state** %3, align 8
  %25 = getelementptr inbounds %struct.spu_state, %struct.spu_state* %24, i32 0, i32 0
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 0
  store i32 %23, i32* %30, align 4
  br label %31

31:                                               ; preds = %22, %2
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
