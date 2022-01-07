; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/perf/extr_power7-pmu.c_power7_compute_mmcr.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/perf/extr_power7-pmu.c_power7_compute_mmcr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_event = type { i32 }

@MMCRA_SDAR_DCACHE_MISS = common dso_local global i64 0, align 8
@MMCRA_SDAR_ERAT_MISS = common dso_local global i64 0, align 8
@PM_PMC_SH = common dso_local global i32 0, align 4
@PM_PMC_MSK = common dso_local global i32 0, align 4
@PM_UNIT_SH = common dso_local global i32 0, align 4
@PM_UNIT_MSK = common dso_local global i32 0, align 4
@PM_COMBINE_SH = common dso_local global i32 0, align 4
@PM_COMBINE_MSK = common dso_local global i32 0, align 4
@PM_L2SEL_SH = common dso_local global i32 0, align 4
@PM_L2SEL_MSK = common dso_local global i32 0, align 4
@PM_PMCSEL_MSK = common dso_local global i32 0, align 4
@MMCR1_TTM0SEL_SH = common dso_local global i32 0, align 4
@MMCR1_PMC1_COMBINE_SH = common dso_local global i32 0, align 4
@MMCR1_L2SEL_SH = common dso_local global i64 0, align 8
@MMCRA_SAMPLE_ENABLE = common dso_local global i64 0, align 8
@MMCR0_PMC1CE = common dso_local global i64 0, align 8
@MMCR0_PMCjCE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32*, i64*, %struct.perf_event**)* @power7_compute_mmcr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @power7_compute_mmcr(i32* %0, i32 %1, i32* %2, i64* %3, %struct.perf_event** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca %struct.perf_event**, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i64* %3, i64** %10, align 8
  store %struct.perf_event** %4, %struct.perf_event*** %11, align 8
  store i64 0, i64* %12, align 8
  %21 = load i64, i64* @MMCRA_SDAR_DCACHE_MISS, align 8
  %22 = load i64, i64* @MMCRA_SDAR_ERAT_MISS, align 8
  %23 = or i64 %21, %22
  store i64 %23, i64* %13, align 8
  store i32 0, i32* %19, align 4
  store i32 0, i32* %20, align 4
  br label %24

24:                                               ; preds = %59, %5
  %25 = load i32, i32* %20, align 4
  %26 = load i32, i32* %8, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %62

28:                                               ; preds = %24
  %29 = load i32*, i32** %7, align 8
  %30 = load i32, i32* %20, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %29, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @PM_PMC_SH, align 4
  %35 = lshr i32 %33, %34
  %36 = load i32, i32* @PM_PMC_MSK, align 4
  %37 = and i32 %35, %36
  store i32 %37, i32* %14, align 4
  %38 = load i32, i32* %14, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %58

40:                                               ; preds = %28
  %41 = load i32, i32* %14, align 4
  %42 = icmp ugt i32 %41, 6
  br i1 %42, label %43, label %44

43:                                               ; preds = %40
  store i32 -1, i32* %6, align 4
  br label %228

44:                                               ; preds = %40
  %45 = load i32, i32* %19, align 4
  %46 = load i32, i32* %14, align 4
  %47 = sub i32 %46, 1
  %48 = shl i32 1, %47
  %49 = and i32 %45, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %44
  store i32 -1, i32* %6, align 4
  br label %228

52:                                               ; preds = %44
  %53 = load i32, i32* %14, align 4
  %54 = sub i32 %53, 1
  %55 = shl i32 1, %54
  %56 = load i32, i32* %19, align 4
  %57 = or i32 %56, %55
  store i32 %57, i32* %19, align 4
  br label %58

58:                                               ; preds = %52, %28
  br label %59

59:                                               ; preds = %58
  %60 = load i32, i32* %20, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %20, align 4
  br label %24

62:                                               ; preds = %24
  store i32 0, i32* %20, align 4
  br label %63

63:                                               ; preds = %198, %62
  %64 = load i32, i32* %20, align 4
  %65 = load i32, i32* %8, align 4
  %66 = icmp slt i32 %64, %65
  br i1 %66, label %67, label %201

67:                                               ; preds = %63
  %68 = load i32*, i32** %7, align 8
  %69 = load i32, i32* %20, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %68, i64 %70
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @PM_PMC_SH, align 4
  %74 = lshr i32 %72, %73
  %75 = load i32, i32* @PM_PMC_MSK, align 4
  %76 = and i32 %74, %75
  store i32 %76, i32* %14, align 4
  %77 = load i32*, i32** %7, align 8
  %78 = load i32, i32* %20, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %77, i64 %79
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* @PM_UNIT_SH, align 4
  %83 = lshr i32 %81, %82
  %84 = load i32, i32* @PM_UNIT_MSK, align 4
  %85 = and i32 %83, %84
  store i32 %85, i32* %15, align 4
  %86 = load i32*, i32** %7, align 8
  %87 = load i32, i32* %20, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i32, i32* %86, i64 %88
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* @PM_COMBINE_SH, align 4
  %92 = lshr i32 %90, %91
  %93 = load i32, i32* @PM_COMBINE_MSK, align 4
  %94 = and i32 %92, %93
  store i32 %94, i32* %16, align 4
  %95 = load i32*, i32** %7, align 8
  %96 = load i32, i32* %20, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i32, i32* %95, i64 %97
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* @PM_L2SEL_SH, align 4
  %101 = lshr i32 %99, %100
  %102 = load i32, i32* @PM_L2SEL_MSK, align 4
  %103 = and i32 %101, %102
  store i32 %103, i32* %17, align 4
  %104 = load i32*, i32** %7, align 8
  %105 = load i32, i32* %20, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i32, i32* %104, i64 %106
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* @PM_PMCSEL_MSK, align 4
  %110 = and i32 %108, %109
  store i32 %110, i32* %18, align 4
  %111 = load i32, i32* %14, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %137, label %113

113:                                              ; preds = %67
  store i32 0, i32* %14, align 4
  br label %114

114:                                              ; preds = %125, %113
  %115 = load i32, i32* %14, align 4
  %116 = icmp ult i32 %115, 4
  br i1 %116, label %117, label %128

117:                                              ; preds = %114
  %118 = load i32, i32* %19, align 4
  %119 = load i32, i32* %14, align 4
  %120 = shl i32 1, %119
  %121 = and i32 %118, %120
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %124, label %123

123:                                              ; preds = %117
  br label %128

124:                                              ; preds = %117
  br label %125

125:                                              ; preds = %124
  %126 = load i32, i32* %14, align 4
  %127 = add i32 %126, 1
  store i32 %127, i32* %14, align 4
  br label %114

128:                                              ; preds = %123, %114
  %129 = load i32, i32* %14, align 4
  %130 = icmp uge i32 %129, 4
  br i1 %130, label %131, label %132

131:                                              ; preds = %128
  store i32 -1, i32* %6, align 4
  br label %228

132:                                              ; preds = %128
  %133 = load i32, i32* %14, align 4
  %134 = shl i32 1, %133
  %135 = load i32, i32* %19, align 4
  %136 = or i32 %135, %134
  store i32 %136, i32* %19, align 4
  br label %140

137:                                              ; preds = %67
  %138 = load i32, i32* %14, align 4
  %139 = add i32 %138, -1
  store i32 %139, i32* %14, align 4
  br label %140

140:                                              ; preds = %137, %132
  %141 = load i32, i32* %14, align 4
  %142 = icmp ule i32 %141, 3
  br i1 %142, label %143, label %180

143:                                              ; preds = %140
  %144 = load i32, i32* %15, align 4
  %145 = zext i32 %144 to i64
  %146 = load i32, i32* @MMCR1_TTM0SEL_SH, align 4
  %147 = load i32, i32* %14, align 4
  %148 = mul i32 4, %147
  %149 = sub i32 %146, %148
  %150 = zext i32 %149 to i64
  %151 = shl i64 %145, %150
  %152 = load i64, i64* %12, align 8
  %153 = or i64 %152, %151
  store i64 %153, i64* %12, align 8
  %154 = load i32, i32* %16, align 4
  %155 = zext i32 %154 to i64
  %156 = load i32, i32* @MMCR1_PMC1_COMBINE_SH, align 4
  %157 = load i32, i32* %14, align 4
  %158 = sub i32 %156, %157
  %159 = zext i32 %158 to i64
  %160 = shl i64 %155, %159
  %161 = load i64, i64* %12, align 8
  %162 = or i64 %161, %160
  store i64 %162, i64* %12, align 8
  %163 = load i32, i32* %18, align 4
  %164 = load i32, i32* %14, align 4
  %165 = call i32 @MMCR1_PMCSEL_SH(i32 %164)
  %166 = shl i32 %163, %165
  %167 = zext i32 %166 to i64
  %168 = load i64, i64* %12, align 8
  %169 = or i64 %168, %167
  store i64 %169, i64* %12, align 8
  %170 = load i32, i32* %15, align 4
  %171 = icmp eq i32 %170, 6
  br i1 %171, label %172, label %179

172:                                              ; preds = %143
  %173 = load i32, i32* %17, align 4
  %174 = zext i32 %173 to i64
  %175 = load i64, i64* @MMCR1_L2SEL_SH, align 8
  %176 = shl i64 %174, %175
  %177 = load i64, i64* %12, align 8
  %178 = or i64 %177, %176
  store i64 %178, i64* %12, align 8
  br label %179

179:                                              ; preds = %172, %143
  br label %180

180:                                              ; preds = %179, %140
  %181 = load i32*, i32** %7, align 8
  %182 = load i32, i32* %20, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds i32, i32* %181, i64 %183
  %185 = load i32, i32* %184, align 4
  %186 = call i64 @power7_marked_instr_event(i32 %185)
  %187 = icmp ne i64 %186, 0
  br i1 %187, label %188, label %192

188:                                              ; preds = %180
  %189 = load i64, i64* @MMCRA_SAMPLE_ENABLE, align 8
  %190 = load i64, i64* %13, align 8
  %191 = or i64 %190, %189
  store i64 %191, i64* %13, align 8
  br label %192

192:                                              ; preds = %188, %180
  %193 = load i32, i32* %14, align 4
  %194 = load i32*, i32** %9, align 8
  %195 = load i32, i32* %20, align 4
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds i32, i32* %194, i64 %196
  store i32 %193, i32* %197, align 4
  br label %198

198:                                              ; preds = %192
  %199 = load i32, i32* %20, align 4
  %200 = add nsw i32 %199, 1
  store i32 %200, i32* %20, align 4
  br label %63

201:                                              ; preds = %63
  %202 = load i64*, i64** %10, align 8
  %203 = getelementptr inbounds i64, i64* %202, i64 0
  store i64 0, i64* %203, align 8
  %204 = load i32, i32* %19, align 4
  %205 = and i32 %204, 1
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %207, label %211

207:                                              ; preds = %201
  %208 = load i64, i64* @MMCR0_PMC1CE, align 8
  %209 = load i64*, i64** %10, align 8
  %210 = getelementptr inbounds i64, i64* %209, i64 0
  store i64 %208, i64* %210, align 8
  br label %211

211:                                              ; preds = %207, %201
  %212 = load i32, i32* %19, align 4
  %213 = and i32 %212, 62
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %215, label %221

215:                                              ; preds = %211
  %216 = load i64, i64* @MMCR0_PMCjCE, align 8
  %217 = load i64*, i64** %10, align 8
  %218 = getelementptr inbounds i64, i64* %217, i64 0
  %219 = load i64, i64* %218, align 8
  %220 = or i64 %219, %216
  store i64 %220, i64* %218, align 8
  br label %221

221:                                              ; preds = %215, %211
  %222 = load i64, i64* %12, align 8
  %223 = load i64*, i64** %10, align 8
  %224 = getelementptr inbounds i64, i64* %223, i64 1
  store i64 %222, i64* %224, align 8
  %225 = load i64, i64* %13, align 8
  %226 = load i64*, i64** %10, align 8
  %227 = getelementptr inbounds i64, i64* %226, i64 2
  store i64 %225, i64* %227, align 8
  store i32 0, i32* %6, align 4
  br label %228

228:                                              ; preds = %221, %131, %51, %43
  %229 = load i32, i32* %6, align 4
  ret i32 %229
}

declare dso_local i32 @MMCR1_PMCSEL_SH(i32) #1

declare dso_local i64 @power7_marked_instr_event(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
