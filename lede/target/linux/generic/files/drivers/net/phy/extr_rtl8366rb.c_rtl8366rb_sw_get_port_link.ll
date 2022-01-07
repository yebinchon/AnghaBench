; ModuleID = '/home/carl/AnghaBench/lede/target/linux/generic/files/drivers/net/phy/extr_rtl8366rb.c_rtl8366rb_sw_get_port_link.c'
source_filename = "/home/carl/AnghaBench/lede/target/linux/generic/files/drivers/net/phy/extr_rtl8366rb.c_rtl8366rb_sw_get_port_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.switch_dev = type { i32 }
%struct.switch_port_link = type { i32, i32, i32, i32, i32, i32 }
%struct.rtl8366_smi = type { i32 }

@RTL8366RB_NUM_PORTS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@RTL8366RB_PORT_LINK_STATUS_BASE = common dso_local global i64 0, align 8
@RTL8366RB_PORT_STATUS_LINK_MASK = common dso_local global i32 0, align 4
@RTL8366RB_PORT_STATUS_DUPLEX_MASK = common dso_local global i32 0, align 4
@RTL8366RB_PORT_STATUS_RXPAUSE_MASK = common dso_local global i32 0, align 4
@RTL8366RB_PORT_STATUS_TXPAUSE_MASK = common dso_local global i32 0, align 4
@RTL8366RB_PORT_STATUS_AN_MASK = common dso_local global i32 0, align 4
@RTL8366RB_PORT_STATUS_SPEED_MASK = common dso_local global i32 0, align 4
@SWITCH_PORT_SPEED_10 = common dso_local global i32 0, align 4
@SWITCH_PORT_SPEED_100 = common dso_local global i32 0, align 4
@SWITCH_PORT_SPEED_1000 = common dso_local global i32 0, align 4
@SWITCH_PORT_SPEED_UNKNOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.switch_dev*, i32, %struct.switch_port_link*)* @rtl8366rb_sw_get_port_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtl8366rb_sw_get_port_link(%struct.switch_dev* %0, i32 %1, %struct.switch_port_link* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.switch_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.switch_port_link*, align 8
  %8 = alloca %struct.rtl8366_smi*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.switch_dev* %0, %struct.switch_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.switch_port_link* %2, %struct.switch_port_link** %7, align 8
  %11 = load %struct.switch_dev*, %struct.switch_dev** %5, align 8
  %12 = call %struct.rtl8366_smi* @sw_to_rtl8366_smi(%struct.switch_dev* %11)
  store %struct.rtl8366_smi* %12, %struct.rtl8366_smi** %8, align 8
  store i32 0, i32* %9, align 4
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* @RTL8366RB_NUM_PORTS, align 4
  %15 = icmp sge i32 %13, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %3
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %4, align 4
  br label %106

19:                                               ; preds = %3
  %20 = load %struct.rtl8366_smi*, %struct.rtl8366_smi** %8, align 8
  %21 = load i64, i64* @RTL8366RB_PORT_LINK_STATUS_BASE, align 8
  %22 = load i32, i32* %6, align 4
  %23 = sdiv i32 %22, 2
  %24 = sext i32 %23 to i64
  %25 = add nsw i64 %21, %24
  %26 = call i32 @rtl8366_smi_read_reg(%struct.rtl8366_smi* %20, i64 %25, i32* %9)
  %27 = load i32, i32* %6, align 4
  %28 = srem i32 %27, 2
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %19
  %31 = load i32, i32* %9, align 4
  %32 = ashr i32 %31, 8
  store i32 %32, i32* %9, align 4
  br label %33

33:                                               ; preds = %30, %19
  %34 = load i32, i32* %9, align 4
  %35 = load i32, i32* @RTL8366RB_PORT_STATUS_LINK_MASK, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  %38 = xor i1 %37, true
  %39 = xor i1 %38, true
  %40 = zext i1 %39 to i32
  %41 = load %struct.switch_port_link*, %struct.switch_port_link** %7, align 8
  %42 = getelementptr inbounds %struct.switch_port_link, %struct.switch_port_link* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 4
  %43 = load %struct.switch_port_link*, %struct.switch_port_link** %7, align 8
  %44 = getelementptr inbounds %struct.switch_port_link, %struct.switch_port_link* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %33
  store i32 0, i32* %4, align 4
  br label %106

48:                                               ; preds = %33
  %49 = load i32, i32* %9, align 4
  %50 = load i32, i32* @RTL8366RB_PORT_STATUS_DUPLEX_MASK, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  %53 = xor i1 %52, true
  %54 = xor i1 %53, true
  %55 = zext i1 %54 to i32
  %56 = load %struct.switch_port_link*, %struct.switch_port_link** %7, align 8
  %57 = getelementptr inbounds %struct.switch_port_link, %struct.switch_port_link* %56, i32 0, i32 1
  store i32 %55, i32* %57, align 4
  %58 = load i32, i32* %9, align 4
  %59 = load i32, i32* @RTL8366RB_PORT_STATUS_RXPAUSE_MASK, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  %62 = xor i1 %61, true
  %63 = xor i1 %62, true
  %64 = zext i1 %63 to i32
  %65 = load %struct.switch_port_link*, %struct.switch_port_link** %7, align 8
  %66 = getelementptr inbounds %struct.switch_port_link, %struct.switch_port_link* %65, i32 0, i32 2
  store i32 %64, i32* %66, align 4
  %67 = load i32, i32* %9, align 4
  %68 = load i32, i32* @RTL8366RB_PORT_STATUS_TXPAUSE_MASK, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  %71 = xor i1 %70, true
  %72 = xor i1 %71, true
  %73 = zext i1 %72 to i32
  %74 = load %struct.switch_port_link*, %struct.switch_port_link** %7, align 8
  %75 = getelementptr inbounds %struct.switch_port_link, %struct.switch_port_link* %74, i32 0, i32 3
  store i32 %73, i32* %75, align 4
  %76 = load i32, i32* %9, align 4
  %77 = load i32, i32* @RTL8366RB_PORT_STATUS_AN_MASK, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  %80 = xor i1 %79, true
  %81 = xor i1 %80, true
  %82 = zext i1 %81 to i32
  %83 = load %struct.switch_port_link*, %struct.switch_port_link** %7, align 8
  %84 = getelementptr inbounds %struct.switch_port_link, %struct.switch_port_link* %83, i32 0, i32 4
  store i32 %82, i32* %84, align 4
  %85 = load i32, i32* %9, align 4
  %86 = load i32, i32* @RTL8366RB_PORT_STATUS_SPEED_MASK, align 4
  %87 = and i32 %85, %86
  store i32 %87, i32* %10, align 4
  %88 = load i32, i32* %10, align 4
  switch i32 %88, label %101 [
    i32 0, label %89
    i32 1, label %93
    i32 2, label %97
  ]

89:                                               ; preds = %48
  %90 = load i32, i32* @SWITCH_PORT_SPEED_10, align 4
  %91 = load %struct.switch_port_link*, %struct.switch_port_link** %7, align 8
  %92 = getelementptr inbounds %struct.switch_port_link, %struct.switch_port_link* %91, i32 0, i32 5
  store i32 %90, i32* %92, align 4
  br label %105

93:                                               ; preds = %48
  %94 = load i32, i32* @SWITCH_PORT_SPEED_100, align 4
  %95 = load %struct.switch_port_link*, %struct.switch_port_link** %7, align 8
  %96 = getelementptr inbounds %struct.switch_port_link, %struct.switch_port_link* %95, i32 0, i32 5
  store i32 %94, i32* %96, align 4
  br label %105

97:                                               ; preds = %48
  %98 = load i32, i32* @SWITCH_PORT_SPEED_1000, align 4
  %99 = load %struct.switch_port_link*, %struct.switch_port_link** %7, align 8
  %100 = getelementptr inbounds %struct.switch_port_link, %struct.switch_port_link* %99, i32 0, i32 5
  store i32 %98, i32* %100, align 4
  br label %105

101:                                              ; preds = %48
  %102 = load i32, i32* @SWITCH_PORT_SPEED_UNKNOWN, align 4
  %103 = load %struct.switch_port_link*, %struct.switch_port_link** %7, align 8
  %104 = getelementptr inbounds %struct.switch_port_link, %struct.switch_port_link* %103, i32 0, i32 5
  store i32 %102, i32* %104, align 4
  br label %105

105:                                              ; preds = %101, %97, %93, %89
  store i32 0, i32* %4, align 4
  br label %106

106:                                              ; preds = %105, %47, %16
  %107 = load i32, i32* %4, align 4
  ret i32 %107
}

declare dso_local %struct.rtl8366_smi* @sw_to_rtl8366_smi(%struct.switch_dev*) #1

declare dso_local i32 @rtl8366_smi_read_reg(%struct.rtl8366_smi*, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
