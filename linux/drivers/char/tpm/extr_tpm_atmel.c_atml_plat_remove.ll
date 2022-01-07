; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/tpm/extr_tpm_atmel.c_atml_plat_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/tpm/extr_tpm_atmel.c_atml_plat_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.tpm_chip = type { i32 }
%struct.tpm_atmel_priv = type { i32, i32, i32, i64 }

@pdev = common dso_local global %struct.TYPE_3__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @atml_plat_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @atml_plat_remove() #0 {
  %1 = alloca %struct.tpm_chip*, align 8
  %2 = alloca %struct.tpm_atmel_priv*, align 8
  %3 = load %struct.TYPE_3__*, %struct.TYPE_3__** @pdev, align 8
  %4 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 0
  %5 = call i8* @dev_get_drvdata(i32* %4)
  %6 = bitcast i8* %5 to %struct.tpm_chip*
  store %struct.tpm_chip* %6, %struct.tpm_chip** %1, align 8
  %7 = load %struct.tpm_chip*, %struct.tpm_chip** %1, align 8
  %8 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %7, i32 0, i32 0
  %9 = call i8* @dev_get_drvdata(i32* %8)
  %10 = bitcast i8* %9 to %struct.tpm_atmel_priv*
  store %struct.tpm_atmel_priv* %10, %struct.tpm_atmel_priv** %2, align 8
  %11 = load %struct.tpm_chip*, %struct.tpm_chip** %1, align 8
  %12 = call i32 @tpm_chip_unregister(%struct.tpm_chip* %11)
  %13 = load %struct.tpm_atmel_priv*, %struct.tpm_atmel_priv** %2, align 8
  %14 = getelementptr inbounds %struct.tpm_atmel_priv, %struct.tpm_atmel_priv* %13, i32 0, i32 3
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %25

17:                                               ; preds = %0
  %18 = load %struct.tpm_atmel_priv*, %struct.tpm_atmel_priv** %2, align 8
  %19 = getelementptr inbounds %struct.tpm_atmel_priv, %struct.tpm_atmel_priv* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.tpm_atmel_priv*, %struct.tpm_atmel_priv** %2, align 8
  %22 = getelementptr inbounds %struct.tpm_atmel_priv, %struct.tpm_atmel_priv* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @atmel_release_region(i32 %20, i32 %23)
  br label %25

25:                                               ; preds = %17, %0
  %26 = load %struct.tpm_atmel_priv*, %struct.tpm_atmel_priv** %2, align 8
  %27 = getelementptr inbounds %struct.tpm_atmel_priv, %struct.tpm_atmel_priv* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @atmel_put_base_addr(i32 %28)
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** @pdev, align 8
  %31 = call i32 @platform_device_unregister(%struct.TYPE_3__* %30)
  ret void
}

declare dso_local i8* @dev_get_drvdata(i32*) #1

declare dso_local i32 @tpm_chip_unregister(%struct.tpm_chip*) #1

declare dso_local i32 @atmel_release_region(i32, i32) #1

declare dso_local i32 @atmel_put_base_addr(i32) #1

declare dso_local i32 @platform_device_unregister(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
