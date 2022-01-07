; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/sysdev/extr_fsl_msi.c_fsl_of_msi_remove.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/sysdev/extr_fsl_msi.c_fsl_of_msi_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.fsl_msi = type { i32, i32, i32, %struct.TYPE_3__, %struct.fsl_msi**, %struct.TYPE_4__ }
%struct.TYPE_3__ = type { i64 }
%struct.TYPE_4__ = type { i32* }

@NR_MSI_REG_MAX = common dso_local global i32 0, align 4
@FSL_PIC_IP_MASK = common dso_local global i32 0, align 4
@FSL_PIC_IP_VMPIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @fsl_of_msi_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fsl_of_msi_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.fsl_msi*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %6 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %7 = call %struct.fsl_msi* @platform_get_drvdata(%struct.platform_device* %6)
  store %struct.fsl_msi* %7, %struct.fsl_msi** %3, align 8
  %8 = load %struct.fsl_msi*, %struct.fsl_msi** %3, align 8
  %9 = getelementptr inbounds %struct.fsl_msi, %struct.fsl_msi* %8, i32 0, i32 5
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load i32*, i32** %10, align 8
  %12 = icmp ne i32* %11, null
  br i1 %12, label %13, label %17

13:                                               ; preds = %1
  %14 = load %struct.fsl_msi*, %struct.fsl_msi** %3, align 8
  %15 = getelementptr inbounds %struct.fsl_msi, %struct.fsl_msi* %14, i32 0, i32 5
  %16 = call i32 @list_del(%struct.TYPE_4__* %15)
  br label %17

17:                                               ; preds = %13, %1
  store i32 0, i32* %5, align 4
  br label %18

18:                                               ; preds = %66, %17
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* @NR_MSI_REG_MAX, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %69

22:                                               ; preds = %18
  %23 = load %struct.fsl_msi*, %struct.fsl_msi** %3, align 8
  %24 = getelementptr inbounds %struct.fsl_msi, %struct.fsl_msi* %23, i32 0, i32 4
  %25 = load %struct.fsl_msi**, %struct.fsl_msi*** %24, align 8
  %26 = load i32, i32* %5, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.fsl_msi*, %struct.fsl_msi** %25, i64 %27
  %29 = load %struct.fsl_msi*, %struct.fsl_msi** %28, align 8
  %30 = icmp ne %struct.fsl_msi* %29, null
  br i1 %30, label %31, label %65

31:                                               ; preds = %22
  %32 = load %struct.fsl_msi*, %struct.fsl_msi** %3, align 8
  %33 = getelementptr inbounds %struct.fsl_msi, %struct.fsl_msi* %32, i32 0, i32 4
  %34 = load %struct.fsl_msi**, %struct.fsl_msi*** %33, align 8
  %35 = load i32, i32* %5, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.fsl_msi*, %struct.fsl_msi** %34, i64 %36
  %38 = load %struct.fsl_msi*, %struct.fsl_msi** %37, align 8
  %39 = getelementptr inbounds %struct.fsl_msi, %struct.fsl_msi* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  store i32 %40, i32* %4, align 4
  %41 = load i32, i32* %4, align 4
  %42 = icmp ne i32 %41, 0
  %43 = xor i1 %42, true
  %44 = zext i1 %43 to i32
  %45 = call i32 @BUG_ON(i32 %44)
  %46 = load i32, i32* %4, align 4
  %47 = load %struct.fsl_msi*, %struct.fsl_msi** %3, align 8
  %48 = getelementptr inbounds %struct.fsl_msi, %struct.fsl_msi* %47, i32 0, i32 4
  %49 = load %struct.fsl_msi**, %struct.fsl_msi*** %48, align 8
  %50 = load i32, i32* %5, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.fsl_msi*, %struct.fsl_msi** %49, i64 %51
  %53 = load %struct.fsl_msi*, %struct.fsl_msi** %52, align 8
  %54 = call i32 @free_irq(i32 %46, %struct.fsl_msi* %53)
  %55 = load %struct.fsl_msi*, %struct.fsl_msi** %3, align 8
  %56 = getelementptr inbounds %struct.fsl_msi, %struct.fsl_msi* %55, i32 0, i32 4
  %57 = load %struct.fsl_msi**, %struct.fsl_msi*** %56, align 8
  %58 = load i32, i32* %5, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.fsl_msi*, %struct.fsl_msi** %57, i64 %59
  %61 = load %struct.fsl_msi*, %struct.fsl_msi** %60, align 8
  %62 = call i32 @kfree(%struct.fsl_msi* %61)
  %63 = load i32, i32* %4, align 4
  %64 = call i32 @irq_dispose_mapping(i32 %63)
  br label %65

65:                                               ; preds = %31, %22
  br label %66

66:                                               ; preds = %65
  %67 = load i32, i32* %5, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %5, align 4
  br label %18

69:                                               ; preds = %18
  %70 = load %struct.fsl_msi*, %struct.fsl_msi** %3, align 8
  %71 = getelementptr inbounds %struct.fsl_msi, %struct.fsl_msi* %70, i32 0, i32 3
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %69
  %76 = load %struct.fsl_msi*, %struct.fsl_msi** %3, align 8
  %77 = getelementptr inbounds %struct.fsl_msi, %struct.fsl_msi* %76, i32 0, i32 3
  %78 = call i32 @msi_bitmap_free(%struct.TYPE_3__* %77)
  br label %79

79:                                               ; preds = %75, %69
  %80 = load %struct.fsl_msi*, %struct.fsl_msi** %3, align 8
  %81 = getelementptr inbounds %struct.fsl_msi, %struct.fsl_msi* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* @FSL_PIC_IP_MASK, align 4
  %84 = and i32 %82, %83
  %85 = load i32, i32* @FSL_PIC_IP_VMPIC, align 4
  %86 = icmp ne i32 %84, %85
  br i1 %86, label %87, label %92

87:                                               ; preds = %79
  %88 = load %struct.fsl_msi*, %struct.fsl_msi** %3, align 8
  %89 = getelementptr inbounds %struct.fsl_msi, %struct.fsl_msi* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 8
  %91 = call i32 @iounmap(i32 %90)
  br label %92

92:                                               ; preds = %87, %79
  %93 = load %struct.fsl_msi*, %struct.fsl_msi** %3, align 8
  %94 = call i32 @kfree(%struct.fsl_msi* %93)
  ret i32 0
}

declare dso_local %struct.fsl_msi* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @list_del(%struct.TYPE_4__*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @free_irq(i32, %struct.fsl_msi*) #1

declare dso_local i32 @kfree(%struct.fsl_msi*) #1

declare dso_local i32 @irq_dispose_mapping(i32) #1

declare dso_local i32 @msi_bitmap_free(%struct.TYPE_3__*) #1

declare dso_local i32 @iounmap(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
