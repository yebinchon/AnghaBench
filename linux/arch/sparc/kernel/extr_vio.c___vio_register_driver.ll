; ModuleID = '/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_vio.c___vio_register_driver.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_vio.c___vio_register_driver.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vio_driver = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i8*, %struct.module*, i32, i32* }
%struct.module = type { i32 }

@vio_bus_type = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__vio_register_driver(%struct.vio_driver* %0, %struct.module* %1, i8* %2) #0 {
  %4 = alloca %struct.vio_driver*, align 8
  %5 = alloca %struct.module*, align 8
  %6 = alloca i8*, align 8
  store %struct.vio_driver* %0, %struct.vio_driver** %4, align 8
  store %struct.module* %1, %struct.module** %5, align 8
  store i8* %2, i8** %6, align 8
  %7 = load %struct.vio_driver*, %struct.vio_driver** %4, align 8
  %8 = getelementptr inbounds %struct.vio_driver, %struct.vio_driver* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 3
  store i32* @vio_bus_type, i32** %9, align 8
  %10 = load %struct.vio_driver*, %struct.vio_driver** %4, align 8
  %11 = getelementptr inbounds %struct.vio_driver, %struct.vio_driver* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = load %struct.vio_driver*, %struct.vio_driver** %4, align 8
  %14 = getelementptr inbounds %struct.vio_driver, %struct.vio_driver* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 2
  store i32 %12, i32* %15, align 8
  %16 = load %struct.module*, %struct.module** %5, align 8
  %17 = load %struct.vio_driver*, %struct.vio_driver** %4, align 8
  %18 = getelementptr inbounds %struct.vio_driver, %struct.vio_driver* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 1
  store %struct.module* %16, %struct.module** %19, align 8
  %20 = load i8*, i8** %6, align 8
  %21 = load %struct.vio_driver*, %struct.vio_driver** %4, align 8
  %22 = getelementptr inbounds %struct.vio_driver, %struct.vio_driver* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  store i8* %20, i8** %23, align 8
  %24 = load %struct.vio_driver*, %struct.vio_driver** %4, align 8
  %25 = getelementptr inbounds %struct.vio_driver, %struct.vio_driver* %24, i32 0, i32 0
  %26 = call i32 @driver_register(%struct.TYPE_2__* %25)
  ret i32 %26
}

declare dso_local i32 @driver_register(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
