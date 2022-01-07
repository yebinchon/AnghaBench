; ModuleID = '/home/carl/AnghaBench/linux/drivers/bus/fsl-mc/extr_fsl-mc-msi.c_fsl_mc_msi_domain_alloc_irqs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bus/fsl-mc/extr_fsl-mc-msi.c_fsl_mc_msi_domain_alloc_irqs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.irq_domain = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Failed to allocate IRQs\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fsl_mc_msi_domain_alloc_irqs(%struct.device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.irq_domain*, align 8
  %7 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.device*, %struct.device** %4, align 8
  %9 = call i32 @dev_to_msi_list(%struct.device* %8)
  %10 = call i32 @list_empty(i32 %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* @EINVAL, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %3, align 4
  br label %46

15:                                               ; preds = %2
  %16 = load %struct.device*, %struct.device** %4, align 8
  %17 = load i32, i32* %5, align 4
  %18 = call i32 @fsl_mc_msi_alloc_descs(%struct.device* %16, i32 %17)
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %7, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %15
  %22 = load i32, i32* %7, align 4
  store i32 %22, i32* %3, align 4
  br label %46

23:                                               ; preds = %15
  %24 = load %struct.device*, %struct.device** %4, align 8
  %25 = call %struct.irq_domain* @dev_get_msi_domain(%struct.device* %24)
  store %struct.irq_domain* %25, %struct.irq_domain** %6, align 8
  %26 = load %struct.irq_domain*, %struct.irq_domain** %6, align 8
  %27 = icmp ne %struct.irq_domain* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %23
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %7, align 4
  br label %42

31:                                               ; preds = %23
  %32 = load %struct.irq_domain*, %struct.irq_domain** %6, align 8
  %33 = load %struct.device*, %struct.device** %4, align 8
  %34 = load i32, i32* %5, align 4
  %35 = call i32 @msi_domain_alloc_irqs(%struct.irq_domain* %32, %struct.device* %33, i32 %34)
  store i32 %35, i32* %7, align 4
  %36 = load i32, i32* %7, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %31
  %39 = load %struct.device*, %struct.device** %4, align 8
  %40 = call i32 @dev_err(%struct.device* %39, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %42

41:                                               ; preds = %31
  store i32 0, i32* %3, align 4
  br label %46

42:                                               ; preds = %38, %28
  %43 = load %struct.device*, %struct.device** %4, align 8
  %44 = call i32 @fsl_mc_msi_free_descs(%struct.device* %43)
  %45 = load i32, i32* %7, align 4
  store i32 %45, i32* %3, align 4
  br label %46

46:                                               ; preds = %42, %41, %21, %12
  %47 = load i32, i32* %3, align 4
  ret i32 %47
}

declare dso_local i32 @list_empty(i32) #1

declare dso_local i32 @dev_to_msi_list(%struct.device*) #1

declare dso_local i32 @fsl_mc_msi_alloc_descs(%struct.device*, i32) #1

declare dso_local %struct.irq_domain* @dev_get_msi_domain(%struct.device*) #1

declare dso_local i32 @msi_domain_alloc_irqs(%struct.irq_domain*, %struct.device*, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @fsl_mc_msi_free_descs(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
