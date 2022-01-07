; ModuleID = '/home/carl/AnghaBench/lede/target/linux/ramips/files-4.14/drivers/net/ethernet/mediatek/extr_esw_rt3050.c_esw_hw_init.c'
source_filename = "/home/carl/AnghaBench/lede/target/linux/ramips/files-4.14/drivers/net/ethernet/mediatek/extr_esw_rt3050.c_esw_hw_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt305x_esw = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@RT305X_ESW_PMAP_LLLLLL = common dso_local global i32 0, align 4
@RT305X_ESW_REG_FCT0 = common dso_local global i32 0, align 4
@RT305X_ESW_REG_SGC2 = common dso_local global i32 0, align 4
@RT305X_ESW_PORTS_ALL = common dso_local global i32 0, align 4
@RT305X_ESW_PFC1_EN_VLAN_S = common dso_local global i32 0, align 4
@RT305X_ESW_REG_PFC1 = common dso_local global i32 0, align 4
@RT305X_ESW_POC0_EN_BP_S = common dso_local global i32 0, align 4
@RT305X_ESW_POC0_EN_FC_S = common dso_local global i32 0, align 4
@RT305X_ESW_REG_POC0 = common dso_local global i32 0, align 4
@RT305X_ESW_POC2_ENAGING_S = common dso_local global i32 0, align 4
@RT305X_ESW_PORTS_NOCPU = common dso_local global i32 0, align 4
@RT305X_ESW_POC2_UNTAG_EN_S = common dso_local global i32 0, align 4
@RT305X_ESW_REG_POC2 = common dso_local global i32 0, align 4
@RT305X_ESW_REG_FCT2 = common dso_local global i32 0, align 4
@RT305X_ESW_REG_SGC = common dso_local global i32 0, align 4
@RT305X_ESW_SOCPC_CRC_PADDING = common dso_local global i32 0, align 4
@RT305X_ESW_PORTS_CPU = common dso_local global i32 0, align 4
@RT305X_ESW_SOCPC_DISUN2CPU_S = common dso_local global i32 0, align 4
@RT305X_ESW_SOCPC_DISMC2CPU_S = common dso_local global i32 0, align 4
@RT305X_ESW_SOCPC_DISBC2CPU_S = common dso_local global i32 0, align 4
@RT305X_ESW_REG_SOCPC = common dso_local global i32 0, align 4
@RT305X_ESW_REG_FPA2 = common dso_local global i32 0, align 4
@RT305X_ESW_REG_FPA = common dso_local global i32 0, align 4
@RT305X_ESW_REG_P0LED = common dso_local global i32 0, align 4
@RT305X_ESW_REG_P1LED = common dso_local global i32 0, align 4
@RT305X_ESW_REG_P2LED = common dso_local global i32 0, align 4
@RT305X_ESW_REG_P3LED = common dso_local global i32 0, align 4
@RT305X_ESW_REG_P4LED = common dso_local global i32 0, align 4
@ralink_soc = common dso_local global i64 0, align 8
@RT305X_SOC_RT3352 = common dso_local global i64 0, align 8
@RT5350_RESET_EPHY = common dso_local global i32 0, align 4
@MII_BMCR = common dso_local global i32 0, align 4
@BMCR_PDOWN = common dso_local global i32 0, align 4
@BMCR_FULLDPLX = common dso_local global i32 0, align 4
@BMCR_ANENABLE = common dso_local global i32 0, align 4
@BMCR_SPEED100 = common dso_local global i32 0, align 4
@RT305X_SOC_RT5350 = common dso_local global i64 0, align 8
@RT5350_EWS_REG_LED_POLARITY = common dso_local global i32 0, align 4
@MT762X_SOC_MT7628AN = common dso_local global i64 0, align 8
@MT762X_SOC_MT7688 = common dso_local global i64 0, align 8
@RT305X_ESW_SGC2_LAN_PMAP_M = common dso_local global i32 0, align 4
@RT305X_ESW_SGC2_LAN_PMAP_S = common dso_local global i32 0, align 4
@RT305X_ESW_NUM_LEDS = common dso_local global i32 0, align 4
@RT305X_ESW_PORT_ST_CHG = common dso_local global i32 0, align 4
@RT305X_ESW_REG_IMR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rt305x_esw*)* @esw_hw_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @esw_hw_init(%struct.rt305x_esw* %0) #0 {
  %2 = alloca %struct.rt305x_esw*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.rt305x_esw* %0, %struct.rt305x_esw** %2, align 8
  store i32 0, i32* %4, align 4
  %7 = load i32, i32* @RT305X_ESW_PMAP_LLLLLL, align 4
  store i32 %7, i32* %5, align 4
  %8 = load %struct.rt305x_esw*, %struct.rt305x_esw** %2, align 8
  %9 = load i32, i32* @RT305X_ESW_REG_FCT0, align 4
  %10 = call i32 @esw_w32(%struct.rt305x_esw* %8, i32 -929007536, i32 %9)
  %11 = load %struct.rt305x_esw*, %struct.rt305x_esw** %2, align 8
  %12 = load i32, i32* @RT305X_ESW_REG_SGC2, align 4
  %13 = call i32 @esw_w32(%struct.rt305x_esw* %11, i32 0, i32 %12)
  %14 = load %struct.rt305x_esw*, %struct.rt305x_esw** %2, align 8
  %15 = load i32, i32* @RT305X_ESW_PORTS_ALL, align 4
  %16 = load i32, i32* @RT305X_ESW_PFC1_EN_VLAN_S, align 4
  %17 = shl i32 %15, %16
  %18 = or i32 21845, %17
  %19 = load i32, i32* @RT305X_ESW_REG_PFC1, align 4
  %20 = call i32 @esw_w32(%struct.rt305x_esw* %14, i32 %18, i32 %19)
  %21 = load %struct.rt305x_esw*, %struct.rt305x_esw** %2, align 8
  %22 = load i32, i32* @RT305X_ESW_PORTS_ALL, align 4
  %23 = load i32, i32* @RT305X_ESW_POC0_EN_BP_S, align 4
  %24 = shl i32 %22, %23
  %25 = load i32, i32* @RT305X_ESW_PORTS_ALL, align 4
  %26 = load i32, i32* @RT305X_ESW_POC0_EN_FC_S, align 4
  %27 = shl i32 %25, %26
  %28 = or i32 %24, %27
  %29 = load i32, i32* @RT305X_ESW_REG_POC0, align 4
  %30 = call i32 @esw_w32(%struct.rt305x_esw* %21, i32 %28, i32 %29)
  %31 = load %struct.rt305x_esw*, %struct.rt305x_esw** %2, align 8
  %32 = load i32, i32* @RT305X_ESW_PORTS_ALL, align 4
  %33 = load i32, i32* @RT305X_ESW_POC2_ENAGING_S, align 4
  %34 = shl i32 %32, %33
  %35 = load i32, i32* @RT305X_ESW_PORTS_NOCPU, align 4
  %36 = load i32, i32* @RT305X_ESW_POC2_UNTAG_EN_S, align 4
  %37 = shl i32 %35, %36
  %38 = or i32 %34, %37
  %39 = load i32, i32* @RT305X_ESW_REG_POC2, align 4
  %40 = call i32 @esw_w32(%struct.rt305x_esw* %31, i32 %38, i32 %39)
  %41 = load %struct.rt305x_esw*, %struct.rt305x_esw** %2, align 8
  %42 = getelementptr inbounds %struct.rt305x_esw, %struct.rt305x_esw* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %52

45:                                               ; preds = %1
  %46 = load %struct.rt305x_esw*, %struct.rt305x_esw** %2, align 8
  %47 = load %struct.rt305x_esw*, %struct.rt305x_esw** %2, align 8
  %48 = getelementptr inbounds %struct.rt305x_esw, %struct.rt305x_esw* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @RT305X_ESW_REG_FCT2, align 4
  %51 = call i32 @esw_w32(%struct.rt305x_esw* %46, i32 %49, i32 %50)
  br label %56

52:                                               ; preds = %1
  %53 = load %struct.rt305x_esw*, %struct.rt305x_esw** %2, align 8
  %54 = load i32, i32* @RT305X_ESW_REG_FCT2, align 4
  %55 = call i32 @esw_w32(%struct.rt305x_esw* %53, i32 151564, i32 %54)
  br label %56

56:                                               ; preds = %52, %45
  %57 = load %struct.rt305x_esw*, %struct.rt305x_esw** %2, align 8
  %58 = load i32, i32* @RT305X_ESW_REG_SGC, align 4
  %59 = call i32 @esw_w32(%struct.rt305x_esw* %57, i32 566017, i32 %58)
  %60 = load %struct.rt305x_esw*, %struct.rt305x_esw** %2, align 8
  %61 = load i32, i32* @RT305X_ESW_SOCPC_CRC_PADDING, align 4
  %62 = load i32, i32* @RT305X_ESW_PORTS_CPU, align 4
  %63 = load i32, i32* @RT305X_ESW_SOCPC_DISUN2CPU_S, align 4
  %64 = shl i32 %62, %63
  %65 = or i32 %61, %64
  %66 = load i32, i32* @RT305X_ESW_PORTS_CPU, align 4
  %67 = load i32, i32* @RT305X_ESW_SOCPC_DISMC2CPU_S, align 4
  %68 = shl i32 %66, %67
  %69 = or i32 %65, %68
  %70 = load i32, i32* @RT305X_ESW_PORTS_CPU, align 4
  %71 = load i32, i32* @RT305X_ESW_SOCPC_DISBC2CPU_S, align 4
  %72 = shl i32 %70, %71
  %73 = or i32 %69, %72
  %74 = load i32, i32* @RT305X_ESW_REG_SOCPC, align 4
  %75 = call i32 @esw_w32(%struct.rt305x_esw* %60, i32 %73, i32 %74)
  %76 = load %struct.rt305x_esw*, %struct.rt305x_esw** %2, align 8
  %77 = getelementptr inbounds %struct.rt305x_esw, %struct.rt305x_esw* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %87

80:                                               ; preds = %56
  %81 = load %struct.rt305x_esw*, %struct.rt305x_esw** %2, align 8
  %82 = load %struct.rt305x_esw*, %struct.rt305x_esw** %2, align 8
  %83 = getelementptr inbounds %struct.rt305x_esw, %struct.rt305x_esw* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* @RT305X_ESW_REG_FPA2, align 4
  %86 = call i32 @esw_w32(%struct.rt305x_esw* %81, i32 %84, i32 %85)
  br label %91

87:                                               ; preds = %56
  %88 = load %struct.rt305x_esw*, %struct.rt305x_esw** %2, align 8
  %89 = load i32, i32* @RT305X_ESW_REG_FPA2, align 4
  %90 = call i32 @esw_w32(%struct.rt305x_esw* %88, i32 1062218536, i32 %89)
  br label %91

91:                                               ; preds = %87, %80
  %92 = load %struct.rt305x_esw*, %struct.rt305x_esw** %2, align 8
  %93 = load i32, i32* @RT305X_ESW_REG_FPA, align 4
  %94 = call i32 @esw_w32(%struct.rt305x_esw* %92, i32 0, i32 %93)
  %95 = load %struct.rt305x_esw*, %struct.rt305x_esw** %2, align 8
  %96 = load i32, i32* @RT305X_ESW_REG_P0LED, align 4
  %97 = call i32 @esw_w32(%struct.rt305x_esw* %95, i32 5, i32 %96)
  %98 = load %struct.rt305x_esw*, %struct.rt305x_esw** %2, align 8
  %99 = load i32, i32* @RT305X_ESW_REG_P1LED, align 4
  %100 = call i32 @esw_w32(%struct.rt305x_esw* %98, i32 5, i32 %99)
  %101 = load %struct.rt305x_esw*, %struct.rt305x_esw** %2, align 8
  %102 = load i32, i32* @RT305X_ESW_REG_P2LED, align 4
  %103 = call i32 @esw_w32(%struct.rt305x_esw* %101, i32 5, i32 %102)
  %104 = load %struct.rt305x_esw*, %struct.rt305x_esw** %2, align 8
  %105 = load i32, i32* @RT305X_ESW_REG_P3LED, align 4
  %106 = call i32 @esw_w32(%struct.rt305x_esw* %104, i32 5, i32 %105)
  %107 = load %struct.rt305x_esw*, %struct.rt305x_esw** %2, align 8
  %108 = load i32, i32* @RT305X_ESW_REG_P4LED, align 4
  %109 = call i32 @esw_w32(%struct.rt305x_esw* %107, i32 5, i32 %108)
  %110 = load %struct.rt305x_esw*, %struct.rt305x_esw** %2, align 8
  %111 = getelementptr inbounds %struct.rt305x_esw, %struct.rt305x_esw* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 8
  store i32 %112, i32* %4, align 4
  %113 = load %struct.rt305x_esw*, %struct.rt305x_esw** %2, align 8
  %114 = call i32 @esw_get_port_disable(%struct.rt305x_esw* %113)
  %115 = load i32, i32* %4, align 4
  %116 = or i32 %115, %114
  store i32 %116, i32* %4, align 4
  store i32 0, i32* %3, align 4
  br label %117

117:                                              ; preds = %134, %91
  %118 = load i32, i32* %3, align 4
  %119 = icmp slt i32 %118, 6
  br i1 %119, label %120, label %137

120:                                              ; preds = %117
  %121 = load i32, i32* %4, align 4
  %122 = load i32, i32* %3, align 4
  %123 = shl i32 1, %122
  %124 = and i32 %121, %123
  %125 = icmp ne i32 %124, 0
  %126 = zext i1 %125 to i32
  %127 = load %struct.rt305x_esw*, %struct.rt305x_esw** %2, align 8
  %128 = getelementptr inbounds %struct.rt305x_esw, %struct.rt305x_esw* %127, i32 0, i32 6
  %129 = load %struct.TYPE_2__*, %struct.TYPE_2__** %128, align 8
  %130 = load i32, i32* %3, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %129, i64 %131
  %133 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %132, i32 0, i32 0
  store i32 %126, i32* %133, align 4
  br label %134

134:                                              ; preds = %120
  %135 = load i32, i32* %3, align 4
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %3, align 4
  br label %117

137:                                              ; preds = %117
  %138 = load i64, i64* @ralink_soc, align 8
  %139 = load i64, i64* @RT305X_SOC_RT3352, align 8
  %140 = icmp eq i64 %138, %139
  br i1 %140, label %141, label %217

141:                                              ; preds = %137
  %142 = load i32, i32* @RT5350_RESET_EPHY, align 4
  %143 = call i32 @fe_reset(i32 %142)
  %144 = load %struct.rt305x_esw*, %struct.rt305x_esw** %2, align 8
  %145 = call i32 @rt305x_mii_write(%struct.rt305x_esw* %144, i32 0, i32 31, i32 32768)
  store i32 0, i32* %3, align 4
  br label %146

146:                                              ; preds = %185, %141
  %147 = load i32, i32* %3, align 4
  %148 = icmp slt i32 %147, 5
  br i1 %148, label %149, label %188

149:                                              ; preds = %146
  %150 = load %struct.rt305x_esw*, %struct.rt305x_esw** %2, align 8
  %151 = getelementptr inbounds %struct.rt305x_esw, %struct.rt305x_esw* %150, i32 0, i32 6
  %152 = load %struct.TYPE_2__*, %struct.TYPE_2__** %151, align 8
  %153 = load i32, i32* %3, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %152, i64 %154
  %156 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 4
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %165

159:                                              ; preds = %149
  %160 = load %struct.rt305x_esw*, %struct.rt305x_esw** %2, align 8
  %161 = load i32, i32* %3, align 4
  %162 = load i32, i32* @MII_BMCR, align 4
  %163 = load i32, i32* @BMCR_PDOWN, align 4
  %164 = call i32 @rt305x_mii_write(%struct.rt305x_esw* %160, i32 %161, i32 %162, i32 %163)
  br label %175

165:                                              ; preds = %149
  %166 = load %struct.rt305x_esw*, %struct.rt305x_esw** %2, align 8
  %167 = load i32, i32* %3, align 4
  %168 = load i32, i32* @MII_BMCR, align 4
  %169 = load i32, i32* @BMCR_FULLDPLX, align 4
  %170 = load i32, i32* @BMCR_ANENABLE, align 4
  %171 = or i32 %169, %170
  %172 = load i32, i32* @BMCR_SPEED100, align 4
  %173 = or i32 %171, %172
  %174 = call i32 @rt305x_mii_write(%struct.rt305x_esw* %166, i32 %167, i32 %168, i32 %173)
  br label %175

175:                                              ; preds = %165, %159
  %176 = load %struct.rt305x_esw*, %struct.rt305x_esw** %2, align 8
  %177 = load i32, i32* %3, align 4
  %178 = call i32 @rt305x_mii_write(%struct.rt305x_esw* %176, i32 %177, i32 26, i32 5633)
  %179 = load %struct.rt305x_esw*, %struct.rt305x_esw** %2, align 8
  %180 = load i32, i32* %3, align 4
  %181 = call i32 @rt305x_mii_write(%struct.rt305x_esw* %179, i32 %180, i32 29, i32 28694)
  %182 = load %struct.rt305x_esw*, %struct.rt305x_esw** %2, align 8
  %183 = load i32, i32* %3, align 4
  %184 = call i32 @rt305x_mii_write(%struct.rt305x_esw* %182, i32 %183, i32 30, i32 56)
  br label %185

185:                                              ; preds = %175
  %186 = load i32, i32* %3, align 4
  %187 = add nsw i32 %186, 1
  store i32 %187, i32* %3, align 4
  br label %146

188:                                              ; preds = %146
  %189 = load %struct.rt305x_esw*, %struct.rt305x_esw** %2, align 8
  %190 = call i32 @rt305x_mii_write(%struct.rt305x_esw* %189, i32 0, i32 31, i32 0)
  %191 = load %struct.rt305x_esw*, %struct.rt305x_esw** %2, align 8
  %192 = call i32 @rt305x_mii_write(%struct.rt305x_esw* %191, i32 0, i32 1, i32 19008)
  %193 = load %struct.rt305x_esw*, %struct.rt305x_esw** %2, align 8
  %194 = call i32 @rt305x_mii_write(%struct.rt305x_esw* %193, i32 0, i32 2, i32 25172)
  %195 = load %struct.rt305x_esw*, %struct.rt305x_esw** %2, align 8
  %196 = call i32 @rt305x_mii_write(%struct.rt305x_esw* %195, i32 0, i32 3, i32 41343)
  %197 = load %struct.rt305x_esw*, %struct.rt305x_esw** %2, align 8
  %198 = call i32 @rt305x_mii_write(%struct.rt305x_esw* %197, i32 0, i32 12, i32 32426)
  %199 = load %struct.rt305x_esw*, %struct.rt305x_esw** %2, align 8
  %200 = call i32 @rt305x_mii_write(%struct.rt305x_esw* %199, i32 0, i32 14, i32 101)
  %201 = load %struct.rt305x_esw*, %struct.rt305x_esw** %2, align 8
  %202 = call i32 @rt305x_mii_write(%struct.rt305x_esw* %201, i32 0, i32 16, i32 1668)
  %203 = load %struct.rt305x_esw*, %struct.rt305x_esw** %2, align 8
  %204 = call i32 @rt305x_mii_write(%struct.rt305x_esw* %203, i32 0, i32 17, i32 4064)
  %205 = load %struct.rt305x_esw*, %struct.rt305x_esw** %2, align 8
  %206 = call i32 @rt305x_mii_write(%struct.rt305x_esw* %205, i32 0, i32 18, i32 16570)
  %207 = load %struct.rt305x_esw*, %struct.rt305x_esw** %2, align 8
  %208 = call i32 @rt305x_mii_write(%struct.rt305x_esw* %207, i32 0, i32 22, i32 9535)
  %209 = load %struct.rt305x_esw*, %struct.rt305x_esw** %2, align 8
  %210 = call i32 @rt305x_mii_write(%struct.rt305x_esw* %209, i32 0, i32 27, i32 12250)
  %211 = load %struct.rt305x_esw*, %struct.rt305x_esw** %2, align 8
  %212 = call i32 @rt305x_mii_write(%struct.rt305x_esw* %211, i32 0, i32 28, i32 50192)
  %213 = load %struct.rt305x_esw*, %struct.rt305x_esw** %2, align 8
  %214 = call i32 @rt305x_mii_write(%struct.rt305x_esw* %213, i32 0, i32 29, i32 22923)
  %215 = load %struct.rt305x_esw*, %struct.rt305x_esw** %2, align 8
  %216 = call i32 @rt305x_mii_write(%struct.rt305x_esw* %215, i32 0, i32 31, i32 32768)
  br label %446

217:                                              ; preds = %137
  %218 = load i64, i64* @ralink_soc, align 8
  %219 = load i64, i64* @RT305X_SOC_RT5350, align 8
  %220 = icmp eq i64 %218, %219
  br i1 %220, label %221, label %304

221:                                              ; preds = %217
  %222 = load i32, i32* @RT5350_RESET_EPHY, align 4
  %223 = call i32 @fe_reset(i32 %222)
  %224 = load %struct.rt305x_esw*, %struct.rt305x_esw** %2, align 8
  %225 = load %struct.rt305x_esw*, %struct.rt305x_esw** %2, align 8
  %226 = getelementptr inbounds %struct.rt305x_esw, %struct.rt305x_esw* %225, i32 0, i32 3
  %227 = load i32, i32* %226, align 4
  %228 = and i32 %227, 31
  %229 = load i32, i32* @RT5350_EWS_REG_LED_POLARITY, align 4
  %230 = call i32 @esw_w32(%struct.rt305x_esw* %224, i32 %228, i32 %229)
  %231 = load %struct.rt305x_esw*, %struct.rt305x_esw** %2, align 8
  %232 = call i32 @rt305x_mii_write(%struct.rt305x_esw* %231, i32 0, i32 31, i32 32768)
  store i32 0, i32* %3, align 4
  br label %233

233:                                              ; preds = %272, %221
  %234 = load i32, i32* %3, align 4
  %235 = icmp slt i32 %234, 5
  br i1 %235, label %236, label %275

236:                                              ; preds = %233
  %237 = load %struct.rt305x_esw*, %struct.rt305x_esw** %2, align 8
  %238 = getelementptr inbounds %struct.rt305x_esw, %struct.rt305x_esw* %237, i32 0, i32 6
  %239 = load %struct.TYPE_2__*, %struct.TYPE_2__** %238, align 8
  %240 = load i32, i32* %3, align 4
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %239, i64 %241
  %243 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %242, i32 0, i32 0
  %244 = load i32, i32* %243, align 4
  %245 = icmp ne i32 %244, 0
  br i1 %245, label %246, label %252

246:                                              ; preds = %236
  %247 = load %struct.rt305x_esw*, %struct.rt305x_esw** %2, align 8
  %248 = load i32, i32* %3, align 4
  %249 = load i32, i32* @MII_BMCR, align 4
  %250 = load i32, i32* @BMCR_PDOWN, align 4
  %251 = call i32 @rt305x_mii_write(%struct.rt305x_esw* %247, i32 %248, i32 %249, i32 %250)
  br label %262

252:                                              ; preds = %236
  %253 = load %struct.rt305x_esw*, %struct.rt305x_esw** %2, align 8
  %254 = load i32, i32* %3, align 4
  %255 = load i32, i32* @MII_BMCR, align 4
  %256 = load i32, i32* @BMCR_FULLDPLX, align 4
  %257 = load i32, i32* @BMCR_ANENABLE, align 4
  %258 = or i32 %256, %257
  %259 = load i32, i32* @BMCR_SPEED100, align 4
  %260 = or i32 %258, %259
  %261 = call i32 @rt305x_mii_write(%struct.rt305x_esw* %253, i32 %254, i32 %255, i32 %260)
  br label %262

262:                                              ; preds = %252, %246
  %263 = load %struct.rt305x_esw*, %struct.rt305x_esw** %2, align 8
  %264 = load i32, i32* %3, align 4
  %265 = call i32 @rt305x_mii_write(%struct.rt305x_esw* %263, i32 %264, i32 26, i32 5633)
  %266 = load %struct.rt305x_esw*, %struct.rt305x_esw** %2, align 8
  %267 = load i32, i32* %3, align 4
  %268 = call i32 @rt305x_mii_write(%struct.rt305x_esw* %266, i32 %267, i32 29, i32 28693)
  %269 = load %struct.rt305x_esw*, %struct.rt305x_esw** %2, align 8
  %270 = load i32, i32* %3, align 4
  %271 = call i32 @rt305x_mii_write(%struct.rt305x_esw* %269, i32 %270, i32 30, i32 56)
  br label %272

272:                                              ; preds = %262
  %273 = load i32, i32* %3, align 4
  %274 = add nsw i32 %273, 1
  store i32 %274, i32* %3, align 4
  br label %233

275:                                              ; preds = %233
  %276 = load %struct.rt305x_esw*, %struct.rt305x_esw** %2, align 8
  %277 = call i32 @rt305x_mii_write(%struct.rt305x_esw* %276, i32 0, i32 31, i32 0)
  %278 = load %struct.rt305x_esw*, %struct.rt305x_esw** %2, align 8
  %279 = call i32 @rt305x_mii_write(%struct.rt305x_esw* %278, i32 0, i32 1, i32 19008)
  %280 = load %struct.rt305x_esw*, %struct.rt305x_esw** %2, align 8
  %281 = call i32 @rt305x_mii_write(%struct.rt305x_esw* %280, i32 0, i32 2, i32 25172)
  %282 = load %struct.rt305x_esw*, %struct.rt305x_esw** %2, align 8
  %283 = call i32 @rt305x_mii_write(%struct.rt305x_esw* %282, i32 0, i32 3, i32 41343)
  %284 = load %struct.rt305x_esw*, %struct.rt305x_esw** %2, align 8
  %285 = call i32 @rt305x_mii_write(%struct.rt305x_esw* %284, i32 0, i32 12, i32 32426)
  %286 = load %struct.rt305x_esw*, %struct.rt305x_esw** %2, align 8
  %287 = call i32 @rt305x_mii_write(%struct.rt305x_esw* %286, i32 0, i32 14, i32 101)
  %288 = load %struct.rt305x_esw*, %struct.rt305x_esw** %2, align 8
  %289 = call i32 @rt305x_mii_write(%struct.rt305x_esw* %288, i32 0, i32 16, i32 1668)
  %290 = load %struct.rt305x_esw*, %struct.rt305x_esw** %2, align 8
  %291 = call i32 @rt305x_mii_write(%struct.rt305x_esw* %290, i32 0, i32 17, i32 4064)
  %292 = load %struct.rt305x_esw*, %struct.rt305x_esw** %2, align 8
  %293 = call i32 @rt305x_mii_write(%struct.rt305x_esw* %292, i32 0, i32 18, i32 16570)
  %294 = load %struct.rt305x_esw*, %struct.rt305x_esw** %2, align 8
  %295 = call i32 @rt305x_mii_write(%struct.rt305x_esw* %294, i32 0, i32 22, i32 9535)
  %296 = load %struct.rt305x_esw*, %struct.rt305x_esw** %2, align 8
  %297 = call i32 @rt305x_mii_write(%struct.rt305x_esw* %296, i32 0, i32 27, i32 12250)
  %298 = load %struct.rt305x_esw*, %struct.rt305x_esw** %2, align 8
  %299 = call i32 @rt305x_mii_write(%struct.rt305x_esw* %298, i32 0, i32 28, i32 50192)
  %300 = load %struct.rt305x_esw*, %struct.rt305x_esw** %2, align 8
  %301 = call i32 @rt305x_mii_write(%struct.rt305x_esw* %300, i32 0, i32 29, i32 22923)
  %302 = load %struct.rt305x_esw*, %struct.rt305x_esw** %2, align 8
  %303 = call i32 @rt305x_mii_write(%struct.rt305x_esw* %302, i32 0, i32 31, i32 32768)
  br label %445

304:                                              ; preds = %217
  %305 = load i64, i64* @ralink_soc, align 8
  %306 = load i64, i64* @MT762X_SOC_MT7628AN, align 8
  %307 = icmp eq i64 %305, %306
  br i1 %307, label %312, label %308

308:                                              ; preds = %304
  %309 = load i64, i64* @ralink_soc, align 8
  %310 = load i64, i64* @MT762X_SOC_MT7688, align 8
  %311 = icmp eq i64 %309, %310
  br i1 %311, label %312, label %386

312:                                              ; preds = %308, %304
  %313 = load i32, i32* @RT5350_RESET_EPHY, align 4
  %314 = call i32 @fe_reset(i32 %313)
  %315 = load %struct.rt305x_esw*, %struct.rt305x_esw** %2, align 8
  %316 = call i32 @rt305x_mii_write(%struct.rt305x_esw* %315, i32 0, i32 31, i32 8192)
  %317 = load %struct.rt305x_esw*, %struct.rt305x_esw** %2, align 8
  %318 = call i32 @rt305x_mii_write(%struct.rt305x_esw* %317, i32 0, i32 26, i32 32)
  store i32 0, i32* %6, align 4
  br label %319

319:                                              ; preds = %356, %312
  %320 = load i32, i32* %6, align 4
  %321 = icmp slt i32 %320, 5
  br i1 %321, label %322, label %359

322:                                              ; preds = %319
  %323 = load %struct.rt305x_esw*, %struct.rt305x_esw** %2, align 8
  %324 = load i32, i32* %6, align 4
  %325 = call i32 @rt305x_mii_write(%struct.rt305x_esw* %323, i32 %324, i32 31, i32 32768)
  %326 = load %struct.rt305x_esw*, %struct.rt305x_esw** %2, align 8
  %327 = load i32, i32* %6, align 4
  %328 = call i32 @rt305x_mii_write(%struct.rt305x_esw* %326, i32 %327, i32 0, i32 12544)
  %329 = load %struct.rt305x_esw*, %struct.rt305x_esw** %2, align 8
  %330 = load i32, i32* %6, align 4
  %331 = call i32 @rt305x_mii_write(%struct.rt305x_esw* %329, i32 %330, i32 30, i32 40960)
  %332 = load %struct.rt305x_esw*, %struct.rt305x_esw** %2, align 8
  %333 = load i32, i32* %6, align 4
  %334 = call i32 @rt305x_mii_write(%struct.rt305x_esw* %332, i32 %333, i32 31, i32 40960)
  %335 = load %struct.rt305x_esw*, %struct.rt305x_esw** %2, align 8
  %336 = load i32, i32* %6, align 4
  %337 = call i32 @rt305x_mii_write(%struct.rt305x_esw* %335, i32 %336, i32 16, i32 1542)
  %338 = load %struct.rt305x_esw*, %struct.rt305x_esw** %2, align 8
  %339 = load i32, i32* %6, align 4
  %340 = call i32 @rt305x_mii_write(%struct.rt305x_esw* %338, i32 %339, i32 23, i32 3854)
  %341 = load %struct.rt305x_esw*, %struct.rt305x_esw** %2, align 8
  %342 = load i32, i32* %6, align 4
  %343 = call i32 @rt305x_mii_write(%struct.rt305x_esw* %341, i32 %342, i32 24, i32 5648)
  %344 = load %struct.rt305x_esw*, %struct.rt305x_esw** %2, align 8
  %345 = load i32, i32* %6, align 4
  %346 = call i32 @rt305x_mii_write(%struct.rt305x_esw* %344, i32 %345, i32 30, i32 7957)
  %347 = load %struct.rt305x_esw*, %struct.rt305x_esw** %2, align 8
  %348 = load i32, i32* %6, align 4
  %349 = call i32 @rt305x_mii_write(%struct.rt305x_esw* %347, i32 %348, i32 28, i32 24849)
  %350 = load %struct.rt305x_esw*, %struct.rt305x_esw** %2, align 8
  %351 = load i32, i32* %6, align 4
  %352 = call i32 @rt305x_mii_write(%struct.rt305x_esw* %350, i32 %351, i32 31, i32 8192)
  %353 = load %struct.rt305x_esw*, %struct.rt305x_esw** %2, align 8
  %354 = load i32, i32* %6, align 4
  %355 = call i32 @rt305x_mii_write(%struct.rt305x_esw* %353, i32 %354, i32 26, i32 0)
  br label %356

356:                                              ; preds = %322
  %357 = load i32, i32* %6, align 4
  %358 = add nsw i32 %357, 1
  store i32 %358, i32* %6, align 4
  br label %319

359:                                              ; preds = %319
  %360 = load %struct.rt305x_esw*, %struct.rt305x_esw** %2, align 8
  %361 = call i32 @rt305x_mii_write(%struct.rt305x_esw* %360, i32 0, i32 31, i32 20480)
  %362 = load %struct.rt305x_esw*, %struct.rt305x_esw** %2, align 8
  %363 = call i32 @rt305x_mii_write(%struct.rt305x_esw* %362, i32 0, i32 19, i32 74)
  %364 = load %struct.rt305x_esw*, %struct.rt305x_esw** %2, align 8
  %365 = call i32 @rt305x_mii_write(%struct.rt305x_esw* %364, i32 0, i32 20, i32 346)
  %366 = load %struct.rt305x_esw*, %struct.rt305x_esw** %2, align 8
  %367 = call i32 @rt305x_mii_write(%struct.rt305x_esw* %366, i32 0, i32 21, i32 238)
  %368 = load %struct.rt305x_esw*, %struct.rt305x_esw** %2, align 8
  %369 = call i32 @rt305x_mii_write(%struct.rt305x_esw* %368, i32 0, i32 22, i32 51)
  %370 = load %struct.rt305x_esw*, %struct.rt305x_esw** %2, align 8
  %371 = call i32 @rt305x_mii_write(%struct.rt305x_esw* %370, i32 0, i32 23, i32 522)
  %372 = load %struct.rt305x_esw*, %struct.rt305x_esw** %2, align 8
  %373 = call i32 @rt305x_mii_write(%struct.rt305x_esw* %372, i32 0, i32 24, i32 0)
  %374 = load %struct.rt305x_esw*, %struct.rt305x_esw** %2, align 8
  %375 = call i32 @rt305x_mii_write(%struct.rt305x_esw* %374, i32 0, i32 25, i32 586)
  %376 = load %struct.rt305x_esw*, %struct.rt305x_esw** %2, align 8
  %377 = call i32 @rt305x_mii_write(%struct.rt305x_esw* %376, i32 0, i32 26, i32 858)
  %378 = load %struct.rt305x_esw*, %struct.rt305x_esw** %2, align 8
  %379 = call i32 @rt305x_mii_write(%struct.rt305x_esw* %378, i32 0, i32 27, i32 750)
  %380 = load %struct.rt305x_esw*, %struct.rt305x_esw** %2, align 8
  %381 = call i32 @rt305x_mii_write(%struct.rt305x_esw* %380, i32 0, i32 28, i32 563)
  %382 = load %struct.rt305x_esw*, %struct.rt305x_esw** %2, align 8
  %383 = call i32 @rt305x_mii_write(%struct.rt305x_esw* %382, i32 0, i32 29, i32 10)
  %384 = load %struct.rt305x_esw*, %struct.rt305x_esw** %2, align 8
  %385 = call i32 @rt305x_mii_write(%struct.rt305x_esw* %384, i32 0, i32 30, i32 0)
  br label %444

386:                                              ; preds = %308
  %387 = load %struct.rt305x_esw*, %struct.rt305x_esw** %2, align 8
  %388 = call i32 @rt305x_mii_write(%struct.rt305x_esw* %387, i32 0, i32 31, i32 32768)
  store i32 0, i32* %3, align 4
  br label %389

389:                                              ; preds = %428, %386
  %390 = load i32, i32* %3, align 4
  %391 = icmp slt i32 %390, 5
  br i1 %391, label %392, label %431

392:                                              ; preds = %389
  %393 = load %struct.rt305x_esw*, %struct.rt305x_esw** %2, align 8
  %394 = getelementptr inbounds %struct.rt305x_esw, %struct.rt305x_esw* %393, i32 0, i32 6
  %395 = load %struct.TYPE_2__*, %struct.TYPE_2__** %394, align 8
  %396 = load i32, i32* %3, align 4
  %397 = sext i32 %396 to i64
  %398 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %395, i64 %397
  %399 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %398, i32 0, i32 0
  %400 = load i32, i32* %399, align 4
  %401 = icmp ne i32 %400, 0
  br i1 %401, label %402, label %408

402:                                              ; preds = %392
  %403 = load %struct.rt305x_esw*, %struct.rt305x_esw** %2, align 8
  %404 = load i32, i32* %3, align 4
  %405 = load i32, i32* @MII_BMCR, align 4
  %406 = load i32, i32* @BMCR_PDOWN, align 4
  %407 = call i32 @rt305x_mii_write(%struct.rt305x_esw* %403, i32 %404, i32 %405, i32 %406)
  br label %418

408:                                              ; preds = %392
  %409 = load %struct.rt305x_esw*, %struct.rt305x_esw** %2, align 8
  %410 = load i32, i32* %3, align 4
  %411 = load i32, i32* @MII_BMCR, align 4
  %412 = load i32, i32* @BMCR_FULLDPLX, align 4
  %413 = load i32, i32* @BMCR_ANENABLE, align 4
  %414 = or i32 %412, %413
  %415 = load i32, i32* @BMCR_SPEED100, align 4
  %416 = or i32 %414, %415
  %417 = call i32 @rt305x_mii_write(%struct.rt305x_esw* %409, i32 %410, i32 %411, i32 %416)
  br label %418

418:                                              ; preds = %408, %402
  %419 = load %struct.rt305x_esw*, %struct.rt305x_esw** %2, align 8
  %420 = load i32, i32* %3, align 4
  %421 = call i32 @rt305x_mii_write(%struct.rt305x_esw* %419, i32 %420, i32 26, i32 5633)
  %422 = load %struct.rt305x_esw*, %struct.rt305x_esw** %2, align 8
  %423 = load i32, i32* %3, align 4
  %424 = call i32 @rt305x_mii_write(%struct.rt305x_esw* %422, i32 %423, i32 29, i32 28760)
  %425 = load %struct.rt305x_esw*, %struct.rt305x_esw** %2, align 8
  %426 = load i32, i32* %3, align 4
  %427 = call i32 @rt305x_mii_write(%struct.rt305x_esw* %425, i32 %426, i32 30, i32 24)
  br label %428

428:                                              ; preds = %418
  %429 = load i32, i32* %3, align 4
  %430 = add nsw i32 %429, 1
  store i32 %430, i32* %3, align 4
  br label %389

431:                                              ; preds = %389
  %432 = load %struct.rt305x_esw*, %struct.rt305x_esw** %2, align 8
  %433 = call i32 @rt305x_mii_write(%struct.rt305x_esw* %432, i32 0, i32 31, i32 0)
  %434 = load %struct.rt305x_esw*, %struct.rt305x_esw** %2, align 8
  %435 = call i32 @rt305x_mii_write(%struct.rt305x_esw* %434, i32 0, i32 22, i32 1327)
  %436 = load %struct.rt305x_esw*, %struct.rt305x_esw** %2, align 8
  %437 = call i32 @rt305x_mii_write(%struct.rt305x_esw* %436, i32 0, i32 17, i32 4064)
  %438 = load %struct.rt305x_esw*, %struct.rt305x_esw** %2, align 8
  %439 = call i32 @rt305x_mii_write(%struct.rt305x_esw* %438, i32 0, i32 18, i32 16570)
  %440 = load %struct.rt305x_esw*, %struct.rt305x_esw** %2, align 8
  %441 = call i32 @rt305x_mii_write(%struct.rt305x_esw* %440, i32 0, i32 14, i32 101)
  %442 = load %struct.rt305x_esw*, %struct.rt305x_esw** %2, align 8
  %443 = call i32 @rt305x_mii_write(%struct.rt305x_esw* %442, i32 0, i32 31, i32 32768)
  br label %444

444:                                              ; preds = %431, %359
  br label %445

445:                                              ; preds = %444, %275
  br label %446

446:                                              ; preds = %445, %188
  %447 = load %struct.rt305x_esw*, %struct.rt305x_esw** %2, align 8
  %448 = getelementptr inbounds %struct.rt305x_esw, %struct.rt305x_esw* %447, i32 0, i32 4
  %449 = load i32, i32* %448, align 8
  %450 = icmp ne i32 %449, 0
  br i1 %450, label %451, label %455

451:                                              ; preds = %446
  %452 = load %struct.rt305x_esw*, %struct.rt305x_esw** %2, align 8
  %453 = getelementptr inbounds %struct.rt305x_esw, %struct.rt305x_esw* %452, i32 0, i32 4
  %454 = load i32, i32* %453, align 8
  store i32 %454, i32* %5, align 4
  br label %457

455:                                              ; preds = %446
  %456 = load i32, i32* @RT305X_ESW_PMAP_LLLLLL, align 4
  store i32 %456, i32* %5, align 4
  br label %457

457:                                              ; preds = %455, %451
  %458 = load %struct.rt305x_esw*, %struct.rt305x_esw** %2, align 8
  %459 = load i32, i32* @RT305X_ESW_REG_SGC2, align 4
  %460 = load i32, i32* @RT305X_ESW_SGC2_LAN_PMAP_M, align 4
  %461 = load i32, i32* @RT305X_ESW_SGC2_LAN_PMAP_S, align 4
  %462 = shl i32 %460, %461
  %463 = load i32, i32* %5, align 4
  %464 = load i32, i32* @RT305X_ESW_SGC2_LAN_PMAP_S, align 4
  %465 = shl i32 %463, %464
  %466 = call i32 @esw_rmw(%struct.rt305x_esw* %458, i32 %459, i32 %462, i32 %465)
  store i32 0, i32* %3, align 4
  br label %467

467:                                              ; preds = %479, %457
  %468 = load i32, i32* %3, align 4
  %469 = load i32, i32* @RT305X_ESW_NUM_LEDS, align 4
  %470 = icmp slt i32 %468, %469
  br i1 %470, label %471, label %482

471:                                              ; preds = %467
  %472 = load %struct.rt305x_esw*, %struct.rt305x_esw** %2, align 8
  %473 = getelementptr inbounds %struct.rt305x_esw, %struct.rt305x_esw* %472, i32 0, i32 6
  %474 = load %struct.TYPE_2__*, %struct.TYPE_2__** %473, align 8
  %475 = load i32, i32* %3, align 4
  %476 = sext i32 %475 to i64
  %477 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %474, i64 %476
  %478 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %477, i32 0, i32 1
  store i32 5, i32* %478, align 4
  br label %479

479:                                              ; preds = %471
  %480 = load i32, i32* %3, align 4
  %481 = add nsw i32 %480, 1
  store i32 %481, i32* %3, align 4
  br label %467

482:                                              ; preds = %467
  %483 = load %struct.rt305x_esw*, %struct.rt305x_esw** %2, align 8
  %484 = getelementptr inbounds %struct.rt305x_esw, %struct.rt305x_esw* %483, i32 0, i32 5
  %485 = call i32 @esw_apply_config(i32* %484)
  %486 = load %struct.rt305x_esw*, %struct.rt305x_esw** %2, align 8
  %487 = load i32, i32* @RT305X_ESW_PORT_ST_CHG, align 4
  %488 = xor i32 %487, -1
  %489 = load i32, i32* @RT305X_ESW_REG_IMR, align 4
  %490 = call i32 @esw_w32(%struct.rt305x_esw* %486, i32 %488, i32 %489)
  ret void
}

declare dso_local i32 @esw_w32(%struct.rt305x_esw*, i32, i32) #1

declare dso_local i32 @esw_get_port_disable(%struct.rt305x_esw*) #1

declare dso_local i32 @fe_reset(i32) #1

declare dso_local i32 @rt305x_mii_write(%struct.rt305x_esw*, i32, i32, i32) #1

declare dso_local i32 @esw_rmw(%struct.rt305x_esw*, i32, i32, i32) #1

declare dso_local i32 @esw_apply_config(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
