; ModuleID = '/home/carl/AnghaBench/linux/arch/arc/kernel/extr_kgdb.c_do_single_step.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arc/kernel/extr_kgdb.c_do_single_step.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_5__ = type { i32, i32*, i32*, i64 }
%struct.pt_regs = type { i64 }
%struct.callee_regs = type { i32 }

@current = common dso_local global %struct.TYPE_6__* null, align 8
@single_step_data = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pt_regs*)* @do_single_step to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_single_step(%struct.pt_regs* %0) #0 {
  %2 = alloca %struct.pt_regs*, align 8
  store %struct.pt_regs* %0, %struct.pt_regs** %2, align 8
  %3 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %4 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %7 = load %struct.TYPE_6__*, %struct.TYPE_6__** @current, align 8
  %8 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to %struct.callee_regs*
  %12 = load i32*, i32** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @single_step_data, i32 0, i32 2), align 8
  %13 = getelementptr inbounds i32, i32* %12, i64 0
  %14 = load i32*, i32** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @single_step_data, i32 0, i32 2), align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 1
  %16 = call i64 @disasm_next_pc(i64 %5, %struct.pt_regs* %6, %struct.callee_regs* %11, i32* %13, i32* %15)
  store i64 %16, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @single_step_data, i32 0, i32 3), align 8
  %17 = load i32*, i32** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @single_step_data, i32 0, i32 2), align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32*, i32** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @single_step_data, i32 0, i32 1), align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 0
  %22 = call i32 @place_trap(i32 %19, i32* %21)
  %23 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @single_step_data, i32 0, i32 3), align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %32

25:                                               ; preds = %1
  %26 = load i32*, i32** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @single_step_data, i32 0, i32 2), align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 1
  %28 = load i32, i32* %27, align 4
  %29 = load i32*, i32** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @single_step_data, i32 0, i32 1), align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 1
  %31 = call i32 @place_trap(i32 %28, i32* %30)
  br label %32

32:                                               ; preds = %25, %1
  %33 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @single_step_data, i32 0, i32 0), align 8
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @single_step_data, i32 0, i32 0), align 8
  ret void
}

declare dso_local i64 @disasm_next_pc(i64, %struct.pt_regs*, %struct.callee_regs*, i32*, i32*) #1

declare dso_local i32 @place_trap(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
