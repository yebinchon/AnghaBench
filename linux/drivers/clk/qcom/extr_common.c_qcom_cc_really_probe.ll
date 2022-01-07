; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/qcom/extr_common.c_qcom_cc_really_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/qcom/extr_common.c_qcom_cc_really_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.qcom_cc_desc = type { i64, i64, i64, i64, i32, i32, %struct.clk_hw**, %struct.clk_regmap** }
%struct.clk_hw = type { i32 }
%struct.clk_regmap = type { i32 }
%struct.regmap = type { i32 }
%struct.qcom_reset_controller = type { %struct.TYPE_5__, i32, %struct.regmap* }
%struct.TYPE_5__ = type { i32, i32, i32*, i32 }
%struct.qcom_cc = type { i64, %struct.clk_regmap**, %struct.qcom_reset_controller }
%struct.gdsc_desc = type { i64, i64, %struct.device* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@qcom_reset_ops = common dso_local global i32 0, align 4
@qcom_cc_gdsc_unregister = common dso_local global i32 0, align 4
@qcom_cc_clk_hw_get = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qcom_cc_really_probe(%struct.platform_device* %0, %struct.qcom_cc_desc* %1, %struct.regmap* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.platform_device*, align 8
  %6 = alloca %struct.qcom_cc_desc*, align 8
  %7 = alloca %struct.regmap*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.device*, align 8
  %11 = alloca %struct.qcom_reset_controller*, align 8
  %12 = alloca %struct.qcom_cc*, align 8
  %13 = alloca %struct.gdsc_desc*, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.clk_regmap**, align 8
  %16 = alloca i64, align 8
  %17 = alloca %struct.clk_hw**, align 8
  store %struct.platform_device* %0, %struct.platform_device** %5, align 8
  store %struct.qcom_cc_desc* %1, %struct.qcom_cc_desc** %6, align 8
  store %struct.regmap* %2, %struct.regmap** %7, align 8
  %18 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %19 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %18, i32 0, i32 0
  store %struct.device* %19, %struct.device** %10, align 8
  %20 = load %struct.qcom_cc_desc*, %struct.qcom_cc_desc** %6, align 8
  %21 = getelementptr inbounds %struct.qcom_cc_desc, %struct.qcom_cc_desc* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  store i64 %22, i64* %14, align 8
  %23 = load %struct.qcom_cc_desc*, %struct.qcom_cc_desc** %6, align 8
  %24 = getelementptr inbounds %struct.qcom_cc_desc, %struct.qcom_cc_desc* %23, i32 0, i32 7
  %25 = load %struct.clk_regmap**, %struct.clk_regmap*** %24, align 8
  store %struct.clk_regmap** %25, %struct.clk_regmap*** %15, align 8
  %26 = load %struct.qcom_cc_desc*, %struct.qcom_cc_desc** %6, align 8
  %27 = getelementptr inbounds %struct.qcom_cc_desc, %struct.qcom_cc_desc* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  store i64 %28, i64* %16, align 8
  %29 = load %struct.qcom_cc_desc*, %struct.qcom_cc_desc** %6, align 8
  %30 = getelementptr inbounds %struct.qcom_cc_desc, %struct.qcom_cc_desc* %29, i32 0, i32 6
  %31 = load %struct.clk_hw**, %struct.clk_hw*** %30, align 8
  store %struct.clk_hw** %31, %struct.clk_hw*** %17, align 8
  %32 = load %struct.device*, %struct.device** %10, align 8
  %33 = load i32, i32* @GFP_KERNEL, align 4
  %34 = call i8* @devm_kzalloc(%struct.device* %32, i32 56, i32 %33)
  %35 = bitcast i8* %34 to %struct.qcom_cc*
  store %struct.qcom_cc* %35, %struct.qcom_cc** %12, align 8
  %36 = load %struct.qcom_cc*, %struct.qcom_cc** %12, align 8
  %37 = icmp ne %struct.qcom_cc* %36, null
  br i1 %37, label %41, label %38

38:                                               ; preds = %3
  %39 = load i32, i32* @ENOMEM, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %4, align 4
  br label %207

41:                                               ; preds = %3
  %42 = load %struct.qcom_cc*, %struct.qcom_cc** %12, align 8
  %43 = getelementptr inbounds %struct.qcom_cc, %struct.qcom_cc* %42, i32 0, i32 2
  store %struct.qcom_reset_controller* %43, %struct.qcom_reset_controller** %11, align 8
  %44 = load %struct.device*, %struct.device** %10, align 8
  %45 = getelementptr inbounds %struct.device, %struct.device* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.qcom_reset_controller*, %struct.qcom_reset_controller** %11, align 8
  %48 = getelementptr inbounds %struct.qcom_reset_controller, %struct.qcom_reset_controller* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 3
  store i32 %46, i32* %49, align 8
  %50 = load %struct.qcom_reset_controller*, %struct.qcom_reset_controller** %11, align 8
  %51 = getelementptr inbounds %struct.qcom_reset_controller, %struct.qcom_reset_controller* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 2
  store i32* @qcom_reset_ops, i32** %52, align 8
  %53 = load %struct.device*, %struct.device** %10, align 8
  %54 = getelementptr inbounds %struct.device, %struct.device* %53, i32 0, i32 0
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.qcom_reset_controller*, %struct.qcom_reset_controller** %11, align 8
  %59 = getelementptr inbounds %struct.qcom_reset_controller, %struct.qcom_reset_controller* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 1
  store i32 %57, i32* %60, align 4
  %61 = load %struct.qcom_cc_desc*, %struct.qcom_cc_desc** %6, align 8
  %62 = getelementptr inbounds %struct.qcom_cc_desc, %struct.qcom_cc_desc* %61, i32 0, i32 5
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.qcom_reset_controller*, %struct.qcom_reset_controller** %11, align 8
  %65 = getelementptr inbounds %struct.qcom_reset_controller, %struct.qcom_reset_controller* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 0
  store i32 %63, i32* %66, align 8
  %67 = load %struct.regmap*, %struct.regmap** %7, align 8
  %68 = load %struct.qcom_reset_controller*, %struct.qcom_reset_controller** %11, align 8
  %69 = getelementptr inbounds %struct.qcom_reset_controller, %struct.qcom_reset_controller* %68, i32 0, i32 2
  store %struct.regmap* %67, %struct.regmap** %69, align 8
  %70 = load %struct.qcom_cc_desc*, %struct.qcom_cc_desc** %6, align 8
  %71 = getelementptr inbounds %struct.qcom_cc_desc, %struct.qcom_cc_desc* %70, i32 0, i32 4
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.qcom_reset_controller*, %struct.qcom_reset_controller** %11, align 8
  %74 = getelementptr inbounds %struct.qcom_reset_controller, %struct.qcom_reset_controller* %73, i32 0, i32 1
  store i32 %72, i32* %74, align 8
  %75 = load %struct.device*, %struct.device** %10, align 8
  %76 = load %struct.qcom_reset_controller*, %struct.qcom_reset_controller** %11, align 8
  %77 = getelementptr inbounds %struct.qcom_reset_controller, %struct.qcom_reset_controller* %76, i32 0, i32 0
  %78 = call i32 @devm_reset_controller_register(%struct.device* %75, %struct.TYPE_5__* %77)
  store i32 %78, i32* %9, align 4
  %79 = load i32, i32* %9, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %41
  %82 = load i32, i32* %9, align 4
  store i32 %82, i32* %4, align 4
  br label %207

83:                                               ; preds = %41
  %84 = load %struct.qcom_cc_desc*, %struct.qcom_cc_desc** %6, align 8
  %85 = getelementptr inbounds %struct.qcom_cc_desc, %struct.qcom_cc_desc* %84, i32 0, i32 3
  %86 = load i64, i64* %85, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %136

88:                                               ; preds = %83
  %89 = load %struct.qcom_cc_desc*, %struct.qcom_cc_desc** %6, align 8
  %90 = getelementptr inbounds %struct.qcom_cc_desc, %struct.qcom_cc_desc* %89, i32 0, i32 2
  %91 = load i64, i64* %90, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %136

93:                                               ; preds = %88
  %94 = load %struct.device*, %struct.device** %10, align 8
  %95 = load i32, i32* @GFP_KERNEL, align 4
  %96 = call i8* @devm_kzalloc(%struct.device* %94, i32 24, i32 %95)
  %97 = bitcast i8* %96 to %struct.gdsc_desc*
  store %struct.gdsc_desc* %97, %struct.gdsc_desc** %13, align 8
  %98 = load %struct.gdsc_desc*, %struct.gdsc_desc** %13, align 8
  %99 = icmp ne %struct.gdsc_desc* %98, null
  br i1 %99, label %103, label %100

100:                                              ; preds = %93
  %101 = load i32, i32* @ENOMEM, align 4
  %102 = sub nsw i32 0, %101
  store i32 %102, i32* %4, align 4
  br label %207

103:                                              ; preds = %93
  %104 = load %struct.device*, %struct.device** %10, align 8
  %105 = load %struct.gdsc_desc*, %struct.gdsc_desc** %13, align 8
  %106 = getelementptr inbounds %struct.gdsc_desc, %struct.gdsc_desc* %105, i32 0, i32 2
  store %struct.device* %104, %struct.device** %106, align 8
  %107 = load %struct.qcom_cc_desc*, %struct.qcom_cc_desc** %6, align 8
  %108 = getelementptr inbounds %struct.qcom_cc_desc, %struct.qcom_cc_desc* %107, i32 0, i32 3
  %109 = load i64, i64* %108, align 8
  %110 = load %struct.gdsc_desc*, %struct.gdsc_desc** %13, align 8
  %111 = getelementptr inbounds %struct.gdsc_desc, %struct.gdsc_desc* %110, i32 0, i32 1
  store i64 %109, i64* %111, align 8
  %112 = load %struct.qcom_cc_desc*, %struct.qcom_cc_desc** %6, align 8
  %113 = getelementptr inbounds %struct.qcom_cc_desc, %struct.qcom_cc_desc* %112, i32 0, i32 2
  %114 = load i64, i64* %113, align 8
  %115 = load %struct.gdsc_desc*, %struct.gdsc_desc** %13, align 8
  %116 = getelementptr inbounds %struct.gdsc_desc, %struct.gdsc_desc* %115, i32 0, i32 0
  store i64 %114, i64* %116, align 8
  %117 = load %struct.gdsc_desc*, %struct.gdsc_desc** %13, align 8
  %118 = load %struct.qcom_reset_controller*, %struct.qcom_reset_controller** %11, align 8
  %119 = getelementptr inbounds %struct.qcom_reset_controller, %struct.qcom_reset_controller* %118, i32 0, i32 0
  %120 = load %struct.regmap*, %struct.regmap** %7, align 8
  %121 = call i32 @gdsc_register(%struct.gdsc_desc* %117, %struct.TYPE_5__* %119, %struct.regmap* %120)
  store i32 %121, i32* %9, align 4
  %122 = load i32, i32* %9, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %126

124:                                              ; preds = %103
  %125 = load i32, i32* %9, align 4
  store i32 %125, i32* %4, align 4
  br label %207

126:                                              ; preds = %103
  %127 = load %struct.device*, %struct.device** %10, align 8
  %128 = load i32, i32* @qcom_cc_gdsc_unregister, align 4
  %129 = load %struct.gdsc_desc*, %struct.gdsc_desc** %13, align 8
  %130 = call i32 @devm_add_action_or_reset(%struct.device* %127, i32 %128, %struct.gdsc_desc* %129)
  store i32 %130, i32* %9, align 4
  %131 = load i32, i32* %9, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %135

133:                                              ; preds = %126
  %134 = load i32, i32* %9, align 4
  store i32 %134, i32* %4, align 4
  br label %207

135:                                              ; preds = %126
  br label %136

136:                                              ; preds = %135, %88, %83
  %137 = load %struct.clk_regmap**, %struct.clk_regmap*** %15, align 8
  %138 = load %struct.qcom_cc*, %struct.qcom_cc** %12, align 8
  %139 = getelementptr inbounds %struct.qcom_cc, %struct.qcom_cc* %138, i32 0, i32 1
  store %struct.clk_regmap** %137, %struct.clk_regmap*** %139, align 8
  %140 = load i64, i64* %14, align 8
  %141 = load %struct.qcom_cc*, %struct.qcom_cc** %12, align 8
  %142 = getelementptr inbounds %struct.qcom_cc, %struct.qcom_cc* %141, i32 0, i32 0
  store i64 %140, i64* %142, align 8
  %143 = load %struct.device*, %struct.device** %10, align 8
  %144 = load %struct.qcom_cc*, %struct.qcom_cc** %12, align 8
  %145 = call i32 @qcom_cc_drop_protected(%struct.device* %143, %struct.qcom_cc* %144)
  store i32 0, i32* %8, align 4
  br label %146

146:                                              ; preds = %164, %136
  %147 = load i32, i32* %8, align 4
  %148 = sext i32 %147 to i64
  %149 = load i64, i64* %16, align 8
  %150 = icmp ult i64 %148, %149
  br i1 %150, label %151, label %167

151:                                              ; preds = %146
  %152 = load %struct.device*, %struct.device** %10, align 8
  %153 = load %struct.clk_hw**, %struct.clk_hw*** %17, align 8
  %154 = load i32, i32* %8, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds %struct.clk_hw*, %struct.clk_hw** %153, i64 %155
  %157 = load %struct.clk_hw*, %struct.clk_hw** %156, align 8
  %158 = call i32 @devm_clk_hw_register(%struct.device* %152, %struct.clk_hw* %157)
  store i32 %158, i32* %9, align 4
  %159 = load i32, i32* %9, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %163

161:                                              ; preds = %151
  %162 = load i32, i32* %9, align 4
  store i32 %162, i32* %4, align 4
  br label %207

163:                                              ; preds = %151
  br label %164

164:                                              ; preds = %163
  %165 = load i32, i32* %8, align 4
  %166 = add nsw i32 %165, 1
  store i32 %166, i32* %8, align 4
  br label %146

167:                                              ; preds = %146
  store i32 0, i32* %8, align 4
  br label %168

168:                                              ; preds = %194, %167
  %169 = load i32, i32* %8, align 4
  %170 = sext i32 %169 to i64
  %171 = load i64, i64* %14, align 8
  %172 = icmp ult i64 %170, %171
  br i1 %172, label %173, label %197

173:                                              ; preds = %168
  %174 = load %struct.clk_regmap**, %struct.clk_regmap*** %15, align 8
  %175 = load i32, i32* %8, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds %struct.clk_regmap*, %struct.clk_regmap** %174, i64 %176
  %178 = load %struct.clk_regmap*, %struct.clk_regmap** %177, align 8
  %179 = icmp ne %struct.clk_regmap* %178, null
  br i1 %179, label %181, label %180

180:                                              ; preds = %173
  br label %194

181:                                              ; preds = %173
  %182 = load %struct.device*, %struct.device** %10, align 8
  %183 = load %struct.clk_regmap**, %struct.clk_regmap*** %15, align 8
  %184 = load i32, i32* %8, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds %struct.clk_regmap*, %struct.clk_regmap** %183, i64 %185
  %187 = load %struct.clk_regmap*, %struct.clk_regmap** %186, align 8
  %188 = call i32 @devm_clk_register_regmap(%struct.device* %182, %struct.clk_regmap* %187)
  store i32 %188, i32* %9, align 4
  %189 = load i32, i32* %9, align 4
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %191, label %193

191:                                              ; preds = %181
  %192 = load i32, i32* %9, align 4
  store i32 %192, i32* %4, align 4
  br label %207

193:                                              ; preds = %181
  br label %194

194:                                              ; preds = %193, %180
  %195 = load i32, i32* %8, align 4
  %196 = add nsw i32 %195, 1
  store i32 %196, i32* %8, align 4
  br label %168

197:                                              ; preds = %168
  %198 = load %struct.device*, %struct.device** %10, align 8
  %199 = load i32, i32* @qcom_cc_clk_hw_get, align 4
  %200 = load %struct.qcom_cc*, %struct.qcom_cc** %12, align 8
  %201 = call i32 @devm_of_clk_add_hw_provider(%struct.device* %198, i32 %199, %struct.qcom_cc* %200)
  store i32 %201, i32* %9, align 4
  %202 = load i32, i32* %9, align 4
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %204, label %206

204:                                              ; preds = %197
  %205 = load i32, i32* %9, align 4
  store i32 %205, i32* %4, align 4
  br label %207

206:                                              ; preds = %197
  store i32 0, i32* %4, align 4
  br label %207

207:                                              ; preds = %206, %204, %191, %161, %133, %124, %100, %81, %38
  %208 = load i32, i32* %4, align 4
  ret i32 %208
}

declare dso_local i8* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @devm_reset_controller_register(%struct.device*, %struct.TYPE_5__*) #1

declare dso_local i32 @gdsc_register(%struct.gdsc_desc*, %struct.TYPE_5__*, %struct.regmap*) #1

declare dso_local i32 @devm_add_action_or_reset(%struct.device*, i32, %struct.gdsc_desc*) #1

declare dso_local i32 @qcom_cc_drop_protected(%struct.device*, %struct.qcom_cc*) #1

declare dso_local i32 @devm_clk_hw_register(%struct.device*, %struct.clk_hw*) #1

declare dso_local i32 @devm_clk_register_regmap(%struct.device*, %struct.clk_regmap*) #1

declare dso_local i32 @devm_of_clk_add_hw_provider(%struct.device*, i32, %struct.qcom_cc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
