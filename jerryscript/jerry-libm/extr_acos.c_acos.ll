; ModuleID = '/home/carl/AnghaBench/jerryscript/jerry-libm/extr_acos.c_acos.c'
source_filename = "/home/carl/AnghaBench/jerryscript/jerry-libm/extr_acos.c_acos.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { double, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@pi = common dso_local global double 0.000000e+00, align 8
@pio2_lo = common dso_local global double 0.000000e+00, align 8
@pio2_hi = common dso_local global double 0.000000e+00, align 8
@pS0 = common dso_local global double 0.000000e+00, align 8
@pS1 = common dso_local global double 0.000000e+00, align 8
@pS2 = common dso_local global double 0.000000e+00, align 8
@pS3 = common dso_local global double 0.000000e+00, align 8
@pS4 = common dso_local global double 0.000000e+00, align 8
@pS5 = common dso_local global double 0.000000e+00, align 8
@one = common dso_local global double 0.000000e+00, align 8
@qS1 = common dso_local global double 0.000000e+00, align 8
@qS2 = common dso_local global double 0.000000e+00, align 8
@qS3 = common dso_local global double 0.000000e+00, align 8
@qS4 = common dso_local global double 0.000000e+00, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local double @acos(double %0) #0 {
  %2 = alloca double, align 8
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_4__, align 8
  store double %0, double* %3, align 8
  %14 = load double, double* %3, align 8
  %15 = call i32 @__HI(double %14)
  store i32 %15, i32* %11, align 4
  %16 = load i32, i32* %11, align 4
  %17 = and i32 %16, 2147483647
  store i32 %17, i32* %12, align 4
  %18 = load i32, i32* %12, align 4
  %19 = icmp sge i32 %18, 1072693248
  br i1 %19, label %20, label %44

20:                                               ; preds = %1
  %21 = load i32, i32* %12, align 4
  %22 = sub nsw i32 %21, 1072693248
  %23 = load double, double* %3, align 8
  %24 = call i32 @__LO(double %23)
  %25 = or i32 %22, %24
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %36

27:                                               ; preds = %20
  %28 = load i32, i32* %11, align 4
  %29 = icmp sgt i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %27
  store double 0.000000e+00, double* %2, align 8
  br label %250

31:                                               ; preds = %27
  %32 = load double, double* @pi, align 8
  %33 = load double, double* @pio2_lo, align 8
  %34 = fmul double 2.000000e+00, %33
  %35 = fadd double %32, %34
  store double %35, double* %2, align 8
  br label %250

36:                                               ; preds = %20
  %37 = load double, double* %3, align 8
  %38 = load double, double* %3, align 8
  %39 = fsub double %37, %38
  %40 = load double, double* %3, align 8
  %41 = load double, double* %3, align 8
  %42 = fsub double %40, %41
  %43 = fdiv double %39, %42
  store double %43, double* %2, align 8
  br label %250

44:                                               ; preds = %1
  %45 = load i32, i32* %12, align 4
  %46 = icmp slt i32 %45, 1071644672
  br i1 %46, label %47, label %110

47:                                               ; preds = %44
  %48 = load i32, i32* %12, align 4
  %49 = icmp sle i32 %48, 1012924416
  br i1 %49, label %50, label %54

50:                                               ; preds = %47
  %51 = load double, double* @pio2_hi, align 8
  %52 = load double, double* @pio2_lo, align 8
  %53 = fadd double %51, %52
  store double %53, double* %2, align 8
  br label %250

54:                                               ; preds = %47
  %55 = load double, double* %3, align 8
  %56 = load double, double* %3, align 8
  %57 = fmul double %55, %56
  store double %57, double* %4, align 8
  %58 = load double, double* %4, align 8
  %59 = load double, double* @pS0, align 8
  %60 = load double, double* %4, align 8
  %61 = load double, double* @pS1, align 8
  %62 = load double, double* %4, align 8
  %63 = load double, double* @pS2, align 8
  %64 = load double, double* %4, align 8
  %65 = load double, double* @pS3, align 8
  %66 = load double, double* %4, align 8
  %67 = load double, double* @pS4, align 8
  %68 = load double, double* %4, align 8
  %69 = load double, double* @pS5, align 8
  %70 = fmul double %68, %69
  %71 = fadd double %67, %70
  %72 = fmul double %66, %71
  %73 = fadd double %65, %72
  %74 = fmul double %64, %73
  %75 = fadd double %63, %74
  %76 = fmul double %62, %75
  %77 = fadd double %61, %76
  %78 = fmul double %60, %77
  %79 = fadd double %59, %78
  %80 = fmul double %58, %79
  store double %80, double* %5, align 8
  %81 = load double, double* @one, align 8
  %82 = load double, double* %4, align 8
  %83 = load double, double* @qS1, align 8
  %84 = load double, double* %4, align 8
  %85 = load double, double* @qS2, align 8
  %86 = load double, double* %4, align 8
  %87 = load double, double* @qS3, align 8
  %88 = load double, double* %4, align 8
  %89 = load double, double* @qS4, align 8
  %90 = fmul double %88, %89
  %91 = fadd double %87, %90
  %92 = fmul double %86, %91
  %93 = fadd double %85, %92
  %94 = fmul double %84, %93
  %95 = fadd double %83, %94
  %96 = fmul double %82, %95
  %97 = fadd double %81, %96
  store double %97, double* %6, align 8
  %98 = load double, double* %5, align 8
  %99 = load double, double* %6, align 8
  %100 = fdiv double %98, %99
  store double %100, double* %7, align 8
  %101 = load double, double* @pio2_hi, align 8
  %102 = load double, double* %3, align 8
  %103 = load double, double* @pio2_lo, align 8
  %104 = load double, double* %3, align 8
  %105 = load double, double* %7, align 8
  %106 = fmul double %104, %105
  %107 = fsub double %103, %106
  %108 = fsub double %102, %107
  %109 = fsub double %101, %108
  store double %109, double* %2, align 8
  br label %250

110:                                              ; preds = %44
  %111 = load i32, i32* %11, align 4
  %112 = icmp slt i32 %111, 0
  br i1 %112, label %113, label %174

113:                                              ; preds = %110
  %114 = load double, double* @one, align 8
  %115 = load double, double* %3, align 8
  %116 = fadd double %114, %115
  %117 = fmul double %116, 5.000000e-01
  store double %117, double* %4, align 8
  %118 = load double, double* %4, align 8
  %119 = load double, double* @pS0, align 8
  %120 = load double, double* %4, align 8
  %121 = load double, double* @pS1, align 8
  %122 = load double, double* %4, align 8
  %123 = load double, double* @pS2, align 8
  %124 = load double, double* %4, align 8
  %125 = load double, double* @pS3, align 8
  %126 = load double, double* %4, align 8
  %127 = load double, double* @pS4, align 8
  %128 = load double, double* %4, align 8
  %129 = load double, double* @pS5, align 8
  %130 = fmul double %128, %129
  %131 = fadd double %127, %130
  %132 = fmul double %126, %131
  %133 = fadd double %125, %132
  %134 = fmul double %124, %133
  %135 = fadd double %123, %134
  %136 = fmul double %122, %135
  %137 = fadd double %121, %136
  %138 = fmul double %120, %137
  %139 = fadd double %119, %138
  %140 = fmul double %118, %139
  store double %140, double* %5, align 8
  %141 = load double, double* @one, align 8
  %142 = load double, double* %4, align 8
  %143 = load double, double* @qS1, align 8
  %144 = load double, double* %4, align 8
  %145 = load double, double* @qS2, align 8
  %146 = load double, double* %4, align 8
  %147 = load double, double* @qS3, align 8
  %148 = load double, double* %4, align 8
  %149 = load double, double* @qS4, align 8
  %150 = fmul double %148, %149
  %151 = fadd double %147, %150
  %152 = fmul double %146, %151
  %153 = fadd double %145, %152
  %154 = fmul double %144, %153
  %155 = fadd double %143, %154
  %156 = fmul double %142, %155
  %157 = fadd double %141, %156
  store double %157, double* %6, align 8
  %158 = load double, double* %4, align 8
  %159 = call double @sqrt(double %158) #3
  store double %159, double* %9, align 8
  %160 = load double, double* %5, align 8
  %161 = load double, double* %6, align 8
  %162 = fdiv double %160, %161
  store double %162, double* %7, align 8
  %163 = load double, double* %7, align 8
  %164 = load double, double* %9, align 8
  %165 = fmul double %163, %164
  %166 = load double, double* @pio2_lo, align 8
  %167 = fsub double %165, %166
  store double %167, double* %8, align 8
  %168 = load double, double* @pi, align 8
  %169 = load double, double* %9, align 8
  %170 = load double, double* %8, align 8
  %171 = fadd double %169, %170
  %172 = fmul double 2.000000e+00, %171
  %173 = fsub double %168, %172
  store double %173, double* %2, align 8
  br label %250

174:                                              ; preds = %110
  %175 = load double, double* @one, align 8
  %176 = load double, double* %3, align 8
  %177 = fsub double %175, %176
  %178 = fmul double %177, 5.000000e-01
  store double %178, double* %4, align 8
  %179 = load double, double* %4, align 8
  %180 = call double @sqrt(double %179) #3
  store double %180, double* %9, align 8
  %181 = load double, double* %9, align 8
  %182 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  store double %181, double* %182, align 8
  %183 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 1
  %184 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %183, i32 0, i32 0
  store i64 0, i64* %184, align 8
  %185 = load double, double* %4, align 8
  %186 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %187 = load double, double* %186, align 8
  %188 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %189 = load double, double* %188, align 8
  %190 = fmul double %187, %189
  %191 = fsub double %185, %190
  %192 = load double, double* %9, align 8
  %193 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %194 = load double, double* %193, align 8
  %195 = fadd double %192, %194
  %196 = fdiv double %191, %195
  store double %196, double* %10, align 8
  %197 = load double, double* %4, align 8
  %198 = load double, double* @pS0, align 8
  %199 = load double, double* %4, align 8
  %200 = load double, double* @pS1, align 8
  %201 = load double, double* %4, align 8
  %202 = load double, double* @pS2, align 8
  %203 = load double, double* %4, align 8
  %204 = load double, double* @pS3, align 8
  %205 = load double, double* %4, align 8
  %206 = load double, double* @pS4, align 8
  %207 = load double, double* %4, align 8
  %208 = load double, double* @pS5, align 8
  %209 = fmul double %207, %208
  %210 = fadd double %206, %209
  %211 = fmul double %205, %210
  %212 = fadd double %204, %211
  %213 = fmul double %203, %212
  %214 = fadd double %202, %213
  %215 = fmul double %201, %214
  %216 = fadd double %200, %215
  %217 = fmul double %199, %216
  %218 = fadd double %198, %217
  %219 = fmul double %197, %218
  store double %219, double* %5, align 8
  %220 = load double, double* @one, align 8
  %221 = load double, double* %4, align 8
  %222 = load double, double* @qS1, align 8
  %223 = load double, double* %4, align 8
  %224 = load double, double* @qS2, align 8
  %225 = load double, double* %4, align 8
  %226 = load double, double* @qS3, align 8
  %227 = load double, double* %4, align 8
  %228 = load double, double* @qS4, align 8
  %229 = fmul double %227, %228
  %230 = fadd double %226, %229
  %231 = fmul double %225, %230
  %232 = fadd double %224, %231
  %233 = fmul double %223, %232
  %234 = fadd double %222, %233
  %235 = fmul double %221, %234
  %236 = fadd double %220, %235
  store double %236, double* %6, align 8
  %237 = load double, double* %5, align 8
  %238 = load double, double* %6, align 8
  %239 = fdiv double %237, %238
  store double %239, double* %7, align 8
  %240 = load double, double* %7, align 8
  %241 = load double, double* %9, align 8
  %242 = fmul double %240, %241
  %243 = load double, double* %10, align 8
  %244 = fadd double %242, %243
  store double %244, double* %8, align 8
  %245 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %246 = load double, double* %245, align 8
  %247 = load double, double* %8, align 8
  %248 = fadd double %246, %247
  %249 = fmul double 2.000000e+00, %248
  store double %249, double* %2, align 8
  br label %250

250:                                              ; preds = %174, %113, %54, %50, %36, %31, %30
  %251 = load double, double* %2, align 8
  ret double %251
}

declare dso_local i32 @__HI(double) #1

declare dso_local i32 @__LO(double) #1

; Function Attrs: nounwind
declare dso_local double @sqrt(double) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
