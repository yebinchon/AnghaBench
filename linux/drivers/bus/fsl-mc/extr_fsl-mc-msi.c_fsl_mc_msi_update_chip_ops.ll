; ModuleID = '/home/carl/AnghaBench/linux/drivers/bus/fsl-mc/extr_fsl-mc-msi.c_fsl_mc_msi_update_chip_ops.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bus/fsl-mc/extr_fsl-mc-msi.c_fsl_mc_msi_update_chip_ops.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msi_domain_info = type { %struct.irq_chip* }
%struct.irq_chip = type { i64 }

@fsl_mc_msi_write_msg = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.msi_domain_info*)* @fsl_mc_msi_update_chip_ops to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fsl_mc_msi_update_chip_ops(%struct.msi_domain_info* %0) #0 {
  %2 = alloca %struct.msi_domain_info*, align 8
  %3 = alloca %struct.irq_chip*, align 8
  store %struct.msi_domain_info* %0, %struct.msi_domain_info** %2, align 8
  %4 = load %struct.msi_domain_info*, %struct.msi_domain_info** %2, align 8
  %5 = getelementptr inbounds %struct.msi_domain_info, %struct.msi_domain_info* %4, i32 0, i32 0
  %6 = load %struct.irq_chip*, %struct.irq_chip** %5, align 8
  store %struct.irq_chip* %6, %struct.irq_chip** %3, align 8
  %7 = load %struct.irq_chip*, %struct.irq_chip** %3, align 8
  %8 = icmp ne %struct.irq_chip* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  br label %19

10:                                               ; preds = %1
  %11 = load %struct.irq_chip*, %struct.irq_chip** %3, align 8
  %12 = getelementptr inbounds %struct.irq_chip, %struct.irq_chip* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %19, label %15

15:                                               ; preds = %10
  %16 = load i64, i64* @fsl_mc_msi_write_msg, align 8
  %17 = load %struct.irq_chip*, %struct.irq_chip** %3, align 8
  %18 = getelementptr inbounds %struct.irq_chip, %struct.irq_chip* %17, i32 0, i32 0
  store i64 %16, i64* %18, align 8
  br label %19

19:                                               ; preds = %9, %15, %10
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
