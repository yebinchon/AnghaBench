; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/renesas/extr_rcar-gen3-cpg.c_cpg_simple_notifier_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/renesas/extr_rcar-gen3-cpg.c_cpg_simple_notifier_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.raw_notifier_head = type { i32 }
%struct.cpg_simple_notifier = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@cpg_simple_notifier_call = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.raw_notifier_head*, %struct.cpg_simple_notifier*)* @cpg_simple_notifier_register to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cpg_simple_notifier_register(%struct.raw_notifier_head* %0, %struct.cpg_simple_notifier* %1) #0 {
  %3 = alloca %struct.raw_notifier_head*, align 8
  %4 = alloca %struct.cpg_simple_notifier*, align 8
  store %struct.raw_notifier_head* %0, %struct.raw_notifier_head** %3, align 8
  store %struct.cpg_simple_notifier* %1, %struct.cpg_simple_notifier** %4, align 8
  %5 = load i32, i32* @cpg_simple_notifier_call, align 4
  %6 = load %struct.cpg_simple_notifier*, %struct.cpg_simple_notifier** %4, align 8
  %7 = getelementptr inbounds %struct.cpg_simple_notifier, %struct.cpg_simple_notifier* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  store i32 %5, i32* %8, align 4
  %9 = load %struct.raw_notifier_head*, %struct.raw_notifier_head** %3, align 8
  %10 = load %struct.cpg_simple_notifier*, %struct.cpg_simple_notifier** %4, align 8
  %11 = getelementptr inbounds %struct.cpg_simple_notifier, %struct.cpg_simple_notifier* %10, i32 0, i32 0
  %12 = call i32 @raw_notifier_chain_register(%struct.raw_notifier_head* %9, %struct.TYPE_2__* %11)
  ret void
}

declare dso_local i32 @raw_notifier_chain_register(%struct.raw_notifier_head*, %struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
