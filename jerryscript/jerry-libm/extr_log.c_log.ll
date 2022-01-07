; ModuleID = '/home/carl/AnghaBench/jerryscript/jerry-libm/extr_log.c_log.c'
source_filename = "/home/carl/AnghaBench/jerryscript/jerry-libm/extr_log.c_log.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { double, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@two54 = common dso_local global double 0.000000e+00, align 8
@zero = common dso_local global double 0.000000e+00, align 8
@ln2_hi = common dso_local global double 0.000000e+00, align 8
@ln2_lo = common dso_local global double 0.000000e+00, align 8
@Lg2 = common dso_local global double 0.000000e+00, align 8
@Lg4 = common dso_local global double 0.000000e+00, align 8
@Lg6 = common dso_local global double 0.000000e+00, align 8
@Lg1 = common dso_local global double 0.000000e+00, align 8
@Lg3 = common dso_local global double 0.000000e+00, align 8
@Lg5 = common dso_local global double 0.000000e+00, align 8
@Lg7 = common dso_local global double 0.000000e+00, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local double @log(double %0) #0 {
  %2 = alloca double, align 8
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_4__, align 8
  store double %0, double* %3, align 8
  %19 = load double, double* %3, align 8
  %20 = call i32 @__HI(double %19)
  store i32 %20, i32* %14, align 4
  %21 = load double, double* %3, align 8
  %22 = call i32 @__LO(double %21)
  store i32 %22, i32* %17, align 4
  store i32 0, i32* %13, align 4
  %23 = load i32, i32* %14, align 4
  %24 = icmp slt i32 %23, 1048576
  br i1 %24, label %25, label %53

25:                                               ; preds = %1
  %26 = load i32, i32* %14, align 4
  %27 = and i32 %26, 2147483647
  %28 = load i32, i32* %17, align 4
  %29 = or i32 %27, %28
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %25
  %32 = load double, double* @two54, align 8
  %33 = fneg double %32
  %34 = load double, double* @zero, align 8
  %35 = fdiv double %33, %34
  store double %35, double* %2, align 8
  br label %250

36:                                               ; preds = %25
  %37 = load i32, i32* %14, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %36
  %40 = load double, double* %3, align 8
  %41 = load double, double* %3, align 8
  %42 = fsub double %40, %41
  %43 = load double, double* @zero, align 8
  %44 = fdiv double %42, %43
  store double %44, double* %2, align 8
  br label %250

45:                                               ; preds = %36
  %46 = load i32, i32* %13, align 4
  %47 = sub nsw i32 %46, 54
  store i32 %47, i32* %13, align 4
  %48 = load double, double* @two54, align 8
  %49 = load double, double* %3, align 8
  %50 = fmul double %49, %48
  store double %50, double* %3, align 8
  %51 = load double, double* %3, align 8
  %52 = call i32 @__HI(double %51)
  store i32 %52, i32* %14, align 4
  br label %53

53:                                               ; preds = %45, %1
  %54 = load i32, i32* %14, align 4
  %55 = icmp sge i32 %54, 2146435072
  br i1 %55, label %56, label %60

56:                                               ; preds = %53
  %57 = load double, double* %3, align 8
  %58 = load double, double* %3, align 8
  %59 = fadd double %57, %58
  store double %59, double* %2, align 8
  br label %250

60:                                               ; preds = %53
  %61 = load i32, i32* %14, align 4
  %62 = ashr i32 %61, 20
  %63 = sub nsw i32 %62, 1023
  %64 = load i32, i32* %13, align 4
  %65 = add nsw i32 %64, %63
  store i32 %65, i32* %13, align 4
  %66 = load i32, i32* %14, align 4
  %67 = and i32 %66, 1048575
  store i32 %67, i32* %14, align 4
  %68 = load i32, i32* %14, align 4
  %69 = add nsw i32 %68, 614244
  %70 = and i32 %69, 1048576
  store i32 %70, i32* %15, align 4
  %71 = load double, double* %3, align 8
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  store double %71, double* %72, align 8
  %73 = load i32, i32* %14, align 4
  %74 = load i32, i32* %15, align 4
  %75 = xor i32 %74, 1072693248
  %76 = or i32 %73, %75
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 0
  store i32 %76, i32* %78, align 8
  %79 = load i32, i32* %15, align 4
  %80 = ashr i32 %79, 20
  %81 = load i32, i32* %13, align 4
  %82 = add nsw i32 %81, %80
  store i32 %82, i32* %13, align 4
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %84 = load double, double* %83, align 8
  %85 = fsub double %84, 1.000000e+00
  store double %85, double* %5, align 8
  %86 = load i32, i32* %14, align 4
  %87 = add nsw i32 2, %86
  %88 = and i32 1048575, %87
  %89 = icmp slt i32 %88, 3
  br i1 %89, label %90, label %137

90:                                               ; preds = %60
  %91 = load double, double* %5, align 8
  %92 = load double, double* @zero, align 8
  %93 = fcmp oeq double %91, %92
  br i1 %93, label %94, label %109

94:                                               ; preds = %90
  %95 = load i32, i32* %13, align 4
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %97, label %99

97:                                               ; preds = %94
  %98 = load double, double* @zero, align 8
  store double %98, double* %2, align 8
  br label %250

99:                                               ; preds = %94
  %100 = load i32, i32* %13, align 4
  %101 = sitofp i32 %100 to double
  store double %101, double* %12, align 8
  %102 = load double, double* %12, align 8
  %103 = load double, double* @ln2_hi, align 8
  %104 = fmul double %102, %103
  %105 = load double, double* %12, align 8
  %106 = load double, double* @ln2_lo, align 8
  %107 = fmul double %105, %106
  %108 = fadd double %104, %107
  store double %108, double* %2, align 8
  br label %250

109:                                              ; preds = %90
  %110 = load double, double* %5, align 8
  %111 = load double, double* %5, align 8
  %112 = fmul double %110, %111
  %113 = load double, double* %5, align 8
  %114 = fmul double 0x3FD5555555555555, %113
  %115 = fsub double 5.000000e-01, %114
  %116 = fmul double %112, %115
  store double %116, double* %8, align 8
  %117 = load i32, i32* %13, align 4
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %119, label %123

119:                                              ; preds = %109
  %120 = load double, double* %5, align 8
  %121 = load double, double* %8, align 8
  %122 = fsub double %120, %121
  store double %122, double* %2, align 8
  br label %250

123:                                              ; preds = %109
  %124 = load i32, i32* %13, align 4
  %125 = sitofp i32 %124 to double
  store double %125, double* %12, align 8
  %126 = load double, double* %12, align 8
  %127 = load double, double* @ln2_hi, align 8
  %128 = fmul double %126, %127
  %129 = load double, double* %8, align 8
  %130 = load double, double* %12, align 8
  %131 = load double, double* @ln2_lo, align 8
  %132 = fmul double %130, %131
  %133 = fsub double %129, %132
  %134 = load double, double* %5, align 8
  %135 = fsub double %133, %134
  %136 = fsub double %128, %135
  store double %136, double* %2, align 8
  br label %250

137:                                              ; preds = %60
  %138 = load double, double* %5, align 8
  %139 = load double, double* %5, align 8
  %140 = fadd double 2.000000e+00, %139
  %141 = fdiv double %138, %140
  store double %141, double* %6, align 8
  %142 = load i32, i32* %13, align 4
  %143 = sitofp i32 %142 to double
  store double %143, double* %12, align 8
  %144 = load double, double* %6, align 8
  %145 = load double, double* %6, align 8
  %146 = fmul double %144, %145
  store double %146, double* %7, align 8
  %147 = load i32, i32* %14, align 4
  %148 = sub nsw i32 %147, 398458
  store i32 %148, i32* %15, align 4
  %149 = load double, double* %7, align 8
  %150 = load double, double* %7, align 8
  %151 = fmul double %149, %150
  store double %151, double* %9, align 8
  %152 = load i32, i32* %14, align 4
  %153 = sub nsw i32 440401, %152
  store i32 %153, i32* %16, align 4
  %154 = load double, double* %9, align 8
  %155 = load double, double* @Lg2, align 8
  %156 = load double, double* %9, align 8
  %157 = load double, double* @Lg4, align 8
  %158 = load double, double* %9, align 8
  %159 = load double, double* @Lg6, align 8
  %160 = fmul double %158, %159
  %161 = fadd double %157, %160
  %162 = fmul double %156, %161
  %163 = fadd double %155, %162
  %164 = fmul double %154, %163
  store double %164, double* %10, align 8
  %165 = load double, double* %7, align 8
  %166 = load double, double* @Lg1, align 8
  %167 = load double, double* %9, align 8
  %168 = load double, double* @Lg3, align 8
  %169 = load double, double* %9, align 8
  %170 = load double, double* @Lg5, align 8
  %171 = load double, double* %9, align 8
  %172 = load double, double* @Lg7, align 8
  %173 = fmul double %171, %172
  %174 = fadd double %170, %173
  %175 = fmul double %169, %174
  %176 = fadd double %168, %175
  %177 = fmul double %167, %176
  %178 = fadd double %166, %177
  %179 = fmul double %165, %178
  store double %179, double* %11, align 8
  %180 = load i32, i32* %16, align 4
  %181 = load i32, i32* %15, align 4
  %182 = or i32 %181, %180
  store i32 %182, i32* %15, align 4
  %183 = load double, double* %11, align 8
  %184 = load double, double* %10, align 8
  %185 = fadd double %183, %184
  store double %185, double* %8, align 8
  %186 = load i32, i32* %15, align 4
  %187 = icmp sgt i32 %186, 0
  br i1 %187, label %188, label %223

188:                                              ; preds = %137
  %189 = load double, double* %5, align 8
  %190 = fmul double 5.000000e-01, %189
  %191 = load double, double* %5, align 8
  %192 = fmul double %190, %191
  store double %192, double* %4, align 8
  %193 = load i32, i32* %13, align 4
  %194 = icmp eq i32 %193, 0
  br i1 %194, label %195, label %205

195:                                              ; preds = %188
  %196 = load double, double* %5, align 8
  %197 = load double, double* %4, align 8
  %198 = load double, double* %6, align 8
  %199 = load double, double* %4, align 8
  %200 = load double, double* %8, align 8
  %201 = fadd double %199, %200
  %202 = fmul double %198, %201
  %203 = fsub double %197, %202
  %204 = fsub double %196, %203
  store double %204, double* %2, align 8
  br label %250

205:                                              ; preds = %188
  %206 = load double, double* %12, align 8
  %207 = load double, double* @ln2_hi, align 8
  %208 = fmul double %206, %207
  %209 = load double, double* %4, align 8
  %210 = load double, double* %6, align 8
  %211 = load double, double* %4, align 8
  %212 = load double, double* %8, align 8
  %213 = fadd double %211, %212
  %214 = fmul double %210, %213
  %215 = load double, double* %12, align 8
  %216 = load double, double* @ln2_lo, align 8
  %217 = fmul double %215, %216
  %218 = fadd double %214, %217
  %219 = fsub double %209, %218
  %220 = load double, double* %5, align 8
  %221 = fsub double %219, %220
  %222 = fsub double %208, %221
  store double %222, double* %2, align 8
  br label %250

223:                                              ; preds = %137
  %224 = load i32, i32* %13, align 4
  %225 = icmp eq i32 %224, 0
  br i1 %225, label %226, label %234

226:                                              ; preds = %223
  %227 = load double, double* %5, align 8
  %228 = load double, double* %6, align 8
  %229 = load double, double* %5, align 8
  %230 = load double, double* %8, align 8
  %231 = fsub double %229, %230
  %232 = fmul double %228, %231
  %233 = fsub double %227, %232
  store double %233, double* %2, align 8
  br label %250

234:                                              ; preds = %223
  %235 = load double, double* %12, align 8
  %236 = load double, double* @ln2_hi, align 8
  %237 = fmul double %235, %236
  %238 = load double, double* %6, align 8
  %239 = load double, double* %5, align 8
  %240 = load double, double* %8, align 8
  %241 = fsub double %239, %240
  %242 = fmul double %238, %241
  %243 = load double, double* %12, align 8
  %244 = load double, double* @ln2_lo, align 8
  %245 = fmul double %243, %244
  %246 = fsub double %242, %245
  %247 = load double, double* %5, align 8
  %248 = fsub double %246, %247
  %249 = fsub double %237, %248
  store double %249, double* %2, align 8
  br label %250

250:                                              ; preds = %234, %226, %205, %195, %123, %119, %99, %97, %56, %39, %31
  %251 = load double, double* %2, align 8
  ret double %251
}

declare dso_local i32 @__HI(double) #1

declare dso_local i32 @__LO(double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
