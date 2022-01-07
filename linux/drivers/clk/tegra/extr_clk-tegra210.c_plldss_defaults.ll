; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/tegra/extr_clk-tegra210.c_plldss_defaults.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/tegra/extr_clk-tegra210.c_plldss_defaults.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_clk_pll = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i64*, i64, i64 }

@clk_base = common dso_local global i64 0, align 8
@PLL_ENABLE = common dso_local global i32 0, align 4
@PLLDSS_BASE_IDDQ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"plldss boot enabled with IDDQ set\0A\00", align 1
@PLLDSS_MISC0_WRITE_MASK = common dso_local global i32 0, align 4
@PLLDSS_MISC0_LOCK_ENABLE = common dso_local global i32 0, align 4
@PLLDSS_MISC1_CFG_WRITE_MASK = common dso_local global i32 0, align 4
@PLLDSS_MISC2_CTRL1_WRITE_MASK = common dso_local global i32 0, align 4
@PLLDSS_MISC3_CTRL2_WRITE_MASK = common dso_local global i32 0, align 4
@PLLDSS_MISC1_CFG_EN_SDM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [50 x i8] c"%s already enabled. Postponing set full defaults\0A\00", align 1
@PLLDSS_BASE_LOCK_OVERRIDE = common dso_local global i32 0, align 4
@PLLDSS_MISC1_CFG_EN_SSC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.tegra_clk_pll*, i32, i32, i32, i32)* @plldss_defaults to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @plldss_defaults(i8* %0, %struct.tegra_clk_pll* %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca %struct.tegra_clk_pll*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store %struct.tegra_clk_pll* %1, %struct.tegra_clk_pll** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %15 = load i64, i64* @clk_base, align 8
  %16 = load %struct.tegra_clk_pll*, %struct.tegra_clk_pll** %8, align 8
  %17 = getelementptr inbounds %struct.tegra_clk_pll, %struct.tegra_clk_pll* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 2
  %20 = load i64, i64* %19, align 8
  %21 = add nsw i64 %15, %20
  %22 = call i32 @readl_relaxed(i64 %21)
  store i32 %22, i32* %14, align 4
  %23 = load %struct.tegra_clk_pll*, %struct.tegra_clk_pll** %8, align 8
  %24 = getelementptr inbounds %struct.tegra_clk_pll, %struct.tegra_clk_pll* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  store i32 1, i32* %26, align 8
  %27 = load i32, i32* %14, align 4
  %28 = load i32, i32* @PLL_ENABLE, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %168

31:                                               ; preds = %6
  %32 = load i32, i32* %14, align 4
  %33 = load i32, i32* @PLLDSS_BASE_IDDQ, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %31
  %37 = call i32 (i8*, ...) @pr_warn(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %38 = load %struct.tegra_clk_pll*, %struct.tegra_clk_pll** %8, align 8
  %39 = getelementptr inbounds %struct.tegra_clk_pll, %struct.tegra_clk_pll* %38, i32 0, i32 0
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  store i32 0, i32* %41, align 8
  br label %42

42:                                               ; preds = %36, %31
  %43 = load i32, i32* %9, align 4
  store i32 %43, i32* %13, align 4
  %44 = load i64, i64* @clk_base, align 8
  %45 = load %struct.tegra_clk_pll*, %struct.tegra_clk_pll** %8, align 8
  %46 = getelementptr inbounds %struct.tegra_clk_pll, %struct.tegra_clk_pll* %45, i32 0, i32 0
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = load i32, i32* %13, align 4
  %49 = load i32, i32* @PLLDSS_MISC0_WRITE_MASK, align 4
  %50 = load i32, i32* @PLLDSS_MISC0_LOCK_ENABLE, align 4
  %51 = xor i32 %50, -1
  %52 = and i32 %49, %51
  %53 = call i32 @_pll_misc_chk_default(i64 %44, %struct.TYPE_2__* %47, i32 0, i32 %48, i32 %52)
  %54 = load %struct.tegra_clk_pll*, %struct.tegra_clk_pll** %8, align 8
  %55 = getelementptr inbounds %struct.tegra_clk_pll, %struct.tegra_clk_pll* %54, i32 0, i32 0
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 3
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %85

60:                                               ; preds = %42
  %61 = load i32, i32* %10, align 4
  store i32 %61, i32* %13, align 4
  %62 = load i64, i64* @clk_base, align 8
  %63 = load %struct.tegra_clk_pll*, %struct.tegra_clk_pll** %8, align 8
  %64 = getelementptr inbounds %struct.tegra_clk_pll, %struct.tegra_clk_pll* %63, i32 0, i32 0
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** %64, align 8
  %66 = load i32, i32* %13, align 4
  %67 = load i32, i32* @PLLDSS_MISC1_CFG_WRITE_MASK, align 4
  %68 = call i32 @_pll_misc_chk_default(i64 %62, %struct.TYPE_2__* %65, i32 1, i32 %66, i32 %67)
  %69 = load i32, i32* %11, align 4
  store i32 %69, i32* %13, align 4
  %70 = load i64, i64* @clk_base, align 8
  %71 = load %struct.tegra_clk_pll*, %struct.tegra_clk_pll** %8, align 8
  %72 = getelementptr inbounds %struct.tegra_clk_pll, %struct.tegra_clk_pll* %71, i32 0, i32 0
  %73 = load %struct.TYPE_2__*, %struct.TYPE_2__** %72, align 8
  %74 = load i32, i32* %13, align 4
  %75 = load i32, i32* @PLLDSS_MISC2_CTRL1_WRITE_MASK, align 4
  %76 = call i32 @_pll_misc_chk_default(i64 %70, %struct.TYPE_2__* %73, i32 2, i32 %74, i32 %75)
  %77 = load i32, i32* %12, align 4
  store i32 %77, i32* %13, align 4
  %78 = load i64, i64* @clk_base, align 8
  %79 = load %struct.tegra_clk_pll*, %struct.tegra_clk_pll** %8, align 8
  %80 = getelementptr inbounds %struct.tegra_clk_pll, %struct.tegra_clk_pll* %79, i32 0, i32 0
  %81 = load %struct.TYPE_2__*, %struct.TYPE_2__** %80, align 8
  %82 = load i32, i32* %13, align 4
  %83 = load i32, i32* @PLLDSS_MISC3_CTRL2_WRITE_MASK, align 4
  %84 = call i32 @_pll_misc_chk_default(i64 %78, %struct.TYPE_2__* %81, i32 3, i32 %82, i32 %83)
  br label %107

85:                                               ; preds = %42
  %86 = load %struct.tegra_clk_pll*, %struct.tegra_clk_pll** %8, align 8
  %87 = getelementptr inbounds %struct.tegra_clk_pll, %struct.tegra_clk_pll* %86, i32 0, i32 0
  %88 = load %struct.TYPE_2__*, %struct.TYPE_2__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 1
  %90 = load i64*, i64** %89, align 8
  %91 = getelementptr inbounds i64, i64* %90, i64 1
  %92 = load i64, i64* %91, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %106

94:                                               ; preds = %85
  %95 = load i32, i32* %10, align 4
  store i32 %95, i32* %13, align 4
  %96 = load i64, i64* @clk_base, align 8
  %97 = load %struct.tegra_clk_pll*, %struct.tegra_clk_pll** %8, align 8
  %98 = getelementptr inbounds %struct.tegra_clk_pll, %struct.tegra_clk_pll* %97, i32 0, i32 0
  %99 = load %struct.TYPE_2__*, %struct.TYPE_2__** %98, align 8
  %100 = load i32, i32* %13, align 4
  %101 = load i32, i32* @PLLDSS_MISC1_CFG_WRITE_MASK, align 4
  %102 = load i32, i32* @PLLDSS_MISC1_CFG_EN_SDM, align 4
  %103 = xor i32 %102, -1
  %104 = and i32 %101, %103
  %105 = call i32 @_pll_misc_chk_default(i64 %96, %struct.TYPE_2__* %99, i32 1, i32 %100, i32 %104)
  br label %106

106:                                              ; preds = %94, %85
  br label %107

107:                                              ; preds = %106, %60
  %108 = load %struct.tegra_clk_pll*, %struct.tegra_clk_pll** %8, align 8
  %109 = getelementptr inbounds %struct.tegra_clk_pll, %struct.tegra_clk_pll* %108, i32 0, i32 0
  %110 = load %struct.TYPE_2__*, %struct.TYPE_2__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %117, label %114

114:                                              ; preds = %107
  %115 = load i8*, i8** %7, align 8
  %116 = call i32 (i8*, ...) @pr_warn(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0), i8* %115)
  br label %117

117:                                              ; preds = %114, %107
  %118 = load i32, i32* %14, align 4
  %119 = load i32, i32* @PLLDSS_BASE_LOCK_OVERRIDE, align 4
  %120 = and i32 %118, %119
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %136

122:                                              ; preds = %117
  %123 = load i32, i32* @PLLDSS_BASE_LOCK_OVERRIDE, align 4
  %124 = xor i32 %123, -1
  %125 = load i32, i32* %14, align 4
  %126 = and i32 %125, %124
  store i32 %126, i32* %14, align 4
  %127 = load i32, i32* %14, align 4
  %128 = load i64, i64* @clk_base, align 8
  %129 = load %struct.tegra_clk_pll*, %struct.tegra_clk_pll** %8, align 8
  %130 = getelementptr inbounds %struct.tegra_clk_pll, %struct.tegra_clk_pll* %129, i32 0, i32 0
  %131 = load %struct.TYPE_2__*, %struct.TYPE_2__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %131, i32 0, i32 2
  %133 = load i64, i64* %132, align 8
  %134 = add nsw i64 %128, %133
  %135 = call i32 @writel_relaxed(i32 %127, i64 %134)
  br label %136

136:                                              ; preds = %122, %117
  %137 = load i64, i64* @clk_base, align 8
  %138 = load %struct.tegra_clk_pll*, %struct.tegra_clk_pll** %8, align 8
  %139 = getelementptr inbounds %struct.tegra_clk_pll, %struct.tegra_clk_pll* %138, i32 0, i32 0
  %140 = load %struct.TYPE_2__*, %struct.TYPE_2__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %140, i32 0, i32 1
  %142 = load i64*, i64** %141, align 8
  %143 = getelementptr inbounds i64, i64* %142, i64 0
  %144 = load i64, i64* %143, align 8
  %145 = add nsw i64 %137, %144
  %146 = call i32 @readl_relaxed(i64 %145)
  store i32 %146, i32* %14, align 4
  %147 = load i32, i32* @PLLDSS_MISC0_LOCK_ENABLE, align 4
  %148 = xor i32 %147, -1
  %149 = load i32, i32* %14, align 4
  %150 = and i32 %149, %148
  store i32 %150, i32* %14, align 4
  %151 = load i32, i32* %9, align 4
  %152 = load i32, i32* @PLLDSS_MISC0_LOCK_ENABLE, align 4
  %153 = and i32 %151, %152
  %154 = load i32, i32* %14, align 4
  %155 = or i32 %154, %153
  store i32 %155, i32* %14, align 4
  %156 = load i32, i32* %14, align 4
  %157 = load i64, i64* @clk_base, align 8
  %158 = load %struct.tegra_clk_pll*, %struct.tegra_clk_pll** %8, align 8
  %159 = getelementptr inbounds %struct.tegra_clk_pll, %struct.tegra_clk_pll* %158, i32 0, i32 0
  %160 = load %struct.TYPE_2__*, %struct.TYPE_2__** %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %160, i32 0, i32 1
  %162 = load i64*, i64** %161, align 8
  %163 = getelementptr inbounds i64, i64* %162, i64 0
  %164 = load i64, i64* %163, align 8
  %165 = add nsw i64 %157, %164
  %166 = call i32 @writel_relaxed(i32 %156, i64 %165)
  %167 = call i32 @udelay(i32 1)
  br label %255

168:                                              ; preds = %6
  %169 = load i32, i32* @PLLDSS_BASE_IDDQ, align 4
  %170 = load i32, i32* %14, align 4
  %171 = or i32 %170, %169
  store i32 %171, i32* %14, align 4
  %172 = load i32, i32* @PLLDSS_BASE_LOCK_OVERRIDE, align 4
  %173 = xor i32 %172, -1
  %174 = load i32, i32* %14, align 4
  %175 = and i32 %174, %173
  store i32 %175, i32* %14, align 4
  %176 = load i32, i32* %14, align 4
  %177 = load i64, i64* @clk_base, align 8
  %178 = load %struct.tegra_clk_pll*, %struct.tegra_clk_pll** %8, align 8
  %179 = getelementptr inbounds %struct.tegra_clk_pll, %struct.tegra_clk_pll* %178, i32 0, i32 0
  %180 = load %struct.TYPE_2__*, %struct.TYPE_2__** %179, align 8
  %181 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %180, i32 0, i32 2
  %182 = load i64, i64* %181, align 8
  %183 = add nsw i64 %177, %182
  %184 = call i32 @writel_relaxed(i32 %176, i64 %183)
  %185 = load %struct.tegra_clk_pll*, %struct.tegra_clk_pll** %8, align 8
  %186 = getelementptr inbounds %struct.tegra_clk_pll, %struct.tegra_clk_pll* %185, i32 0, i32 0
  %187 = load %struct.TYPE_2__*, %struct.TYPE_2__** %186, align 8
  %188 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %187, i32 0, i32 1
  %189 = load i64*, i64** %188, align 8
  %190 = getelementptr inbounds i64, i64* %189, i64 1
  %191 = load i64, i64* %190, align 8
  %192 = icmp ne i64 %191, 0
  br i1 %192, label %206, label %193

193:                                              ; preds = %168
  %194 = load i32, i32* %9, align 4
  %195 = load i64, i64* @clk_base, align 8
  %196 = load %struct.tegra_clk_pll*, %struct.tegra_clk_pll** %8, align 8
  %197 = getelementptr inbounds %struct.tegra_clk_pll, %struct.tegra_clk_pll* %196, i32 0, i32 0
  %198 = load %struct.TYPE_2__*, %struct.TYPE_2__** %197, align 8
  %199 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %198, i32 0, i32 1
  %200 = load i64*, i64** %199, align 8
  %201 = getelementptr inbounds i64, i64* %200, i64 0
  %202 = load i64, i64* %201, align 8
  %203 = add nsw i64 %195, %202
  %204 = call i32 @writel_relaxed(i32 %194, i64 %203)
  %205 = call i32 @udelay(i32 1)
  br label %255

206:                                              ; preds = %168
  %207 = load i32, i32* %9, align 4
  %208 = load i64, i64* @clk_base, align 8
  %209 = load %struct.tegra_clk_pll*, %struct.tegra_clk_pll** %8, align 8
  %210 = getelementptr inbounds %struct.tegra_clk_pll, %struct.tegra_clk_pll* %209, i32 0, i32 0
  %211 = load %struct.TYPE_2__*, %struct.TYPE_2__** %210, align 8
  %212 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %211, i32 0, i32 1
  %213 = load i64*, i64** %212, align 8
  %214 = getelementptr inbounds i64, i64* %213, i64 0
  %215 = load i64, i64* %214, align 8
  %216 = add nsw i64 %208, %215
  %217 = call i32 @writel_relaxed(i32 %207, i64 %216)
  %218 = load i32, i32* %10, align 4
  %219 = load i32, i32* @PLLDSS_MISC1_CFG_EN_SSC, align 4
  %220 = xor i32 %219, -1
  %221 = and i32 %218, %220
  %222 = load i64, i64* @clk_base, align 8
  %223 = load %struct.tegra_clk_pll*, %struct.tegra_clk_pll** %8, align 8
  %224 = getelementptr inbounds %struct.tegra_clk_pll, %struct.tegra_clk_pll* %223, i32 0, i32 0
  %225 = load %struct.TYPE_2__*, %struct.TYPE_2__** %224, align 8
  %226 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %225, i32 0, i32 1
  %227 = load i64*, i64** %226, align 8
  %228 = getelementptr inbounds i64, i64* %227, i64 1
  %229 = load i64, i64* %228, align 8
  %230 = add nsw i64 %222, %229
  %231 = call i32 @writel_relaxed(i32 %221, i64 %230)
  %232 = load i32, i32* %11, align 4
  %233 = load i64, i64* @clk_base, align 8
  %234 = load %struct.tegra_clk_pll*, %struct.tegra_clk_pll** %8, align 8
  %235 = getelementptr inbounds %struct.tegra_clk_pll, %struct.tegra_clk_pll* %234, i32 0, i32 0
  %236 = load %struct.TYPE_2__*, %struct.TYPE_2__** %235, align 8
  %237 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %236, i32 0, i32 1
  %238 = load i64*, i64** %237, align 8
  %239 = getelementptr inbounds i64, i64* %238, i64 2
  %240 = load i64, i64* %239, align 8
  %241 = add nsw i64 %233, %240
  %242 = call i32 @writel_relaxed(i32 %232, i64 %241)
  %243 = load i32, i32* %12, align 4
  %244 = load i64, i64* @clk_base, align 8
  %245 = load %struct.tegra_clk_pll*, %struct.tegra_clk_pll** %8, align 8
  %246 = getelementptr inbounds %struct.tegra_clk_pll, %struct.tegra_clk_pll* %245, i32 0, i32 0
  %247 = load %struct.TYPE_2__*, %struct.TYPE_2__** %246, align 8
  %248 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %247, i32 0, i32 1
  %249 = load i64*, i64** %248, align 8
  %250 = getelementptr inbounds i64, i64* %249, i64 3
  %251 = load i64, i64* %250, align 8
  %252 = add nsw i64 %244, %251
  %253 = call i32 @writel_relaxed(i32 %243, i64 %252)
  %254 = call i32 @udelay(i32 1)
  br label %255

255:                                              ; preds = %206, %193, %136
  ret void
}

declare dso_local i32 @readl_relaxed(i64) #1

declare dso_local i32 @pr_warn(i8*, ...) #1

declare dso_local i32 @_pll_misc_chk_default(i64, %struct.TYPE_2__*, i32, i32, i32) #1

declare dso_local i32 @writel_relaxed(i32, i64) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
