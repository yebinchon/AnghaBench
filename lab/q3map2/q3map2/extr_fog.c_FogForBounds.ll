; ModuleID = '/home/carl/AnghaBench/lab/q3map2/q3map2/extr_fog.c_FogForBounds.c'
source_filename = "/home/carl/AnghaBench/lab/q3map2/q3map2/extr_fog.c_FogForBounds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { float*, float* }

@defaultFogNum = common dso_local global i32 0, align 4
@numMapFogs = common dso_local global i32 0, align 4
@mapFogs = common dso_local global %struct.TYPE_4__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @FogForBounds(float* %0, float* %1, float %2) #0 {
  %4 = alloca float*, align 8
  %5 = alloca float*, align 8
  %6 = alloca float, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca float, align 4
  %11 = alloca float, align 4
  %12 = alloca float, align 4
  %13 = alloca float, align 4
  %14 = alloca float*, align 8
  %15 = alloca float*, align 8
  %16 = alloca float*, align 8
  %17 = alloca %struct.TYPE_3__*, align 8
  store float* %0, float** %4, align 8
  store float* %1, float** %5, align 8
  store float %2, float* %6, align 4
  %18 = load i32, i32* @defaultFogNum, align 4
  store i32 %18, i32* %7, align 4
  store float 0.000000e+00, float* %13, align 4
  store i32 0, i32* %8, align 4
  br label %19

19:                                               ; preds = %218, %3
  %20 = load i32, i32* %8, align 4
  %21 = load i32, i32* @numMapFogs, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %221

23:                                               ; preds = %19
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** @mapFogs, align 8
  %25 = load i32, i32* %8, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %28, align 8
  %30 = icmp eq %struct.TYPE_3__* %29, null
  br i1 %30, label %31, label %33

31:                                               ; preds = %23
  %32 = load i32, i32* %8, align 4
  store i32 %32, i32* %7, align 4
  br label %218

33:                                               ; preds = %23
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** @mapFogs, align 8
  %35 = load i32, i32* %8, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %38, align 8
  store %struct.TYPE_3__* %39, %struct.TYPE_3__** %17, align 8
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load float*, float** %41, align 8
  %43 = getelementptr inbounds float, float* %42, i64 0
  %44 = load float, float* %43, align 4
  %45 = load float, float* %6, align 4
  %46 = fsub float %44, %45
  %47 = load float*, float** %14, align 8
  %48 = getelementptr inbounds float, float* %47, i64 0
  store float %46, float* %48, align 4
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = load float*, float** %50, align 8
  %52 = getelementptr inbounds float, float* %51, i64 1
  %53 = load float, float* %52, align 4
  %54 = load float, float* %6, align 4
  %55 = fsub float %53, %54
  %56 = load float*, float** %14, align 8
  %57 = getelementptr inbounds float, float* %56, i64 1
  store float %55, float* %57, align 4
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  %60 = load float*, float** %59, align 8
  %61 = getelementptr inbounds float, float* %60, i64 2
  %62 = load float, float* %61, align 4
  %63 = load float, float* %6, align 4
  %64 = fsub float %62, %63
  %65 = load float*, float** %14, align 8
  %66 = getelementptr inbounds float, float* %65, i64 2
  store float %64, float* %66, align 4
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 1
  %69 = load float*, float** %68, align 8
  %70 = getelementptr inbounds float, float* %69, i64 0
  %71 = load float, float* %70, align 4
  %72 = load float, float* %6, align 4
  %73 = fadd float %71, %72
  %74 = load float*, float** %15, align 8
  %75 = getelementptr inbounds float, float* %74, i64 0
  store float %73, float* %75, align 4
  %76 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 1
  %78 = load float*, float** %77, align 8
  %79 = getelementptr inbounds float, float* %78, i64 1
  %80 = load float, float* %79, align 4
  %81 = load float, float* %6, align 4
  %82 = fadd float %80, %81
  %83 = load float*, float** %15, align 8
  %84 = getelementptr inbounds float, float* %83, i64 1
  store float %82, float* %84, align 4
  %85 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 1
  %87 = load float*, float** %86, align 8
  %88 = getelementptr inbounds float, float* %87, i64 2
  %89 = load float, float* %88, align 4
  %90 = load float, float* %6, align 4
  %91 = fadd float %89, %90
  %92 = load float*, float** %15, align 8
  %93 = getelementptr inbounds float, float* %92, i64 2
  store float %91, float* %93, align 4
  store i32 0, i32* %9, align 4
  br label %94

94:                                               ; preds = %192, %33
  %95 = load i32, i32* %9, align 4
  %96 = icmp slt i32 %95, 3
  br i1 %96, label %97, label %195

97:                                               ; preds = %94
  %98 = load float*, float** %4, align 8
  %99 = load i32, i32* %9, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds float, float* %98, i64 %100
  %102 = load float, float* %101, align 4
  %103 = load float*, float** %15, align 8
  %104 = load i32, i32* %9, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds float, float* %103, i64 %105
  %107 = load float, float* %106, align 4
  %108 = fcmp ogt float %102, %107
  br i1 %108, label %121, label %109

109:                                              ; preds = %97
  %110 = load float*, float** %5, align 8
  %111 = load i32, i32* %9, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds float, float* %110, i64 %112
  %114 = load float, float* %113, align 4
  %115 = load float*, float** %14, align 8
  %116 = load i32, i32* %9, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds float, float* %115, i64 %117
  %119 = load float, float* %118, align 4
  %120 = fcmp olt float %114, %119
  br i1 %120, label %121, label %122

121:                                              ; preds = %109, %97
  br label %195

122:                                              ; preds = %109
  %123 = load float*, float** %4, align 8
  %124 = load i32, i32* %9, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds float, float* %123, i64 %125
  %127 = load float, float* %126, align 4
  %128 = load float*, float** %14, align 8
  %129 = load i32, i32* %9, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds float, float* %128, i64 %130
  %132 = load float, float* %131, align 4
  %133 = fcmp ogt float %127, %132
  br i1 %133, label %134, label %140

134:                                              ; preds = %122
  %135 = load float*, float** %4, align 8
  %136 = load i32, i32* %9, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds float, float* %135, i64 %137
  %139 = load float, float* %138, align 4
  br label %146

140:                                              ; preds = %122
  %141 = load float*, float** %14, align 8
  %142 = load i32, i32* %9, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds float, float* %141, i64 %143
  %145 = load float, float* %144, align 4
  br label %146

146:                                              ; preds = %140, %134
  %147 = phi float [ %139, %134 ], [ %145, %140 ]
  store float %147, float* %10, align 4
  %148 = load float*, float** %5, align 8
  %149 = load i32, i32* %9, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds float, float* %148, i64 %150
  %152 = load float, float* %151, align 4
  %153 = load float*, float** %15, align 8
  %154 = load i32, i32* %9, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds float, float* %153, i64 %155
  %157 = load float, float* %156, align 4
  %158 = fcmp olt float %152, %157
  br i1 %158, label %159, label %165

159:                                              ; preds = %146
  %160 = load float*, float** %5, align 8
  %161 = load i32, i32* %9, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds float, float* %160, i64 %162
  %164 = load float, float* %163, align 4
  br label %171

165:                                              ; preds = %146
  %166 = load float*, float** %15, align 8
  %167 = load i32, i32* %9, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds float, float* %166, i64 %168
  %170 = load float, float* %169, align 4
  br label %171

171:                                              ; preds = %165, %159
  %172 = phi float [ %164, %159 ], [ %170, %165 ]
  store float %172, float* %11, align 4
  %173 = load float, float* %11, align 4
  %174 = load float, float* %10, align 4
  %175 = fsub float %173, %174
  %176 = load float*, float** %16, align 8
  %177 = load i32, i32* %9, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds float, float* %176, i64 %178
  store float %175, float* %179, align 4
  %180 = load float*, float** %16, align 8
  %181 = load i32, i32* %9, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds float, float* %180, i64 %182
  %184 = load float, float* %183, align 4
  %185 = fcmp olt float %184, 1.000000e+00
  br i1 %185, label %186, label %191

186:                                              ; preds = %171
  %187 = load float*, float** %16, align 8
  %188 = load i32, i32* %9, align 4
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds float, float* %187, i64 %189
  store float 1.000000e+00, float* %190, align 4
  br label %191

191:                                              ; preds = %186, %171
  br label %192

192:                                              ; preds = %191
  %193 = load i32, i32* %9, align 4
  %194 = add nsw i32 %193, 1
  store i32 %194, i32* %9, align 4
  br label %94

195:                                              ; preds = %121, %94
  %196 = load i32, i32* %9, align 4
  %197 = icmp slt i32 %196, 3
  br i1 %197, label %198, label %199

198:                                              ; preds = %195
  br label %218

199:                                              ; preds = %195
  %200 = load float*, float** %16, align 8
  %201 = getelementptr inbounds float, float* %200, i64 0
  %202 = load float, float* %201, align 4
  %203 = load float*, float** %16, align 8
  %204 = getelementptr inbounds float, float* %203, i64 1
  %205 = load float, float* %204, align 4
  %206 = fmul float %202, %205
  %207 = load float*, float** %16, align 8
  %208 = getelementptr inbounds float, float* %207, i64 2
  %209 = load float, float* %208, align 4
  %210 = fmul float %206, %209
  store float %210, float* %12, align 4
  %211 = load float, float* %12, align 4
  %212 = load float, float* %13, align 4
  %213 = fcmp ogt float %211, %212
  br i1 %213, label %214, label %217

214:                                              ; preds = %199
  %215 = load float, float* %12, align 4
  store float %215, float* %13, align 4
  %216 = load i32, i32* %8, align 4
  store i32 %216, i32* %7, align 4
  br label %217

217:                                              ; preds = %214, %199
  br label %218

218:                                              ; preds = %217, %198, %31
  %219 = load i32, i32* %8, align 4
  %220 = add nsw i32 %219, 1
  store i32 %220, i32* %8, align 4
  br label %19

221:                                              ; preds = %19
  %222 = load i32, i32* %7, align 4
  ret i32 %222
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
