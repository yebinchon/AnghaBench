; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/extr_sunvdc.c_vdc_port_down.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/extr_sunvdc.c_vdc_port_down.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vdc_port = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vdc_port*)* @vdc_port_down to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vdc_port_down(%struct.vdc_port* %0) #0 {
  %2 = alloca %struct.vdc_port*, align 8
  store %struct.vdc_port* %0, %struct.vdc_port** %2, align 8
  %3 = load %struct.vdc_port*, %struct.vdc_port** %2, align 8
  %4 = getelementptr inbounds %struct.vdc_port, %struct.vdc_port* %3, i32 0, i32 0
  %5 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = call i32 @ldc_disconnect(i32 %6)
  %8 = load %struct.vdc_port*, %struct.vdc_port** %2, align 8
  %9 = getelementptr inbounds %struct.vdc_port, %struct.vdc_port* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @ldc_unbind(i32 %11)
  %13 = load %struct.vdc_port*, %struct.vdc_port** %2, align 8
  %14 = call i32 @vdc_free_tx_ring(%struct.vdc_port* %13)
  %15 = load %struct.vdc_port*, %struct.vdc_port** %2, align 8
  %16 = getelementptr inbounds %struct.vdc_port, %struct.vdc_port* %15, i32 0, i32 0
  %17 = call i32 @vio_ldc_free(%struct.TYPE_2__* %16)
  ret void
}

declare dso_local i32 @ldc_disconnect(i32) #1

declare dso_local i32 @ldc_unbind(i32) #1

declare dso_local i32 @vdc_free_tx_ring(%struct.vdc_port*) #1

declare dso_local i32 @vio_ldc_free(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
