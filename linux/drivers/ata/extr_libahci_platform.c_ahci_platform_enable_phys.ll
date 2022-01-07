; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_libahci_platform.c_ahci_platform_enable_phys.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_libahci_platform.c_ahci_platform_enable_phys.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahci_host_priv = type { i32, i32* }

@PHY_MODE_SATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ahci_host_priv*)* @ahci_platform_enable_phys to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ahci_platform_enable_phys(%struct.ahci_host_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ahci_host_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.ahci_host_priv* %0, %struct.ahci_host_priv** %3, align 8
  store i32 0, i32* %5, align 4
  br label %6

6:                                                ; preds = %66, %1
  %7 = load i32, i32* %5, align 4
  %8 = load %struct.ahci_host_priv*, %struct.ahci_host_priv** %3, align 8
  %9 = getelementptr inbounds %struct.ahci_host_priv, %struct.ahci_host_priv* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp slt i32 %7, %10
  br i1 %11, label %12, label %69

12:                                               ; preds = %6
  %13 = load %struct.ahci_host_priv*, %struct.ahci_host_priv** %3, align 8
  %14 = getelementptr inbounds %struct.ahci_host_priv, %struct.ahci_host_priv* %13, i32 0, i32 1
  %15 = load i32*, i32** %14, align 8
  %16 = load i32, i32* %5, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i32, i32* %15, i64 %17
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @phy_init(i32 %19)
  store i32 %20, i32* %4, align 4
  %21 = load i32, i32* %4, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %12
  br label %70

24:                                               ; preds = %12
  %25 = load %struct.ahci_host_priv*, %struct.ahci_host_priv** %3, align 8
  %26 = getelementptr inbounds %struct.ahci_host_priv, %struct.ahci_host_priv* %25, i32 0, i32 1
  %27 = load i32*, i32** %26, align 8
  %28 = load i32, i32* %5, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @PHY_MODE_SATA, align 4
  %33 = call i32 @phy_set_mode(i32 %31, i32 %32)
  store i32 %33, i32* %4, align 4
  %34 = load i32, i32* %4, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %45

36:                                               ; preds = %24
  %37 = load %struct.ahci_host_priv*, %struct.ahci_host_priv** %3, align 8
  %38 = getelementptr inbounds %struct.ahci_host_priv, %struct.ahci_host_priv* %37, i32 0, i32 1
  %39 = load i32*, i32** %38, align 8
  %40 = load i32, i32* %5, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @phy_exit(i32 %43)
  br label %70

45:                                               ; preds = %24
  %46 = load %struct.ahci_host_priv*, %struct.ahci_host_priv** %3, align 8
  %47 = getelementptr inbounds %struct.ahci_host_priv, %struct.ahci_host_priv* %46, i32 0, i32 1
  %48 = load i32*, i32** %47, align 8
  %49 = load i32, i32* %5, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @phy_power_on(i32 %52)
  store i32 %53, i32* %4, align 4
  %54 = load i32, i32* %4, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %65

56:                                               ; preds = %45
  %57 = load %struct.ahci_host_priv*, %struct.ahci_host_priv** %3, align 8
  %58 = getelementptr inbounds %struct.ahci_host_priv, %struct.ahci_host_priv* %57, i32 0, i32 1
  %59 = load i32*, i32** %58, align 8
  %60 = load i32, i32* %5, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @phy_exit(i32 %63)
  br label %70

65:                                               ; preds = %45
  br label %66

66:                                               ; preds = %65
  %67 = load i32, i32* %5, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %5, align 4
  br label %6

69:                                               ; preds = %6
  store i32 0, i32* %2, align 4
  br label %94

70:                                               ; preds = %56, %36, %23
  br label %71

71:                                               ; preds = %75, %70
  %72 = load i32, i32* %5, align 4
  %73 = add nsw i32 %72, -1
  store i32 %73, i32* %5, align 4
  %74 = icmp sge i32 %73, 0
  br i1 %74, label %75, label %92

75:                                               ; preds = %71
  %76 = load %struct.ahci_host_priv*, %struct.ahci_host_priv** %3, align 8
  %77 = getelementptr inbounds %struct.ahci_host_priv, %struct.ahci_host_priv* %76, i32 0, i32 1
  %78 = load i32*, i32** %77, align 8
  %79 = load i32, i32* %5, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %78, i64 %80
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @phy_power_off(i32 %82)
  %84 = load %struct.ahci_host_priv*, %struct.ahci_host_priv** %3, align 8
  %85 = getelementptr inbounds %struct.ahci_host_priv, %struct.ahci_host_priv* %84, i32 0, i32 1
  %86 = load i32*, i32** %85, align 8
  %87 = load i32, i32* %5, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i32, i32* %86, i64 %88
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @phy_exit(i32 %90)
  br label %71

92:                                               ; preds = %71
  %93 = load i32, i32* %4, align 4
  store i32 %93, i32* %2, align 4
  br label %94

94:                                               ; preds = %92, %69
  %95 = load i32, i32* %2, align 4
  ret i32 %95
}

declare dso_local i32 @phy_init(i32) #1

declare dso_local i32 @phy_set_mode(i32, i32) #1

declare dso_local i32 @phy_exit(i32) #1

declare dso_local i32 @phy_power_on(i32) #1

declare dso_local i32 @phy_power_off(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
