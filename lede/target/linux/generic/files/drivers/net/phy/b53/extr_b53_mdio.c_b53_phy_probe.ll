; ModuleID = '/home/carl/AnghaBench/lede/target/linux/generic/files/drivers/net/phy/b53/extr_b53_mdio.c_b53_phy_probe.c'
source_filename = "/home/carl/AnghaBench/lede/target/linux/generic/files/drivers/net/phy/b53/extr_b53_mdio.c_b53_phy_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy_device = type { %struct.b53_device*, i32, i32, %struct.TYPE_2__ }
%struct.b53_device = type { i32, i32, i32, i32*, i32*, i32 }
%struct.TYPE_2__ = type { i64, i32, i32 }

@B53_PSEUDO_PHY = common dso_local global i64 0, align 8
@ENODEV = common dso_local global i32 0, align 4
@b53_mdio_ops = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@SUPPORTED_100baseT_Full = common dso_local global i32 0, align 4
@SUPPORTED_1000baseT_Full = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"failed to register switch: %i\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.phy_device*)* @b53_phy_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @b53_phy_probe(%struct.phy_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.phy_device*, align 8
  %4 = alloca %struct.b53_device*, align 8
  %5 = alloca i32, align 4
  store %struct.phy_device* %0, %struct.phy_device** %3, align 8
  %6 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %7 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %6, i32 0, i32 3
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @B53_PSEUDO_PHY, align 8
  %11 = icmp ne i64 %9, %10
  br i1 %11, label %12, label %21

12:                                               ; preds = %1
  %13 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %14 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %13, i32 0, i32 3
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %12
  %19 = load i32, i32* @ENODEV, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %94

21:                                               ; preds = %12, %1
  %22 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %23 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %22, i32 0, i32 3
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 2
  %25 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %26 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %25, i32 0, i32 3
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = call %struct.b53_device* @b53_switch_alloc(i32* %24, i32* @b53_mdio_ops, i32 %28)
  store %struct.b53_device* %29, %struct.b53_device** %4, align 8
  %30 = load %struct.b53_device*, %struct.b53_device** %4, align 8
  %31 = icmp ne %struct.b53_device* %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %21
  %33 = load i32, i32* @ENOMEM, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %2, align 4
  br label %94

35:                                               ; preds = %21
  %36 = load %struct.b53_device*, %struct.b53_device** %4, align 8
  %37 = getelementptr inbounds %struct.b53_device, %struct.b53_device* %36, i32 0, i32 0
  store i32 255, i32* %37, align 8
  %38 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %39 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %38, i32 0, i32 3
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.b53_device*, %struct.b53_device** %4, align 8
  %43 = getelementptr inbounds %struct.b53_device, %struct.b53_device* %42, i32 0, i32 5
  store i32 %41, i32* %43, align 8
  %44 = load %struct.b53_device*, %struct.b53_device** %4, align 8
  %45 = getelementptr inbounds %struct.b53_device, %struct.b53_device* %44, i32 0, i32 4
  store i32* @b53_mdio_ops, i32** %45, align 8
  %46 = load %struct.b53_device*, %struct.b53_device** %4, align 8
  %47 = getelementptr inbounds %struct.b53_device, %struct.b53_device* %46, i32 0, i32 3
  store i32* null, i32** %47, align 8
  %48 = load %struct.b53_device*, %struct.b53_device** %4, align 8
  %49 = getelementptr inbounds %struct.b53_device, %struct.b53_device* %48, i32 0, i32 2
  %50 = call i32 @mutex_init(i32* %49)
  %51 = load %struct.b53_device*, %struct.b53_device** %4, align 8
  %52 = call i32 @b53_switch_detect(%struct.b53_device* %51)
  store i32 %52, i32* %5, align 4
  %53 = load i32, i32* %5, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %35
  %56 = load i32, i32* %5, align 4
  store i32 %56, i32* %2, align 4
  br label %94

57:                                               ; preds = %35
  %58 = load %struct.b53_device*, %struct.b53_device** %4, align 8
  %59 = call i64 @is5325(%struct.b53_device* %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %65, label %61

61:                                               ; preds = %57
  %62 = load %struct.b53_device*, %struct.b53_device** %4, align 8
  %63 = call i64 @is5365(%struct.b53_device* %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %61, %57
  %66 = load i32, i32* @SUPPORTED_100baseT_Full, align 4
  %67 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %68 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %67, i32 0, i32 1
  store i32 %66, i32* %68, align 8
  br label %73

69:                                               ; preds = %61
  %70 = load i32, i32* @SUPPORTED_1000baseT_Full, align 4
  %71 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %72 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %71, i32 0, i32 1
  store i32 %70, i32* %72, align 8
  br label %73

73:                                               ; preds = %69, %65
  %74 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %75 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %78 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %77, i32 0, i32 2
  store i32 %76, i32* %78, align 4
  %79 = load %struct.b53_device*, %struct.b53_device** %4, align 8
  %80 = call i32 @b53_switch_register(%struct.b53_device* %79)
  store i32 %80, i32* %5, align 4
  %81 = load i32, i32* %5, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %90

83:                                               ; preds = %73
  %84 = load %struct.b53_device*, %struct.b53_device** %4, align 8
  %85 = getelementptr inbounds %struct.b53_device, %struct.b53_device* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* %5, align 4
  %88 = call i32 @dev_err(i32 %86, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %87)
  %89 = load i32, i32* %5, align 4
  store i32 %89, i32* %2, align 4
  br label %94

90:                                               ; preds = %73
  %91 = load %struct.b53_device*, %struct.b53_device** %4, align 8
  %92 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %93 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %92, i32 0, i32 0
  store %struct.b53_device* %91, %struct.b53_device** %93, align 8
  store i32 0, i32* %2, align 4
  br label %94

94:                                               ; preds = %90, %83, %55, %32, %18
  %95 = load i32, i32* %2, align 4
  ret i32 %95
}

declare dso_local %struct.b53_device* @b53_switch_alloc(i32*, i32*, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @b53_switch_detect(%struct.b53_device*) #1

declare dso_local i64 @is5325(%struct.b53_device*) #1

declare dso_local i64 @is5365(%struct.b53_device*) #1

declare dso_local i32 @b53_switch_register(%struct.b53_device*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
