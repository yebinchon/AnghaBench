; ModuleID = '/home/carl/AnghaBench/linux/drivers/clocksource/extr_sh_cmt.c_sh_cmt_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clocksource/extr_sh_cmt.c_sh_cmt_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sh_cmt_channel = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sh_cmt_channel*)* @sh_cmt_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sh_cmt_disable(%struct.sh_cmt_channel* %0) #0 {
  %2 = alloca %struct.sh_cmt_channel*, align 8
  store %struct.sh_cmt_channel* %0, %struct.sh_cmt_channel** %2, align 8
  %3 = load %struct.sh_cmt_channel*, %struct.sh_cmt_channel** %2, align 8
  %4 = call i32 @sh_cmt_start_stop_ch(%struct.sh_cmt_channel* %3, i32 0)
  %5 = load %struct.sh_cmt_channel*, %struct.sh_cmt_channel** %2, align 8
  %6 = call i32 @sh_cmt_write_cmcsr(%struct.sh_cmt_channel* %5, i32 0)
  %7 = load %struct.sh_cmt_channel*, %struct.sh_cmt_channel** %2, align 8
  %8 = getelementptr inbounds %struct.sh_cmt_channel, %struct.sh_cmt_channel* %7, i32 0, i32 0
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @clk_disable(i32 %11)
  %13 = load %struct.sh_cmt_channel*, %struct.sh_cmt_channel** %2, align 8
  %14 = getelementptr inbounds %struct.sh_cmt_channel, %struct.sh_cmt_channel* %13, i32 0, i32 0
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = call i32 @dev_pm_syscore_device(i32* %18, i32 0)
  %20 = load %struct.sh_cmt_channel*, %struct.sh_cmt_channel** %2, align 8
  %21 = getelementptr inbounds %struct.sh_cmt_channel, %struct.sh_cmt_channel* %20, i32 0, i32 0
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = call i32 @pm_runtime_put(i32* %25)
  ret void
}

declare dso_local i32 @sh_cmt_start_stop_ch(%struct.sh_cmt_channel*, i32) #1

declare dso_local i32 @sh_cmt_write_cmcsr(%struct.sh_cmt_channel*, i32) #1

declare dso_local i32 @clk_disable(i32) #1

declare dso_local i32 @dev_pm_syscore_device(i32*, i32) #1

declare dso_local i32 @pm_runtime_put(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
