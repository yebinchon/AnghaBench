; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/hw_random/extr_n2-drv.c_n2rng_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/hw_random/extr_n2-drv.c_n2rng_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.n2rng = type { i32, i32 }

@N2RNG_FLAG_SHUTDOWN = common dso_local global i32 0, align 4
@HV_GRP_RNG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @n2rng_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @n2rng_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.n2rng*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %4 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %5 = call %struct.n2rng* @platform_get_drvdata(%struct.platform_device* %4)
  store %struct.n2rng* %5, %struct.n2rng** %3, align 8
  %6 = load i32, i32* @N2RNG_FLAG_SHUTDOWN, align 4
  %7 = load %struct.n2rng*, %struct.n2rng** %3, align 8
  %8 = getelementptr inbounds %struct.n2rng, %struct.n2rng* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = or i32 %9, %6
  store i32 %10, i32* %8, align 4
  %11 = load %struct.n2rng*, %struct.n2rng** %3, align 8
  %12 = getelementptr inbounds %struct.n2rng, %struct.n2rng* %11, i32 0, i32 0
  %13 = call i32 @cancel_delayed_work_sync(i32* %12)
  %14 = load i32, i32* @HV_GRP_RNG, align 4
  %15 = call i32 @sun4v_hvapi_unregister(i32 %14)
  ret i32 0
}

declare dso_local %struct.n2rng* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @cancel_delayed_work_sync(i32*) #1

declare dso_local i32 @sun4v_hvapi_unregister(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
