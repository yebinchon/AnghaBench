; ModuleID = '/home/carl/AnghaBench/h2o/deps/klib/extr_kmath.c_kmin_hj.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/klib/extr_kmath.c_kmin_hj.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local double @kmin_hj(double (i32, double*, i8*)* %0, i32 %1, double* %2, i8* %3, double %4, double %5, i32 %6) #0 {
  %8 = alloca double (i32, double*, i8*)*, align 8
  %9 = alloca i32, align 4
  %10 = alloca double*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  %14 = alloca i32, align 4
  %15 = alloca double, align 8
  %16 = alloca double, align 8
  %17 = alloca double*, align 8
  %18 = alloca double*, align 8
  %19 = alloca double, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca double, align 8
  store double (i32, double*, i8*)* %0, double (i32, double*, i8*)** %8, align 8
  store i32 %1, i32* %9, align 4
  store double* %2, double** %10, align 8
  store i8* %3, i8** %11, align 8
  store double %4, double* %12, align 8
  store double %5, double* %13, align 8
  store i32 %6, i32* %14, align 4
  store i32 0, i32* %21, align 4
  %23 = load i32, i32* %9, align 4
  %24 = call i64 @calloc(i32 %23, i32 8)
  %25 = inttoptr i64 %24 to double*
  store double* %25, double** %17, align 8
  %26 = load i32, i32* %9, align 4
  %27 = call i64 @calloc(i32 %26, i32 8)
  %28 = inttoptr i64 %27 to double*
  store double* %28, double** %18, align 8
  store i32 0, i32* %20, align 4
  br label %29

29:                                               ; preds = %59, %7
  %30 = load i32, i32* %20, align 4
  %31 = load i32, i32* %9, align 4
  %32 = icmp ne i32 %30, %31
  br i1 %32, label %33, label %62

33:                                               ; preds = %29
  %34 = load double*, double** %10, align 8
  %35 = load i32, i32* %20, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds double, double* %34, i64 %36
  %38 = load double, double* %37, align 8
  %39 = call double @llvm.fabs.f64(double %38)
  %40 = load double, double* %12, align 8
  %41 = fmul double %39, %40
  %42 = load double*, double** %18, align 8
  %43 = load i32, i32* %20, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds double, double* %42, i64 %44
  store double %41, double* %45, align 8
  %46 = load double*, double** %18, align 8
  %47 = load i32, i32* %20, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds double, double* %46, i64 %48
  %50 = load double, double* %49, align 8
  %51 = fcmp oeq double %50, 0.000000e+00
  br i1 %51, label %52, label %58

52:                                               ; preds = %33
  %53 = load double, double* %12, align 8
  %54 = load double*, double** %18, align 8
  %55 = load i32, i32* %20, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds double, double* %54, i64 %56
  store double %53, double* %57, align 8
  br label %58

58:                                               ; preds = %52, %33
  br label %59

59:                                               ; preds = %58
  %60 = load i32, i32* %20, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %20, align 4
  br label %29

62:                                               ; preds = %29
  %63 = load double, double* %12, align 8
  store double %63, double* %19, align 8
  %64 = load double (i32, double*, i8*)*, double (i32, double*, i8*)** %8, align 8
  %65 = load i32, i32* %9, align 4
  %66 = load double*, double** %10, align 8
  %67 = load i8*, i8** %11, align 8
  %68 = call double %64(i32 %65, double* %66, i8* %67)
  store double %68, double* %15, align 8
  store double %68, double* %16, align 8
  %69 = load i32, i32* %21, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %21, align 4
  br label %71

71:                                               ; preds = %254, %62
  %72 = load double*, double** %17, align 8
  %73 = load double*, double** %10, align 8
  %74 = load i32, i32* %9, align 4
  %75 = sext i32 %74 to i64
  %76 = mul i64 %75, 8
  %77 = trunc i64 %76 to i32
  %78 = call i32 @memcpy(double* %72, double* %73, i32 %77)
  %79 = load double (i32, double*, i8*)*, double (i32, double*, i8*)** %8, align 8
  %80 = load i32, i32* %9, align 4
  %81 = load double*, double** %17, align 8
  %82 = load i8*, i8** %11, align 8
  %83 = load double, double* %15, align 8
  %84 = load double*, double** %18, align 8
  %85 = call double @__kmin_hj_aux(double (i32, double*, i8*)* %79, i32 %80, double* %81, i8* %82, double %83, double* %84, i32* %21)
  store double %85, double* %16, align 8
  br label %86

86:                                               ; preds = %223, %71
  %87 = load double, double* %16, align 8
  %88 = load double, double* %15, align 8
  %89 = fcmp olt double %87, %88
  br i1 %89, label %90, label %224

90:                                               ; preds = %86
  store i32 0, i32* %20, align 4
  br label %91

91:                                               ; preds = %159, %90
  %92 = load i32, i32* %20, align 4
  %93 = load i32, i32* %9, align 4
  %94 = icmp ne i32 %92, %93
  br i1 %94, label %95, label %162

95:                                               ; preds = %91
  %96 = load double*, double** %10, align 8
  %97 = load i32, i32* %20, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds double, double* %96, i64 %98
  %100 = load double, double* %99, align 8
  store double %100, double* %22, align 8
  %101 = load double*, double** %17, align 8
  %102 = load i32, i32* %20, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds double, double* %101, i64 %103
  %105 = load double, double* %104, align 8
  %106 = load double*, double** %10, align 8
  %107 = load i32, i32* %20, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds double, double* %106, i64 %108
  %110 = load double, double* %109, align 8
  %111 = fcmp ogt double %105, %110
  br i1 %111, label %112, label %119

112:                                              ; preds = %95
  %113 = load double*, double** %18, align 8
  %114 = load i32, i32* %20, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds double, double* %113, i64 %115
  %117 = load double, double* %116, align 8
  %118 = call double @llvm.fabs.f64(double %117)
  br label %127

119:                                              ; preds = %95
  %120 = load double*, double** %18, align 8
  %121 = load i32, i32* %20, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds double, double* %120, i64 %122
  %124 = load double, double* %123, align 8
  %125 = call double @llvm.fabs.f64(double %124)
  %126 = fsub double 0.000000e+00, %125
  br label %127

127:                                              ; preds = %119, %112
  %128 = phi double [ %118, %112 ], [ %126, %119 ]
  %129 = load double*, double** %18, align 8
  %130 = load i32, i32* %20, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds double, double* %129, i64 %131
  store double %128, double* %132, align 8
  %133 = load double*, double** %17, align 8
  %134 = load i32, i32* %20, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds double, double* %133, i64 %135
  %137 = load double, double* %136, align 8
  %138 = load double*, double** %10, align 8
  %139 = load i32, i32* %20, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds double, double* %138, i64 %140
  store double %137, double* %141, align 8
  %142 = load double*, double** %17, align 8
  %143 = load i32, i32* %20, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds double, double* %142, i64 %144
  %146 = load double, double* %145, align 8
  %147 = load double*, double** %17, align 8
  %148 = load i32, i32* %20, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds double, double* %147, i64 %149
  %151 = load double, double* %150, align 8
  %152 = fadd double %146, %151
  %153 = load double, double* %22, align 8
  %154 = fsub double %152, %153
  %155 = load double*, double** %17, align 8
  %156 = load i32, i32* %20, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds double, double* %155, i64 %157
  store double %154, double* %158, align 8
  br label %159

159:                                              ; preds = %127
  %160 = load i32, i32* %20, align 4
  %161 = add nsw i32 %160, 1
  store i32 %161, i32* %20, align 4
  br label %91

162:                                              ; preds = %91
  %163 = load double, double* %16, align 8
  store double %163, double* %15, align 8
  %164 = load i32, i32* %21, align 4
  %165 = load i32, i32* %14, align 4
  %166 = icmp sge i32 %164, %165
  br i1 %166, label %167, label %168

167:                                              ; preds = %162
  br label %224

168:                                              ; preds = %162
  %169 = load double (i32, double*, i8*)*, double (i32, double*, i8*)** %8, align 8
  %170 = load i32, i32* %9, align 4
  %171 = load double*, double** %17, align 8
  %172 = load i8*, i8** %11, align 8
  %173 = call double %169(i32 %170, double* %171, i8* %172)
  store double %173, double* %16, align 8
  %174 = load i32, i32* %21, align 4
  %175 = add nsw i32 %174, 1
  store i32 %175, i32* %21, align 4
  %176 = load double (i32, double*, i8*)*, double (i32, double*, i8*)** %8, align 8
  %177 = load i32, i32* %9, align 4
  %178 = load double*, double** %17, align 8
  %179 = load i8*, i8** %11, align 8
  %180 = load double, double* %16, align 8
  %181 = load double*, double** %18, align 8
  %182 = call double @__kmin_hj_aux(double (i32, double*, i8*)* %176, i32 %177, double* %178, i8* %179, double %180, double* %181, i32* %21)
  store double %182, double* %16, align 8
  %183 = load double, double* %16, align 8
  %184 = load double, double* %15, align 8
  %185 = fcmp oge double %183, %184
  br i1 %185, label %186, label %187

186:                                              ; preds = %168
  br label %224

187:                                              ; preds = %168
  store i32 0, i32* %20, align 4
  br label %188

188:                                              ; preds = %215, %187
  %189 = load i32, i32* %20, align 4
  %190 = load i32, i32* %9, align 4
  %191 = icmp ne i32 %189, %190
  br i1 %191, label %192, label %218

192:                                              ; preds = %188
  %193 = load double*, double** %17, align 8
  %194 = load i32, i32* %20, align 4
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds double, double* %193, i64 %195
  %197 = load double, double* %196, align 8
  %198 = load double*, double** %10, align 8
  %199 = load i32, i32* %20, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds double, double* %198, i64 %200
  %202 = load double, double* %201, align 8
  %203 = fsub double %197, %202
  %204 = call double @llvm.fabs.f64(double %203)
  %205 = load double*, double** %18, align 8
  %206 = load i32, i32* %20, align 4
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds double, double* %205, i64 %207
  %209 = load double, double* %208, align 8
  %210 = call double @llvm.fabs.f64(double %209)
  %211 = fmul double 5.000000e-01, %210
  %212 = fcmp ogt double %204, %211
  br i1 %212, label %213, label %214

213:                                              ; preds = %192
  br label %218

214:                                              ; preds = %192
  br label %215

215:                                              ; preds = %214
  %216 = load i32, i32* %20, align 4
  %217 = add nsw i32 %216, 1
  store i32 %217, i32* %20, align 4
  br label %188

218:                                              ; preds = %213, %188
  %219 = load i32, i32* %20, align 4
  %220 = load i32, i32* %9, align 4
  %221 = icmp eq i32 %219, %220
  br i1 %221, label %222, label %223

222:                                              ; preds = %218
  br label %224

223:                                              ; preds = %218
  br label %86

224:                                              ; preds = %222, %186, %167, %86
  %225 = load double, double* %19, align 8
  %226 = load double, double* %13, align 8
  %227 = fcmp oge double %225, %226
  br i1 %227, label %228, label %253

228:                                              ; preds = %224
  %229 = load i32, i32* %21, align 4
  %230 = load i32, i32* %14, align 4
  %231 = icmp sge i32 %229, %230
  br i1 %231, label %232, label %233

232:                                              ; preds = %228
  br label %255

233:                                              ; preds = %228
  %234 = load double, double* %12, align 8
  %235 = load double, double* %19, align 8
  %236 = fmul double %235, %234
  store double %236, double* %19, align 8
  store i32 0, i32* %20, align 4
  br label %237

237:                                              ; preds = %249, %233
  %238 = load i32, i32* %20, align 4
  %239 = load i32, i32* %9, align 4
  %240 = icmp ne i32 %238, %239
  br i1 %240, label %241, label %252

241:                                              ; preds = %237
  %242 = load double, double* %12, align 8
  %243 = load double*, double** %18, align 8
  %244 = load i32, i32* %20, align 4
  %245 = sext i32 %244 to i64
  %246 = getelementptr inbounds double, double* %243, i64 %245
  %247 = load double, double* %246, align 8
  %248 = fmul double %247, %242
  store double %248, double* %246, align 8
  br label %249

249:                                              ; preds = %241
  %250 = load i32, i32* %20, align 4
  %251 = add nsw i32 %250, 1
  store i32 %251, i32* %20, align 4
  br label %237

252:                                              ; preds = %237
  br label %254

253:                                              ; preds = %224
  br label %255

254:                                              ; preds = %252
  br label %71

255:                                              ; preds = %253, %232
  %256 = load double*, double** %17, align 8
  %257 = call i32 @free(double* %256)
  %258 = load double*, double** %18, align 8
  %259 = call i32 @free(double* %258)
  %260 = load double, double* %16, align 8
  ret double %260
}

declare dso_local i64 @calloc(i32, i32) #1

; Function Attrs: nounwind readnone speculatable willreturn
declare double @llvm.fabs.f64(double) #2

declare dso_local i32 @memcpy(double*, double*, i32) #1

declare dso_local double @__kmin_hj_aux(double (i32, double*, i8*)*, i32, double*, i8*, double, double*, i32*) #1

declare dso_local i32 @free(double*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone speculatable willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
