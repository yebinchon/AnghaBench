; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/sysdev/extr_fsl_msi.c_fsl_msi_cascade.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/sysdev/extr_fsl_msi.c_fsl_msi_cascade.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsl_msi = type { i32, i32, i32 }
%struct.fsl_msi_cascade_data = type { i32, %struct.fsl_msi* }

@IRQ_NONE = common dso_local global i32 0, align 4
@NR_MSI_REG_MAX = common dso_local global i32 0, align 4
@FSL_PIC_IP_MASK = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @fsl_msi_cascade to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fsl_msi_cascade(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.fsl_msi*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.fsl_msi_cascade_data*, align 8
  %12 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  store i32 -1, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %10, align 4
  %13 = load i8*, i8** %4, align 8
  %14 = bitcast i8* %13 to %struct.fsl_msi_cascade_data*
  store %struct.fsl_msi_cascade_data* %14, %struct.fsl_msi_cascade_data** %11, align 8
  %15 = load i32, i32* @IRQ_NONE, align 4
  store i32 %15, i32* %12, align 4
  %16 = load %struct.fsl_msi_cascade_data*, %struct.fsl_msi_cascade_data** %11, align 8
  %17 = getelementptr inbounds %struct.fsl_msi_cascade_data, %struct.fsl_msi_cascade_data* %16, i32 0, i32 1
  %18 = load %struct.fsl_msi*, %struct.fsl_msi** %17, align 8
  store %struct.fsl_msi* %18, %struct.fsl_msi** %6, align 8
  %19 = load %struct.fsl_msi_cascade_data*, %struct.fsl_msi_cascade_data** %11, align 8
  %20 = getelementptr inbounds %struct.fsl_msi_cascade_data, %struct.fsl_msi_cascade_data* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* @NR_MSI_REG_MAX, align 4
  %24 = icmp sge i32 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %2
  store i32 0, i32* %5, align 4
  br label %26

26:                                               ; preds = %25, %2
  %27 = load %struct.fsl_msi*, %struct.fsl_msi** %6, align 8
  %28 = getelementptr inbounds %struct.fsl_msi, %struct.fsl_msi* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @FSL_PIC_IP_MASK, align 4
  %31 = and i32 %29, %30
  switch i32 %31, label %46 [
    i32 129, label %32
    i32 130, label %39
  ]

32:                                               ; preds = %26
  %33 = load %struct.fsl_msi*, %struct.fsl_msi** %6, align 8
  %34 = getelementptr inbounds %struct.fsl_msi, %struct.fsl_msi* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %7, align 4
  %37 = mul nsw i32 %36, 16
  %38 = call i32 @fsl_msi_read(i32 %35, i32 %37)
  store i32 %38, i32* %8, align 4
  br label %46

39:                                               ; preds = %26
  %40 = load %struct.fsl_msi*, %struct.fsl_msi** %6, align 8
  %41 = getelementptr inbounds %struct.fsl_msi, %struct.fsl_msi* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* %7, align 4
  %44 = mul nsw i32 %43, 4
  %45 = call i32 @fsl_msi_read(i32 %42, i32 %44)
  store i32 %45, i32* %8, align 4
  br label %46

46:                                               ; preds = %26, %39, %32
  br label %47

47:                                               ; preds = %70, %46
  %48 = load i32, i32* %8, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %79

50:                                               ; preds = %47
  %51 = load i32, i32* %8, align 4
  %52 = call i32 @ffs(i32 %51)
  %53 = sub nsw i32 %52, 1
  store i32 %53, i32* %9, align 4
  %54 = load %struct.fsl_msi*, %struct.fsl_msi** %6, align 8
  %55 = getelementptr inbounds %struct.fsl_msi, %struct.fsl_msi* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.fsl_msi*, %struct.fsl_msi** %6, align 8
  %58 = load i32, i32* %7, align 4
  %59 = load i32, i32* %9, align 4
  %60 = load i32, i32* %10, align 4
  %61 = add nsw i32 %59, %60
  %62 = call i32 @msi_hwirq(%struct.fsl_msi* %57, i32 %58, i32 %61)
  %63 = call i32 @irq_linear_revmap(i32 %56, i32 %62)
  store i32 %63, i32* %5, align 4
  %64 = load i32, i32* %5, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %50
  %67 = load i32, i32* %5, align 4
  %68 = call i32 @generic_handle_irq(i32 %67)
  %69 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %69, i32* %12, align 4
  br label %70

70:                                               ; preds = %66, %50
  %71 = load i32, i32* %9, align 4
  %72 = add nsw i32 %71, 1
  %73 = load i32, i32* %10, align 4
  %74 = add nsw i32 %73, %72
  store i32 %74, i32* %10, align 4
  %75 = load i32, i32* %8, align 4
  %76 = load i32, i32* %9, align 4
  %77 = add nsw i32 %76, 1
  %78 = ashr i32 %75, %77
  store i32 %78, i32* %8, align 4
  br label %47

79:                                               ; preds = %47
  %80 = load i32, i32* %12, align 4
  ret i32 %80
}

declare dso_local i32 @fsl_msi_read(i32, i32) #1

declare dso_local i32 @ffs(i32) #1

declare dso_local i32 @irq_linear_revmap(i32, i32) #1

declare dso_local i32 @msi_hwirq(%struct.fsl_msi*, i32, i32) #1

declare dso_local i32 @generic_handle_irq(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
