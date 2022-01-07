; ModuleID = '/home/carl/AnghaBench/linux/drivers/bus/fsl-mc/extr_fsl-mc-msi.c_fsl_mc_find_msi_domain.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bus/fsl-mc/extr_fsl-mc-msi.c_fsl_mc_find_msi_domain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.irq_domain = type { i32 }

@DOMAIN_BUS_FSL_MC_MSI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"Unable to find fsl-mc MSI domain for %pOF\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fsl_mc_find_msi_domain(%struct.device* %0, %struct.irq_domain** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.irq_domain**, align 8
  %6 = alloca %struct.irq_domain*, align 8
  %7 = alloca %struct.device_node*, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.irq_domain** %1, %struct.irq_domain*** %5, align 8
  %8 = load %struct.device*, %struct.device** %4, align 8
  %9 = getelementptr inbounds %struct.device, %struct.device* %8, i32 0, i32 0
  %10 = load %struct.device_node*, %struct.device_node** %9, align 8
  store %struct.device_node* %10, %struct.device_node** %7, align 8
  %11 = load %struct.device*, %struct.device** %4, align 8
  %12 = load %struct.device_node*, %struct.device_node** %7, align 8
  %13 = load i32, i32* @DOMAIN_BUS_FSL_MC_MSI, align 4
  %14 = call %struct.irq_domain* @of_msi_get_domain(%struct.device* %11, %struct.device_node* %12, i32 %13)
  store %struct.irq_domain* %14, %struct.irq_domain** %6, align 8
  %15 = load %struct.irq_domain*, %struct.irq_domain** %6, align 8
  %16 = icmp ne %struct.irq_domain* %15, null
  br i1 %16, label %22, label %17

17:                                               ; preds = %2
  %18 = load %struct.device_node*, %struct.device_node** %7, align 8
  %19 = call i32 @pr_err(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), %struct.device_node* %18)
  %20 = load i32, i32* @ENOENT, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %25

22:                                               ; preds = %2
  %23 = load %struct.irq_domain*, %struct.irq_domain** %6, align 8
  %24 = load %struct.irq_domain**, %struct.irq_domain*** %5, align 8
  store %struct.irq_domain* %23, %struct.irq_domain** %24, align 8
  store i32 0, i32* %3, align 4
  br label %25

25:                                               ; preds = %22, %17
  %26 = load i32, i32* %3, align 4
  ret i32 %26
}

declare dso_local %struct.irq_domain* @of_msi_get_domain(%struct.device*, %struct.device_node*, i32) #1

declare dso_local i32 @pr_err(i8*, %struct.device_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
