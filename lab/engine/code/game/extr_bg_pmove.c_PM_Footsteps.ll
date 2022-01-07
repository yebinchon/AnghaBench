; ModuleID = '/home/carl/AnghaBench/lab/engine/code/game/extr_bg_pmove.c_PM_Footsteps.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/game/extr_bg_pmove.c_PM_Footsteps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, i32, %struct.TYPE_6__*, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32*, i64, i32, i32, i64* }
%struct.TYPE_5__ = type { i32, i32, i32 }
%struct.TYPE_7__ = type { float }

@pm = common dso_local global %struct.TYPE_8__* null, align 8
@ENTITYNUM_NONE = common dso_local global i64 0, align 8
@PW_INVULNERABILITY = common dso_local global i64 0, align 8
@LEGS_IDLECR = common dso_local global i32 0, align 4
@LEGS_SWIM = common dso_local global i32 0, align 4
@PMF_DUCKED = common dso_local global i32 0, align 4
@LEGS_IDLE = common dso_local global i32 0, align 4
@qfalse = common dso_local global i64 0, align 8
@PMF_BACKWARDS_RUN = common dso_local global i32 0, align 4
@LEGS_BACKCR = common dso_local global i32 0, align 4
@LEGS_WALKCR = common dso_local global i32 0, align 4
@BUTTON_WALKING = common dso_local global i32 0, align 4
@LEGS_BACK = common dso_local global i32 0, align 4
@LEGS_RUN = common dso_local global i32 0, align 4
@qtrue = common dso_local global i64 0, align 8
@LEGS_BACKWALK = common dso_local global i32 0, align 4
@LEGS_WALK = common dso_local global i32 0, align 4
@pml = common dso_local global %struct.TYPE_7__ zeroinitializer, align 4
@EV_FOOTSPLASH = common dso_local global i32 0, align 4
@EV_SWIM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @PM_Footsteps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @PM_Footsteps() #0 {
  %1 = alloca float, align 4
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = load %struct.TYPE_8__*, %struct.TYPE_8__** @pm, align 8
  %5 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %4, i32 0, i32 3
  %6 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 0
  %8 = load i32*, i32** %7, align 8
  %9 = getelementptr inbounds i32, i32* %8, i64 0
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** @pm, align 8
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 3
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 0
  %17 = load i32, i32* %16, align 4
  %18 = mul nsw i32 %10, %17
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** @pm, align 8
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 3
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 1
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** @pm, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 3
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 1
  %32 = load i32, i32* %31, align 4
  %33 = mul nsw i32 %25, %32
  %34 = add nsw i32 %18, %33
  %35 = call i32 @sqrt(i32 %34)
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** @pm, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 8
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** @pm, align 8
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 3
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @ENTITYNUM_NONE, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %67

45:                                               ; preds = %0
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** @pm, align 8
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 3
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 4
  %50 = load i64*, i64** %49, align 8
  %51 = load i64, i64* @PW_INVULNERABILITY, align 8
  %52 = getelementptr inbounds i64, i64* %50, i64 %51
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %45
  %56 = load i32, i32* @LEGS_IDLECR, align 4
  %57 = call i32 @PM_ContinueLegsAnim(i32 %56)
  br label %58

58:                                               ; preds = %55, %45
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** @pm, align 8
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = icmp sgt i32 %61, 1
  br i1 %62, label %63, label %66

63:                                               ; preds = %58
  %64 = load i32, i32* @LEGS_SWIM, align 4
  %65 = call i32 @PM_ContinueLegsAnim(i32 %64)
  br label %66

66:                                               ; preds = %63, %58
  br label %245

67:                                               ; preds = %0
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** @pm, align 8
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 4
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 8
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %105, label %73

73:                                               ; preds = %67
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** @pm, align 8
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 4
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %105, label %79

79:                                               ; preds = %73
  %80 = load %struct.TYPE_8__*, %struct.TYPE_8__** @pm, align 8
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = icmp slt i32 %82, 5
  br i1 %83, label %84, label %104

84:                                               ; preds = %79
  %85 = load %struct.TYPE_8__*, %struct.TYPE_8__** @pm, align 8
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 3
  %87 = load %struct.TYPE_6__*, %struct.TYPE_6__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 2
  store i32 0, i32* %88, align 8
  %89 = load %struct.TYPE_8__*, %struct.TYPE_8__** @pm, align 8
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 3
  %91 = load %struct.TYPE_6__*, %struct.TYPE_6__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 3
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* @PMF_DUCKED, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %100

97:                                               ; preds = %84
  %98 = load i32, i32* @LEGS_IDLECR, align 4
  %99 = call i32 @PM_ContinueLegsAnim(i32 %98)
  br label %103

100:                                              ; preds = %84
  %101 = load i32, i32* @LEGS_IDLE, align 4
  %102 = call i32 @PM_ContinueLegsAnim(i32 %101)
  br label %103

103:                                              ; preds = %100, %97
  br label %104

104:                                              ; preds = %103, %79
  br label %245

105:                                              ; preds = %73, %67
  %106 = load i64, i64* @qfalse, align 8
  store i64 %106, i64* %3, align 8
  %107 = load %struct.TYPE_8__*, %struct.TYPE_8__** @pm, align 8
  %108 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %107, i32 0, i32 3
  %109 = load %struct.TYPE_6__*, %struct.TYPE_6__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i32 0, i32 3
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* @PMF_DUCKED, align 4
  %113 = and i32 %111, %112
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %131

115:                                              ; preds = %105
  store float 5.000000e-01, float* %1, align 4
  %116 = load %struct.TYPE_8__*, %struct.TYPE_8__** @pm, align 8
  %117 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %116, i32 0, i32 3
  %118 = load %struct.TYPE_6__*, %struct.TYPE_6__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i32 0, i32 3
  %120 = load i32, i32* %119, align 4
  %121 = load i32, i32* @PMF_BACKWARDS_RUN, align 4
  %122 = and i32 %120, %121
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %127

124:                                              ; preds = %115
  %125 = load i32, i32* @LEGS_BACKCR, align 4
  %126 = call i32 @PM_ContinueLegsAnim(i32 %125)
  br label %130

127:                                              ; preds = %115
  %128 = load i32, i32* @LEGS_WALKCR, align 4
  %129 = call i32 @PM_ContinueLegsAnim(i32 %128)
  br label %130

130:                                              ; preds = %127, %124
  br label %173

131:                                              ; preds = %105
  %132 = load %struct.TYPE_8__*, %struct.TYPE_8__** @pm, align 8
  %133 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %132, i32 0, i32 4
  %134 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = load i32, i32* @BUTTON_WALKING, align 4
  %137 = and i32 %135, %136
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %156, label %139

139:                                              ; preds = %131
  store float 0x3FD99999A0000000, float* %1, align 4
  %140 = load %struct.TYPE_8__*, %struct.TYPE_8__** @pm, align 8
  %141 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %140, i32 0, i32 3
  %142 = load %struct.TYPE_6__*, %struct.TYPE_6__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %142, i32 0, i32 3
  %144 = load i32, i32* %143, align 4
  %145 = load i32, i32* @PMF_BACKWARDS_RUN, align 4
  %146 = and i32 %144, %145
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %151

148:                                              ; preds = %139
  %149 = load i32, i32* @LEGS_BACK, align 4
  %150 = call i32 @PM_ContinueLegsAnim(i32 %149)
  br label %154

151:                                              ; preds = %139
  %152 = load i32, i32* @LEGS_RUN, align 4
  %153 = call i32 @PM_ContinueLegsAnim(i32 %152)
  br label %154

154:                                              ; preds = %151, %148
  %155 = load i64, i64* @qtrue, align 8
  store i64 %155, i64* %3, align 8
  br label %172

156:                                              ; preds = %131
  store float 0x3FD3333340000000, float* %1, align 4
  %157 = load %struct.TYPE_8__*, %struct.TYPE_8__** @pm, align 8
  %158 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %157, i32 0, i32 3
  %159 = load %struct.TYPE_6__*, %struct.TYPE_6__** %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %159, i32 0, i32 3
  %161 = load i32, i32* %160, align 4
  %162 = load i32, i32* @PMF_BACKWARDS_RUN, align 4
  %163 = and i32 %161, %162
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %168

165:                                              ; preds = %156
  %166 = load i32, i32* @LEGS_BACKWALK, align 4
  %167 = call i32 @PM_ContinueLegsAnim(i32 %166)
  br label %171

168:                                              ; preds = %156
  %169 = load i32, i32* @LEGS_WALK, align 4
  %170 = call i32 @PM_ContinueLegsAnim(i32 %169)
  br label %171

171:                                              ; preds = %168, %165
  br label %172

172:                                              ; preds = %171, %154
  br label %173

173:                                              ; preds = %172, %130
  %174 = load %struct.TYPE_8__*, %struct.TYPE_8__** @pm, align 8
  %175 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %174, i32 0, i32 3
  %176 = load %struct.TYPE_6__*, %struct.TYPE_6__** %175, align 8
  %177 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %176, i32 0, i32 2
  %178 = load i32, i32* %177, align 8
  store i32 %178, i32* %2, align 4
  %179 = load i32, i32* %2, align 4
  %180 = sitofp i32 %179 to float
  %181 = load float, float* %1, align 4
  %182 = load float, float* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @pml, i32 0, i32 0), align 4
  %183 = fmul float %181, %182
  %184 = fadd float %180, %183
  %185 = fptosi float %184 to i32
  %186 = and i32 %185, 255
  %187 = load %struct.TYPE_8__*, %struct.TYPE_8__** @pm, align 8
  %188 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %187, i32 0, i32 3
  %189 = load %struct.TYPE_6__*, %struct.TYPE_6__** %188, align 8
  %190 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %189, i32 0, i32 2
  store i32 %186, i32* %190, align 8
  %191 = load i32, i32* %2, align 4
  %192 = add nsw i32 %191, 64
  %193 = load %struct.TYPE_8__*, %struct.TYPE_8__** @pm, align 8
  %194 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %193, i32 0, i32 3
  %195 = load %struct.TYPE_6__*, %struct.TYPE_6__** %194, align 8
  %196 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %195, i32 0, i32 2
  %197 = load i32, i32* %196, align 8
  %198 = add nsw i32 %197, 64
  %199 = xor i32 %192, %198
  %200 = and i32 %199, 128
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %202, label %245

202:                                              ; preds = %173
  %203 = load %struct.TYPE_8__*, %struct.TYPE_8__** @pm, align 8
  %204 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %203, i32 0, i32 1
  %205 = load i32, i32* %204, align 4
  %206 = icmp eq i32 %205, 0
  br i1 %206, label %207, label %219

207:                                              ; preds = %202
  %208 = load i64, i64* %3, align 8
  %209 = icmp ne i64 %208, 0
  br i1 %209, label %210, label %218

210:                                              ; preds = %207
  %211 = load %struct.TYPE_8__*, %struct.TYPE_8__** @pm, align 8
  %212 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %211, i32 0, i32 2
  %213 = load i32, i32* %212, align 8
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %218, label %215

215:                                              ; preds = %210
  %216 = call i32 (...) @PM_FootstepForSurface()
  %217 = call i32 @PM_AddEvent(i32 %216)
  br label %218

218:                                              ; preds = %215, %210, %207
  br label %244

219:                                              ; preds = %202
  %220 = load %struct.TYPE_8__*, %struct.TYPE_8__** @pm, align 8
  %221 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %220, i32 0, i32 1
  %222 = load i32, i32* %221, align 4
  %223 = icmp eq i32 %222, 1
  br i1 %223, label %224, label %227

224:                                              ; preds = %219
  %225 = load i32, i32* @EV_FOOTSPLASH, align 4
  %226 = call i32 @PM_AddEvent(i32 %225)
  br label %243

227:                                              ; preds = %219
  %228 = load %struct.TYPE_8__*, %struct.TYPE_8__** @pm, align 8
  %229 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %228, i32 0, i32 1
  %230 = load i32, i32* %229, align 4
  %231 = icmp eq i32 %230, 2
  br i1 %231, label %232, label %235

232:                                              ; preds = %227
  %233 = load i32, i32* @EV_SWIM, align 4
  %234 = call i32 @PM_AddEvent(i32 %233)
  br label %242

235:                                              ; preds = %227
  %236 = load %struct.TYPE_8__*, %struct.TYPE_8__** @pm, align 8
  %237 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %236, i32 0, i32 1
  %238 = load i32, i32* %237, align 4
  %239 = icmp eq i32 %238, 3
  br i1 %239, label %240, label %241

240:                                              ; preds = %235
  br label %241

241:                                              ; preds = %240, %235
  br label %242

242:                                              ; preds = %241, %232
  br label %243

243:                                              ; preds = %242, %224
  br label %244

244:                                              ; preds = %243, %218
  br label %245

245:                                              ; preds = %66, %104, %244, %173
  ret void
}

declare dso_local i32 @sqrt(i32) #1

declare dso_local i32 @PM_ContinueLegsAnim(i32) #1

declare dso_local i32 @PM_AddEvent(i32) #1

declare dso_local i32 @PM_FootstepForSurface(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
