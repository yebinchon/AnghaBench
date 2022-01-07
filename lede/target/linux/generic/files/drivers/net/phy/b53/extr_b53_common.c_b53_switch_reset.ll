; ModuleID = '/home/carl/AnghaBench/lede/target/linux/generic/files/drivers/net/phy/b53/extr_b53_common.c_b53_switch_reset.c'
source_filename = "/home/carl/AnghaBench/lede/target/linux/generic/files/drivers/net/phy/b53/extr_b53_common.c_b53_switch_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b53_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@B53_CTRL_PAGE = common dso_local global i32 0, align 4
@B53_SOFTRESET = common dso_local global i32 0, align 4
@B53_SWITCH_MODE = common dso_local global i32 0, align 4
@SM_SW_FWD_EN = common dso_local global i32 0, align 4
@SM_SW_FWD_MODE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Failed to enable switch!\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.b53_device*)* @b53_switch_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @b53_switch_reset(%struct.b53_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.b53_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.b53_device* %0, %struct.b53_device** %3, align 8
  store i32 0, i32* %4, align 4
  %6 = load %struct.b53_device*, %struct.b53_device** %3, align 8
  %7 = call i32 @b53_switch_reset_gpio(%struct.b53_device* %6)
  %8 = load %struct.b53_device*, %struct.b53_device** %3, align 8
  %9 = call i64 @is539x(%struct.b53_device* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %20

11:                                               ; preds = %1
  %12 = load %struct.b53_device*, %struct.b53_device** %3, align 8
  %13 = load i32, i32* @B53_CTRL_PAGE, align 4
  %14 = load i32, i32* @B53_SOFTRESET, align 4
  %15 = call i32 @b53_write8(%struct.b53_device* %12, i32 %13, i32 %14, i32 131)
  %16 = load %struct.b53_device*, %struct.b53_device** %3, align 8
  %17 = load i32, i32* @B53_CTRL_PAGE, align 4
  %18 = load i32, i32* @B53_SOFTRESET, align 4
  %19 = call i32 @b53_write8(%struct.b53_device* %16, i32 %17, i32 %18, i32 0)
  br label %20

20:                                               ; preds = %11, %1
  %21 = load %struct.b53_device*, %struct.b53_device** %3, align 8
  %22 = load i32, i32* @B53_CTRL_PAGE, align 4
  %23 = load i32, i32* @B53_SWITCH_MODE, align 4
  %24 = call i32 @b53_read8(%struct.b53_device* %21, i32 %22, i32 %23, i32* %5)
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* @SM_SW_FWD_EN, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %55, label %29

29:                                               ; preds = %20
  %30 = load i32, i32* @SM_SW_FWD_MODE, align 4
  %31 = xor i32 %30, -1
  %32 = load i32, i32* %5, align 4
  %33 = and i32 %32, %31
  store i32 %33, i32* %5, align 4
  %34 = load i32, i32* @SM_SW_FWD_EN, align 4
  %35 = load i32, i32* %5, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* %5, align 4
  %37 = load %struct.b53_device*, %struct.b53_device** %3, align 8
  %38 = load i32, i32* @B53_CTRL_PAGE, align 4
  %39 = load i32, i32* @B53_SWITCH_MODE, align 4
  %40 = load i32, i32* %5, align 4
  %41 = call i32 @b53_write8(%struct.b53_device* %37, i32 %38, i32 %39, i32 %40)
  %42 = load %struct.b53_device*, %struct.b53_device** %3, align 8
  %43 = load i32, i32* @B53_CTRL_PAGE, align 4
  %44 = load i32, i32* @B53_SWITCH_MODE, align 4
  %45 = call i32 @b53_read8(%struct.b53_device* %42, i32 %43, i32 %44, i32* %5)
  %46 = load i32, i32* %5, align 4
  %47 = load i32, i32* @SM_SW_FWD_EN, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %54, label %50

50:                                               ; preds = %29
  %51 = call i32 @pr_err(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %52 = load i32, i32* @EINVAL, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %2, align 4
  br label %80

54:                                               ; preds = %29
  br label %55

55:                                               ; preds = %54, %20
  %56 = load %struct.b53_device*, %struct.b53_device** %3, align 8
  %57 = call i32 @b53_enable_ports(%struct.b53_device* %56)
  %58 = load %struct.b53_device*, %struct.b53_device** %3, align 8
  %59 = getelementptr inbounds %struct.b53_device, %struct.b53_device* %58, i32 0, i32 0
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %55
  %65 = load %struct.b53_device*, %struct.b53_device** %3, align 8
  %66 = call i32 @b53_configure_ports_of(%struct.b53_device* %65)
  store i32 %66, i32* %4, align 4
  br label %70

67:                                               ; preds = %55
  %68 = load %struct.b53_device*, %struct.b53_device** %3, align 8
  %69 = call i32 @b53_configure_ports(%struct.b53_device* %68)
  store i32 %69, i32* %4, align 4
  br label %70

70:                                               ; preds = %67, %64
  %71 = load i32, i32* %4, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %70
  %74 = load i32, i32* %4, align 4
  store i32 %74, i32* %2, align 4
  br label %80

75:                                               ; preds = %70
  %76 = load %struct.b53_device*, %struct.b53_device** %3, align 8
  %77 = call i32 @b53_enable_mib(%struct.b53_device* %76)
  %78 = load %struct.b53_device*, %struct.b53_device** %3, align 8
  %79 = call i32 @b53_flush_arl(%struct.b53_device* %78)
  store i32 %79, i32* %2, align 4
  br label %80

80:                                               ; preds = %75, %73, %50
  %81 = load i32, i32* %2, align 4
  ret i32 %81
}

declare dso_local i32 @b53_switch_reset_gpio(%struct.b53_device*) #1

declare dso_local i64 @is539x(%struct.b53_device*) #1

declare dso_local i32 @b53_write8(%struct.b53_device*, i32, i32, i32) #1

declare dso_local i32 @b53_read8(%struct.b53_device*, i32, i32, i32*) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @b53_enable_ports(%struct.b53_device*) #1

declare dso_local i32 @b53_configure_ports_of(%struct.b53_device*) #1

declare dso_local i32 @b53_configure_ports(%struct.b53_device*) #1

declare dso_local i32 @b53_enable_mib(%struct.b53_device*) #1

declare dso_local i32 @b53_flush_arl(%struct.b53_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
