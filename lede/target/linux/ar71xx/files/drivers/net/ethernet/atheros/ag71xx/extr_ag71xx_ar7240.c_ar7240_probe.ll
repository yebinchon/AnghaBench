; ModuleID = '/home/carl/AnghaBench/lede/target/linux/ar71xx/files/drivers/net/ethernet/atheros/ag71xx/extr_ag71xx_ar7240.c_ar7240_probe.c'
source_filename = "/home/carl/AnghaBench/lede/target/linux/ar71xx/files/drivers/net/ethernet/atheros/ag71xx/extr_ag71xx_ar7240.c_ar7240_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ar7240sw = type { i32, i32*, i32*, %struct.switch_dev, %struct.TYPE_2__*, %struct.mii_bus* }
%struct.switch_dev = type { i8*, i32, i32*, i32, i8* }
%struct.TYPE_2__ = type { i64 }
%struct.mii_bus = type { i32 }
%struct.ag71xx = type { i32, %struct.mii_bus* }
%struct.ag71xx_platform_data = type { i64, %struct.TYPE_2__* }

@MII_PHYSID1 = common dso_local global i32 0, align 4
@MII_PHYSID2 = common dso_local global i32 0, align 4
@AR7240_PHY_ID1 = common dso_local global i64 0, align 8
@AR7240_PHY_ID2 = common dso_local global i64 0, align 8
@AR934X_PHY_ID1 = common dso_local global i64 0, align 8
@AR934X_PHY_ID2 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [32 x i8] c"%s: unknown phy id '%04x:%04x'\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@AR7240_REG_MASK_CTRL = common dso_local global i32 0, align 4
@AR7240_MASK_CTRL_VERSION_S = common dso_local global i32 0, align 4
@AR7240_MASK_CTRL_VERSION_M = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"AR7240/AR9330 built-in switch\00", align 1
@AR7240_NUM_PORTS = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [23 x i8] c"AR934X built-in switch\00", align 1
@PHY_INTERFACE_MODE_GMII = common dso_local global i64 0, align 8
@AR934X_REG_OPER_MODE0 = common dso_local global i32 0, align 4
@AR934X_OPER_MODE0_MAC_GMII_EN = common dso_local global i32 0, align 4
@PHY_INTERFACE_MODE_MII = common dso_local global i64 0, align 8
@AR934X_OPER_MODE0_PHY_MII_EN = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [32 x i8] c"%s: invalid PHY interface mode\0A\00", align 1
@AR934X_REG_OPER_MODE1 = common dso_local global i32 0, align 4
@AR934X_REG_OPER_MODE1_PHY4_MII_EN = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [33 x i8] c"%s: unsupported chip, ctrl=%08x\0A\00", align 1
@AR7240_PORT_CPU = common dso_local global i32 0, align 4
@AR7240_MAX_VLANS = common dso_local global i32 0, align 4
@ar7240_ops = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [17 x i8] c"%s: Found an %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ar7240sw* (%struct.ag71xx*)* @ar7240_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ar7240sw* @ar7240_probe(%struct.ag71xx* %0) #0 {
  %2 = alloca %struct.ar7240sw*, align 8
  %3 = alloca %struct.ag71xx*, align 8
  %4 = alloca %struct.ag71xx_platform_data*, align 8
  %5 = alloca %struct.mii_bus*, align 8
  %6 = alloca %struct.ar7240sw*, align 8
  %7 = alloca %struct.switch_dev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.ag71xx* %0, %struct.ag71xx** %3, align 8
  %12 = load %struct.ag71xx*, %struct.ag71xx** %3, align 8
  %13 = call %struct.ag71xx_platform_data* @ag71xx_get_pdata(%struct.ag71xx* %12)
  store %struct.ag71xx_platform_data* %13, %struct.ag71xx_platform_data** %4, align 8
  %14 = load %struct.ag71xx*, %struct.ag71xx** %3, align 8
  %15 = getelementptr inbounds %struct.ag71xx, %struct.ag71xx* %14, i32 0, i32 1
  %16 = load %struct.mii_bus*, %struct.mii_bus** %15, align 8
  store %struct.mii_bus* %16, %struct.mii_bus** %5, align 8
  %17 = load %struct.mii_bus*, %struct.mii_bus** %5, align 8
  %18 = load i32, i32* @MII_PHYSID1, align 4
  %19 = call i64 @ar7240sw_phy_read(%struct.mii_bus* %17, i32 0, i32 %18)
  store i64 %19, i64* %9, align 8
  %20 = load %struct.mii_bus*, %struct.mii_bus** %5, align 8
  %21 = load i32, i32* @MII_PHYSID2, align 4
  %22 = call i64 @ar7240sw_phy_read(%struct.mii_bus* %20, i32 0, i32 %21)
  store i64 %22, i64* %10, align 8
  %23 = load i64, i64* %9, align 8
  %24 = load i64, i64* @AR7240_PHY_ID1, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %30, label %26

26:                                               ; preds = %1
  %27 = load i64, i64* %10, align 8
  %28 = load i64, i64* @AR7240_PHY_ID2, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %45

30:                                               ; preds = %26, %1
  %31 = load i64, i64* %9, align 8
  %32 = load i64, i64* @AR934X_PHY_ID1, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %38, label %34

34:                                               ; preds = %30
  %35 = load i64, i64* %10, align 8
  %36 = load i64, i64* @AR934X_PHY_ID2, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %38, label %45

38:                                               ; preds = %34, %30
  %39 = load %struct.mii_bus*, %struct.mii_bus** %5, align 8
  %40 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %39, i32 0, i32 0
  %41 = call i32 @dev_name(i32* %40)
  %42 = load i64, i64* %9, align 8
  %43 = load i64, i64* %10, align 8
  %44 = call i32 (i8*, i32, ...) @pr_err(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %41, i64 %42, i64 %43)
  store %struct.ar7240sw* null, %struct.ar7240sw** %2, align 8
  br label %195

45:                                               ; preds = %34, %26
  %46 = load i32, i32* @GFP_KERNEL, align 4
  %47 = call %struct.ar7240sw* @kzalloc(i32 80, i32 %46)
  store %struct.ar7240sw* %47, %struct.ar7240sw** %6, align 8
  %48 = load %struct.ar7240sw*, %struct.ar7240sw** %6, align 8
  %49 = icmp ne %struct.ar7240sw* %48, null
  br i1 %49, label %51, label %50

50:                                               ; preds = %45
  store %struct.ar7240sw* null, %struct.ar7240sw** %2, align 8
  br label %195

51:                                               ; preds = %45
  %52 = load %struct.mii_bus*, %struct.mii_bus** %5, align 8
  %53 = load %struct.ar7240sw*, %struct.ar7240sw** %6, align 8
  %54 = getelementptr inbounds %struct.ar7240sw, %struct.ar7240sw* %53, i32 0, i32 5
  store %struct.mii_bus* %52, %struct.mii_bus** %54, align 8
  %55 = load %struct.ag71xx_platform_data*, %struct.ag71xx_platform_data** %4, align 8
  %56 = getelementptr inbounds %struct.ag71xx_platform_data, %struct.ag71xx_platform_data* %55, i32 0, i32 1
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = load %struct.ar7240sw*, %struct.ar7240sw** %6, align 8
  %59 = getelementptr inbounds %struct.ar7240sw, %struct.ar7240sw* %58, i32 0, i32 4
  store %struct.TYPE_2__* %57, %struct.TYPE_2__** %59, align 8
  %60 = load %struct.ar7240sw*, %struct.ar7240sw** %6, align 8
  %61 = getelementptr inbounds %struct.ar7240sw, %struct.ar7240sw* %60, i32 0, i32 3
  store %struct.switch_dev* %61, %struct.switch_dev** %7, align 8
  %62 = load %struct.mii_bus*, %struct.mii_bus** %5, align 8
  %63 = load i32, i32* @AR7240_REG_MASK_CTRL, align 4
  %64 = call i32 @ar7240sw_reg_read(%struct.mii_bus* %62, i32 %63)
  store i32 %64, i32* %8, align 4
  %65 = load i32, i32* %8, align 4
  %66 = load i32, i32* @AR7240_MASK_CTRL_VERSION_S, align 4
  %67 = ashr i32 %65, %66
  %68 = load i32, i32* @AR7240_MASK_CTRL_VERSION_M, align 4
  %69 = and i32 %67, %68
  %70 = load %struct.ar7240sw*, %struct.ar7240sw** %6, align 8
  %71 = getelementptr inbounds %struct.ar7240sw, %struct.ar7240sw* %70, i32 0, i32 0
  store i32 %69, i32* %71, align 8
  %72 = load %struct.ar7240sw*, %struct.ar7240sw** %6, align 8
  %73 = call i64 @sw_is_ar7240(%struct.ar7240sw* %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %82

75:                                               ; preds = %51
  %76 = load %struct.switch_dev*, %struct.switch_dev** %7, align 8
  %77 = getelementptr inbounds %struct.switch_dev, %struct.switch_dev* %76, i32 0, i32 0
  store i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i8** %77, align 8
  %78 = load i8*, i8** @AR7240_NUM_PORTS, align 8
  %79 = getelementptr i8, i8* %78, i64 -1
  %80 = load %struct.switch_dev*, %struct.switch_dev** %7, align 8
  %81 = getelementptr inbounds %struct.switch_dev, %struct.switch_dev* %80, i32 0, i32 4
  store i8* %79, i8** %81, align 8
  br label %144

82:                                               ; preds = %51
  %83 = load %struct.ar7240sw*, %struct.ar7240sw** %6, align 8
  %84 = call i64 @sw_is_ar934x(%struct.ar7240sw* %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %137

86:                                               ; preds = %82
  %87 = load %struct.switch_dev*, %struct.switch_dev** %7, align 8
  %88 = getelementptr inbounds %struct.switch_dev, %struct.switch_dev* %87, i32 0, i32 0
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i8** %88, align 8
  %89 = load %struct.ag71xx_platform_data*, %struct.ag71xx_platform_data** %4, align 8
  %90 = getelementptr inbounds %struct.ag71xx_platform_data, %struct.ag71xx_platform_data* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* @PHY_INTERFACE_MODE_GMII, align 8
  %93 = icmp eq i64 %91, %92
  br i1 %93, label %94, label %99

94:                                               ; preds = %86
  %95 = load %struct.mii_bus*, %struct.mii_bus** %5, align 8
  %96 = load i32, i32* @AR934X_REG_OPER_MODE0, align 4
  %97 = load i32, i32* @AR934X_OPER_MODE0_MAC_GMII_EN, align 4
  %98 = call i32 @ar7240sw_reg_set(%struct.mii_bus* %95, i32 %96, i32 %97)
  br label %116

99:                                               ; preds = %86
  %100 = load %struct.ag71xx_platform_data*, %struct.ag71xx_platform_data** %4, align 8
  %101 = getelementptr inbounds %struct.ag71xx_platform_data, %struct.ag71xx_platform_data* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = load i64, i64* @PHY_INTERFACE_MODE_MII, align 8
  %104 = icmp eq i64 %102, %103
  br i1 %104, label %105, label %110

105:                                              ; preds = %99
  %106 = load %struct.mii_bus*, %struct.mii_bus** %5, align 8
  %107 = load i32, i32* @AR934X_REG_OPER_MODE0, align 4
  %108 = load i32, i32* @AR934X_OPER_MODE0_PHY_MII_EN, align 4
  %109 = call i32 @ar7240sw_reg_set(%struct.mii_bus* %106, i32 %107, i32 %108)
  br label %115

110:                                              ; preds = %99
  %111 = load %struct.mii_bus*, %struct.mii_bus** %5, align 8
  %112 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %111, i32 0, i32 0
  %113 = call i32 @dev_name(i32* %112)
  %114 = call i32 (i8*, i32, ...) @pr_err(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i32 %113)
  br label %192

115:                                              ; preds = %105
  br label %116

116:                                              ; preds = %115, %94
  %117 = load %struct.ar7240sw*, %struct.ar7240sw** %6, align 8
  %118 = getelementptr inbounds %struct.ar7240sw, %struct.ar7240sw* %117, i32 0, i32 4
  %119 = load %struct.TYPE_2__*, %struct.TYPE_2__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %132

123:                                              ; preds = %116
  %124 = load %struct.mii_bus*, %struct.mii_bus** %5, align 8
  %125 = load i32, i32* @AR934X_REG_OPER_MODE1, align 4
  %126 = load i32, i32* @AR934X_REG_OPER_MODE1_PHY4_MII_EN, align 4
  %127 = call i32 @ar7240sw_reg_set(%struct.mii_bus* %124, i32 %125, i32 %126)
  %128 = load i8*, i8** @AR7240_NUM_PORTS, align 8
  %129 = getelementptr i8, i8* %128, i64 -1
  %130 = load %struct.switch_dev*, %struct.switch_dev** %7, align 8
  %131 = getelementptr inbounds %struct.switch_dev, %struct.switch_dev* %130, i32 0, i32 4
  store i8* %129, i8** %131, align 8
  br label %136

132:                                              ; preds = %116
  %133 = load i8*, i8** @AR7240_NUM_PORTS, align 8
  %134 = load %struct.switch_dev*, %struct.switch_dev** %7, align 8
  %135 = getelementptr inbounds %struct.switch_dev, %struct.switch_dev* %134, i32 0, i32 4
  store i8* %133, i8** %135, align 8
  br label %136

136:                                              ; preds = %132, %123
  br label %143

137:                                              ; preds = %82
  %138 = load %struct.mii_bus*, %struct.mii_bus** %5, align 8
  %139 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %138, i32 0, i32 0
  %140 = call i32 @dev_name(i32* %139)
  %141 = load i32, i32* %8, align 4
  %142 = call i32 (i8*, i32, ...) @pr_err(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0), i32 %140, i32 %141)
  br label %192

143:                                              ; preds = %136
  br label %144

144:                                              ; preds = %143, %75
  %145 = load i32, i32* @AR7240_PORT_CPU, align 4
  %146 = load %struct.switch_dev*, %struct.switch_dev** %7, align 8
  %147 = getelementptr inbounds %struct.switch_dev, %struct.switch_dev* %146, i32 0, i32 3
  store i32 %145, i32* %147, align 8
  %148 = load i32, i32* @AR7240_MAX_VLANS, align 4
  %149 = load %struct.switch_dev*, %struct.switch_dev** %7, align 8
  %150 = getelementptr inbounds %struct.switch_dev, %struct.switch_dev* %149, i32 0, i32 1
  store i32 %148, i32* %150, align 8
  %151 = load %struct.switch_dev*, %struct.switch_dev** %7, align 8
  %152 = getelementptr inbounds %struct.switch_dev, %struct.switch_dev* %151, i32 0, i32 2
  store i32* @ar7240_ops, i32** %152, align 8
  %153 = load %struct.ar7240sw*, %struct.ar7240sw** %6, align 8
  %154 = getelementptr inbounds %struct.ar7240sw, %struct.ar7240sw* %153, i32 0, i32 3
  %155 = load %struct.ag71xx*, %struct.ag71xx** %3, align 8
  %156 = getelementptr inbounds %struct.ag71xx, %struct.ag71xx* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  %158 = call i64 @register_switch(%struct.switch_dev* %154, i32 %157)
  %159 = icmp slt i64 %158, 0
  br i1 %159, label %160, label %161

160:                                              ; preds = %144
  br label %192

161:                                              ; preds = %144
  %162 = load %struct.mii_bus*, %struct.mii_bus** %5, align 8
  %163 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %162, i32 0, i32 0
  %164 = call i32 @dev_name(i32* %163)
  %165 = load %struct.switch_dev*, %struct.switch_dev** %7, align 8
  %166 = getelementptr inbounds %struct.switch_dev, %struct.switch_dev* %165, i32 0, i32 0
  %167 = load i8*, i8** %166, align 8
  %168 = call i32 @pr_info(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0), i32 %164, i8* %167)
  store i32 0, i32* %11, align 4
  br label %169

169:                                              ; preds = %181, %161
  %170 = load i32, i32* %11, align 4
  %171 = load i32, i32* @AR7240_MAX_VLANS, align 4
  %172 = icmp slt i32 %170, %171
  br i1 %172, label %173, label %184

173:                                              ; preds = %169
  %174 = load i32, i32* %11, align 4
  %175 = load %struct.ar7240sw*, %struct.ar7240sw** %6, align 8
  %176 = getelementptr inbounds %struct.ar7240sw, %struct.ar7240sw* %175, i32 0, i32 1
  %177 = load i32*, i32** %176, align 8
  %178 = load i32, i32* %11, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds i32, i32* %177, i64 %179
  store i32 %174, i32* %180, align 4
  br label %181

181:                                              ; preds = %173
  %182 = load i32, i32* %11, align 4
  %183 = add nsw i32 %182, 1
  store i32 %183, i32* %11, align 4
  br label %169

184:                                              ; preds = %169
  %185 = load %struct.ar7240sw*, %struct.ar7240sw** %6, align 8
  %186 = call i32 @ar7240sw_port_mask_all(%struct.ar7240sw* %185)
  %187 = load %struct.ar7240sw*, %struct.ar7240sw** %6, align 8
  %188 = getelementptr inbounds %struct.ar7240sw, %struct.ar7240sw* %187, i32 0, i32 2
  %189 = load i32*, i32** %188, align 8
  %190 = getelementptr inbounds i32, i32* %189, i64 0
  store i32 %186, i32* %190, align 4
  %191 = load %struct.ar7240sw*, %struct.ar7240sw** %6, align 8
  store %struct.ar7240sw* %191, %struct.ar7240sw** %2, align 8
  br label %195

192:                                              ; preds = %160, %137, %110
  %193 = load %struct.ar7240sw*, %struct.ar7240sw** %6, align 8
  %194 = call i32 @kfree(%struct.ar7240sw* %193)
  store %struct.ar7240sw* null, %struct.ar7240sw** %2, align 8
  br label %195

195:                                              ; preds = %192, %184, %50, %38
  %196 = load %struct.ar7240sw*, %struct.ar7240sw** %2, align 8
  ret %struct.ar7240sw* %196
}

declare dso_local %struct.ag71xx_platform_data* @ag71xx_get_pdata(%struct.ag71xx*) #1

declare dso_local i64 @ar7240sw_phy_read(%struct.mii_bus*, i32, i32) #1

declare dso_local i32 @pr_err(i8*, i32, ...) #1

declare dso_local i32 @dev_name(i32*) #1

declare dso_local %struct.ar7240sw* @kzalloc(i32, i32) #1

declare dso_local i32 @ar7240sw_reg_read(%struct.mii_bus*, i32) #1

declare dso_local i64 @sw_is_ar7240(%struct.ar7240sw*) #1

declare dso_local i64 @sw_is_ar934x(%struct.ar7240sw*) #1

declare dso_local i32 @ar7240sw_reg_set(%struct.mii_bus*, i32, i32) #1

declare dso_local i64 @register_switch(%struct.switch_dev*, i32) #1

declare dso_local i32 @pr_info(i8*, i32, i8*) #1

declare dso_local i32 @ar7240sw_port_mask_all(%struct.ar7240sw*) #1

declare dso_local i32 @kfree(%struct.ar7240sw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
