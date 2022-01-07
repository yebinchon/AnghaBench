; ModuleID = '/home/carl/AnghaBench/linux/drivers/base/extr_platform-msi.c_platform_msi_update_chip_ops.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/base/extr_platform-msi.c_platform_msi_update_chip_ops.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msi_domain_info = type { i32, %struct.irq_chip* }
%struct.irq_chip = type { i32, i64, i64, i64, i64, i64 }

@irq_chip_mask_parent = common dso_local global i64 0, align 8
@irq_chip_unmask_parent = common dso_local global i64 0, align 8
@irq_chip_eoi_parent = common dso_local global i64 0, align 8
@msi_domain_set_affinity = common dso_local global i64 0, align 8
@platform_msi_write_msg = common dso_local global i64 0, align 8
@MSI_FLAG_LEVEL_CAPABLE = common dso_local global i32 0, align 4
@IRQCHIP_SUPPORTS_LEVEL_MSI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.msi_domain_info*)* @platform_msi_update_chip_ops to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @platform_msi_update_chip_ops(%struct.msi_domain_info* %0) #0 {
  %2 = alloca %struct.msi_domain_info*, align 8
  %3 = alloca %struct.irq_chip*, align 8
  store %struct.msi_domain_info* %0, %struct.msi_domain_info** %2, align 8
  %4 = load %struct.msi_domain_info*, %struct.msi_domain_info** %2, align 8
  %5 = getelementptr inbounds %struct.msi_domain_info, %struct.msi_domain_info* %4, i32 0, i32 1
  %6 = load %struct.irq_chip*, %struct.irq_chip** %5, align 8
  store %struct.irq_chip* %6, %struct.irq_chip** %3, align 8
  %7 = load %struct.irq_chip*, %struct.irq_chip** %3, align 8
  %8 = icmp ne %struct.irq_chip* %7, null
  %9 = xor i1 %8, true
  %10 = zext i1 %9 to i32
  %11 = call i32 @BUG_ON(i32 %10)
  %12 = load %struct.irq_chip*, %struct.irq_chip** %3, align 8
  %13 = getelementptr inbounds %struct.irq_chip, %struct.irq_chip* %12, i32 0, i32 5
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %1
  %17 = load i64, i64* @irq_chip_mask_parent, align 8
  %18 = load %struct.irq_chip*, %struct.irq_chip** %3, align 8
  %19 = getelementptr inbounds %struct.irq_chip, %struct.irq_chip* %18, i32 0, i32 5
  store i64 %17, i64* %19, align 8
  br label %20

20:                                               ; preds = %16, %1
  %21 = load %struct.irq_chip*, %struct.irq_chip** %3, align 8
  %22 = getelementptr inbounds %struct.irq_chip, %struct.irq_chip* %21, i32 0, i32 4
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %29, label %25

25:                                               ; preds = %20
  %26 = load i64, i64* @irq_chip_unmask_parent, align 8
  %27 = load %struct.irq_chip*, %struct.irq_chip** %3, align 8
  %28 = getelementptr inbounds %struct.irq_chip, %struct.irq_chip* %27, i32 0, i32 4
  store i64 %26, i64* %28, align 8
  br label %29

29:                                               ; preds = %25, %20
  %30 = load %struct.irq_chip*, %struct.irq_chip** %3, align 8
  %31 = getelementptr inbounds %struct.irq_chip, %struct.irq_chip* %30, i32 0, i32 3
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %38, label %34

34:                                               ; preds = %29
  %35 = load i64, i64* @irq_chip_eoi_parent, align 8
  %36 = load %struct.irq_chip*, %struct.irq_chip** %3, align 8
  %37 = getelementptr inbounds %struct.irq_chip, %struct.irq_chip* %36, i32 0, i32 3
  store i64 %35, i64* %37, align 8
  br label %38

38:                                               ; preds = %34, %29
  %39 = load %struct.irq_chip*, %struct.irq_chip** %3, align 8
  %40 = getelementptr inbounds %struct.irq_chip, %struct.irq_chip* %39, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %47, label %43

43:                                               ; preds = %38
  %44 = load i64, i64* @msi_domain_set_affinity, align 8
  %45 = load %struct.irq_chip*, %struct.irq_chip** %3, align 8
  %46 = getelementptr inbounds %struct.irq_chip, %struct.irq_chip* %45, i32 0, i32 2
  store i64 %44, i64* %46, align 8
  br label %47

47:                                               ; preds = %43, %38
  %48 = load %struct.irq_chip*, %struct.irq_chip** %3, align 8
  %49 = getelementptr inbounds %struct.irq_chip, %struct.irq_chip* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %56, label %52

52:                                               ; preds = %47
  %53 = load i64, i64* @platform_msi_write_msg, align 8
  %54 = load %struct.irq_chip*, %struct.irq_chip** %3, align 8
  %55 = getelementptr inbounds %struct.irq_chip, %struct.irq_chip* %54, i32 0, i32 1
  store i64 %53, i64* %55, align 8
  br label %56

56:                                               ; preds = %52, %47
  %57 = load %struct.msi_domain_info*, %struct.msi_domain_info** %2, align 8
  %58 = getelementptr inbounds %struct.msi_domain_info, %struct.msi_domain_info* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* @MSI_FLAG_LEVEL_CAPABLE, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %71

63:                                               ; preds = %56
  %64 = load %struct.irq_chip*, %struct.irq_chip** %3, align 8
  %65 = getelementptr inbounds %struct.irq_chip, %struct.irq_chip* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* @IRQCHIP_SUPPORTS_LEVEL_MSI, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  %70 = xor i1 %69, true
  br label %71

71:                                               ; preds = %63, %56
  %72 = phi i1 [ false, %56 ], [ %70, %63 ]
  %73 = zext i1 %72 to i32
  %74 = call i64 @WARN_ON(i32 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %83

76:                                               ; preds = %71
  %77 = load i32, i32* @MSI_FLAG_LEVEL_CAPABLE, align 4
  %78 = xor i32 %77, -1
  %79 = load %struct.msi_domain_info*, %struct.msi_domain_info** %2, align 8
  %80 = getelementptr inbounds %struct.msi_domain_info, %struct.msi_domain_info* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = and i32 %81, %78
  store i32 %82, i32* %80, align 8
  br label %83

83:                                               ; preds = %76, %71
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i64 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
