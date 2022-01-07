; ModuleID = '/home/carl/AnghaBench/jerryscript/jerry-libm/extr_asin.c_asin.c'
source_filename = "/home/carl/AnghaBench/jerryscript/jerry-libm/extr_asin.c_asin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { double, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@pio2_hi = common dso_local global double 0.000000e+00, align 8
@pio2_lo = common dso_local global double 0.000000e+00, align 8
@huge = common dso_local global double 0.000000e+00, align 8
@one = common dso_local global double 0.000000e+00, align 8
@pS0 = common dso_local global double 0.000000e+00, align 8
@pS1 = common dso_local global double 0.000000e+00, align 8
@pS2 = common dso_local global double 0.000000e+00, align 8
@pS3 = common dso_local global double 0.000000e+00, align 8
@pS4 = common dso_local global double 0.000000e+00, align 8
@pS5 = common dso_local global double 0.000000e+00, align 8
@qS1 = common dso_local global double 0.000000e+00, align 8
@qS2 = common dso_local global double 0.000000e+00, align 8
@qS3 = common dso_local global double 0.000000e+00, align 8
@qS4 = common dso_local global double 0.000000e+00, align 8
@pio4_hi = common dso_local global double 0.000000e+00, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local double @asin(double %0) #0 {
  %2 = alloca double, align 8
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca %struct.TYPE_4__, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store double %0, double* %3, align 8
  %13 = load double, double* %3, align 8
  %14 = call i32 @__HI(double %13)
  store i32 %14, i32* %11, align 4
  %15 = load i32, i32* %11, align 4
  %16 = and i32 %15, 2147483647
  store i32 %16, i32* %12, align 4
  %17 = load i32, i32* %12, align 4
  %18 = icmp sge i32 %17, 1072693248
  br i1 %18, label %19, label %42

19:                                               ; preds = %1
  %20 = load i32, i32* %12, align 4
  %21 = sub nsw i32 %20, 1072693248
  %22 = load double, double* %3, align 8
  %23 = call i32 @__LO(double %22)
  %24 = or i32 %21, %23
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %34

26:                                               ; preds = %19
  %27 = load double, double* %3, align 8
  %28 = load double, double* @pio2_hi, align 8
  %29 = fmul double %27, %28
  %30 = load double, double* %3, align 8
  %31 = load double, double* @pio2_lo, align 8
  %32 = fmul double %30, %31
  %33 = fadd double %29, %32
  store double %33, double* %2, align 8
  br label %228

34:                                               ; preds = %19
  %35 = load double, double* %3, align 8
  %36 = load double, double* %3, align 8
  %37 = fsub double %35, %36
  %38 = load double, double* %3, align 8
  %39 = load double, double* %3, align 8
  %40 = fsub double %38, %39
  %41 = fdiv double %37, %40
  store double %41, double* %2, align 8
  br label %228

42:                                               ; preds = %1
  %43 = load i32, i32* %12, align 4
  %44 = icmp slt i32 %43, 1071644672
  br i1 %44, label %45, label %111

45:                                               ; preds = %42
  %46 = load i32, i32* %12, align 4
  %47 = icmp slt i32 %46, 1044381696
  br i1 %47, label %48, label %57

48:                                               ; preds = %45
  %49 = load double, double* @huge, align 8
  %50 = load double, double* %3, align 8
  %51 = fadd double %49, %50
  %52 = load double, double* @one, align 8
  %53 = fcmp ogt double %51, %52
  br i1 %53, label %54, label %56

54:                                               ; preds = %48
  %55 = load double, double* %3, align 8
  store double %55, double* %2, align 8
  br label %228

56:                                               ; preds = %48
  br label %57

57:                                               ; preds = %56, %45
  %58 = load double, double* %3, align 8
  %59 = load double, double* %3, align 8
  %60 = fmul double %58, %59
  store double %60, double* %4, align 8
  %61 = load double, double* %4, align 8
  %62 = load double, double* @pS0, align 8
  %63 = load double, double* %4, align 8
  %64 = load double, double* @pS1, align 8
  %65 = load double, double* %4, align 8
  %66 = load double, double* @pS2, align 8
  %67 = load double, double* %4, align 8
  %68 = load double, double* @pS3, align 8
  %69 = load double, double* %4, align 8
  %70 = load double, double* @pS4, align 8
  %71 = load double, double* %4, align 8
  %72 = load double, double* @pS5, align 8
  %73 = fmul double %71, %72
  %74 = fadd double %70, %73
  %75 = fmul double %69, %74
  %76 = fadd double %68, %75
  %77 = fmul double %67, %76
  %78 = fadd double %66, %77
  %79 = fmul double %65, %78
  %80 = fadd double %64, %79
  %81 = fmul double %63, %80
  %82 = fadd double %62, %81
  %83 = fmul double %61, %82
  store double %83, double* %5, align 8
  %84 = load double, double* @one, align 8
  %85 = load double, double* %4, align 8
  %86 = load double, double* @qS1, align 8
  %87 = load double, double* %4, align 8
  %88 = load double, double* @qS2, align 8
  %89 = load double, double* %4, align 8
  %90 = load double, double* @qS3, align 8
  %91 = load double, double* %4, align 8
  %92 = load double, double* @qS4, align 8
  %93 = fmul double %91, %92
  %94 = fadd double %90, %93
  %95 = fmul double %89, %94
  %96 = fadd double %88, %95
  %97 = fmul double %87, %96
  %98 = fadd double %86, %97
  %99 = fmul double %85, %98
  %100 = fadd double %84, %99
  store double %100, double* %6, align 8
  %101 = load double, double* %5, align 8
  %102 = load double, double* %6, align 8
  %103 = fdiv double %101, %102
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  store double %103, double* %104, align 8
  %105 = load double, double* %3, align 8
  %106 = load double, double* %3, align 8
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %108 = load double, double* %107, align 8
  %109 = fmul double %106, %108
  %110 = fadd double %105, %109
  store double %110, double* %2, align 8
  br label %228

111:                                              ; preds = %42
  br label %112

112:                                              ; preds = %111
  %113 = load double, double* @one, align 8
  %114 = load double, double* %3, align 8
  %115 = call double @llvm.fabs.f64(double %114)
  %116 = fsub double %113, %115
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  store double %116, double* %117, align 8
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %119 = load double, double* %118, align 8
  %120 = fmul double %119, 5.000000e-01
  store double %120, double* %4, align 8
  %121 = load double, double* %4, align 8
  %122 = load double, double* @pS0, align 8
  %123 = load double, double* %4, align 8
  %124 = load double, double* @pS1, align 8
  %125 = load double, double* %4, align 8
  %126 = load double, double* @pS2, align 8
  %127 = load double, double* %4, align 8
  %128 = load double, double* @pS3, align 8
  %129 = load double, double* %4, align 8
  %130 = load double, double* @pS4, align 8
  %131 = load double, double* %4, align 8
  %132 = load double, double* @pS5, align 8
  %133 = fmul double %131, %132
  %134 = fadd double %130, %133
  %135 = fmul double %129, %134
  %136 = fadd double %128, %135
  %137 = fmul double %127, %136
  %138 = fadd double %126, %137
  %139 = fmul double %125, %138
  %140 = fadd double %124, %139
  %141 = fmul double %123, %140
  %142 = fadd double %122, %141
  %143 = fmul double %121, %142
  store double %143, double* %5, align 8
  %144 = load double, double* @one, align 8
  %145 = load double, double* %4, align 8
  %146 = load double, double* @qS1, align 8
  %147 = load double, double* %4, align 8
  %148 = load double, double* @qS2, align 8
  %149 = load double, double* %4, align 8
  %150 = load double, double* @qS3, align 8
  %151 = load double, double* %4, align 8
  %152 = load double, double* @qS4, align 8
  %153 = fmul double %151, %152
  %154 = fadd double %150, %153
  %155 = fmul double %149, %154
  %156 = fadd double %148, %155
  %157 = fmul double %147, %156
  %158 = fadd double %146, %157
  %159 = fmul double %145, %158
  %160 = fadd double %144, %159
  store double %160, double* %6, align 8
  %161 = load double, double* %4, align 8
  %162 = call double @sqrt(double %161) #4
  store double %162, double* %9, align 8
  %163 = load i32, i32* %12, align 4
  %164 = icmp sge i32 %163, 1072640819
  br i1 %164, label %165, label %181

165:                                              ; preds = %112
  %166 = load double, double* %5, align 8
  %167 = load double, double* %6, align 8
  %168 = fdiv double %166, %167
  %169 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  store double %168, double* %169, align 8
  %170 = load double, double* @pio2_hi, align 8
  %171 = load double, double* %9, align 8
  %172 = load double, double* %9, align 8
  %173 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %174 = load double, double* %173, align 8
  %175 = fmul double %172, %174
  %176 = fadd double %171, %175
  %177 = fmul double 2.000000e+00, %176
  %178 = load double, double* @pio2_lo, align 8
  %179 = fsub double %177, %178
  %180 = fsub double %170, %179
  store double %180, double* %4, align 8
  br label %220

181:                                              ; preds = %112
  %182 = load double, double* %9, align 8
  %183 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  store double %182, double* %183, align 8
  %184 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 1
  %185 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %184, i32 0, i32 0
  store i64 0, i64* %185, align 8
  %186 = load double, double* %4, align 8
  %187 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %188 = load double, double* %187, align 8
  %189 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %190 = load double, double* %189, align 8
  %191 = fmul double %188, %190
  %192 = fsub double %186, %191
  %193 = load double, double* %9, align 8
  %194 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %195 = load double, double* %194, align 8
  %196 = fadd double %193, %195
  %197 = fdiv double %192, %196
  store double %197, double* %7, align 8
  %198 = load double, double* %5, align 8
  %199 = load double, double* %6, align 8
  %200 = fdiv double %198, %199
  store double %200, double* %8, align 8
  %201 = load double, double* %9, align 8
  %202 = fmul double 2.000000e+00, %201
  %203 = load double, double* %8, align 8
  %204 = fmul double %202, %203
  %205 = load double, double* @pio2_lo, align 8
  %206 = load double, double* %7, align 8
  %207 = fmul double 2.000000e+00, %206
  %208 = fsub double %205, %207
  %209 = fsub double %204, %208
  store double %209, double* %5, align 8
  %210 = load double, double* @pio4_hi, align 8
  %211 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %212 = load double, double* %211, align 8
  %213 = fmul double 2.000000e+00, %212
  %214 = fsub double %210, %213
  store double %214, double* %6, align 8
  %215 = load double, double* @pio4_hi, align 8
  %216 = load double, double* %5, align 8
  %217 = load double, double* %6, align 8
  %218 = fsub double %216, %217
  %219 = fsub double %215, %218
  store double %219, double* %4, align 8
  br label %220

220:                                              ; preds = %181, %165
  %221 = load i32, i32* %11, align 4
  %222 = icmp sgt i32 %221, 0
  br i1 %222, label %223, label %225

223:                                              ; preds = %220
  %224 = load double, double* %4, align 8
  store double %224, double* %2, align 8
  br label %228

225:                                              ; preds = %220
  %226 = load double, double* %4, align 8
  %227 = fneg double %226
  store double %227, double* %2, align 8
  br label %228

228:                                              ; preds = %225, %223, %57, %54, %34, %26
  %229 = load double, double* %2, align 8
  ret double %229
}

declare dso_local i32 @__HI(double) #1

declare dso_local i32 @__LO(double) #1

; Function Attrs: nounwind readnone speculatable willreturn
declare double @llvm.fabs.f64(double) #2

; Function Attrs: nounwind
declare dso_local double @sqrt(double) #3

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone speculatable willreturn }
attributes #3 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
