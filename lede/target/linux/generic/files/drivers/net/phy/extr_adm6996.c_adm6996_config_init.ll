; ModuleID = '/home/carl/AnghaBench/lede/target/linux/generic/files/drivers/net/phy/extr_adm6996.c_adm6996_config_init.c'
source_filename = "/home/carl/AnghaBench/lede/target/linux/generic/files/drivers/net/phy/extr_adm6996.c_adm6996_config_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy_device = type { %struct.adm6996_priv*, %struct.TYPE_4__*, %struct.TYPE_3__, i8*, i8* }
%struct.adm6996_priv = type { i32, i32, %struct.phy_device*, i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i64, i32 }

@ADVERTISED_100baseT_Full = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [53 x i8] c"%s: PHY overlaps ADM6996, providing fixed PHY 0x%x.\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@adm6996_read_mii_reg = common dso_local global i32 0, align 4
@adm6996_write_mii_reg = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.phy_device*)* @adm6996_config_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adm6996_config_init(%struct.phy_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.phy_device*, align 8
  %4 = alloca %struct.adm6996_priv*, align 8
  %5 = alloca i32, align 4
  store %struct.phy_device* %0, %struct.phy_device** %3, align 8
  %6 = load i8*, i8** @ADVERTISED_100baseT_Full, align 8
  %7 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %8 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %7, i32 0, i32 4
  store i8* %6, i8** %8, align 8
  %9 = load i8*, i8** @ADVERTISED_100baseT_Full, align 8
  %10 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %11 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %10, i32 0, i32 3
  store i8* %9, i8** %11, align 8
  %12 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %13 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %12, i32 0, i32 2
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %28

17:                                               ; preds = %1
  %18 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %19 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %18, i32 0, i32 1
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %24 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = call i32 @pr_info(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i32 %22, i64 %26)
  store i32 0, i32* %2, align 4
  br label %73

28:                                               ; preds = %1
  %29 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %30 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 1
  %32 = load i32, i32* @GFP_KERNEL, align 4
  %33 = call %struct.adm6996_priv* @devm_kzalloc(i32* %31, i32 24, i32 %32)
  store %struct.adm6996_priv* %33, %struct.adm6996_priv** %4, align 8
  %34 = load %struct.adm6996_priv*, %struct.adm6996_priv** %4, align 8
  %35 = icmp ne %struct.adm6996_priv* %34, null
  br i1 %35, label %39, label %36

36:                                               ; preds = %28
  %37 = load i32, i32* @ENOMEM, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %2, align 4
  br label %73

39:                                               ; preds = %28
  %40 = load %struct.adm6996_priv*, %struct.adm6996_priv** %4, align 8
  %41 = getelementptr inbounds %struct.adm6996_priv, %struct.adm6996_priv* %40, i32 0, i32 4
  %42 = call i32 @mutex_init(i32* %41)
  %43 = load %struct.adm6996_priv*, %struct.adm6996_priv** %4, align 8
  %44 = getelementptr inbounds %struct.adm6996_priv, %struct.adm6996_priv* %43, i32 0, i32 3
  %45 = call i32 @mutex_init(i32* %44)
  %46 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %47 = load %struct.adm6996_priv*, %struct.adm6996_priv** %4, align 8
  %48 = getelementptr inbounds %struct.adm6996_priv, %struct.adm6996_priv* %47, i32 0, i32 2
  store %struct.phy_device* %46, %struct.phy_device** %48, align 8
  %49 = load i32, i32* @adm6996_read_mii_reg, align 4
  %50 = load %struct.adm6996_priv*, %struct.adm6996_priv** %4, align 8
  %51 = getelementptr inbounds %struct.adm6996_priv, %struct.adm6996_priv* %50, i32 0, i32 1
  store i32 %49, i32* %51, align 4
  %52 = load i32, i32* @adm6996_write_mii_reg, align 4
  %53 = load %struct.adm6996_priv*, %struct.adm6996_priv** %4, align 8
  %54 = getelementptr inbounds %struct.adm6996_priv, %struct.adm6996_priv* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 8
  %55 = load %struct.adm6996_priv*, %struct.adm6996_priv** %4, align 8
  %56 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %57 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %56, i32 0, i32 1
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %62 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %61, i32 0, i32 1
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %62, align 8
  %64 = call i32 @adm6996_switch_init(%struct.adm6996_priv* %55, i32 %60, %struct.TYPE_4__* %63)
  store i32 %64, i32* %5, align 4
  %65 = load i32, i32* %5, align 4
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %39
  %68 = load i32, i32* %5, align 4
  store i32 %68, i32* %2, align 4
  br label %73

69:                                               ; preds = %39
  %70 = load %struct.adm6996_priv*, %struct.adm6996_priv** %4, align 8
  %71 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %72 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %71, i32 0, i32 0
  store %struct.adm6996_priv* %70, %struct.adm6996_priv** %72, align 8
  store i32 0, i32* %2, align 4
  br label %73

73:                                               ; preds = %69, %67, %36, %17
  %74 = load i32, i32* %2, align 4
  ret i32 %74
}

declare dso_local i32 @pr_info(i8*, i32, i64) #1

declare dso_local %struct.adm6996_priv* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @adm6996_switch_init(%struct.adm6996_priv*, i32, %struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
