; ModuleID = '/home/carl/AnghaBench/linux/drivers/bus/extr_moxtet.c_moxtet_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bus/extr_moxtet.c_moxtet_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { i32 }
%struct.moxtet = type { i32, i32, i32 }

@__unregister = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*)* @moxtet_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @moxtet_remove(%struct.spi_device* %0) #0 {
  %2 = alloca %struct.spi_device*, align 8
  %3 = alloca %struct.moxtet*, align 8
  store %struct.spi_device* %0, %struct.spi_device** %2, align 8
  %4 = load %struct.spi_device*, %struct.spi_device** %2, align 8
  %5 = call %struct.moxtet* @spi_get_drvdata(%struct.spi_device* %4)
  store %struct.moxtet* %5, %struct.moxtet** %3, align 8
  %6 = load %struct.moxtet*, %struct.moxtet** %3, align 8
  %7 = getelementptr inbounds %struct.moxtet, %struct.moxtet* %6, i32 0, i32 2
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.moxtet*, %struct.moxtet** %3, align 8
  %10 = call i32 @free_irq(i32 %8, %struct.moxtet* %9)
  %11 = load %struct.moxtet*, %struct.moxtet** %3, align 8
  %12 = call i32 @moxtet_irq_free(%struct.moxtet* %11)
  %13 = load %struct.moxtet*, %struct.moxtet** %3, align 8
  %14 = call i32 @moxtet_unregister_debugfs(%struct.moxtet* %13)
  %15 = load %struct.moxtet*, %struct.moxtet** %3, align 8
  %16 = getelementptr inbounds %struct.moxtet, %struct.moxtet* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @__unregister, align 4
  %19 = call i32 @device_for_each_child(i32 %17, i32* null, i32 %18)
  %20 = load %struct.moxtet*, %struct.moxtet** %3, align 8
  %21 = getelementptr inbounds %struct.moxtet, %struct.moxtet* %20, i32 0, i32 0
  %22 = call i32 @mutex_destroy(i32* %21)
  ret i32 0
}

declare dso_local %struct.moxtet* @spi_get_drvdata(%struct.spi_device*) #1

declare dso_local i32 @free_irq(i32, %struct.moxtet*) #1

declare dso_local i32 @moxtet_irq_free(%struct.moxtet*) #1

declare dso_local i32 @moxtet_unregister_debugfs(%struct.moxtet*) #1

declare dso_local i32 @device_for_each_child(i32, i32*, i32) #1

declare dso_local i32 @mutex_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
