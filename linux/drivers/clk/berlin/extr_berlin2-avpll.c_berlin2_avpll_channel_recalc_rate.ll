; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/berlin/extr_berlin2-avpll.c_berlin2_avpll_channel_recalc_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/berlin/extr_berlin2-avpll.c_berlin2_avpll_channel_recalc_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.berlin2_avpll_channel = type { i32, i32, i64 }

@VCO_CTRL30 = common dso_local global i64 0, align 8
@VCO_DPLL_CH1_ENABLE = common dso_local global i32 0, align 4
@BERLIN2_AVPLL_BIT_QUIRK = common dso_local global i32 0, align 4
@VCO_SYNC1_MASK = common dso_local global i32 0, align 4
@VCO_SYNC2_MASK = common dso_local global i32 0, align 4
@VCO_CTRL11 = common dso_local global i64 0, align 8
@div_hdmi = common dso_local global i32* null, align 8
@VCO_CTRL12 = common dso_local global i64 0, align 8
@div_av1 = common dso_local global i32* null, align 8
@VCO_CTRL13 = common dso_local global i64 0, align 8
@VCO_CTRL14 = common dso_local global i64 0, align 8
@VCO_CTRL15 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.clk_hw*, i64)* @berlin2_avpll_channel_recalc_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @berlin2_avpll_channel_recalc_rate(%struct.clk_hw* %0, i64 %1) #0 {
  %3 = alloca %struct.clk_hw*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.berlin2_avpll_channel*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.clk_hw* %0, %struct.clk_hw** %3, align 8
  store i64 %1, i64* %4, align 8
  %11 = load %struct.clk_hw*, %struct.clk_hw** %3, align 8
  %12 = call %struct.berlin2_avpll_channel* @to_avpll_channel(%struct.clk_hw* %11)
  store %struct.berlin2_avpll_channel* %12, %struct.berlin2_avpll_channel** %5, align 8
  store i32 1, i32* %9, align 4
  %13 = load i64, i64* %4, align 8
  %14 = trunc i64 %13 to i32
  store i32 %14, i32* %10, align 4
  %15 = load %struct.berlin2_avpll_channel*, %struct.berlin2_avpll_channel** %5, align 8
  %16 = getelementptr inbounds %struct.berlin2_avpll_channel, %struct.berlin2_avpll_channel* %15, i32 0, i32 2
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @VCO_CTRL30, align 8
  %19 = add nsw i64 %17, %18
  %20 = call i32 @readl_relaxed(i64 %19)
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* @VCO_DPLL_CH1_ENABLE, align 4
  %23 = load %struct.berlin2_avpll_channel*, %struct.berlin2_avpll_channel** %5, align 8
  %24 = getelementptr inbounds %struct.berlin2_avpll_channel, %struct.berlin2_avpll_channel* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = shl i32 %22, %25
  %27 = and i32 %21, %26
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %2
  br label %239

30:                                               ; preds = %2
  %31 = load %struct.berlin2_avpll_channel*, %struct.berlin2_avpll_channel** %5, align 8
  %32 = getelementptr inbounds %struct.berlin2_avpll_channel, %struct.berlin2_avpll_channel* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.berlin2_avpll_channel*, %struct.berlin2_avpll_channel** %5, align 8
  %35 = getelementptr inbounds %struct.berlin2_avpll_channel, %struct.berlin2_avpll_channel* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call i64 @VCO_SYNC1n(i32 %36)
  %38 = add nsw i64 %33, %37
  %39 = call i32 @readl_relaxed(i64 %38)
  store i32 %39, i32* %6, align 4
  %40 = load %struct.berlin2_avpll_channel*, %struct.berlin2_avpll_channel** %5, align 8
  %41 = getelementptr inbounds %struct.berlin2_avpll_channel, %struct.berlin2_avpll_channel* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @BERLIN2_AVPLL_BIT_QUIRK, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %54

46:                                               ; preds = %30
  %47 = load %struct.berlin2_avpll_channel*, %struct.berlin2_avpll_channel** %5, align 8
  %48 = getelementptr inbounds %struct.berlin2_avpll_channel, %struct.berlin2_avpll_channel* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %46
  %52 = load i32, i32* %6, align 4
  %53 = ashr i32 %52, 4
  store i32 %53, i32* %6, align 4
  br label %54

54:                                               ; preds = %51, %46, %30
  %55 = load i32, i32* %6, align 4
  %56 = load i32, i32* @VCO_SYNC1_MASK, align 4
  %57 = and i32 %55, %56
  store i32 %57, i32* %9, align 4
  %58 = load %struct.berlin2_avpll_channel*, %struct.berlin2_avpll_channel** %5, align 8
  %59 = getelementptr inbounds %struct.berlin2_avpll_channel, %struct.berlin2_avpll_channel* %58, i32 0, i32 2
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.berlin2_avpll_channel*, %struct.berlin2_avpll_channel** %5, align 8
  %62 = getelementptr inbounds %struct.berlin2_avpll_channel, %struct.berlin2_avpll_channel* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = call i64 @VCO_SYNC2n(i32 %63)
  %65 = add nsw i64 %60, %64
  %66 = call i32 @readl_relaxed(i64 %65)
  store i32 %66, i32* %6, align 4
  %67 = load i32, i32* %6, align 4
  %68 = load i32, i32* @VCO_SYNC2_MASK, align 4
  %69 = and i32 %67, %68
  %70 = load i32, i32* %10, align 4
  %71 = mul nsw i32 %70, %69
  store i32 %71, i32* %10, align 4
  %72 = load %struct.berlin2_avpll_channel*, %struct.berlin2_avpll_channel** %5, align 8
  %73 = getelementptr inbounds %struct.berlin2_avpll_channel, %struct.berlin2_avpll_channel* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = icmp eq i32 %74, 7
  br i1 %75, label %76, label %77

76:                                               ; preds = %54
  br label %239

77:                                               ; preds = %54
  %78 = load %struct.berlin2_avpll_channel*, %struct.berlin2_avpll_channel** %5, align 8
  %79 = getelementptr inbounds %struct.berlin2_avpll_channel, %struct.berlin2_avpll_channel* %78, i32 0, i32 2
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @VCO_CTRL11, align 8
  %82 = add nsw i64 %80, %81
  %83 = call i32 @readl_relaxed(i64 %82)
  %84 = ashr i32 %83, 7
  store i32 %84, i32* %6, align 4
  %85 = load i32, i32* %6, align 4
  %86 = load %struct.berlin2_avpll_channel*, %struct.berlin2_avpll_channel** %5, align 8
  %87 = getelementptr inbounds %struct.berlin2_avpll_channel, %struct.berlin2_avpll_channel* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = mul nsw i32 %88, 3
  %90 = ashr i32 %85, %89
  store i32 %90, i32* %6, align 4
  %91 = load i32, i32* %6, align 4
  %92 = call i32 @BIT(i32 2)
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %104

95:                                               ; preds = %77
  %96 = load i32*, i32** @div_hdmi, align 8
  %97 = load i32, i32* %6, align 4
  %98 = and i32 %97, 3
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i32, i32* %96, i64 %99
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* %9, align 4
  %103 = mul nsw i32 %102, %101
  store i32 %103, i32* %9, align 4
  br label %104

104:                                              ; preds = %95, %77
  %105 = load %struct.berlin2_avpll_channel*, %struct.berlin2_avpll_channel** %5, align 8
  %106 = getelementptr inbounds %struct.berlin2_avpll_channel, %struct.berlin2_avpll_channel* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %109, label %118

109:                                              ; preds = %104
  %110 = load %struct.berlin2_avpll_channel*, %struct.berlin2_avpll_channel** %5, align 8
  %111 = getelementptr inbounds %struct.berlin2_avpll_channel, %struct.berlin2_avpll_channel* %110, i32 0, i32 2
  %112 = load i64, i64* %111, align 8
  %113 = load i64, i64* @VCO_CTRL11, align 8
  %114 = add nsw i64 %112, %113
  %115 = call i32 @readl_relaxed(i64 %114)
  store i32 %115, i32* %6, align 4
  %116 = load i32, i32* %6, align 4
  %117 = ashr i32 %116, 28
  store i32 %117, i32* %6, align 4
  br label %132

118:                                              ; preds = %104
  %119 = load %struct.berlin2_avpll_channel*, %struct.berlin2_avpll_channel** %5, align 8
  %120 = getelementptr inbounds %struct.berlin2_avpll_channel, %struct.berlin2_avpll_channel* %119, i32 0, i32 2
  %121 = load i64, i64* %120, align 8
  %122 = load i64, i64* @VCO_CTRL12, align 8
  %123 = add nsw i64 %121, %122
  %124 = call i32 @readl_relaxed(i64 %123)
  store i32 %124, i32* %6, align 4
  %125 = load %struct.berlin2_avpll_channel*, %struct.berlin2_avpll_channel** %5, align 8
  %126 = getelementptr inbounds %struct.berlin2_avpll_channel, %struct.berlin2_avpll_channel* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = sub nsw i32 %127, 1
  %129 = mul nsw i32 %128, 3
  %130 = load i32, i32* %6, align 4
  %131 = ashr i32 %130, %129
  store i32 %131, i32* %6, align 4
  br label %132

132:                                              ; preds = %118, %109
  %133 = load i32, i32* %6, align 4
  %134 = call i32 @BIT(i32 2)
  %135 = and i32 %133, %134
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %146

137:                                              ; preds = %132
  %138 = load i32*, i32** @div_av1, align 8
  %139 = load i32, i32* %6, align 4
  %140 = and i32 %139, 3
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i32, i32* %138, i64 %141
  %143 = load i32, i32* %142, align 4
  %144 = load i32, i32* %9, align 4
  %145 = mul nsw i32 %144, %143
  store i32 %145, i32* %9, align 4
  br label %146

146:                                              ; preds = %137, %132
  %147 = load %struct.berlin2_avpll_channel*, %struct.berlin2_avpll_channel** %5, align 8
  %148 = getelementptr inbounds %struct.berlin2_avpll_channel, %struct.berlin2_avpll_channel* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  %150 = icmp slt i32 %149, 2
  br i1 %150, label %151, label %165

151:                                              ; preds = %146
  %152 = load %struct.berlin2_avpll_channel*, %struct.berlin2_avpll_channel** %5, align 8
  %153 = getelementptr inbounds %struct.berlin2_avpll_channel, %struct.berlin2_avpll_channel* %152, i32 0, i32 2
  %154 = load i64, i64* %153, align 8
  %155 = load i64, i64* @VCO_CTRL12, align 8
  %156 = add nsw i64 %154, %155
  %157 = call i32 @readl_relaxed(i64 %156)
  store i32 %157, i32* %6, align 4
  %158 = load %struct.berlin2_avpll_channel*, %struct.berlin2_avpll_channel** %5, align 8
  %159 = getelementptr inbounds %struct.berlin2_avpll_channel, %struct.berlin2_avpll_channel* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  %161 = mul nsw i32 %160, 7
  %162 = add nsw i32 18, %161
  %163 = load i32, i32* %6, align 4
  %164 = ashr i32 %163, %162
  store i32 %164, i32* %6, align 4
  br label %192

165:                                              ; preds = %146
  %166 = load %struct.berlin2_avpll_channel*, %struct.berlin2_avpll_channel** %5, align 8
  %167 = getelementptr inbounds %struct.berlin2_avpll_channel, %struct.berlin2_avpll_channel* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 8
  %169 = icmp slt i32 %168, 7
  br i1 %169, label %170, label %184

170:                                              ; preds = %165
  %171 = load %struct.berlin2_avpll_channel*, %struct.berlin2_avpll_channel** %5, align 8
  %172 = getelementptr inbounds %struct.berlin2_avpll_channel, %struct.berlin2_avpll_channel* %171, i32 0, i32 2
  %173 = load i64, i64* %172, align 8
  %174 = load i64, i64* @VCO_CTRL13, align 8
  %175 = add nsw i64 %173, %174
  %176 = call i32 @readl_relaxed(i64 %175)
  store i32 %176, i32* %6, align 4
  %177 = load %struct.berlin2_avpll_channel*, %struct.berlin2_avpll_channel** %5, align 8
  %178 = getelementptr inbounds %struct.berlin2_avpll_channel, %struct.berlin2_avpll_channel* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 8
  %180 = sub nsw i32 %179, 2
  %181 = mul nsw i32 %180, 7
  %182 = load i32, i32* %6, align 4
  %183 = ashr i32 %182, %181
  store i32 %183, i32* %6, align 4
  br label %191

184:                                              ; preds = %165
  %185 = load %struct.berlin2_avpll_channel*, %struct.berlin2_avpll_channel** %5, align 8
  %186 = getelementptr inbounds %struct.berlin2_avpll_channel, %struct.berlin2_avpll_channel* %185, i32 0, i32 2
  %187 = load i64, i64* %186, align 8
  %188 = load i64, i64* @VCO_CTRL14, align 8
  %189 = add nsw i64 %187, %188
  %190 = call i32 @readl_relaxed(i64 %189)
  store i32 %190, i32* %6, align 4
  br label %191

191:                                              ; preds = %184, %170
  br label %192

192:                                              ; preds = %191, %151
  %193 = load i32, i32* %6, align 4
  %194 = and i32 %193, 127
  store i32 %194, i32* %7, align 4
  %195 = load i32, i32* %7, align 4
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %197, label %201

197:                                              ; preds = %192
  %198 = load i32, i32* %7, align 4
  %199 = load i32, i32* %9, align 4
  %200 = mul nsw i32 %199, %198
  store i32 %200, i32* %9, align 4
  br label %201

201:                                              ; preds = %197, %192
  %202 = load %struct.berlin2_avpll_channel*, %struct.berlin2_avpll_channel** %5, align 8
  %203 = getelementptr inbounds %struct.berlin2_avpll_channel, %struct.berlin2_avpll_channel* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 8
  %205 = icmp slt i32 %204, 6
  br i1 %205, label %206, label %220

206:                                              ; preds = %201
  %207 = load %struct.berlin2_avpll_channel*, %struct.berlin2_avpll_channel** %5, align 8
  %208 = getelementptr inbounds %struct.berlin2_avpll_channel, %struct.berlin2_avpll_channel* %207, i32 0, i32 2
  %209 = load i64, i64* %208, align 8
  %210 = load i64, i64* @VCO_CTRL14, align 8
  %211 = add nsw i64 %209, %210
  %212 = call i32 @readl_relaxed(i64 %211)
  store i32 %212, i32* %6, align 4
  %213 = load %struct.berlin2_avpll_channel*, %struct.berlin2_avpll_channel** %5, align 8
  %214 = getelementptr inbounds %struct.berlin2_avpll_channel, %struct.berlin2_avpll_channel* %213, i32 0, i32 0
  %215 = load i32, i32* %214, align 8
  %216 = mul nsw i32 %215, 4
  %217 = add nsw i32 7, %216
  %218 = load i32, i32* %6, align 4
  %219 = ashr i32 %218, %217
  store i32 %219, i32* %6, align 4
  br label %227

220:                                              ; preds = %201
  %221 = load %struct.berlin2_avpll_channel*, %struct.berlin2_avpll_channel** %5, align 8
  %222 = getelementptr inbounds %struct.berlin2_avpll_channel, %struct.berlin2_avpll_channel* %221, i32 0, i32 2
  %223 = load i64, i64* %222, align 8
  %224 = load i64, i64* @VCO_CTRL15, align 8
  %225 = add nsw i64 %223, %224
  %226 = call i32 @readl_relaxed(i64 %225)
  store i32 %226, i32* %6, align 4
  br label %227

227:                                              ; preds = %220, %206
  %228 = load i32, i32* %6, align 4
  %229 = and i32 %228, 15
  store i32 %229, i32* %8, align 4
  %230 = load i32, i32* %7, align 4
  %231 = icmp ne i32 %230, 0
  br i1 %231, label %232, label %238

232:                                              ; preds = %227
  %233 = load i32, i32* %8, align 4
  %234 = icmp ne i32 %233, 0
  br i1 %234, label %235, label %238

235:                                              ; preds = %232
  %236 = load i32, i32* %10, align 4
  %237 = mul nsw i32 %236, 2
  store i32 %237, i32* %10, align 4
  br label %238

238:                                              ; preds = %235, %232, %227
  br label %239

239:                                              ; preds = %238, %76, %29
  %240 = load i32, i32* %10, align 4
  %241 = load i32, i32* %9, align 4
  %242 = call i32 @do_div(i32 %240, i32 %241)
  %243 = load i32, i32* %10, align 4
  %244 = sext i32 %243 to i64
  ret i64 %244
}

declare dso_local %struct.berlin2_avpll_channel* @to_avpll_channel(%struct.clk_hw*) #1

declare dso_local i32 @readl_relaxed(i64) #1

declare dso_local i64 @VCO_SYNC1n(i32) #1

declare dso_local i64 @VCO_SYNC2n(i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @do_div(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
