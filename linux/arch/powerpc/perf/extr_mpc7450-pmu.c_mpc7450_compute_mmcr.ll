; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/perf/extr_mpc7450-pmu.c_mpc7450_compute_mmcr.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/perf/extr_mpc7450-pmu.c_mpc7450_compute_mmcr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_event = type { i32 }

@N_CLASSES = common dso_local global i32 0, align 4
@N_COUNTER = common dso_local global i32 0, align 4
@PM_PMC_SH = common dso_local global i32 0, align 4
@PM_PMC_MSK = common dso_local global i32 0, align 4
@classmap = common dso_local global i32* null, align 8
@PM_THRESH_SH = common dso_local global i32 0, align 4
@PM_THRESH_MSK = common dso_local global i32 0, align 4
@PM_THRMULT_MSKS = common dso_local global i32 0, align 4
@pmcsel_mask = common dso_local global i32* null, align 8
@pmcsel_shift = common dso_local global i32* null, align 8
@MMCR0_PMC1CE = common dso_local global i32 0, align 4
@MMCR0_PMCnCE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32*, i64*, %struct.perf_event**)* @mpc7450_compute_mmcr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mpc7450_compute_mmcr(i32* %0, i32 %1, i32* %2, i64* %3, %struct.perf_event** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca %struct.perf_event**, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i64* %3, i64** %10, align 8
  store %struct.perf_event** %4, %struct.perf_event*** %11, align 8
  %29 = load i32, i32* @N_CLASSES, align 4
  %30 = zext i32 %29 to i64
  %31 = load i32, i32* @N_COUNTER, align 4
  %32 = zext i32 %31 to i64
  %33 = call i8* @llvm.stacksave()
  store i8* %33, i8** %12, align 8
  %34 = mul nuw i64 %30, %32
  %35 = alloca i64, i64 %34, align 16
  store i64 %30, i64* %13, align 8
  store i64 %32, i64* %14, align 8
  %36 = load i32, i32* @N_CLASSES, align 4
  %37 = zext i32 %36 to i64
  %38 = alloca i32, i64 %37, align 16
  store i64 %37, i64* %15, align 8
  store i32 0, i32* %20, align 4
  store i32 0, i32* %22, align 4
  store i32 0, i32* %23, align 4
  store i32 0, i32* %24, align 4
  %39 = load i32, i32* %8, align 4
  %40 = load i32, i32* @N_COUNTER, align 4
  %41 = icmp sgt i32 %39, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %5
  store i32 -1, i32* %6, align 4
  store i32 1, i32* %28, align 4
  br label %250

43:                                               ; preds = %5
  store i32 0, i32* %16, align 4
  br label %44

44:                                               ; preds = %52, %43
  %45 = load i32, i32* %16, align 4
  %46 = load i32, i32* @N_CLASSES, align 4
  %47 = icmp slt i32 %45, %46
  br i1 %47, label %48, label %55

48:                                               ; preds = %44
  %49 = load i32, i32* %16, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %38, i64 %50
  store i32 0, i32* %51, align 4
  br label %52

52:                                               ; preds = %48
  %53 = load i32, i32* %16, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %16, align 4
  br label %44

55:                                               ; preds = %44
  store i32 0, i32* %16, align 4
  br label %56

56:                                               ; preds = %85, %55
  %57 = load i32, i32* %16, align 4
  %58 = load i32, i32* %8, align 4
  %59 = icmp slt i32 %57, %58
  br i1 %59, label %60, label %88

60:                                               ; preds = %56
  %61 = load i32*, i32** %7, align 8
  %62 = load i32, i32* %16, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %61, i64 %63
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @mpc7450_classify_event(i32 %65)
  store i32 %66, i32* %18, align 4
  %67 = load i32, i32* %18, align 4
  %68 = icmp slt i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %60
  store i32 -1, i32* %6, align 4
  store i32 1, i32* %28, align 4
  br label %250

70:                                               ; preds = %60
  %71 = load i32, i32* %18, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %38, i64 %72
  %74 = load i32, i32* %73, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %73, align 4
  store i32 %74, i32* %17, align 4
  %76 = load i32, i32* %16, align 4
  %77 = sext i32 %76 to i64
  %78 = load i32, i32* %18, align 4
  %79 = sext i32 %78 to i64
  %80 = mul nsw i64 %79, %32
  %81 = getelementptr inbounds i64, i64* %35, i64 %80
  %82 = load i32, i32* %17, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i64, i64* %81, i64 %83
  store i64 %77, i64* %84, align 8
  br label %85

85:                                               ; preds = %70
  %86 = load i32, i32* %16, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %16, align 4
  br label %56

88:                                               ; preds = %56
  %89 = load i32, i32* @N_CLASSES, align 4
  %90 = sub nsw i32 %89, 1
  store i32 %90, i32* %18, align 4
  br label %91

91:                                               ; preds = %218, %88
  %92 = load i32, i32* %18, align 4
  %93 = icmp sge i32 %92, 0
  br i1 %93, label %94, label %221

94:                                               ; preds = %91
  store i32 0, i32* %16, align 4
  br label %95

95:                                               ; preds = %214, %94
  %96 = load i32, i32* %16, align 4
  %97 = load i32, i32* %18, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i32, i32* %38, i64 %98
  %100 = load i32, i32* %99, align 4
  %101 = icmp slt i32 %96, %100
  br i1 %101, label %102, label %217

102:                                              ; preds = %95
  %103 = load i32*, i32** %7, align 8
  %104 = load i32, i32* %18, align 4
  %105 = sext i32 %104 to i64
  %106 = mul nsw i64 %105, %32
  %107 = getelementptr inbounds i64, i64* %35, i64 %106
  %108 = load i32, i32* %16, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i64, i64* %107, i64 %109
  %111 = load i64, i64* %110, align 8
  %112 = getelementptr inbounds i32, i32* %103, i64 %111
  %113 = load i32, i32* %112, align 4
  store i32 %113, i32* %25, align 4
  %114 = load i32, i32* %18, align 4
  %115 = icmp eq i32 %114, 4
  br i1 %115, label %116, label %130

116:                                              ; preds = %102
  %117 = load i32, i32* %25, align 4
  %118 = load i32, i32* @PM_PMC_SH, align 4
  %119 = ashr i32 %117, %118
  %120 = load i32, i32* @PM_PMC_MSK, align 4
  %121 = and i32 %119, %120
  store i32 %121, i32* %26, align 4
  %122 = load i32, i32* %20, align 4
  %123 = load i32, i32* %26, align 4
  %124 = sub nsw i32 %123, 1
  %125 = shl i32 1, %124
  %126 = and i32 %122, %125
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %129

128:                                              ; preds = %116
  store i32 -1, i32* %6, align 4
  store i32 1, i32* %28, align 4
  br label %250

129:                                              ; preds = %116
  br label %145

130:                                              ; preds = %102
  %131 = load i32*, i32** @classmap, align 8
  %132 = load i32, i32* %18, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i32, i32* %131, i64 %133
  %135 = load i32, i32* %134, align 4
  %136 = load i32, i32* %20, align 4
  %137 = xor i32 %136, -1
  %138 = and i32 %135, %137
  store i32 %138, i32* %21, align 4
  %139 = load i32, i32* %21, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %142, label %141

141:                                              ; preds = %130
  store i32 -1, i32* %6, align 4
  store i32 1, i32* %28, align 4
  br label %250

142:                                              ; preds = %130
  %143 = load i32, i32* %21, align 4
  %144 = call i32 @ffs(i32 %143)
  store i32 %144, i32* %26, align 4
  br label %145

145:                                              ; preds = %142, %129
  %146 = load i32, i32* %26, align 4
  %147 = sub nsw i32 %146, 1
  %148 = shl i32 1, %147
  %149 = load i32, i32* %20, align 4
  %150 = or i32 %149, %148
  store i32 %150, i32* %20, align 4
  %151 = load i32, i32* %25, align 4
  %152 = call i32 @mpc7450_threshold_use(i32 %151)
  store i32 %152, i32* %19, align 4
  %153 = load i32, i32* %19, align 4
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %174

155:                                              ; preds = %145
  %156 = load i32, i32* %25, align 4
  %157 = load i32, i32* @PM_THRESH_SH, align 4
  %158 = ashr i32 %156, %157
  %159 = load i32, i32* @PM_THRESH_MSK, align 4
  %160 = and i32 %158, %159
  store i32 %160, i32* %27, align 4
  %161 = load i32, i32* %27, align 4
  %162 = shl i32 %161, 16
  %163 = load i32, i32* %22, align 4
  %164 = or i32 %163, %162
  store i32 %164, i32* %22, align 4
  %165 = load i32, i32* %19, align 4
  %166 = icmp eq i32 %165, 2
  br i1 %166, label %167, label %173

167:                                              ; preds = %155
  %168 = load i32, i32* %25, align 4
  %169 = load i32, i32* @PM_THRMULT_MSKS, align 4
  %170 = and i32 %168, %169
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %173

172:                                              ; preds = %167
  store i32 -2147483648, i32* %24, align 4
  br label %173

173:                                              ; preds = %172, %167, %155
  br label %174

174:                                              ; preds = %173, %145
  %175 = load i32*, i32** @pmcsel_mask, align 8
  %176 = load i32, i32* %26, align 4
  %177 = sub nsw i32 %176, 1
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds i32, i32* %175, i64 %178
  %180 = load i32, i32* %179, align 4
  %181 = load i32, i32* %25, align 4
  %182 = and i32 %181, %180
  store i32 %182, i32* %25, align 4
  %183 = load i32*, i32** @pmcsel_shift, align 8
  %184 = load i32, i32* %26, align 4
  %185 = sub nsw i32 %184, 1
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds i32, i32* %183, i64 %186
  %188 = load i32, i32* %187, align 4
  %189 = load i32, i32* %25, align 4
  %190 = shl i32 %189, %188
  store i32 %190, i32* %25, align 4
  %191 = load i32, i32* %26, align 4
  %192 = icmp sle i32 %191, 2
  br i1 %192, label %193, label %197

193:                                              ; preds = %174
  %194 = load i32, i32* %25, align 4
  %195 = load i32, i32* %22, align 4
  %196 = or i32 %195, %194
  store i32 %196, i32* %22, align 4
  br label %201

197:                                              ; preds = %174
  %198 = load i32, i32* %25, align 4
  %199 = load i32, i32* %23, align 4
  %200 = or i32 %199, %198
  store i32 %200, i32* %23, align 4
  br label %201

201:                                              ; preds = %197, %193
  %202 = load i32, i32* %26, align 4
  %203 = sub nsw i32 %202, 1
  %204 = load i32*, i32** %9, align 8
  %205 = load i32, i32* %18, align 4
  %206 = sext i32 %205 to i64
  %207 = mul nsw i64 %206, %32
  %208 = getelementptr inbounds i64, i64* %35, i64 %207
  %209 = load i32, i32* %16, align 4
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds i64, i64* %208, i64 %210
  %212 = load i64, i64* %211, align 8
  %213 = getelementptr inbounds i32, i32* %204, i64 %212
  store i32 %203, i32* %213, align 4
  br label %214

214:                                              ; preds = %201
  %215 = load i32, i32* %16, align 4
  %216 = add nsw i32 %215, 1
  store i32 %216, i32* %16, align 4
  br label %95

217:                                              ; preds = %95
  br label %218

218:                                              ; preds = %217
  %219 = load i32, i32* %18, align 4
  %220 = add nsw i32 %219, -1
  store i32 %220, i32* %18, align 4
  br label %91

221:                                              ; preds = %91
  %222 = load i32, i32* %20, align 4
  %223 = and i32 %222, 1
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %225, label %229

225:                                              ; preds = %221
  %226 = load i32, i32* @MMCR0_PMC1CE, align 4
  %227 = load i32, i32* %22, align 4
  %228 = or i32 %227, %226
  store i32 %228, i32* %22, align 4
  br label %229

229:                                              ; preds = %225, %221
  %230 = load i32, i32* %20, align 4
  %231 = and i32 %230, 62
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %233, label %237

233:                                              ; preds = %229
  %234 = load i32, i32* @MMCR0_PMCnCE, align 4
  %235 = load i32, i32* %22, align 4
  %236 = or i32 %235, %234
  store i32 %236, i32* %22, align 4
  br label %237

237:                                              ; preds = %233, %229
  %238 = load i32, i32* %22, align 4
  %239 = sext i32 %238 to i64
  %240 = load i64*, i64** %10, align 8
  %241 = getelementptr inbounds i64, i64* %240, i64 0
  store i64 %239, i64* %241, align 8
  %242 = load i32, i32* %23, align 4
  %243 = sext i32 %242 to i64
  %244 = load i64*, i64** %10, align 8
  %245 = getelementptr inbounds i64, i64* %244, i64 1
  store i64 %243, i64* %245, align 8
  %246 = load i32, i32* %24, align 4
  %247 = sext i32 %246 to i64
  %248 = load i64*, i64** %10, align 8
  %249 = getelementptr inbounds i64, i64* %248, i64 2
  store i64 %247, i64* %249, align 8
  store i32 0, i32* %6, align 4
  store i32 1, i32* %28, align 4
  br label %250

250:                                              ; preds = %237, %141, %128, %69, %42
  %251 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %251)
  %252 = load i32, i32* %6, align 4
  ret i32 %252
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @mpc7450_classify_event(i32) #2

declare dso_local i32 @ffs(i32) #2

declare dso_local i32 @mpc7450_threshold_use(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
