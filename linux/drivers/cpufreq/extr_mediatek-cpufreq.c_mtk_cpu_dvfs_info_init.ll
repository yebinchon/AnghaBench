; ModuleID = '/home/carl/AnghaBench/linux/drivers/cpufreq/extr_mediatek-cpufreq.c_mtk_cpu_dvfs_info_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/cpufreq/extr_mediatek-cpufreq.c_mtk_cpu_dvfs_info_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtk_cpu_dvfs_info = type { i32, i32, %struct.regulator*, %struct.regulator*, %struct.regulator*, %struct.regulator*, %struct.device*, i32 }
%struct.regulator = type { i32 }
%struct.device = type { i32 }
%struct.clk = type opaque
%struct.dev_pm_opp = type opaque

@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"failed to get cpu%d device\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"cpu\00", align 1
@EPROBE_DEFER = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [37 x i8] c"cpu clk for cpu%d not ready, retry.\0A\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"failed to get cpu clk for cpu%d\0A\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"intermediate\00", align 1
@.str.5 = private unnamed_addr constant [46 x i8] c"intermediate clk for cpu%d not ready, retry.\0A\00", align 1
@.str.6 = private unnamed_addr constant [42 x i8] c"failed to get intermediate clk for cpu%d\0A\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"proc\00", align 1
@.str.8 = private unnamed_addr constant [44 x i8] c"proc regulator for cpu%d not ready, retry.\0A\00", align 1
@.str.9 = private unnamed_addr constant [40 x i8] c"failed to get proc regulator for cpu%d\0A\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"sram\00", align 1
@.str.11 = private unnamed_addr constant [49 x i8] c"failed to get OPP-sharing information for cpu%d\0A\00", align 1
@.str.12 = private unnamed_addr constant [24 x i8] c"no OPP table for cpu%d\0A\00", align 1
@.str.13 = private unnamed_addr constant [42 x i8] c"failed to get intermediate opp for cpu%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtk_cpu_dvfs_info*, i32)* @mtk_cpu_dvfs_info_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtk_cpu_dvfs_info_init(%struct.mtk_cpu_dvfs_info* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mtk_cpu_dvfs_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.regulator*, align 8
  %8 = alloca %struct.regulator*, align 8
  %9 = alloca %struct.clk*, align 8
  %10 = alloca %struct.clk*, align 8
  %11 = alloca %struct.dev_pm_opp*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.mtk_cpu_dvfs_info* %0, %struct.mtk_cpu_dvfs_info** %4, align 8
  store i32 %1, i32* %5, align 4
  %14 = load i32, i32* @ENODEV, align 4
  %15 = sub nsw i32 0, %14
  %16 = call %struct.regulator* @ERR_PTR(i32 %15)
  store %struct.regulator* %16, %struct.regulator** %7, align 8
  %17 = load i32, i32* @ENODEV, align 4
  %18 = sub nsw i32 0, %17
  %19 = call %struct.regulator* @ERR_PTR(i32 %18)
  store %struct.regulator* %19, %struct.regulator** %8, align 8
  %20 = load i32, i32* @ENODEV, align 4
  %21 = sub nsw i32 0, %20
  %22 = call %struct.regulator* @ERR_PTR(i32 %21)
  %23 = bitcast %struct.regulator* %22 to %struct.clk*
  store %struct.clk* %23, %struct.clk** %9, align 8
  %24 = load i32, i32* @ENODEV, align 4
  %25 = sub nsw i32 0, %24
  %26 = call %struct.regulator* @ERR_PTR(i32 %25)
  %27 = bitcast %struct.regulator* %26 to %struct.clk*
  store %struct.clk* %27, %struct.clk** %10, align 8
  %28 = load i32, i32* %5, align 4
  %29 = call %struct.device* @get_cpu_device(i32 %28)
  store %struct.device* %29, %struct.device** %6, align 8
  %30 = load %struct.device*, %struct.device** %6, align 8
  %31 = icmp ne %struct.device* %30, null
  br i1 %31, label %37, label %32

32:                                               ; preds = %2
  %33 = load i32, i32* %5, align 4
  %34 = call i32 @pr_err(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %33)
  %35 = load i32, i32* @ENODEV, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %3, align 4
  br label %225

37:                                               ; preds = %2
  %38 = load %struct.device*, %struct.device** %6, align 8
  %39 = call %struct.regulator* @clk_get(%struct.device* %38, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %40 = bitcast %struct.regulator* %39 to %struct.clk*
  store %struct.clk* %40, %struct.clk** %9, align 8
  %41 = load %struct.clk*, %struct.clk** %9, align 8
  %42 = bitcast %struct.clk* %41 to %struct.regulator*
  %43 = call i64 @IS_ERR(%struct.regulator* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %63

45:                                               ; preds = %37
  %46 = load %struct.clk*, %struct.clk** %9, align 8
  %47 = bitcast %struct.clk* %46 to %struct.regulator*
  %48 = call i32 @PTR_ERR(%struct.regulator* %47)
  %49 = load i32, i32* @EPROBE_DEFER, align 4
  %50 = sub nsw i32 0, %49
  %51 = icmp eq i32 %48, %50
  br i1 %51, label %52, label %55

52:                                               ; preds = %45
  %53 = load i32, i32* %5, align 4
  %54 = call i32 @pr_warn(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i32 %53)
  br label %58

55:                                               ; preds = %45
  %56 = load i32, i32* %5, align 4
  %57 = call i32 @pr_err(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i32 %56)
  br label %58

58:                                               ; preds = %55, %52
  %59 = load %struct.clk*, %struct.clk** %9, align 8
  %60 = bitcast %struct.clk* %59 to %struct.regulator*
  %61 = call i32 @PTR_ERR(%struct.regulator* %60)
  store i32 %61, i32* %13, align 4
  %62 = load i32, i32* %13, align 4
  store i32 %62, i32* %3, align 4
  br label %225

63:                                               ; preds = %37
  %64 = load %struct.device*, %struct.device** %6, align 8
  %65 = call %struct.regulator* @clk_get(%struct.device* %64, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0))
  %66 = bitcast %struct.regulator* %65 to %struct.clk*
  store %struct.clk* %66, %struct.clk** %10, align 8
  %67 = load %struct.clk*, %struct.clk** %10, align 8
  %68 = bitcast %struct.clk* %67 to %struct.regulator*
  %69 = call i64 @IS_ERR(%struct.regulator* %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %88

71:                                               ; preds = %63
  %72 = load %struct.clk*, %struct.clk** %10, align 8
  %73 = bitcast %struct.clk* %72 to %struct.regulator*
  %74 = call i32 @PTR_ERR(%struct.regulator* %73)
  %75 = load i32, i32* @EPROBE_DEFER, align 4
  %76 = sub nsw i32 0, %75
  %77 = icmp eq i32 %74, %76
  br i1 %77, label %78, label %81

78:                                               ; preds = %71
  %79 = load i32, i32* %5, align 4
  %80 = call i32 @pr_warn(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.5, i64 0, i64 0), i32 %79)
  br label %84

81:                                               ; preds = %71
  %82 = load i32, i32* %5, align 4
  %83 = call i32 @pr_err(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.6, i64 0, i64 0), i32 %82)
  br label %84

84:                                               ; preds = %81, %78
  %85 = load %struct.clk*, %struct.clk** %10, align 8
  %86 = bitcast %struct.clk* %85 to %struct.regulator*
  %87 = call i32 @PTR_ERR(%struct.regulator* %86)
  store i32 %87, i32* %13, align 4
  br label %191

88:                                               ; preds = %63
  %89 = load %struct.device*, %struct.device** %6, align 8
  %90 = call %struct.regulator* @regulator_get_optional(%struct.device* %89, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0))
  store %struct.regulator* %90, %struct.regulator** %7, align 8
  %91 = load %struct.regulator*, %struct.regulator** %7, align 8
  %92 = call i64 @IS_ERR(%struct.regulator* %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %109

94:                                               ; preds = %88
  %95 = load %struct.regulator*, %struct.regulator** %7, align 8
  %96 = call i32 @PTR_ERR(%struct.regulator* %95)
  %97 = load i32, i32* @EPROBE_DEFER, align 4
  %98 = sub nsw i32 0, %97
  %99 = icmp eq i32 %96, %98
  br i1 %99, label %100, label %103

100:                                              ; preds = %94
  %101 = load i32, i32* %5, align 4
  %102 = call i32 @pr_warn(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.8, i64 0, i64 0), i32 %101)
  br label %106

103:                                              ; preds = %94
  %104 = load i32, i32* %5, align 4
  %105 = call i32 @pr_err(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.9, i64 0, i64 0), i32 %104)
  br label %106

106:                                              ; preds = %103, %100
  %107 = load %struct.regulator*, %struct.regulator** %7, align 8
  %108 = call i32 @PTR_ERR(%struct.regulator* %107)
  store i32 %108, i32* %13, align 4
  br label %191

109:                                              ; preds = %88
  %110 = load %struct.device*, %struct.device** %6, align 8
  %111 = call %struct.regulator* @regulator_get_exclusive(%struct.device* %110, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0))
  store %struct.regulator* %111, %struct.regulator** %8, align 8
  %112 = load %struct.device*, %struct.device** %6, align 8
  %113 = load %struct.mtk_cpu_dvfs_info*, %struct.mtk_cpu_dvfs_info** %4, align 8
  %114 = getelementptr inbounds %struct.mtk_cpu_dvfs_info, %struct.mtk_cpu_dvfs_info* %113, i32 0, i32 1
  %115 = call i32 @dev_pm_opp_of_get_sharing_cpus(%struct.device* %112, i32* %114)
  store i32 %115, i32* %13, align 4
  %116 = load i32, i32* %13, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %121

118:                                              ; preds = %109
  %119 = load i32, i32* %5, align 4
  %120 = call i32 @pr_err(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.11, i64 0, i64 0), i32 %119)
  br label %191

121:                                              ; preds = %109
  %122 = load %struct.mtk_cpu_dvfs_info*, %struct.mtk_cpu_dvfs_info** %4, align 8
  %123 = getelementptr inbounds %struct.mtk_cpu_dvfs_info, %struct.mtk_cpu_dvfs_info* %122, i32 0, i32 1
  %124 = call i32 @dev_pm_opp_of_cpumask_add_table(i32* %123)
  store i32 %124, i32* %13, align 4
  %125 = load i32, i32* %13, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %130

127:                                              ; preds = %121
  %128 = load i32, i32* %5, align 4
  %129 = call i32 @pr_warn(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.12, i64 0, i64 0), i32 %128)
  br label %191

130:                                              ; preds = %121
  %131 = load %struct.clk*, %struct.clk** %10, align 8
  %132 = bitcast %struct.clk* %131 to %struct.regulator*
  %133 = call i64 @clk_get_rate(%struct.regulator* %132)
  store i64 %133, i64* %12, align 8
  %134 = load %struct.device*, %struct.device** %6, align 8
  %135 = call %struct.regulator* @dev_pm_opp_find_freq_ceil(%struct.device* %134, i64* %12)
  %136 = bitcast %struct.regulator* %135 to %struct.dev_pm_opp*
  store %struct.dev_pm_opp* %136, %struct.dev_pm_opp** %11, align 8
  %137 = load %struct.dev_pm_opp*, %struct.dev_pm_opp** %11, align 8
  %138 = bitcast %struct.dev_pm_opp* %137 to %struct.regulator*
  %139 = call i64 @IS_ERR(%struct.regulator* %138)
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %147

141:                                              ; preds = %130
  %142 = load i32, i32* %5, align 4
  %143 = call i32 @pr_err(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.13, i64 0, i64 0), i32 %142)
  %144 = load %struct.dev_pm_opp*, %struct.dev_pm_opp** %11, align 8
  %145 = bitcast %struct.dev_pm_opp* %144 to %struct.regulator*
  %146 = call i32 @PTR_ERR(%struct.regulator* %145)
  store i32 %146, i32* %13, align 4
  br label %187

147:                                              ; preds = %130
  %148 = load %struct.dev_pm_opp*, %struct.dev_pm_opp** %11, align 8
  %149 = bitcast %struct.dev_pm_opp* %148 to %struct.regulator*
  %150 = call i32 @dev_pm_opp_get_voltage(%struct.regulator* %149)
  %151 = load %struct.mtk_cpu_dvfs_info*, %struct.mtk_cpu_dvfs_info** %4, align 8
  %152 = getelementptr inbounds %struct.mtk_cpu_dvfs_info, %struct.mtk_cpu_dvfs_info* %151, i32 0, i32 7
  store i32 %150, i32* %152, align 8
  %153 = load %struct.dev_pm_opp*, %struct.dev_pm_opp** %11, align 8
  %154 = bitcast %struct.dev_pm_opp* %153 to %struct.regulator*
  %155 = call i32 @dev_pm_opp_put(%struct.regulator* %154)
  %156 = load %struct.device*, %struct.device** %6, align 8
  %157 = load %struct.mtk_cpu_dvfs_info*, %struct.mtk_cpu_dvfs_info** %4, align 8
  %158 = getelementptr inbounds %struct.mtk_cpu_dvfs_info, %struct.mtk_cpu_dvfs_info* %157, i32 0, i32 6
  store %struct.device* %156, %struct.device** %158, align 8
  %159 = load %struct.regulator*, %struct.regulator** %7, align 8
  %160 = load %struct.mtk_cpu_dvfs_info*, %struct.mtk_cpu_dvfs_info** %4, align 8
  %161 = getelementptr inbounds %struct.mtk_cpu_dvfs_info, %struct.mtk_cpu_dvfs_info* %160, i32 0, i32 5
  store %struct.regulator* %159, %struct.regulator** %161, align 8
  %162 = load %struct.regulator*, %struct.regulator** %8, align 8
  %163 = call i64 @IS_ERR(%struct.regulator* %162)
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %166

165:                                              ; preds = %147
  br label %168

166:                                              ; preds = %147
  %167 = load %struct.regulator*, %struct.regulator** %8, align 8
  br label %168

168:                                              ; preds = %166, %165
  %169 = phi %struct.regulator* [ null, %165 ], [ %167, %166 ]
  %170 = load %struct.mtk_cpu_dvfs_info*, %struct.mtk_cpu_dvfs_info** %4, align 8
  %171 = getelementptr inbounds %struct.mtk_cpu_dvfs_info, %struct.mtk_cpu_dvfs_info* %170, i32 0, i32 4
  store %struct.regulator* %169, %struct.regulator** %171, align 8
  %172 = load %struct.clk*, %struct.clk** %9, align 8
  %173 = bitcast %struct.clk* %172 to %struct.regulator*
  %174 = load %struct.mtk_cpu_dvfs_info*, %struct.mtk_cpu_dvfs_info** %4, align 8
  %175 = getelementptr inbounds %struct.mtk_cpu_dvfs_info, %struct.mtk_cpu_dvfs_info* %174, i32 0, i32 3
  store %struct.regulator* %173, %struct.regulator** %175, align 8
  %176 = load %struct.clk*, %struct.clk** %10, align 8
  %177 = bitcast %struct.clk* %176 to %struct.regulator*
  %178 = load %struct.mtk_cpu_dvfs_info*, %struct.mtk_cpu_dvfs_info** %4, align 8
  %179 = getelementptr inbounds %struct.mtk_cpu_dvfs_info, %struct.mtk_cpu_dvfs_info* %178, i32 0, i32 2
  store %struct.regulator* %177, %struct.regulator** %179, align 8
  %180 = load %struct.regulator*, %struct.regulator** %8, align 8
  %181 = call i64 @IS_ERR(%struct.regulator* %180)
  %182 = icmp ne i64 %181, 0
  %183 = xor i1 %182, true
  %184 = zext i1 %183 to i32
  %185 = load %struct.mtk_cpu_dvfs_info*, %struct.mtk_cpu_dvfs_info** %4, align 8
  %186 = getelementptr inbounds %struct.mtk_cpu_dvfs_info, %struct.mtk_cpu_dvfs_info* %185, i32 0, i32 0
  store i32 %184, i32* %186, align 8
  store i32 0, i32* %3, align 4
  br label %225

187:                                              ; preds = %141
  %188 = load %struct.mtk_cpu_dvfs_info*, %struct.mtk_cpu_dvfs_info** %4, align 8
  %189 = getelementptr inbounds %struct.mtk_cpu_dvfs_info, %struct.mtk_cpu_dvfs_info* %188, i32 0, i32 1
  %190 = call i32 @dev_pm_opp_of_cpumask_remove_table(i32* %189)
  br label %191

191:                                              ; preds = %187, %127, %118, %106, %84
  %192 = load %struct.regulator*, %struct.regulator** %7, align 8
  %193 = call i64 @IS_ERR(%struct.regulator* %192)
  %194 = icmp ne i64 %193, 0
  br i1 %194, label %198, label %195

195:                                              ; preds = %191
  %196 = load %struct.regulator*, %struct.regulator** %7, align 8
  %197 = call i32 @regulator_put(%struct.regulator* %196)
  br label %198

198:                                              ; preds = %195, %191
  %199 = load %struct.regulator*, %struct.regulator** %8, align 8
  %200 = call i64 @IS_ERR(%struct.regulator* %199)
  %201 = icmp ne i64 %200, 0
  br i1 %201, label %205, label %202

202:                                              ; preds = %198
  %203 = load %struct.regulator*, %struct.regulator** %8, align 8
  %204 = call i32 @regulator_put(%struct.regulator* %203)
  br label %205

205:                                              ; preds = %202, %198
  %206 = load %struct.clk*, %struct.clk** %9, align 8
  %207 = bitcast %struct.clk* %206 to %struct.regulator*
  %208 = call i64 @IS_ERR(%struct.regulator* %207)
  %209 = icmp ne i64 %208, 0
  br i1 %209, label %214, label %210

210:                                              ; preds = %205
  %211 = load %struct.clk*, %struct.clk** %9, align 8
  %212 = bitcast %struct.clk* %211 to %struct.regulator*
  %213 = call i32 @clk_put(%struct.regulator* %212)
  br label %214

214:                                              ; preds = %210, %205
  %215 = load %struct.clk*, %struct.clk** %10, align 8
  %216 = bitcast %struct.clk* %215 to %struct.regulator*
  %217 = call i64 @IS_ERR(%struct.regulator* %216)
  %218 = icmp ne i64 %217, 0
  br i1 %218, label %223, label %219

219:                                              ; preds = %214
  %220 = load %struct.clk*, %struct.clk** %10, align 8
  %221 = bitcast %struct.clk* %220 to %struct.regulator*
  %222 = call i32 @clk_put(%struct.regulator* %221)
  br label %223

223:                                              ; preds = %219, %214
  %224 = load i32, i32* %13, align 4
  store i32 %224, i32* %3, align 4
  br label %225

225:                                              ; preds = %223, %168, %58, %32
  %226 = load i32, i32* %3, align 4
  ret i32 %226
}

declare dso_local %struct.regulator* @ERR_PTR(i32) #1

declare dso_local %struct.device* @get_cpu_device(i32) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local %struct.regulator* @clk_get(%struct.device*, i8*) #1

declare dso_local i64 @IS_ERR(%struct.regulator*) #1

declare dso_local i32 @PTR_ERR(%struct.regulator*) #1

declare dso_local i32 @pr_warn(i8*, i32) #1

declare dso_local %struct.regulator* @regulator_get_optional(%struct.device*, i8*) #1

declare dso_local %struct.regulator* @regulator_get_exclusive(%struct.device*, i8*) #1

declare dso_local i32 @dev_pm_opp_of_get_sharing_cpus(%struct.device*, i32*) #1

declare dso_local i32 @dev_pm_opp_of_cpumask_add_table(i32*) #1

declare dso_local i64 @clk_get_rate(%struct.regulator*) #1

declare dso_local %struct.regulator* @dev_pm_opp_find_freq_ceil(%struct.device*, i64*) #1

declare dso_local i32 @dev_pm_opp_get_voltage(%struct.regulator*) #1

declare dso_local i32 @dev_pm_opp_put(%struct.regulator*) #1

declare dso_local i32 @dev_pm_opp_of_cpumask_remove_table(i32*) #1

declare dso_local i32 @regulator_put(%struct.regulator*) #1

declare dso_local i32 @clk_put(%struct.regulator*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
