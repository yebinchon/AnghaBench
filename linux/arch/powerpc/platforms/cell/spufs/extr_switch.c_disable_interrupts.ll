; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/cell/spufs/extr_switch.c_disable_interrupts.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/cell/spufs/extr_switch.c_disable_interrupts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spu_state = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8*, i8*, i8* }
%struct.spu = type { i32*, i32, i32 }

@SPU_CONTEXT_SWITCH_PENDING = common dso_local global i32 0, align 4
@SPU_CONTEXT_FAULT_PENDING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.spu_state*, %struct.spu*)* @disable_interrupts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @disable_interrupts(%struct.spu_state* %0, %struct.spu* %1) #0 {
  %3 = alloca %struct.spu_state*, align 8
  %4 = alloca %struct.spu*, align 8
  store %struct.spu_state* %0, %struct.spu_state** %3, align 8
  store %struct.spu* %1, %struct.spu** %4, align 8
  %5 = load %struct.spu*, %struct.spu** %4, align 8
  %6 = getelementptr inbounds %struct.spu, %struct.spu* %5, i32 0, i32 2
  %7 = call i32 @spin_lock_irq(i32* %6)
  %8 = load %struct.spu_state*, %struct.spu_state** %3, align 8
  %9 = icmp ne %struct.spu_state* %8, null
  br i1 %9, label %10, label %26

10:                                               ; preds = %2
  %11 = load %struct.spu*, %struct.spu** %4, align 8
  %12 = call i8* @spu_int_mask_get(%struct.spu* %11, i32 0)
  %13 = load %struct.spu_state*, %struct.spu_state** %3, align 8
  %14 = getelementptr inbounds %struct.spu_state, %struct.spu_state* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 2
  store i8* %12, i8** %15, align 8
  %16 = load %struct.spu*, %struct.spu** %4, align 8
  %17 = call i8* @spu_int_mask_get(%struct.spu* %16, i32 1)
  %18 = load %struct.spu_state*, %struct.spu_state** %3, align 8
  %19 = getelementptr inbounds %struct.spu_state, %struct.spu_state* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  store i8* %17, i8** %20, align 8
  %21 = load %struct.spu*, %struct.spu** %4, align 8
  %22 = call i8* @spu_int_mask_get(%struct.spu* %21, i32 2)
  %23 = load %struct.spu_state*, %struct.spu_state** %3, align 8
  %24 = getelementptr inbounds %struct.spu_state, %struct.spu_state* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  store i8* %22, i8** %25, align 8
  br label %26

26:                                               ; preds = %10, %2
  %27 = load %struct.spu*, %struct.spu** %4, align 8
  %28 = call i32 @spu_int_mask_set(%struct.spu* %27, i32 0, i64 0)
  %29 = load %struct.spu*, %struct.spu** %4, align 8
  %30 = call i32 @spu_int_mask_set(%struct.spu* %29, i32 1, i64 0)
  %31 = load %struct.spu*, %struct.spu** %4, align 8
  %32 = call i32 @spu_int_mask_set(%struct.spu* %31, i32 2, i64 0)
  %33 = call i32 (...) @eieio()
  %34 = load %struct.spu*, %struct.spu** %4, align 8
  %35 = getelementptr inbounds %struct.spu, %struct.spu* %34, i32 0, i32 2
  %36 = call i32 @spin_unlock_irq(i32* %35)
  %37 = load i32, i32* @SPU_CONTEXT_SWITCH_PENDING, align 4
  %38 = load %struct.spu*, %struct.spu** %4, align 8
  %39 = getelementptr inbounds %struct.spu, %struct.spu* %38, i32 0, i32 1
  %40 = call i32 @set_bit(i32 %37, i32* %39)
  %41 = load i32, i32* @SPU_CONTEXT_FAULT_PENDING, align 4
  %42 = load %struct.spu*, %struct.spu** %4, align 8
  %43 = getelementptr inbounds %struct.spu, %struct.spu* %42, i32 0, i32 1
  %44 = call i32 @clear_bit(i32 %41, i32* %43)
  %45 = load %struct.spu*, %struct.spu** %4, align 8
  %46 = getelementptr inbounds %struct.spu, %struct.spu* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @synchronize_irq(i32 %49)
  %51 = load %struct.spu*, %struct.spu** %4, align 8
  %52 = getelementptr inbounds %struct.spu, %struct.spu* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 1
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @synchronize_irq(i32 %55)
  %57 = load %struct.spu*, %struct.spu** %4, align 8
  %58 = getelementptr inbounds %struct.spu, %struct.spu* %57, i32 0, i32 0
  %59 = load i32*, i32** %58, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 2
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @synchronize_irq(i32 %61)
  ret void
}

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i8* @spu_int_mask_get(%struct.spu*, i32) #1

declare dso_local i32 @spu_int_mask_set(%struct.spu*, i32, i64) #1

declare dso_local i32 @eieio(...) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @synchronize_irq(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
