; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/tegra/extr_clk-dfll.c_dfll_build_i2c_lut.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/tegra/extr_clk-dfll.c_dfll_build_i2c_lut.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_dfll = type { i32*, i32, i32, i32*, %struct.TYPE_4__*, i32, i32, i64 }
%struct.TYPE_4__ = type { %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.dev_pm_opp = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@MAX_DFLL_VOLTAGES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"no opp above DFLL minimum voltage %d mV\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tegra_dfll*, i64)* @dfll_build_i2c_lut to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dfll_build_i2c_lut(%struct.tegra_dfll* %0, i64 %1) #0 {
  %3 = alloca %struct.tegra_dfll*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.dev_pm_opp*, align 8
  store %struct.tegra_dfll* %0, %struct.tegra_dfll** %3, align 8
  store i64 %1, i64* %4, align 8
  %13 = load i32, i32* @EINVAL, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %8, align 4
  %15 = load %struct.tegra_dfll*, %struct.tegra_dfll** %3, align 8
  %16 = getelementptr inbounds %struct.tegra_dfll, %struct.tegra_dfll* %15, i32 0, i32 4
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = mul nsw i32 %21, 1000
  %23 = sext i32 %22 to i64
  store i64 %23, i64* %6, align 8
  %24 = load %struct.tegra_dfll*, %struct.tegra_dfll** %3, align 8
  %25 = load i64, i64* %6, align 8
  %26 = call i32 @find_vdd_map_entry_exact(%struct.tegra_dfll* %24, i64 %25)
  store i32 %26, i32* %11, align 4
  %27 = load i32, i32* %11, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %2
  br label %211

30:                                               ; preds = %2
  %31 = load i32, i32* %11, align 4
  %32 = load %struct.tegra_dfll*, %struct.tegra_dfll** %3, align 8
  %33 = getelementptr inbounds %struct.tegra_dfll, %struct.tegra_dfll* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 0
  store i32 %31, i32* %35, align 4
  %36 = load %struct.tegra_dfll*, %struct.tegra_dfll** %3, align 8
  %37 = getelementptr inbounds %struct.tegra_dfll, %struct.tegra_dfll* %36, i32 0, i32 7
  store i64 0, i64* %37, align 8
  store i32 1, i32* %9, align 4
  store i64 0, i64* %5, align 8
  br label %38

38:                                               ; preds = %158, %30
  %39 = load %struct.tegra_dfll*, %struct.tegra_dfll** %3, align 8
  %40 = getelementptr inbounds %struct.tegra_dfll, %struct.tegra_dfll* %39, i32 0, i32 4
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = call %struct.dev_pm_opp* @dev_pm_opp_find_freq_ceil(i32 %43, i64* %5)
  store %struct.dev_pm_opp* %44, %struct.dev_pm_opp** %12, align 8
  %45 = load %struct.dev_pm_opp*, %struct.dev_pm_opp** %12, align 8
  %46 = call i64 @IS_ERR(%struct.dev_pm_opp* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %38
  br label %161

49:                                               ; preds = %38
  %50 = load %struct.dev_pm_opp*, %struct.dev_pm_opp** %12, align 8
  %51 = call i64 @dev_pm_opp_get_voltage(%struct.dev_pm_opp* %50)
  store i64 %51, i64* %7, align 8
  %52 = load i64, i64* %7, align 8
  %53 = load %struct.tegra_dfll*, %struct.tegra_dfll** %3, align 8
  %54 = getelementptr inbounds %struct.tegra_dfll, %struct.tegra_dfll* %53, i32 0, i32 4
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = mul nsw i32 %59, 1000
  %61 = sext i32 %60 to i64
  %62 = icmp ule i64 %52, %61
  br i1 %62, label %63, label %68

63:                                               ; preds = %49
  %64 = load %struct.dev_pm_opp*, %struct.dev_pm_opp** %12, align 8
  %65 = call i32 @dev_pm_opp_get_freq(%struct.dev_pm_opp* %64)
  %66 = load %struct.tegra_dfll*, %struct.tegra_dfll** %3, align 8
  %67 = getelementptr inbounds %struct.tegra_dfll, %struct.tegra_dfll* %66, i32 0, i32 6
  store i32 %65, i32* %67, align 4
  br label %68

68:                                               ; preds = %63, %49
  %69 = load %struct.dev_pm_opp*, %struct.dev_pm_opp** %12, align 8
  %70 = call i32 @dev_pm_opp_put(%struct.dev_pm_opp* %69)
  br label %71

71:                                               ; preds = %114, %68
  %72 = load i64, i64* %4, align 8
  %73 = load i64, i64* %6, align 8
  %74 = sub i64 %72, %73
  %75 = load i32, i32* @MAX_DFLL_VOLTAGES, align 4
  %76 = load i32, i32* %9, align 4
  %77 = sub nsw i32 %75, %76
  %78 = sext i32 %77 to i64
  %79 = udiv i64 %74, %78
  %80 = call i64 @max(i64 1, i64 %79)
  %81 = load i64, i64* %6, align 8
  %82 = add i64 %81, %80
  store i64 %82, i64* %6, align 8
  %83 = load i64, i64* %6, align 8
  %84 = load i64, i64* %7, align 8
  %85 = icmp uge i64 %83, %84
  br i1 %85, label %86, label %87

86:                                               ; preds = %71
  br label %115

87:                                               ; preds = %71
  %88 = load %struct.tegra_dfll*, %struct.tegra_dfll** %3, align 8
  %89 = load i64, i64* %6, align 8
  %90 = call i32 @find_vdd_map_entry_min(%struct.tegra_dfll* %88, i64 %89)
  store i32 %90, i32* %10, align 4
  %91 = load i32, i32* %10, align 4
  %92 = icmp slt i32 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %87
  br label %211

94:                                               ; preds = %87
  %95 = load i32, i32* %10, align 4
  %96 = load %struct.tegra_dfll*, %struct.tegra_dfll** %3, align 8
  %97 = getelementptr inbounds %struct.tegra_dfll, %struct.tegra_dfll* %96, i32 0, i32 0
  %98 = load i32*, i32** %97, align 8
  %99 = load i32, i32* %9, align 4
  %100 = sub nsw i32 %99, 1
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i32, i32* %98, i64 %101
  %103 = load i32, i32* %102, align 4
  %104 = icmp ne i32 %95, %103
  br i1 %104, label %105, label %114

105:                                              ; preds = %94
  %106 = load i32, i32* %10, align 4
  %107 = load %struct.tegra_dfll*, %struct.tegra_dfll** %3, align 8
  %108 = getelementptr inbounds %struct.tegra_dfll, %struct.tegra_dfll* %107, i32 0, i32 0
  %109 = load i32*, i32** %108, align 8
  %110 = load i32, i32* %9, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %9, align 4
  %112 = sext i32 %110 to i64
  %113 = getelementptr inbounds i32, i32* %109, i64 %112
  store i32 %106, i32* %113, align 4
  br label %114

114:                                              ; preds = %105, %94
  br label %71

115:                                              ; preds = %86
  %116 = load i32, i32* %9, align 4
  %117 = load i32, i32* @MAX_DFLL_VOLTAGES, align 4
  %118 = sub nsw i32 %117, 1
  %119 = icmp eq i32 %116, %118
  br i1 %119, label %120, label %122

120:                                              ; preds = %115
  %121 = load i64, i64* %4, align 8
  br label %124

122:                                              ; preds = %115
  %123 = load i64, i64* %7, align 8
  br label %124

124:                                              ; preds = %122, %120
  %125 = phi i64 [ %121, %120 ], [ %123, %122 ]
  store i64 %125, i64* %6, align 8
  %126 = load %struct.tegra_dfll*, %struct.tegra_dfll** %3, align 8
  %127 = load i64, i64* %6, align 8
  %128 = call i32 @find_vdd_map_entry_exact(%struct.tegra_dfll* %126, i64 %127)
  store i32 %128, i32* %10, align 4
  %129 = load i32, i32* %10, align 4
  %130 = icmp slt i32 %129, 0
  br i1 %130, label %131, label %132

131:                                              ; preds = %124
  br label %211

132:                                              ; preds = %124
  %133 = load i32, i32* %10, align 4
  %134 = load %struct.tegra_dfll*, %struct.tegra_dfll** %3, align 8
  %135 = getelementptr inbounds %struct.tegra_dfll, %struct.tegra_dfll* %134, i32 0, i32 0
  %136 = load i32*, i32** %135, align 8
  %137 = load i32, i32* %9, align 4
  %138 = sub nsw i32 %137, 1
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i32, i32* %136, i64 %139
  %141 = load i32, i32* %140, align 4
  %142 = icmp ne i32 %133, %141
  br i1 %142, label %143, label %152

143:                                              ; preds = %132
  %144 = load i32, i32* %10, align 4
  %145 = load %struct.tegra_dfll*, %struct.tegra_dfll** %3, align 8
  %146 = getelementptr inbounds %struct.tegra_dfll, %struct.tegra_dfll* %145, i32 0, i32 0
  %147 = load i32*, i32** %146, align 8
  %148 = load i32, i32* %9, align 4
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %9, align 4
  %150 = sext i32 %148 to i64
  %151 = getelementptr inbounds i32, i32* %147, i64 %150
  store i32 %144, i32* %151, align 4
  br label %152

152:                                              ; preds = %143, %132
  %153 = load i64, i64* %6, align 8
  %154 = load i64, i64* %4, align 8
  %155 = icmp uge i64 %153, %154
  br i1 %155, label %156, label %157

156:                                              ; preds = %152
  br label %161

157:                                              ; preds = %152
  br label %158

158:                                              ; preds = %157
  %159 = load i64, i64* %5, align 8
  %160 = add i64 %159, 1
  store i64 %160, i64* %5, align 8
  br label %38

161:                                              ; preds = %156, %48
  %162 = load i32, i32* %9, align 4
  %163 = load %struct.tegra_dfll*, %struct.tegra_dfll** %3, align 8
  %164 = getelementptr inbounds %struct.tegra_dfll, %struct.tegra_dfll* %163, i32 0, i32 1
  store i32 %162, i32* %164, align 8
  %165 = load %struct.tegra_dfll*, %struct.tegra_dfll** %3, align 8
  %166 = getelementptr inbounds %struct.tegra_dfll, %struct.tegra_dfll* %165, i32 0, i32 6
  %167 = load i32, i32* %166, align 4
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %181, label %169

169:                                              ; preds = %161
  %170 = load %struct.tegra_dfll*, %struct.tegra_dfll** %3, align 8
  %171 = getelementptr inbounds %struct.tegra_dfll, %struct.tegra_dfll* %170, i32 0, i32 5
  %172 = load i32, i32* %171, align 8
  %173 = load %struct.tegra_dfll*, %struct.tegra_dfll** %3, align 8
  %174 = getelementptr inbounds %struct.tegra_dfll, %struct.tegra_dfll* %173, i32 0, i32 4
  %175 = load %struct.TYPE_4__*, %struct.TYPE_4__** %174, align 8
  %176 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %175, i32 0, i32 0
  %177 = load %struct.TYPE_3__*, %struct.TYPE_3__** %176, align 8
  %178 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 4
  %180 = call i32 @dev_err(i32 %172, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %179)
  br label %210

181:                                              ; preds = %161
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %182

182:                                              ; preds = %206, %181
  %183 = load i32, i32* %9, align 4
  %184 = load %struct.tegra_dfll*, %struct.tegra_dfll** %3, align 8
  %185 = getelementptr inbounds %struct.tegra_dfll, %struct.tegra_dfll* %184, i32 0, i32 1
  %186 = load i32, i32* %185, align 8
  %187 = icmp slt i32 %183, %186
  br i1 %187, label %188, label %209

188:                                              ; preds = %182
  %189 = load %struct.tegra_dfll*, %struct.tegra_dfll** %3, align 8
  %190 = getelementptr inbounds %struct.tegra_dfll, %struct.tegra_dfll* %189, i32 0, i32 2
  %191 = load i32, i32* %190, align 4
  %192 = load %struct.tegra_dfll*, %struct.tegra_dfll** %3, align 8
  %193 = getelementptr inbounds %struct.tegra_dfll, %struct.tegra_dfll* %192, i32 0, i32 0
  %194 = load i32*, i32** %193, align 8
  %195 = load i32, i32* %9, align 4
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds i32, i32* %194, i64 %196
  %198 = load i32, i32* %197, align 4
  %199 = call i32 @regulator_list_voltage(i32 %191, i32 %198)
  %200 = load %struct.tegra_dfll*, %struct.tegra_dfll** %3, align 8
  %201 = getelementptr inbounds %struct.tegra_dfll, %struct.tegra_dfll* %200, i32 0, i32 3
  %202 = load i32*, i32** %201, align 8
  %203 = load i32, i32* %9, align 4
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds i32, i32* %202, i64 %204
  store i32 %199, i32* %205, align 4
  br label %206

206:                                              ; preds = %188
  %207 = load i32, i32* %9, align 4
  %208 = add nsw i32 %207, 1
  store i32 %208, i32* %9, align 4
  br label %182

209:                                              ; preds = %182
  br label %210

210:                                              ; preds = %209, %169
  br label %211

211:                                              ; preds = %210, %131, %93, %29
  %212 = load i32, i32* %8, align 4
  ret i32 %212
}

declare dso_local i32 @find_vdd_map_entry_exact(%struct.tegra_dfll*, i64) #1

declare dso_local %struct.dev_pm_opp* @dev_pm_opp_find_freq_ceil(i32, i64*) #1

declare dso_local i64 @IS_ERR(%struct.dev_pm_opp*) #1

declare dso_local i64 @dev_pm_opp_get_voltage(%struct.dev_pm_opp*) #1

declare dso_local i32 @dev_pm_opp_get_freq(%struct.dev_pm_opp*) #1

declare dso_local i32 @dev_pm_opp_put(%struct.dev_pm_opp*) #1

declare dso_local i64 @max(i64, i64) #1

declare dso_local i32 @find_vdd_map_entry_min(%struct.tegra_dfll*, i64) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @regulator_list_voltage(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
