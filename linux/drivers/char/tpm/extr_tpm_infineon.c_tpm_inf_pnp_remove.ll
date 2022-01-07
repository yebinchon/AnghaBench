; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/tpm/extr_tpm_infineon.c_tpm_inf_pnp_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/tpm/extr_tpm_infineon.c_tpm_inf_pnp_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32, i32, i32, i32, i32, i32, i32 }
%struct.pnp_dev = type { i32 }
%struct.tpm_chip = type { i32 }

@tpm_dev = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@TPM_INF_IO_PORT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pnp_dev*)* @tpm_inf_pnp_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tpm_inf_pnp_remove(%struct.pnp_dev* %0) #0 {
  %2 = alloca %struct.pnp_dev*, align 8
  %3 = alloca %struct.tpm_chip*, align 8
  store %struct.pnp_dev* %0, %struct.pnp_dev** %2, align 8
  %4 = load %struct.pnp_dev*, %struct.pnp_dev** %2, align 8
  %5 = call %struct.tpm_chip* @pnp_get_drvdata(%struct.pnp_dev* %4)
  store %struct.tpm_chip* %5, %struct.tpm_chip** %3, align 8
  %6 = load %struct.tpm_chip*, %struct.tpm_chip** %3, align 8
  %7 = call i32 @tpm_chip_unregister(%struct.tpm_chip* %6)
  %8 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tpm_dev, i32 0, i32 0), align 8
  %9 = load i64, i64* @TPM_INF_IO_PORT, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %18

11:                                               ; preds = %1
  %12 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tpm_dev, i32 0, i32 7), align 8
  %13 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tpm_dev, i32 0, i32 6), align 4
  %14 = call i32 @release_region(i32 %12, i32 %13)
  %15 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tpm_dev, i32 0, i32 5), align 8
  %16 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tpm_dev, i32 0, i32 4), align 4
  %17 = call i32 @release_region(i32 %15, i32 %16)
  br label %24

18:                                               ; preds = %1
  %19 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tpm_dev, i32 0, i32 3), align 8
  %20 = call i32 @iounmap(i32 %19)
  %21 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tpm_dev, i32 0, i32 2), align 4
  %22 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tpm_dev, i32 0, i32 1), align 8
  %23 = call i32 @release_mem_region(i32 %21, i32 %22)
  br label %24

24:                                               ; preds = %18, %11
  ret void
}

declare dso_local %struct.tpm_chip* @pnp_get_drvdata(%struct.pnp_dev*) #1

declare dso_local i32 @tpm_chip_unregister(%struct.tpm_chip*) #1

declare dso_local i32 @release_region(i32, i32) #1

declare dso_local i32 @iounmap(i32) #1

declare dso_local i32 @release_mem_region(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
