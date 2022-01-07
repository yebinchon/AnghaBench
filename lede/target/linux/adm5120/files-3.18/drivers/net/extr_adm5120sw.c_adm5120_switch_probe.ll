; ModuleID = '/home/carl/AnghaBench/lede/target/linux/adm5120/files-3.18/drivers/net/extr_adm5120sw.c_adm5120_switch_probe.c'
source_filename = "/home/carl/AnghaBench/lede/target/linux/adm5120/files-3.18/drivers/net/extr_adm5120sw.c_adm5120_switch_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i32 }
%struct.platform_device = type { i32 }
%struct.adm5120_if_priv = type { i32, i32 }

@adm5120_eth_num_ports = common dso_local global i32 0, align 4
@adm5120_nrdevs = common dso_local global i32 0, align 4
@CPUP_CONF_DCPUP = common dso_local global i32 0, align 4
@CPUP_CONF_CRCP = common dso_local global i32 0, align 4
@SWITCH_PORTS_NOCPU = common dso_local global i32 0, align 4
@CPUP_CONF_DUNP_SHIFT = common dso_local global i32 0, align 4
@CPUP_CONF_DMCP_SHIFT = common dso_local global i32 0, align 4
@SWITCH_REG_CPUP_CONF = common dso_local global i32 0, align 4
@PORT_CONF0_EMCP_SHIFT = common dso_local global i32 0, align 4
@PORT_CONF0_BP_SHIFT = common dso_local global i32 0, align 4
@SWITCH_REG_PORT_CONF0 = common dso_local global i32 0, align 4
@SWITCH_PORTS_PHY = common dso_local global i32 0, align 4
@PHY_CNTL2_SC_SHIFT = common dso_local global i32 0, align 4
@PHY_CNTL2_DC_SHIFT = common dso_local global i32 0, align 4
@PHY_CNTL2_PHYR_SHIFT = common dso_local global i32 0, align 4
@PHY_CNTL2_AMDIX_SHIFT = common dso_local global i32 0, align 4
@PHY_CNTL2_RMAE = common dso_local global i32 0, align 4
@SWITCH_REG_PHY_CNTL2 = common dso_local global i32 0, align 4
@SWITCH_REG_PHY_CNTL3 = common dso_local global i32 0, align 4
@PHY_CNTL3_RNT = common dso_local global i32 0, align 4
@SWITCH_REG_PRI_CNTL = common dso_local global i32 0, align 4
@SWITCH_INTS_ALL = common dso_local global i32 0, align 4
@txl_descs = common dso_local global i32 0, align 4
@txl_skbuff = common dso_local global i32 0, align 4
@TX_RING_SIZE = common dso_local global i32 0, align 4
@rxl_descs = common dso_local global i32 0, align 4
@rxl_skbuff = common dso_local global i32 0, align 4
@RX_RING_SIZE = common dso_local global i32 0, align 4
@SWITCH_REG_SHDA = common dso_local global i32 0, align 4
@SWITCH_REG_SLDA = common dso_local global i32 0, align 4
@SWITCH_REG_RHDA = common dso_local global i32 0, align 4
@SWITCH_REG_RLDA = common dso_local global i32 0, align 4
@SWITCH_NUM_PORTS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@adm5120_devs = common dso_local global %struct.net_device** null, align 8
@adm5120_eth_vlans = common dso_local global i32* null, align 8
@adm5120_eth_macs = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [30 x i8] c"%s register failed, error=%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"init failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @adm5120_switch_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adm5120_switch_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca %struct.adm5120_if_priv*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %9 = load i32, i32* @adm5120_eth_num_ports, align 4
  store i32 %9, i32* @adm5120_nrdevs, align 4
  %10 = load i32, i32* @CPUP_CONF_DCPUP, align 4
  %11 = load i32, i32* @CPUP_CONF_CRCP, align 4
  %12 = or i32 %10, %11
  %13 = load i32, i32* @SWITCH_PORTS_NOCPU, align 4
  %14 = load i32, i32* @CPUP_CONF_DUNP_SHIFT, align 4
  %15 = shl i32 %13, %14
  %16 = or i32 %12, %15
  %17 = load i32, i32* @SWITCH_PORTS_NOCPU, align 4
  %18 = load i32, i32* @CPUP_CONF_DMCP_SHIFT, align 4
  %19 = shl i32 %17, %18
  %20 = or i32 %16, %19
  store i32 %20, i32* %4, align 4
  %21 = load i32, i32* @SWITCH_REG_CPUP_CONF, align 4
  %22 = load i32, i32* %4, align 4
  %23 = call i32 @sw_write_reg(i32 %21, i32 %22)
  %24 = load i32, i32* @SWITCH_PORTS_NOCPU, align 4
  %25 = load i32, i32* @PORT_CONF0_EMCP_SHIFT, align 4
  %26 = shl i32 %24, %25
  %27 = load i32, i32* @SWITCH_PORTS_NOCPU, align 4
  %28 = load i32, i32* @PORT_CONF0_BP_SHIFT, align 4
  %29 = shl i32 %27, %28
  %30 = or i32 %26, %29
  %31 = load i32, i32* @SWITCH_PORTS_NOCPU, align 4
  %32 = or i32 %30, %31
  store i32 %32, i32* %4, align 4
  %33 = load i32, i32* @SWITCH_REG_PORT_CONF0, align 4
  %34 = load i32, i32* %4, align 4
  %35 = call i32 @sw_write_reg(i32 %33, i32 %34)
  %36 = load i32, i32* @SWITCH_PORTS_PHY, align 4
  %37 = load i32, i32* @SWITCH_PORTS_PHY, align 4
  %38 = load i32, i32* @PHY_CNTL2_SC_SHIFT, align 4
  %39 = shl i32 %37, %38
  %40 = or i32 %36, %39
  %41 = load i32, i32* @SWITCH_PORTS_PHY, align 4
  %42 = load i32, i32* @PHY_CNTL2_DC_SHIFT, align 4
  %43 = shl i32 %41, %42
  %44 = or i32 %40, %43
  %45 = load i32, i32* @SWITCH_PORTS_PHY, align 4
  %46 = load i32, i32* @PHY_CNTL2_PHYR_SHIFT, align 4
  %47 = shl i32 %45, %46
  %48 = or i32 %44, %47
  %49 = load i32, i32* @SWITCH_PORTS_PHY, align 4
  %50 = load i32, i32* @PHY_CNTL2_AMDIX_SHIFT, align 4
  %51 = shl i32 %49, %50
  %52 = or i32 %48, %51
  %53 = load i32, i32* @PHY_CNTL2_RMAE, align 4
  %54 = or i32 %52, %53
  store i32 %54, i32* %4, align 4
  %55 = load i32, i32* @SWITCH_REG_PHY_CNTL2, align 4
  %56 = load i32, i32* %4, align 4
  %57 = call i32 @sw_write_reg(i32 %55, i32 %56)
  %58 = load i32, i32* @SWITCH_REG_PHY_CNTL3, align 4
  %59 = call i32 @sw_read_reg(i32 %58)
  store i32 %59, i32* %4, align 4
  %60 = load i32, i32* @PHY_CNTL3_RNT, align 4
  %61 = load i32, i32* %4, align 4
  %62 = or i32 %61, %60
  store i32 %62, i32* %4, align 4
  %63 = load i32, i32* @SWITCH_REG_PHY_CNTL3, align 4
  %64 = load i32, i32* %4, align 4
  %65 = call i32 @sw_write_reg(i32 %63, i32 %64)
  %66 = load i32, i32* @SWITCH_REG_PRI_CNTL, align 4
  %67 = call i32 @sw_write_reg(i32 %66, i32 0)
  %68 = load i32, i32* @SWITCH_INTS_ALL, align 4
  %69 = call i32 @sw_int_mask(i32 %68)
  %70 = load i32, i32* @SWITCH_INTS_ALL, align 4
  %71 = call i32 @sw_int_ack(i32 %70)
  %72 = call i32 (...) @adm5120_switch_rx_ring_alloc()
  store i32 %72, i32* %6, align 4
  %73 = load i32, i32* %6, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %1
  br label %168

76:                                               ; preds = %1
  %77 = call i32 (...) @adm5120_switch_tx_ring_alloc()
  store i32 %77, i32* %6, align 4
  %78 = load i32, i32* %6, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %76
  br label %168

81:                                               ; preds = %76
  %82 = load i32, i32* @txl_descs, align 4
  %83 = load i32, i32* @txl_skbuff, align 4
  %84 = load i32, i32* @TX_RING_SIZE, align 4
  %85 = call i32 @adm5120_switch_tx_ring_reset(i32 %82, i32 %83, i32 %84)
  %86 = load i32, i32* @rxl_descs, align 4
  %87 = load i32, i32* @rxl_skbuff, align 4
  %88 = load i32, i32* @RX_RING_SIZE, align 4
  %89 = call i32 @adm5120_switch_rx_ring_reset(i32 %86, i32 %87, i32 %88)
  %90 = load i32, i32* @SWITCH_REG_SHDA, align 4
  %91 = call i32 @sw_write_reg(i32 %90, i32 0)
  %92 = load i32, i32* @SWITCH_REG_SLDA, align 4
  %93 = load i32, i32* @txl_descs, align 4
  %94 = call i32 @KSEG1ADDR(i32 %93)
  %95 = call i32 @sw_write_reg(i32 %92, i32 %94)
  %96 = load i32, i32* @SWITCH_REG_RHDA, align 4
  %97 = call i32 @sw_write_reg(i32 %96, i32 0)
  %98 = load i32, i32* @SWITCH_REG_RLDA, align 4
  %99 = load i32, i32* @rxl_descs, align 4
  %100 = call i32 @KSEG1ADDR(i32 %99)
  %101 = call i32 @sw_write_reg(i32 %98, i32 %100)
  store i32 0, i32* %5, align 4
  br label %102

102:                                              ; preds = %153, %81
  %103 = load i32, i32* %5, align 4
  %104 = load i32, i32* @SWITCH_NUM_PORTS, align 4
  %105 = icmp slt i32 %103, %104
  br i1 %105, label %106, label %156

106:                                              ; preds = %102
  %107 = call %struct.net_device* (...) @adm5120_if_alloc()
  store %struct.net_device* %107, %struct.net_device** %7, align 8
  %108 = load %struct.net_device*, %struct.net_device** %7, align 8
  %109 = icmp ne %struct.net_device* %108, null
  br i1 %109, label %113, label %110

110:                                              ; preds = %106
  %111 = load i32, i32* @ENOMEM, align 4
  %112 = sub nsw i32 0, %111
  store i32 %112, i32* %6, align 4
  br label %168

113:                                              ; preds = %106
  %114 = load %struct.net_device*, %struct.net_device** %7, align 8
  %115 = load %struct.net_device**, %struct.net_device*** @adm5120_devs, align 8
  %116 = load i32, i32* %5, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds %struct.net_device*, %struct.net_device** %115, i64 %117
  store %struct.net_device* %114, %struct.net_device** %118, align 8
  %119 = load %struct.net_device*, %struct.net_device** %7, align 8
  %120 = call %struct.adm5120_if_priv* @netdev_priv(%struct.net_device* %119)
  store %struct.adm5120_if_priv* %120, %struct.adm5120_if_priv** %8, align 8
  %121 = load i32, i32* %5, align 4
  %122 = load %struct.adm5120_if_priv*, %struct.adm5120_if_priv** %8, align 8
  %123 = getelementptr inbounds %struct.adm5120_if_priv, %struct.adm5120_if_priv* %122, i32 0, i32 0
  store i32 %121, i32* %123, align 4
  %124 = load i32*, i32** @adm5120_eth_vlans, align 8
  %125 = load i32, i32* %5, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i32, i32* %124, i64 %126
  %128 = load i32, i32* %127, align 4
  %129 = load %struct.adm5120_if_priv*, %struct.adm5120_if_priv** %8, align 8
  %130 = getelementptr inbounds %struct.adm5120_if_priv, %struct.adm5120_if_priv* %129, i32 0, i32 1
  store i32 %128, i32* %130, align 4
  %131 = load %struct.net_device*, %struct.net_device** %7, align 8
  %132 = getelementptr inbounds %struct.net_device, %struct.net_device* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = load i32*, i32** @adm5120_eth_macs, align 8
  %135 = load i32, i32* %5, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i32, i32* %134, i64 %136
  %138 = load i32, i32* %137, align 4
  %139 = call i32 @memcpy(i32 %133, i32 %138, i32 6)
  %140 = load %struct.net_device*, %struct.net_device** %7, align 8
  %141 = call i32 @adm5120_write_mac(%struct.net_device* %140)
  %142 = load %struct.net_device*, %struct.net_device** %7, align 8
  %143 = call i32 @register_netdev(%struct.net_device* %142)
  store i32 %143, i32* %6, align 4
  %144 = load i32, i32* %6, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %152

146:                                              ; preds = %113
  %147 = load %struct.net_device*, %struct.net_device** %7, align 8
  %148 = getelementptr inbounds %struct.net_device, %struct.net_device* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  %150 = load i32, i32* %6, align 4
  %151 = call i32 @SW_INFO(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %149, i32 %150)
  br label %168

152:                                              ; preds = %113
  br label %153

153:                                              ; preds = %152
  %154 = load i32, i32* %5, align 4
  %155 = add nsw i32 %154, 1
  store i32 %155, i32* %5, align 4
  br label %102

156:                                              ; preds = %102
  %157 = load i32*, i32** @adm5120_eth_vlans, align 8
  %158 = call i32 @adm5120_set_vlan(i32* %157)
  %159 = load i32, i32* @SWITCH_REG_CPUP_CONF, align 4
  %160 = call i32 @sw_read_reg(i32 %159)
  store i32 %160, i32* %4, align 4
  %161 = load i32, i32* @CPUP_CONF_DCPUP, align 4
  %162 = xor i32 %161, -1
  %163 = load i32, i32* %4, align 4
  %164 = and i32 %163, %162
  store i32 %164, i32* %4, align 4
  %165 = load i32, i32* @SWITCH_REG_CPUP_CONF, align 4
  %166 = load i32, i32* %4, align 4
  %167 = call i32 @sw_write_reg(i32 %165, i32 %166)
  store i32 0, i32* %2, align 4
  br label %172

168:                                              ; preds = %146, %110, %80, %75
  %169 = call i32 (...) @adm5120_switch_cleanup()
  %170 = call i32 @SW_ERR(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  %171 = load i32, i32* %6, align 4
  store i32 %171, i32* %2, align 4
  br label %172

172:                                              ; preds = %168, %156
  %173 = load i32, i32* %2, align 4
  ret i32 %173
}

declare dso_local i32 @sw_write_reg(i32, i32) #1

declare dso_local i32 @sw_read_reg(i32) #1

declare dso_local i32 @sw_int_mask(i32) #1

declare dso_local i32 @sw_int_ack(i32) #1

declare dso_local i32 @adm5120_switch_rx_ring_alloc(...) #1

declare dso_local i32 @adm5120_switch_tx_ring_alloc(...) #1

declare dso_local i32 @adm5120_switch_tx_ring_reset(i32, i32, i32) #1

declare dso_local i32 @adm5120_switch_rx_ring_reset(i32, i32, i32) #1

declare dso_local i32 @KSEG1ADDR(i32) #1

declare dso_local %struct.net_device* @adm5120_if_alloc(...) #1

declare dso_local %struct.adm5120_if_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @adm5120_write_mac(%struct.net_device*) #1

declare dso_local i32 @register_netdev(%struct.net_device*) #1

declare dso_local i32 @SW_INFO(i8*, i32, i32) #1

declare dso_local i32 @adm5120_set_vlan(i32*) #1

declare dso_local i32 @adm5120_switch_cleanup(...) #1

declare dso_local i32 @SW_ERR(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
