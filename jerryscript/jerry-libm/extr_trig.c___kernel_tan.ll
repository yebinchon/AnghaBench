; ModuleID = '/home/carl/AnghaBench/jerryscript/jerry-libm/extr_trig.c___kernel_tan.c'
source_filename = "/home/carl/AnghaBench/jerryscript/jerry-libm/extr_trig.c___kernel_tan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { double, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@one = common dso_local global double 0.000000e+00, align 8
@pio4 = common dso_local global double 0.000000e+00, align 8
@pio4lo = common dso_local global double 0.000000e+00, align 8
@T1 = common dso_local global double 0.000000e+00, align 8
@T3 = common dso_local global double 0.000000e+00, align 8
@T5 = common dso_local global double 0.000000e+00, align 8
@T7 = common dso_local global double 0.000000e+00, align 8
@T9 = common dso_local global double 0.000000e+00, align 8
@T11 = common dso_local global double 0.000000e+00, align 8
@T2 = common dso_local global double 0.000000e+00, align 8
@T4 = common dso_local global double 0.000000e+00, align 8
@T6 = common dso_local global double 0.000000e+00, align 8
@T8 = common dso_local global double 0.000000e+00, align 8
@T10 = common dso_local global double 0.000000e+00, align 8
@T12 = common dso_local global double 0.000000e+00, align 8
@T0 = common dso_local global double 0.000000e+00, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (double (double, double, i32)* @__kernel_tan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal double @__kernel_tan(double %0, double %1, i32 %2) #0 {
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_4__, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca double, align 8
  %16 = alloca %struct.TYPE_4__, align 8
  %17 = alloca double, align 8
  %18 = alloca %struct.TYPE_4__, align 8
  store double %0, double* %5, align 8
  store double %1, double* %6, align 8
  store i32 %2, i32* %7, align 4
  %19 = load double, double* %5, align 8
  %20 = call i32 @__HI(double %19)
  store i32 %20, i32* %14, align 4
  %21 = load i32, i32* %14, align 4
  %22 = and i32 %21, 2147483647
  store i32 %22, i32* %13, align 4
  %23 = load i32, i32* %13, align 4
  %24 = icmp slt i32 %23, 1043333120
  br i1 %24, label %25, label %87

25:                                               ; preds = %3
  %26 = load double, double* %5, align 8
  %27 = fptosi double %26 to i32
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %86

29:                                               ; preds = %25
  %30 = load i32, i32* %13, align 4
  %31 = load double, double* %5, align 8
  %32 = call i32 @__LO(double %31)
  %33 = or i32 %30, %32
  %34 = load i32, i32* %7, align 4
  %35 = add nsw i32 %34, 1
  %36 = or i32 %33, %35
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %29
  %39 = load double, double* @one, align 8
  %40 = load double, double* %5, align 8
  %41 = call double @llvm.fabs.f64(double %40)
  %42 = fdiv double %39, %41
  store double %42, double* %4, align 8
  br label %252

43:                                               ; preds = %29
  %44 = load i32, i32* %7, align 4
  %45 = icmp eq i32 %44, 1
  br i1 %45, label %46, label %48

46:                                               ; preds = %43
  %47 = load double, double* %5, align 8
  store double %47, double* %4, align 8
  br label %252

48:                                               ; preds = %43
  %49 = load double, double* %5, align 8
  %50 = load double, double* %6, align 8
  %51 = fadd double %49, %50
  store double %51, double* %11, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  store double %51, double* %52, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  store i64 0, i64* %54, align 8
  %55 = load double, double* %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %57 = load double, double* %56, align 8
  %58 = load double, double* %5, align 8
  %59 = fsub double %57, %58
  %60 = fsub double %55, %59
  store double %60, double* %10, align 8
  %61 = load double, double* @one, align 8
  %62 = fneg double %61
  %63 = load double, double* %11, align 8
  %64 = fdiv double %62, %63
  store double %64, double* %15, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  store double %64, double* %65, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 0
  store i64 0, i64* %67, align 8
  %68 = load double, double* @one, align 8
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %70 = load double, double* %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %72 = load double, double* %71, align 8
  %73 = fmul double %70, %72
  %74 = fadd double %68, %73
  store double %74, double* %12, align 8
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %76 = load double, double* %75, align 8
  %77 = load double, double* %15, align 8
  %78 = load double, double* %12, align 8
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %80 = load double, double* %79, align 8
  %81 = load double, double* %10, align 8
  %82 = fmul double %80, %81
  %83 = fadd double %78, %82
  %84 = fmul double %77, %83
  %85 = fadd double %76, %84
  store double %85, double* %4, align 8
  br label %252

86:                                               ; preds = %25
  br label %87

87:                                               ; preds = %86, %3
  %88 = load i32, i32* %13, align 4
  %89 = icmp sge i32 %88, 1072010280
  br i1 %89, label %90, label %110

90:                                               ; preds = %87
  %91 = load i32, i32* %14, align 4
  %92 = icmp slt i32 %91, 0
  br i1 %92, label %93, label %98

93:                                               ; preds = %90
  %94 = load double, double* %5, align 8
  %95 = fneg double %94
  store double %95, double* %5, align 8
  %96 = load double, double* %6, align 8
  %97 = fneg double %96
  store double %97, double* %6, align 8
  br label %98

98:                                               ; preds = %93, %90
  %99 = load double, double* @pio4, align 8
  %100 = load double, double* %5, align 8
  %101 = fsub double %99, %100
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  store double %101, double* %102, align 8
  %103 = load double, double* @pio4lo, align 8
  %104 = load double, double* %6, align 8
  %105 = fsub double %103, %104
  store double %105, double* %11, align 8
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %107 = load double, double* %106, align 8
  %108 = load double, double* %11, align 8
  %109 = fadd double %107, %108
  store double %109, double* %5, align 8
  store double 0.000000e+00, double* %6, align 8
  br label %110

110:                                              ; preds = %98, %87
  %111 = load double, double* %5, align 8
  %112 = load double, double* %5, align 8
  %113 = fmul double %111, %112
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  store double %113, double* %114, align 8
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %116 = load double, double* %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %118 = load double, double* %117, align 8
  %119 = fmul double %116, %118
  store double %119, double* %11, align 8
  %120 = load double, double* @T1, align 8
  %121 = load double, double* %11, align 8
  %122 = load double, double* @T3, align 8
  %123 = load double, double* %11, align 8
  %124 = load double, double* @T5, align 8
  %125 = load double, double* %11, align 8
  %126 = load double, double* @T7, align 8
  %127 = load double, double* %11, align 8
  %128 = load double, double* @T9, align 8
  %129 = load double, double* %11, align 8
  %130 = load double, double* @T11, align 8
  %131 = fmul double %129, %130
  %132 = fadd double %128, %131
  %133 = fmul double %127, %132
  %134 = fadd double %126, %133
  %135 = fmul double %125, %134
  %136 = fadd double %124, %135
  %137 = fmul double %123, %136
  %138 = fadd double %122, %137
  %139 = fmul double %121, %138
  %140 = fadd double %120, %139
  store double %140, double* %9, align 8
  %141 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %142 = load double, double* %141, align 8
  %143 = load double, double* @T2, align 8
  %144 = load double, double* %11, align 8
  %145 = load double, double* @T4, align 8
  %146 = load double, double* %11, align 8
  %147 = load double, double* @T6, align 8
  %148 = load double, double* %11, align 8
  %149 = load double, double* @T8, align 8
  %150 = load double, double* %11, align 8
  %151 = load double, double* @T10, align 8
  %152 = load double, double* %11, align 8
  %153 = load double, double* @T12, align 8
  %154 = fmul double %152, %153
  %155 = fadd double %151, %154
  %156 = fmul double %150, %155
  %157 = fadd double %149, %156
  %158 = fmul double %148, %157
  %159 = fadd double %147, %158
  %160 = fmul double %146, %159
  %161 = fadd double %145, %160
  %162 = fmul double %144, %161
  %163 = fadd double %143, %162
  %164 = fmul double %142, %163
  store double %164, double* %10, align 8
  %165 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %166 = load double, double* %165, align 8
  %167 = load double, double* %5, align 8
  %168 = fmul double %166, %167
  store double %168, double* %12, align 8
  %169 = load double, double* %6, align 8
  %170 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %171 = load double, double* %170, align 8
  %172 = load double, double* %12, align 8
  %173 = load double, double* %9, align 8
  %174 = load double, double* %10, align 8
  %175 = fadd double %173, %174
  %176 = fmul double %172, %175
  %177 = load double, double* %6, align 8
  %178 = fadd double %176, %177
  %179 = fmul double %171, %178
  %180 = fadd double %169, %179
  store double %180, double* %9, align 8
  %181 = load double, double* @T0, align 8
  %182 = load double, double* %12, align 8
  %183 = fmul double %181, %182
  %184 = load double, double* %9, align 8
  %185 = fadd double %184, %183
  store double %185, double* %9, align 8
  %186 = load double, double* %5, align 8
  %187 = load double, double* %9, align 8
  %188 = fadd double %186, %187
  store double %188, double* %11, align 8
  %189 = load i32, i32* %13, align 4
  %190 = icmp sge i32 %189, 1072010280
  br i1 %190, label %191, label %214

191:                                              ; preds = %110
  %192 = load i32, i32* %7, align 4
  %193 = sitofp i32 %192 to double
  store double %193, double* %10, align 8
  %194 = load i32, i32* %14, align 4
  %195 = ashr i32 %194, 30
  %196 = and i32 %195, 2
  %197 = sub nsw i32 1, %196
  %198 = sitofp i32 %197 to double
  %199 = load double, double* %10, align 8
  %200 = load double, double* %5, align 8
  %201 = load double, double* %11, align 8
  %202 = load double, double* %11, align 8
  %203 = fmul double %201, %202
  %204 = load double, double* %11, align 8
  %205 = load double, double* %10, align 8
  %206 = fadd double %204, %205
  %207 = fdiv double %203, %206
  %208 = load double, double* %9, align 8
  %209 = fsub double %207, %208
  %210 = fsub double %200, %209
  %211 = fmul double 2.000000e+00, %210
  %212 = fsub double %199, %211
  %213 = fmul double %198, %212
  store double %213, double* %4, align 8
  br label %252

214:                                              ; preds = %110
  %215 = load i32, i32* %7, align 4
  %216 = icmp eq i32 %215, 1
  br i1 %216, label %217, label %219

217:                                              ; preds = %214
  %218 = load double, double* %11, align 8
  store double %218, double* %4, align 8
  br label %252

219:                                              ; preds = %214
  %220 = load double, double* %11, align 8
  %221 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  store double %220, double* %221, align 8
  %222 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 1
  %223 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %222, i32 0, i32 0
  store i64 0, i64* %223, align 8
  %224 = load double, double* %9, align 8
  %225 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %226 = load double, double* %225, align 8
  %227 = load double, double* %5, align 8
  %228 = fsub double %226, %227
  %229 = fsub double %224, %228
  store double %229, double* %10, align 8
  %230 = load double, double* %11, align 8
  %231 = fdiv double -1.000000e+00, %230
  store double %231, double* %17, align 8
  %232 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  store double %231, double* %232, align 8
  %233 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 1
  %234 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %233, i32 0, i32 0
  store i64 0, i64* %234, align 8
  %235 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %236 = load double, double* %235, align 8
  %237 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %238 = load double, double* %237, align 8
  %239 = fmul double %236, %238
  %240 = fadd double 1.000000e+00, %239
  store double %240, double* %12, align 8
  %241 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %242 = load double, double* %241, align 8
  %243 = load double, double* %17, align 8
  %244 = load double, double* %12, align 8
  %245 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %246 = load double, double* %245, align 8
  %247 = load double, double* %10, align 8
  %248 = fmul double %246, %247
  %249 = fadd double %244, %248
  %250 = fmul double %243, %249
  %251 = fadd double %242, %250
  store double %251, double* %4, align 8
  br label %252

252:                                              ; preds = %219, %217, %191, %48, %46, %38
  %253 = load double, double* %4, align 8
  ret double %253
}

declare dso_local i32 @__HI(double) #1

declare dso_local i32 @__LO(double) #1

; Function Attrs: nounwind readnone speculatable willreturn
declare double @llvm.fabs.f64(double) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone speculatable willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
