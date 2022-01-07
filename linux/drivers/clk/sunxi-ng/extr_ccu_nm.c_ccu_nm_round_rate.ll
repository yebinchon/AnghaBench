; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/sunxi-ng/extr_ccu_nm.c_ccu_nm_round_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/sunxi-ng/extr_ccu_nm.c_ccu_nm_round_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.ccu_nm = type { i64, i64, i64, %struct.TYPE_7__, %struct.TYPE_6__, %struct.TYPE_5__, i32, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32, i64 }
%struct.TYPE_5__ = type { i32, i64, i64 }
%struct._ccu_nm = type { i32, i32, i32, i32, i32, i32 }

@CCU_FEATURE_FIXED_POSTDIV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.clk_hw*, i64, i64*)* @ccu_nm_round_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ccu_nm_round_rate(%struct.clk_hw* %0, i64 %1, i64* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.clk_hw*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  %8 = alloca %struct.ccu_nm*, align 8
  %9 = alloca %struct._ccu_nm, align 4
  store %struct.clk_hw* %0, %struct.clk_hw** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64* %2, i64** %7, align 8
  %10 = load %struct.clk_hw*, %struct.clk_hw** %5, align 8
  %11 = call %struct.ccu_nm* @hw_to_ccu_nm(%struct.clk_hw* %10)
  store %struct.ccu_nm* %11, %struct.ccu_nm** %8, align 8
  %12 = load %struct.ccu_nm*, %struct.ccu_nm** %8, align 8
  %13 = getelementptr inbounds %struct.ccu_nm, %struct.ccu_nm* %12, i32 0, i32 3
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @CCU_FEATURE_FIXED_POSTDIV, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %3
  %20 = load %struct.ccu_nm*, %struct.ccu_nm** %8, align 8
  %21 = getelementptr inbounds %struct.ccu_nm, %struct.ccu_nm* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* %6, align 8
  %24 = mul i64 %23, %22
  store i64 %24, i64* %6, align 8
  br label %25

25:                                               ; preds = %19, %3
  %26 = load i64, i64* %6, align 8
  %27 = load %struct.ccu_nm*, %struct.ccu_nm** %8, align 8
  %28 = getelementptr inbounds %struct.ccu_nm, %struct.ccu_nm* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = icmp ult i64 %26, %29
  br i1 %30, label %31, label %50

31:                                               ; preds = %25
  %32 = load %struct.ccu_nm*, %struct.ccu_nm** %8, align 8
  %33 = getelementptr inbounds %struct.ccu_nm, %struct.ccu_nm* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  store i64 %34, i64* %6, align 8
  %35 = load %struct.ccu_nm*, %struct.ccu_nm** %8, align 8
  %36 = getelementptr inbounds %struct.ccu_nm, %struct.ccu_nm* %35, i32 0, i32 3
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @CCU_FEATURE_FIXED_POSTDIV, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %31
  %43 = load %struct.ccu_nm*, %struct.ccu_nm** %8, align 8
  %44 = getelementptr inbounds %struct.ccu_nm, %struct.ccu_nm* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* %6, align 8
  %47 = udiv i64 %46, %45
  store i64 %47, i64* %6, align 8
  br label %48

48:                                               ; preds = %42, %31
  %49 = load i64, i64* %6, align 8
  store i64 %49, i64* %4, align 8
  br label %201

50:                                               ; preds = %25
  %51 = load %struct.ccu_nm*, %struct.ccu_nm** %8, align 8
  %52 = getelementptr inbounds %struct.ccu_nm, %struct.ccu_nm* %51, i32 0, i32 2
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %80

55:                                               ; preds = %50
  %56 = load i64, i64* %6, align 8
  %57 = load %struct.ccu_nm*, %struct.ccu_nm** %8, align 8
  %58 = getelementptr inbounds %struct.ccu_nm, %struct.ccu_nm* %57, i32 0, i32 2
  %59 = load i64, i64* %58, align 8
  %60 = icmp ugt i64 %56, %59
  br i1 %60, label %61, label %80

61:                                               ; preds = %55
  %62 = load %struct.ccu_nm*, %struct.ccu_nm** %8, align 8
  %63 = getelementptr inbounds %struct.ccu_nm, %struct.ccu_nm* %62, i32 0, i32 2
  %64 = load i64, i64* %63, align 8
  store i64 %64, i64* %6, align 8
  %65 = load %struct.ccu_nm*, %struct.ccu_nm** %8, align 8
  %66 = getelementptr inbounds %struct.ccu_nm, %struct.ccu_nm* %65, i32 0, i32 3
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* @CCU_FEATURE_FIXED_POSTDIV, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %78

72:                                               ; preds = %61
  %73 = load %struct.ccu_nm*, %struct.ccu_nm** %8, align 8
  %74 = getelementptr inbounds %struct.ccu_nm, %struct.ccu_nm* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* %6, align 8
  %77 = udiv i64 %76, %75
  store i64 %77, i64* %6, align 8
  br label %78

78:                                               ; preds = %72, %61
  %79 = load i64, i64* %6, align 8
  store i64 %79, i64* %4, align 8
  br label %201

80:                                               ; preds = %55, %50
  %81 = load %struct.ccu_nm*, %struct.ccu_nm** %8, align 8
  %82 = getelementptr inbounds %struct.ccu_nm, %struct.ccu_nm* %81, i32 0, i32 3
  %83 = load %struct.ccu_nm*, %struct.ccu_nm** %8, align 8
  %84 = getelementptr inbounds %struct.ccu_nm, %struct.ccu_nm* %83, i32 0, i32 7
  %85 = load i64, i64* %6, align 8
  %86 = call i64 @ccu_frac_helper_has_rate(%struct.TYPE_7__* %82, i32* %84, i64 %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %104

88:                                               ; preds = %80
  %89 = load %struct.ccu_nm*, %struct.ccu_nm** %8, align 8
  %90 = getelementptr inbounds %struct.ccu_nm, %struct.ccu_nm* %89, i32 0, i32 3
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = load i32, i32* @CCU_FEATURE_FIXED_POSTDIV, align 4
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %102

96:                                               ; preds = %88
  %97 = load %struct.ccu_nm*, %struct.ccu_nm** %8, align 8
  %98 = getelementptr inbounds %struct.ccu_nm, %struct.ccu_nm* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = load i64, i64* %6, align 8
  %101 = udiv i64 %100, %99
  store i64 %101, i64* %6, align 8
  br label %102

102:                                              ; preds = %96, %88
  %103 = load i64, i64* %6, align 8
  store i64 %103, i64* %4, align 8
  br label %201

104:                                              ; preds = %80
  %105 = load %struct.ccu_nm*, %struct.ccu_nm** %8, align 8
  %106 = getelementptr inbounds %struct.ccu_nm, %struct.ccu_nm* %105, i32 0, i32 3
  %107 = load %struct.ccu_nm*, %struct.ccu_nm** %8, align 8
  %108 = getelementptr inbounds %struct.ccu_nm, %struct.ccu_nm* %107, i32 0, i32 6
  %109 = load i64, i64* %6, align 8
  %110 = call i64 @ccu_sdm_helper_has_rate(%struct.TYPE_7__* %106, i32* %108, i64 %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %128

112:                                              ; preds = %104
  %113 = load %struct.ccu_nm*, %struct.ccu_nm** %8, align 8
  %114 = getelementptr inbounds %struct.ccu_nm, %struct.ccu_nm* %113, i32 0, i32 3
  %115 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = load i32, i32* @CCU_FEATURE_FIXED_POSTDIV, align 4
  %118 = and i32 %116, %117
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %126

120:                                              ; preds = %112
  %121 = load %struct.ccu_nm*, %struct.ccu_nm** %8, align 8
  %122 = getelementptr inbounds %struct.ccu_nm, %struct.ccu_nm* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = load i64, i64* %6, align 8
  %125 = udiv i64 %124, %123
  store i64 %125, i64* %6, align 8
  br label %126

126:                                              ; preds = %120, %112
  %127 = load i64, i64* %6, align 8
  store i64 %127, i64* %4, align 8
  br label %201

128:                                              ; preds = %104
  %129 = load %struct.ccu_nm*, %struct.ccu_nm** %8, align 8
  %130 = getelementptr inbounds %struct.ccu_nm, %struct.ccu_nm* %129, i32 0, i32 5
  %131 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %130, i32 0, i32 2
  %132 = load i64, i64* %131, align 8
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %135

134:                                              ; preds = %128
  br label %136

135:                                              ; preds = %128
  br label %136

136:                                              ; preds = %135, %134
  %137 = phi i64 [ %132, %134 ], [ 1, %135 ]
  %138 = trunc i64 %137 to i32
  %139 = getelementptr inbounds %struct._ccu_nm, %struct._ccu_nm* %9, i32 0, i32 0
  store i32 %138, i32* %139, align 4
  %140 = load %struct.ccu_nm*, %struct.ccu_nm** %8, align 8
  %141 = getelementptr inbounds %struct.ccu_nm, %struct.ccu_nm* %140, i32 0, i32 5
  %142 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %141, i32 0, i32 1
  %143 = load i64, i64* %142, align 8
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %146

145:                                              ; preds = %136
  br label %153

146:                                              ; preds = %136
  %147 = load %struct.ccu_nm*, %struct.ccu_nm** %8, align 8
  %148 = getelementptr inbounds %struct.ccu_nm, %struct.ccu_nm* %147, i32 0, i32 5
  %149 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = shl i32 1, %150
  %152 = sext i32 %151 to i64
  br label %153

153:                                              ; preds = %146, %145
  %154 = phi i64 [ %143, %145 ], [ %152, %146 ]
  %155 = trunc i64 %154 to i32
  %156 = getelementptr inbounds %struct._ccu_nm, %struct._ccu_nm* %9, i32 0, i32 1
  store i32 %155, i32* %156, align 4
  %157 = getelementptr inbounds %struct._ccu_nm, %struct._ccu_nm* %9, i32 0, i32 2
  store i32 1, i32* %157, align 4
  %158 = load %struct.ccu_nm*, %struct.ccu_nm** %8, align 8
  %159 = getelementptr inbounds %struct.ccu_nm, %struct.ccu_nm* %158, i32 0, i32 4
  %160 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %159, i32 0, i32 1
  %161 = load i64, i64* %160, align 8
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %163, label %164

163:                                              ; preds = %153
  br label %171

164:                                              ; preds = %153
  %165 = load %struct.ccu_nm*, %struct.ccu_nm** %8, align 8
  %166 = getelementptr inbounds %struct.ccu_nm, %struct.ccu_nm* %165, i32 0, i32 4
  %167 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 8
  %169 = shl i32 1, %168
  %170 = sext i32 %169 to i64
  br label %171

171:                                              ; preds = %164, %163
  %172 = phi i64 [ %161, %163 ], [ %170, %164 ]
  %173 = trunc i64 %172 to i32
  %174 = getelementptr inbounds %struct._ccu_nm, %struct._ccu_nm* %9, i32 0, i32 3
  store i32 %173, i32* %174, align 4
  %175 = load i64*, i64** %7, align 8
  %176 = load i64, i64* %175, align 8
  %177 = load i64, i64* %6, align 8
  %178 = call i32 @ccu_nm_find_best(i64 %176, i64 %177, %struct._ccu_nm* %9)
  %179 = load i64*, i64** %7, align 8
  %180 = load i64, i64* %179, align 8
  %181 = getelementptr inbounds %struct._ccu_nm, %struct._ccu_nm* %9, i32 0, i32 5
  %182 = load i32, i32* %181, align 4
  %183 = getelementptr inbounds %struct._ccu_nm, %struct._ccu_nm* %9, i32 0, i32 4
  %184 = load i32, i32* %183, align 4
  %185 = call i64 @ccu_nm_calc_rate(i64 %180, i32 %182, i32 %184)
  store i64 %185, i64* %6, align 8
  %186 = load %struct.ccu_nm*, %struct.ccu_nm** %8, align 8
  %187 = getelementptr inbounds %struct.ccu_nm, %struct.ccu_nm* %186, i32 0, i32 3
  %188 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 8
  %190 = load i32, i32* @CCU_FEATURE_FIXED_POSTDIV, align 4
  %191 = and i32 %189, %190
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %193, label %199

193:                                              ; preds = %171
  %194 = load %struct.ccu_nm*, %struct.ccu_nm** %8, align 8
  %195 = getelementptr inbounds %struct.ccu_nm, %struct.ccu_nm* %194, i32 0, i32 0
  %196 = load i64, i64* %195, align 8
  %197 = load i64, i64* %6, align 8
  %198 = udiv i64 %197, %196
  store i64 %198, i64* %6, align 8
  br label %199

199:                                              ; preds = %193, %171
  %200 = load i64, i64* %6, align 8
  store i64 %200, i64* %4, align 8
  br label %201

201:                                              ; preds = %199, %126, %102, %78, %48
  %202 = load i64, i64* %4, align 8
  ret i64 %202
}

declare dso_local %struct.ccu_nm* @hw_to_ccu_nm(%struct.clk_hw*) #1

declare dso_local i64 @ccu_frac_helper_has_rate(%struct.TYPE_7__*, i32*, i64) #1

declare dso_local i64 @ccu_sdm_helper_has_rate(%struct.TYPE_7__*, i32*, i64) #1

declare dso_local i32 @ccu_nm_find_best(i64, i64, %struct._ccu_nm*) #1

declare dso_local i64 @ccu_nm_calc_rate(i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
