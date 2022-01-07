; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/extr_sunvdc.c_vdc_port_up.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/extr_sunvdc.c_vdc_port_up.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vdc_port = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.vio_completion* }
%struct.vio_completion = type { i32, i32, i32 }

@WAITING_FOR_LINK_UP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vdc_port*)* @vdc_port_up to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vdc_port_up(%struct.vdc_port* %0) #0 {
  %2 = alloca %struct.vdc_port*, align 8
  %3 = alloca %struct.vio_completion, align 4
  store %struct.vdc_port* %0, %struct.vdc_port** %2, align 8
  %4 = getelementptr inbounds %struct.vio_completion, %struct.vio_completion* %3, i32 0, i32 1
  %5 = call i32 @init_completion(i32* %4)
  %6 = getelementptr inbounds %struct.vio_completion, %struct.vio_completion* %3, i32 0, i32 0
  store i32 0, i32* %6, align 4
  %7 = load i32, i32* @WAITING_FOR_LINK_UP, align 4
  %8 = getelementptr inbounds %struct.vio_completion, %struct.vio_completion* %3, i32 0, i32 2
  store i32 %7, i32* %8, align 4
  %9 = load %struct.vdc_port*, %struct.vdc_port** %2, align 8
  %10 = getelementptr inbounds %struct.vdc_port, %struct.vdc_port* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  store %struct.vio_completion* %3, %struct.vio_completion** %11, align 8
  %12 = load %struct.vdc_port*, %struct.vdc_port** %2, align 8
  %13 = getelementptr inbounds %struct.vdc_port, %struct.vdc_port* %12, i32 0, i32 0
  %14 = call i32 @vio_port_up(%struct.TYPE_2__* %13)
  %15 = getelementptr inbounds %struct.vio_completion, %struct.vio_completion* %3, i32 0, i32 1
  %16 = call i32 @wait_for_completion(i32* %15)
  %17 = getelementptr inbounds %struct.vio_completion, %struct.vio_completion* %3, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  ret i32 %18
}

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @vio_port_up(%struct.TYPE_2__*) #1

declare dso_local i32 @wait_for_completion(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
