; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/perf/extr_isa207-common.c_isa207_get_constraint.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/perf/extr_isa207-common.c_isa207_get_constraint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EVENT_PMC_SHIFT = common dso_local global i32 0, align 4
@EVENT_PMC_MASK = common dso_local global i32 0, align 4
@EVENT_UNIT_SHIFT = common dso_local global i32 0, align 4
@EVENT_UNIT_MASK = common dso_local global i32 0, align 4
@EVENT_CACHE_SEL_SHIFT = common dso_local global i32 0, align 4
@EVENT_CACHE_SEL_MASK = common dso_local global i32 0, align 4
@EVENT_EBB_SHIFT = common dso_local global i32 0, align 4
@EVENT_EBB_MASK = common dso_local global i32 0, align 4
@EVENT_LINUX_MASK = common dso_local global i32 0, align 4
@CNST_NC_MASK = common dso_local global i64 0, align 8
@CNST_NC_VAL = common dso_local global i64 0, align 8
@CPU_FTR_ARCH_300 = common dso_local global i32 0, align 4
@CNST_CACHE_GROUP_MASK = common dso_local global i64 0, align 8
@CNST_CACHE_PMC4_MASK = common dso_local global i64 0, align 8
@CNST_CACHE_PMC4_VAL = common dso_local global i64 0, align 8
@EVENT_IS_L1 = common dso_local global i32 0, align 4
@CNST_L1_QUAL_MASK = common dso_local global i64 0, align 8
@CNST_SAMPLE_MASK = common dso_local global i64 0, align 8
@EVENT_SAMPLE_SHIFT = common dso_local global i32 0, align 4
@CNST_THRESH_MASK = common dso_local global i64 0, align 8
@EVENT_THRESH_SHIFT = common dso_local global i32 0, align 4
@CNST_FAB_MATCH_MASK = common dso_local global i64 0, align 8
@EVENT_THR_CTL_SHIFT = common dso_local global i32 0, align 4
@EVENT_WANTS_BHRB = common dso_local global i32 0, align 4
@CNST_IFM_MASK = common dso_local global i64 0, align 8
@EVENT_IFM_SHIFT = common dso_local global i32 0, align 4
@CNST_EBB_MASK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @isa207_get_constraint(i32 %0, i64* %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i64* %1, i64** %6, align 8
  store i64* %2, i64** %7, align 8
  store i64 0, i64* %13, align 8
  store i64 0, i64* %12, align 8
  %15 = load i32, i32* %5, align 4
  %16 = call i32 @is_event_valid(i32 %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %238

19:                                               ; preds = %3
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* @EVENT_PMC_SHIFT, align 4
  %22 = ashr i32 %20, %21
  %23 = load i32, i32* @EVENT_PMC_MASK, align 4
  %24 = and i32 %22, %23
  store i32 %24, i32* %9, align 4
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* @EVENT_UNIT_SHIFT, align 4
  %27 = ashr i32 %25, %26
  %28 = load i32, i32* @EVENT_UNIT_MASK, align 4
  %29 = and i32 %27, %28
  store i32 %29, i32* %8, align 4
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* @EVENT_CACHE_SEL_SHIFT, align 4
  %32 = ashr i32 %30, %31
  %33 = load i32, i32* @EVENT_CACHE_SEL_MASK, align 4
  %34 = and i32 %32, %33
  store i32 %34, i32* %10, align 4
  %35 = load i32, i32* %5, align 4
  %36 = load i32, i32* @EVENT_EBB_SHIFT, align 4
  %37 = ashr i32 %35, %36
  %38 = load i32, i32* @EVENT_EBB_MASK, align 4
  %39 = and i32 %37, %38
  store i32 %39, i32* %11, align 4
  %40 = load i32, i32* %9, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %69

42:                                               ; preds = %19
  %43 = load i32, i32* %9, align 4
  %44 = icmp ugt i32 %43, 6
  br i1 %44, label %45, label %46

45:                                               ; preds = %42
  store i32 -1, i32* %4, align 4
  br label %238

46:                                               ; preds = %42
  %47 = load i32, i32* %5, align 4
  %48 = load i32, i32* @EVENT_LINUX_MASK, align 4
  %49 = xor i32 %48, -1
  %50 = and i32 %47, %49
  store i32 %50, i32* %14, align 4
  %51 = load i32, i32* %9, align 4
  %52 = icmp uge i32 %51, 5
  br i1 %52, label %53, label %60

53:                                               ; preds = %46
  %54 = load i32, i32* %14, align 4
  %55 = icmp ne i32 %54, 327930
  br i1 %55, label %56, label %60

56:                                               ; preds = %53
  %57 = load i32, i32* %14, align 4
  %58 = icmp ne i32 %57, 393460
  br i1 %58, label %59, label %60

59:                                               ; preds = %56
  store i32 -1, i32* %4, align 4
  br label %238

60:                                               ; preds = %56, %53, %46
  %61 = load i32, i32* %9, align 4
  %62 = call i64 @CNST_PMC_MASK(i32 %61)
  %63 = load i64, i64* %12, align 8
  %64 = or i64 %63, %62
  store i64 %64, i64* %12, align 8
  %65 = load i32, i32* %9, align 4
  %66 = call i64 @CNST_PMC_VAL(i32 %65)
  %67 = load i64, i64* %13, align 8
  %68 = or i64 %67, %66
  store i64 %68, i64* %13, align 8
  br label %69

69:                                               ; preds = %60, %19
  %70 = load i32, i32* %9, align 4
  %71 = icmp ule i32 %70, 4
  br i1 %71, label %72, label %79

72:                                               ; preds = %69
  %73 = load i64, i64* @CNST_NC_MASK, align 8
  %74 = load i64, i64* %12, align 8
  %75 = or i64 %74, %73
  store i64 %75, i64* %12, align 8
  %76 = load i64, i64* @CNST_NC_VAL, align 8
  %77 = load i64, i64* %13, align 8
  %78 = or i64 %77, %76
  store i64 %78, i64* %13, align 8
  br label %79

79:                                               ; preds = %72, %69
  %80 = load i32, i32* %8, align 4
  %81 = icmp uge i32 %80, 6
  br i1 %81, label %82, label %115

82:                                               ; preds = %79
  %83 = load i32, i32* %8, align 4
  %84 = icmp ule i32 %83, 9
  br i1 %84, label %85, label %115

85:                                               ; preds = %82
  %86 = load i32, i32* @CPU_FTR_ARCH_300, align 4
  %87 = call i64 @cpu_has_feature(i32 %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %108

89:                                               ; preds = %85
  %90 = load i64, i64* @CNST_CACHE_GROUP_MASK, align 8
  %91 = load i64, i64* %12, align 8
  %92 = or i64 %91, %90
  store i64 %92, i64* %12, align 8
  %93 = load i32, i32* %5, align 4
  %94 = and i32 %93, 255
  %95 = call i64 @CNST_CACHE_GROUP_VAL(i32 %94)
  %96 = load i64, i64* %13, align 8
  %97 = or i64 %96, %95
  store i64 %97, i64* %13, align 8
  %98 = load i64, i64* @CNST_CACHE_PMC4_MASK, align 8
  %99 = load i64, i64* %12, align 8
  %100 = or i64 %99, %98
  store i64 %100, i64* %12, align 8
  %101 = load i32, i32* %9, align 4
  %102 = icmp eq i32 %101, 4
  br i1 %102, label %103, label %107

103:                                              ; preds = %89
  %104 = load i64, i64* @CNST_CACHE_PMC4_VAL, align 8
  %105 = load i64, i64* %13, align 8
  %106 = or i64 %105, %104
  store i64 %106, i64* %13, align 8
  br label %107

107:                                              ; preds = %103, %89
  br label %114

108:                                              ; preds = %85
  %109 = load i32, i32* %10, align 4
  %110 = and i32 %109, 7
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %113

112:                                              ; preds = %108
  store i32 -1, i32* %4, align 4
  br label %238

113:                                              ; preds = %108
  br label %114

114:                                              ; preds = %113, %107
  br label %133

115:                                              ; preds = %82, %79
  %116 = load i32, i32* @CPU_FTR_ARCH_300, align 4
  %117 = call i64 @cpu_has_feature(i32 %116)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %124, label %119

119:                                              ; preds = %115
  %120 = load i32, i32* %5, align 4
  %121 = load i32, i32* @EVENT_IS_L1, align 4
  %122 = and i32 %120, %121
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %132

124:                                              ; preds = %119, %115
  %125 = load i64, i64* @CNST_L1_QUAL_MASK, align 8
  %126 = load i64, i64* %12, align 8
  %127 = or i64 %126, %125
  store i64 %127, i64* %12, align 8
  %128 = load i32, i32* %10, align 4
  %129 = call i64 @CNST_L1_QUAL_VAL(i32 %128)
  %130 = load i64, i64* %13, align 8
  %131 = or i64 %130, %129
  store i64 %131, i64* %13, align 8
  br label %132

132:                                              ; preds = %124, %119
  br label %133

133:                                              ; preds = %132, %114
  %134 = load i32, i32* %5, align 4
  %135 = call i64 @is_event_marked(i32 %134)
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %147

137:                                              ; preds = %133
  %138 = load i64, i64* @CNST_SAMPLE_MASK, align 8
  %139 = load i64, i64* %12, align 8
  %140 = or i64 %139, %138
  store i64 %140, i64* %12, align 8
  %141 = load i32, i32* %5, align 4
  %142 = load i32, i32* @EVENT_SAMPLE_SHIFT, align 4
  %143 = ashr i32 %141, %142
  %144 = call i64 @CNST_SAMPLE_VAL(i32 %143)
  %145 = load i64, i64* %13, align 8
  %146 = or i64 %145, %144
  store i64 %146, i64* %13, align 8
  br label %147

147:                                              ; preds = %137, %133
  %148 = load i32, i32* @CPU_FTR_ARCH_300, align 4
  %149 = call i64 @cpu_has_feature(i32 %148)
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %170

151:                                              ; preds = %147
  %152 = load i32, i32* %5, align 4
  %153 = call i64 @event_is_threshold(i32 %152)
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %169

155:                                              ; preds = %151
  %156 = load i32, i32* %5, align 4
  %157 = call i64 @is_thresh_cmp_valid(i32 %156)
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %159, label %169

159:                                              ; preds = %155
  %160 = load i64, i64* @CNST_THRESH_MASK, align 8
  %161 = load i64, i64* %12, align 8
  %162 = or i64 %161, %160
  store i64 %162, i64* %12, align 8
  %163 = load i32, i32* %5, align 4
  %164 = load i32, i32* @EVENT_THRESH_SHIFT, align 4
  %165 = ashr i32 %163, %164
  %166 = call i64 @CNST_THRESH_VAL(i32 %165)
  %167 = load i64, i64* %13, align 8
  %168 = or i64 %167, %166
  store i64 %168, i64* %13, align 8
  br label %169

169:                                              ; preds = %159, %155, %151
  br label %200

170:                                              ; preds = %147
  %171 = load i32, i32* %5, align 4
  %172 = call i64 @event_is_fab_match(i32 %171)
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %174, label %184

174:                                              ; preds = %170
  %175 = load i64, i64* @CNST_FAB_MATCH_MASK, align 8
  %176 = load i64, i64* %12, align 8
  %177 = or i64 %176, %175
  store i64 %177, i64* %12, align 8
  %178 = load i32, i32* %5, align 4
  %179 = load i32, i32* @EVENT_THR_CTL_SHIFT, align 4
  %180 = ashr i32 %178, %179
  %181 = call i64 @CNST_FAB_MATCH_VAL(i32 %180)
  %182 = load i64, i64* %13, align 8
  %183 = or i64 %182, %181
  store i64 %183, i64* %13, align 8
  br label %199

184:                                              ; preds = %170
  %185 = load i32, i32* %5, align 4
  %186 = call i64 @is_thresh_cmp_valid(i32 %185)
  %187 = icmp ne i64 %186, 0
  br i1 %187, label %189, label %188

188:                                              ; preds = %184
  store i32 -1, i32* %4, align 4
  br label %238

189:                                              ; preds = %184
  %190 = load i64, i64* @CNST_THRESH_MASK, align 8
  %191 = load i64, i64* %12, align 8
  %192 = or i64 %191, %190
  store i64 %192, i64* %12, align 8
  %193 = load i32, i32* %5, align 4
  %194 = load i32, i32* @EVENT_THRESH_SHIFT, align 4
  %195 = ashr i32 %193, %194
  %196 = call i64 @CNST_THRESH_VAL(i32 %195)
  %197 = load i64, i64* %13, align 8
  %198 = or i64 %197, %196
  store i64 %198, i64* %13, align 8
  br label %199

199:                                              ; preds = %189, %174
  br label %200

200:                                              ; preds = %199, %169
  %201 = load i32, i32* %9, align 4
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %207, label %203

203:                                              ; preds = %200
  %204 = load i32, i32* %11, align 4
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %206, label %207

206:                                              ; preds = %203
  store i32 -1, i32* %4, align 4
  br label %238

207:                                              ; preds = %203, %200
  %208 = load i32, i32* %5, align 4
  %209 = load i32, i32* @EVENT_WANTS_BHRB, align 4
  %210 = and i32 %208, %209
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %212, label %226

212:                                              ; preds = %207
  %213 = load i32, i32* %11, align 4
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %216, label %215

215:                                              ; preds = %212
  store i32 -1, i32* %4, align 4
  br label %238

216:                                              ; preds = %212
  %217 = load i64, i64* @CNST_IFM_MASK, align 8
  %218 = load i64, i64* %12, align 8
  %219 = or i64 %218, %217
  store i64 %219, i64* %12, align 8
  %220 = load i32, i32* %5, align 4
  %221 = load i32, i32* @EVENT_IFM_SHIFT, align 4
  %222 = ashr i32 %220, %221
  %223 = call i64 @CNST_IFM_VAL(i32 %222)
  %224 = load i64, i64* %13, align 8
  %225 = or i64 %224, %223
  store i64 %225, i64* %13, align 8
  br label %226

226:                                              ; preds = %216, %207
  %227 = load i32, i32* %11, align 4
  %228 = call i64 @CNST_EBB_VAL(i32 %227)
  %229 = load i64, i64* %12, align 8
  %230 = or i64 %229, %228
  store i64 %230, i64* %12, align 8
  %231 = load i64, i64* @CNST_EBB_MASK, align 8
  %232 = load i64, i64* %13, align 8
  %233 = or i64 %232, %231
  store i64 %233, i64* %13, align 8
  %234 = load i64, i64* %12, align 8
  %235 = load i64*, i64** %6, align 8
  store i64 %234, i64* %235, align 8
  %236 = load i64, i64* %13, align 8
  %237 = load i64*, i64** %7, align 8
  store i64 %236, i64* %237, align 8
  store i32 0, i32* %4, align 4
  br label %238

238:                                              ; preds = %226, %215, %206, %188, %112, %59, %45, %18
  %239 = load i32, i32* %4, align 4
  ret i32 %239
}

declare dso_local i32 @is_event_valid(i32) #1

declare dso_local i64 @CNST_PMC_MASK(i32) #1

declare dso_local i64 @CNST_PMC_VAL(i32) #1

declare dso_local i64 @cpu_has_feature(i32) #1

declare dso_local i64 @CNST_CACHE_GROUP_VAL(i32) #1

declare dso_local i64 @CNST_L1_QUAL_VAL(i32) #1

declare dso_local i64 @is_event_marked(i32) #1

declare dso_local i64 @CNST_SAMPLE_VAL(i32) #1

declare dso_local i64 @event_is_threshold(i32) #1

declare dso_local i64 @is_thresh_cmp_valid(i32) #1

declare dso_local i64 @CNST_THRESH_VAL(i32) #1

declare dso_local i64 @event_is_fab_match(i32) #1

declare dso_local i64 @CNST_FAB_MATCH_VAL(i32) #1

declare dso_local i64 @CNST_IFM_VAL(i32) #1

declare dso_local i64 @CNST_EBB_VAL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
