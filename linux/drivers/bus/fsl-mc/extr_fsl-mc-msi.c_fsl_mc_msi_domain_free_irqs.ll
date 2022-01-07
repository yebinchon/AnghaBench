; ModuleID = '/home/carl/AnghaBench/linux/drivers/bus/fsl-mc/extr_fsl-mc-msi.c_fsl_mc_msi_domain_free_irqs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bus/fsl-mc/extr_fsl-mc-msi.c_fsl_mc_msi_domain_free_irqs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.irq_domain = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fsl_mc_msi_domain_free_irqs(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.irq_domain*, align 8
  store %struct.device* %0, %struct.device** %2, align 8
  %4 = load %struct.device*, %struct.device** %2, align 8
  %5 = call %struct.irq_domain* @dev_get_msi_domain(%struct.device* %4)
  store %struct.irq_domain* %5, %struct.irq_domain** %3, align 8
  %6 = load %struct.irq_domain*, %struct.irq_domain** %3, align 8
  %7 = icmp ne %struct.irq_domain* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  br label %21

9:                                                ; preds = %1
  %10 = load %struct.irq_domain*, %struct.irq_domain** %3, align 8
  %11 = load %struct.device*, %struct.device** %2, align 8
  %12 = call i32 @msi_domain_free_irqs(%struct.irq_domain* %10, %struct.device* %11)
  %13 = load %struct.device*, %struct.device** %2, align 8
  %14 = call i32 @dev_to_msi_list(%struct.device* %13)
  %15 = call i64 @list_empty(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %9
  br label %21

18:                                               ; preds = %9
  %19 = load %struct.device*, %struct.device** %2, align 8
  %20 = call i32 @fsl_mc_msi_free_descs(%struct.device* %19)
  br label %21

21:                                               ; preds = %18, %17, %8
  ret void
}

declare dso_local %struct.irq_domain* @dev_get_msi_domain(%struct.device*) #1

declare dso_local i32 @msi_domain_free_irqs(%struct.irq_domain*, %struct.device*) #1

declare dso_local i64 @list_empty(i32) #1

declare dso_local i32 @dev_to_msi_list(%struct.device*) #1

declare dso_local i32 @fsl_mc_msi_free_descs(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
