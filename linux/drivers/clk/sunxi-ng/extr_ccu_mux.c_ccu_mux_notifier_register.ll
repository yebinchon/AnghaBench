; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/sunxi-ng/extr_ccu_mux.c_ccu_mux_notifier_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/sunxi-ng/extr_ccu_mux.c_ccu_mux_notifier_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk = type { i32 }
%struct.ccu_mux_nb = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@ccu_mux_notifier_cb = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ccu_mux_notifier_register(%struct.clk* %0, %struct.ccu_mux_nb* %1) #0 {
  %3 = alloca %struct.clk*, align 8
  %4 = alloca %struct.ccu_mux_nb*, align 8
  store %struct.clk* %0, %struct.clk** %3, align 8
  store %struct.ccu_mux_nb* %1, %struct.ccu_mux_nb** %4, align 8
  %5 = load i32, i32* @ccu_mux_notifier_cb, align 4
  %6 = load %struct.ccu_mux_nb*, %struct.ccu_mux_nb** %4, align 8
  %7 = getelementptr inbounds %struct.ccu_mux_nb, %struct.ccu_mux_nb* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  store i32 %5, i32* %8, align 4
  %9 = load %struct.clk*, %struct.clk** %3, align 8
  %10 = load %struct.ccu_mux_nb*, %struct.ccu_mux_nb** %4, align 8
  %11 = getelementptr inbounds %struct.ccu_mux_nb, %struct.ccu_mux_nb* %10, i32 0, i32 0
  %12 = call i32 @clk_notifier_register(%struct.clk* %9, %struct.TYPE_2__* %11)
  ret i32 %12
}

declare dso_local i32 @clk_notifier_register(%struct.clk*, %struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
