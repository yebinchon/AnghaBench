; ModuleID = '/home/carl/AnghaBench/lede/target/linux/generic/files/drivers/net/phy/b53/extr_b53_common.c_b53_configure_ports.c'
source_filename = "/home/carl/AnghaBench/lede/target/linux/generic/files/drivers/net/phy/b53/extr_b53_common.c_b53_configure_ports.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b53_device = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@B53_CTRL_PAGE = common dso_local global i32 0, align 4
@B53_PORT_OVERRIDE_CTRL = common dso_local global i32 0, align 4
@PORT_OVERRIDE_RV_MII_25 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Failed to enable reverse MII mode\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@B53_CPU_PORT = common dso_local global i32 0, align 4
@PORT_OVERRIDE_EN = common dso_local global i32 0, align 4
@PORT_OVERRIDE_LINK = common dso_local global i32 0, align 4
@GMII_PO_LINK = common dso_local global i32 0, align 4
@GMII_PO_RX_FLOW = common dso_local global i32 0, align 4
@GMII_PO_TX_FLOW = common dso_local global i32 0, align 4
@GMII_PO_EN = common dso_local global i32 0, align 4
@PORT_OVERRIDE_RX_FLOW = common dso_local global i32 0, align 4
@PORT_OVERRIDE_TX_FLOW = common dso_local global i32 0, align 4
@PORT_OVERRIDE_SPEED_2000M = common dso_local global i32 0, align 4
@GMII_PO_SPEED_2000M = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.b53_device*)* @b53_configure_ports to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @b53_configure_ports(%struct.b53_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.b53_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.b53_device* %0, %struct.b53_device** %3, align 8
  %12 = load %struct.b53_device*, %struct.b53_device** %3, align 8
  %13 = getelementptr inbounds %struct.b53_device, %struct.b53_device* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %4, align 4
  %16 = load %struct.b53_device*, %struct.b53_device** %3, align 8
  %17 = call i64 @is5325(%struct.b53_device* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %50

19:                                               ; preds = %1
  %20 = load %struct.b53_device*, %struct.b53_device** %3, align 8
  %21 = load i32, i32* @B53_CTRL_PAGE, align 4
  %22 = load i32, i32* @B53_PORT_OVERRIDE_CTRL, align 4
  %23 = call i32 @b53_read8(%struct.b53_device* %20, i32 %21, i32 %22, i32* %5)
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* @PORT_OVERRIDE_RV_MII_25, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %49, label %28

28:                                               ; preds = %19
  %29 = load %struct.b53_device*, %struct.b53_device** %3, align 8
  %30 = load i32, i32* @B53_CTRL_PAGE, align 4
  %31 = load i32, i32* @B53_PORT_OVERRIDE_CTRL, align 4
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* @PORT_OVERRIDE_RV_MII_25, align 4
  %34 = or i32 %32, %33
  %35 = call i32 @b53_write8(%struct.b53_device* %29, i32 %30, i32 %31, i32 %34)
  %36 = load %struct.b53_device*, %struct.b53_device** %3, align 8
  %37 = load i32, i32* @B53_CTRL_PAGE, align 4
  %38 = load i32, i32* @B53_PORT_OVERRIDE_CTRL, align 4
  %39 = call i32 @b53_read8(%struct.b53_device* %36, i32 %37, i32 %38, i32* %5)
  %40 = load i32, i32* %5, align 4
  %41 = load i32, i32* @PORT_OVERRIDE_RV_MII_25, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %48, label %44

44:                                               ; preds = %28
  %45 = call i32 @pr_err(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %2, align 4
  br label %154

48:                                               ; preds = %28
  br label %49

49:                                               ; preds = %48, %19
  br label %153

50:                                               ; preds = %1
  %51 = load %struct.b53_device*, %struct.b53_device** %3, align 8
  %52 = call i64 @is531x5(%struct.b53_device* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %99

54:                                               ; preds = %50
  %55 = load i32, i32* %4, align 4
  %56 = load i32, i32* @B53_CPU_PORT, align 4
  %57 = icmp eq i32 %55, %56
  br i1 %57, label %58, label %99

58:                                               ; preds = %54
  %59 = load %struct.b53_device*, %struct.b53_device** %3, align 8
  %60 = load i32, i32* @B53_CTRL_PAGE, align 4
  %61 = load i32, i32* @B53_PORT_OVERRIDE_CTRL, align 4
  %62 = call i32 @b53_read8(%struct.b53_device* %59, i32 %60, i32 %61, i32* %6)
  %63 = load %struct.b53_device*, %struct.b53_device** %3, align 8
  %64 = load i32, i32* @B53_CTRL_PAGE, align 4
  %65 = load i32, i32* @B53_PORT_OVERRIDE_CTRL, align 4
  %66 = load i32, i32* %6, align 4
  %67 = load i32, i32* @PORT_OVERRIDE_EN, align 4
  %68 = or i32 %66, %67
  %69 = load i32, i32* @PORT_OVERRIDE_LINK, align 4
  %70 = or i32 %68, %69
  %71 = call i32 @b53_write8(%struct.b53_device* %63, i32 %64, i32 %65, i32 %70)
  %72 = load %struct.b53_device*, %struct.b53_device** %3, align 8
  %73 = getelementptr inbounds %struct.b53_device, %struct.b53_device* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @BIT(i32 5)
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %98

78:                                               ; preds = %58
  %79 = call i32 @B53_GMII_PORT_OVERRIDE_CTRL(i32 5)
  store i32 %79, i32* %7, align 4
  %80 = load %struct.b53_device*, %struct.b53_device** %3, align 8
  %81 = load i32, i32* @B53_CTRL_PAGE, align 4
  %82 = load i32, i32* %7, align 4
  %83 = call i32 @b53_read8(%struct.b53_device* %80, i32 %81, i32 %82, i32* %8)
  %84 = load i32, i32* @GMII_PO_LINK, align 4
  %85 = load i32, i32* @GMII_PO_RX_FLOW, align 4
  %86 = or i32 %84, %85
  %87 = load i32, i32* @GMII_PO_TX_FLOW, align 4
  %88 = or i32 %86, %87
  %89 = load i32, i32* @GMII_PO_EN, align 4
  %90 = or i32 %88, %89
  %91 = load i32, i32* %8, align 4
  %92 = or i32 %91, %90
  store i32 %92, i32* %8, align 4
  %93 = load %struct.b53_device*, %struct.b53_device** %3, align 8
  %94 = load i32, i32* @B53_CTRL_PAGE, align 4
  %95 = load i32, i32* %7, align 4
  %96 = load i32, i32* %8, align 4
  %97 = call i32 @b53_write8(%struct.b53_device* %93, i32 %94, i32 %95, i32 %96)
  br label %98

98:                                               ; preds = %78, %58
  br label %152

99:                                               ; preds = %54, %50
  %100 = load %struct.b53_device*, %struct.b53_device** %3, align 8
  %101 = call i64 @is5301x(%struct.b53_device* %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %151

103:                                              ; preds = %99
  %104 = load i32, i32* %4, align 4
  %105 = icmp eq i32 %104, 8
  br i1 %105, label %106, label %127

106:                                              ; preds = %103
  %107 = load %struct.b53_device*, %struct.b53_device** %3, align 8
  %108 = load i32, i32* @B53_CTRL_PAGE, align 4
  %109 = load i32, i32* @B53_PORT_OVERRIDE_CTRL, align 4
  %110 = call i32 @b53_read8(%struct.b53_device* %107, i32 %108, i32 %109, i32* %9)
  %111 = load i32, i32* @PORT_OVERRIDE_LINK, align 4
  %112 = load i32, i32* @PORT_OVERRIDE_RX_FLOW, align 4
  %113 = or i32 %111, %112
  %114 = load i32, i32* @PORT_OVERRIDE_TX_FLOW, align 4
  %115 = or i32 %113, %114
  %116 = load i32, i32* @PORT_OVERRIDE_SPEED_2000M, align 4
  %117 = or i32 %115, %116
  %118 = load i32, i32* @PORT_OVERRIDE_EN, align 4
  %119 = or i32 %117, %118
  %120 = load i32, i32* %9, align 4
  %121 = or i32 %120, %119
  store i32 %121, i32* %9, align 4
  %122 = load %struct.b53_device*, %struct.b53_device** %3, align 8
  %123 = load i32, i32* @B53_CTRL_PAGE, align 4
  %124 = load i32, i32* @B53_PORT_OVERRIDE_CTRL, align 4
  %125 = load i32, i32* %9, align 4
  %126 = call i32 @b53_write8(%struct.b53_device* %122, i32 %123, i32 %124, i32 %125)
  br label %150

127:                                              ; preds = %103
  %128 = load i32, i32* %4, align 4
  %129 = call i32 @B53_GMII_PORT_OVERRIDE_CTRL(i32 %128)
  store i32 %129, i32* %10, align 4
  %130 = load %struct.b53_device*, %struct.b53_device** %3, align 8
  %131 = load i32, i32* @B53_CTRL_PAGE, align 4
  %132 = load i32, i32* %10, align 4
  %133 = call i32 @b53_read8(%struct.b53_device* %130, i32 %131, i32 %132, i32* %11)
  %134 = load i32, i32* @GMII_PO_LINK, align 4
  %135 = load i32, i32* @GMII_PO_RX_FLOW, align 4
  %136 = or i32 %134, %135
  %137 = load i32, i32* @GMII_PO_TX_FLOW, align 4
  %138 = or i32 %136, %137
  %139 = load i32, i32* @GMII_PO_EN, align 4
  %140 = or i32 %138, %139
  %141 = load i32, i32* @GMII_PO_SPEED_2000M, align 4
  %142 = or i32 %140, %141
  %143 = load i32, i32* %11, align 4
  %144 = or i32 %143, %142
  store i32 %144, i32* %11, align 4
  %145 = load %struct.b53_device*, %struct.b53_device** %3, align 8
  %146 = load i32, i32* @B53_CTRL_PAGE, align 4
  %147 = load i32, i32* %10, align 4
  %148 = load i32, i32* %11, align 4
  %149 = call i32 @b53_write8(%struct.b53_device* %145, i32 %146, i32 %147, i32 %148)
  br label %150

150:                                              ; preds = %127, %106
  br label %151

151:                                              ; preds = %150, %99
  br label %152

152:                                              ; preds = %151, %98
  br label %153

153:                                              ; preds = %152, %49
  store i32 0, i32* %2, align 4
  br label %154

154:                                              ; preds = %153, %44
  %155 = load i32, i32* %2, align 4
  ret i32 %155
}

declare dso_local i64 @is5325(%struct.b53_device*) #1

declare dso_local i32 @b53_read8(%struct.b53_device*, i32, i32, i32*) #1

declare dso_local i32 @b53_write8(%struct.b53_device*, i32, i32, i32) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i64 @is531x5(%struct.b53_device*) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @B53_GMII_PORT_OVERRIDE_CTRL(i32) #1

declare dso_local i64 @is5301x(%struct.b53_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
