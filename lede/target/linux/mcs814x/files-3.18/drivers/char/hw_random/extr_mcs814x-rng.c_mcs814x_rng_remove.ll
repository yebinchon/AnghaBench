; ModuleID = '/home/carl/AnghaBench/lede/target/linux/mcs814x/files-3.18/drivers/char/hw_random/extr_mcs814x-rng.c_mcs814x_rng_remove.c'
source_filename = "/home/carl/AnghaBench/lede/target/linux/mcs814x/files-3.18/drivers/char/hw_random/extr_mcs814x-rng.c_mcs814x_rng_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.hwrng = type { i64 }
%struct.mcs814x_rng_priv = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @mcs814x_rng_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mcs814x_rng_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.hwrng*, align 8
  %4 = alloca %struct.mcs814x_rng_priv*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %5 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %6 = call %struct.mcs814x_rng_priv* @platform_get_drvdata(%struct.platform_device* %5)
  %7 = bitcast %struct.mcs814x_rng_priv* %6 to %struct.hwrng*
  store %struct.hwrng* %7, %struct.hwrng** %3, align 8
  %8 = load %struct.hwrng*, %struct.hwrng** %3, align 8
  %9 = getelementptr inbounds %struct.hwrng, %struct.hwrng* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to %struct.mcs814x_rng_priv*
  store %struct.mcs814x_rng_priv* %11, %struct.mcs814x_rng_priv** %4, align 8
  %12 = load %struct.hwrng*, %struct.hwrng** %3, align 8
  %13 = bitcast %struct.hwrng* %12 to %struct.mcs814x_rng_priv*
  %14 = call i32 @hwrng_unregister(%struct.mcs814x_rng_priv* %13)
  %15 = load %struct.mcs814x_rng_priv*, %struct.mcs814x_rng_priv** %4, align 8
  %16 = call i32 @kfree(%struct.mcs814x_rng_priv* %15)
  %17 = load %struct.hwrng*, %struct.hwrng** %3, align 8
  %18 = bitcast %struct.hwrng* %17 to %struct.mcs814x_rng_priv*
  %19 = call i32 @kfree(%struct.mcs814x_rng_priv* %18)
  %20 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %21 = call i32 @platform_set_drvdata(%struct.platform_device* %20, i32* null)
  ret i32 0
}

declare dso_local %struct.mcs814x_rng_priv* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @hwrng_unregister(%struct.mcs814x_rng_priv*) #1

declare dso_local i32 @kfree(%struct.mcs814x_rng_priv*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
