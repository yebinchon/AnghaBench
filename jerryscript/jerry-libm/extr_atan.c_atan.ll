; ModuleID = '/home/carl/AnghaBench/jerryscript/jerry-libm/extr_atan.c_atan.c'
source_filename = "/home/carl/AnghaBench/jerryscript/jerry-libm/extr_atan.c_atan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@atanhi = common dso_local global double* null, align 8
@atanlo = common dso_local global double* null, align 8
@huge = common dso_local global double 0.000000e+00, align 8
@one = common dso_local global double 0.000000e+00, align 8
@aT0 = common dso_local global double 0.000000e+00, align 8
@aT2 = common dso_local global double 0.000000e+00, align 8
@aT4 = common dso_local global double 0.000000e+00, align 8
@aT6 = common dso_local global double 0.000000e+00, align 8
@aT8 = common dso_local global double 0.000000e+00, align 8
@aT10 = common dso_local global double 0.000000e+00, align 8
@aT1 = common dso_local global double 0.000000e+00, align 8
@aT3 = common dso_local global double 0.000000e+00, align 8
@aT5 = common dso_local global double 0.000000e+00, align 8
@aT7 = common dso_local global double 0.000000e+00, align 8
@aT9 = common dso_local global double 0.000000e+00, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local double @atan(double %0) #0 {
  %2 = alloca double, align 8
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store double %0, double* %3, align 8
  %11 = load double, double* %3, align 8
  %12 = call i32 @__HI(double %11)
  store i32 %12, i32* %9, align 4
  %13 = load i32, i32* %9, align 4
  %14 = and i32 %13, 2147483647
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* %8, align 4
  %16 = icmp sge i32 %15, 1141899264
  br i1 %16, label %17, label %51

17:                                               ; preds = %1
  %18 = load i32, i32* %8, align 4
  %19 = icmp sgt i32 %18, 2146435072
  br i1 %19, label %27, label %20

20:                                               ; preds = %17
  %21 = load i32, i32* %8, align 4
  %22 = icmp eq i32 %21, 2146435072
  br i1 %22, label %23, label %31

23:                                               ; preds = %20
  %24 = load double, double* %3, align 8
  %25 = call i64 @__LO(double %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %23, %17
  %28 = load double, double* %3, align 8
  %29 = load double, double* %3, align 8
  %30 = fadd double %28, %29
  store double %30, double* %2, align 8
  br label %196

31:                                               ; preds = %23, %20
  %32 = load i32, i32* %9, align 4
  %33 = icmp sgt i32 %32, 0
  br i1 %33, label %34, label %42

34:                                               ; preds = %31
  %35 = load double*, double** @atanhi, align 8
  %36 = getelementptr inbounds double, double* %35, i64 3
  %37 = load double, double* %36, align 8
  %38 = load double*, double** @atanlo, align 8
  %39 = getelementptr inbounds double, double* %38, i64 3
  %40 = load double, double* %39, align 8
  %41 = fadd double %37, %40
  store double %41, double* %2, align 8
  br label %196

42:                                               ; preds = %31
  %43 = load double*, double** @atanhi, align 8
  %44 = getelementptr inbounds double, double* %43, i64 3
  %45 = load double, double* %44, align 8
  %46 = fneg double %45
  %47 = load double*, double** @atanlo, align 8
  %48 = getelementptr inbounds double, double* %47, i64 3
  %49 = load double, double* %48, align 8
  %50 = fsub double %46, %49
  store double %50, double* %2, align 8
  br label %196

51:                                               ; preds = %1
  %52 = load i32, i32* %8, align 4
  %53 = icmp slt i32 %52, 1071382528
  br i1 %53, label %54, label %67

54:                                               ; preds = %51
  %55 = load i32, i32* %8, align 4
  %56 = icmp slt i32 %55, 1042284544
  br i1 %56, label %57, label %66

57:                                               ; preds = %54
  %58 = load double, double* @huge, align 8
  %59 = load double, double* %3, align 8
  %60 = fadd double %58, %59
  %61 = load double, double* @one, align 8
  %62 = fcmp ogt double %60, %61
  br i1 %62, label %63, label %65

63:                                               ; preds = %57
  %64 = load double, double* %3, align 8
  store double %64, double* %2, align 8
  br label %196

65:                                               ; preds = %57
  br label %66

66:                                               ; preds = %65, %54
  store i32 -1, i32* %10, align 4
  br label %108

67:                                               ; preds = %51
  %68 = load double, double* %3, align 8
  %69 = call double @llvm.fabs.f64(double %68)
  store double %69, double* %3, align 8
  %70 = load i32, i32* %8, align 4
  %71 = icmp slt i32 %70, 1072889856
  br i1 %71, label %72, label %92

72:                                               ; preds = %67
  %73 = load i32, i32* %8, align 4
  %74 = icmp slt i32 %73, 1072037888
  br i1 %74, label %75, label %83

75:                                               ; preds = %72
  store i32 0, i32* %10, align 4
  %76 = load double, double* %3, align 8
  %77 = fmul double 2.000000e+00, %76
  %78 = load double, double* @one, align 8
  %79 = fsub double %77, %78
  %80 = load double, double* %3, align 8
  %81 = fadd double 2.000000e+00, %80
  %82 = fdiv double %79, %81
  store double %82, double* %3, align 8
  br label %91

83:                                               ; preds = %72
  store i32 1, i32* %10, align 4
  %84 = load double, double* %3, align 8
  %85 = load double, double* @one, align 8
  %86 = fsub double %84, %85
  %87 = load double, double* %3, align 8
  %88 = load double, double* @one, align 8
  %89 = fadd double %87, %88
  %90 = fdiv double %86, %89
  store double %90, double* %3, align 8
  br label %91

91:                                               ; preds = %83, %75
  br label %107

92:                                               ; preds = %67
  %93 = load i32, i32* %8, align 4
  %94 = icmp slt i32 %93, 1073971200
  br i1 %94, label %95, label %103

95:                                               ; preds = %92
  store i32 2, i32* %10, align 4
  %96 = load double, double* %3, align 8
  %97 = fsub double %96, 1.500000e+00
  %98 = load double, double* @one, align 8
  %99 = load double, double* %3, align 8
  %100 = fmul double 1.500000e+00, %99
  %101 = fadd double %98, %100
  %102 = fdiv double %97, %101
  store double %102, double* %3, align 8
  br label %106

103:                                              ; preds = %92
  store i32 3, i32* %10, align 4
  %104 = load double, double* %3, align 8
  %105 = fdiv double -1.000000e+00, %104
  store double %105, double* %3, align 8
  br label %106

106:                                              ; preds = %103, %95
  br label %107

107:                                              ; preds = %106, %91
  br label %108

108:                                              ; preds = %107, %66
  %109 = load double, double* %3, align 8
  %110 = load double, double* %3, align 8
  %111 = fmul double %109, %110
  store double %111, double* %7, align 8
  %112 = load double, double* %7, align 8
  %113 = load double, double* %7, align 8
  %114 = fmul double %112, %113
  store double %114, double* %4, align 8
  %115 = load double, double* %7, align 8
  %116 = load double, double* @aT0, align 8
  %117 = load double, double* %4, align 8
  %118 = load double, double* @aT2, align 8
  %119 = load double, double* %4, align 8
  %120 = load double, double* @aT4, align 8
  %121 = load double, double* %4, align 8
  %122 = load double, double* @aT6, align 8
  %123 = load double, double* %4, align 8
  %124 = load double, double* @aT8, align 8
  %125 = load double, double* %4, align 8
  %126 = load double, double* @aT10, align 8
  %127 = fmul double %125, %126
  %128 = fadd double %124, %127
  %129 = fmul double %123, %128
  %130 = fadd double %122, %129
  %131 = fmul double %121, %130
  %132 = fadd double %120, %131
  %133 = fmul double %119, %132
  %134 = fadd double %118, %133
  %135 = fmul double %117, %134
  %136 = fadd double %116, %135
  %137 = fmul double %115, %136
  store double %137, double* %5, align 8
  %138 = load double, double* %4, align 8
  %139 = load double, double* @aT1, align 8
  %140 = load double, double* %4, align 8
  %141 = load double, double* @aT3, align 8
  %142 = load double, double* %4, align 8
  %143 = load double, double* @aT5, align 8
  %144 = load double, double* %4, align 8
  %145 = load double, double* @aT7, align 8
  %146 = load double, double* %4, align 8
  %147 = load double, double* @aT9, align 8
  %148 = fmul double %146, %147
  %149 = fadd double %145, %148
  %150 = fmul double %144, %149
  %151 = fadd double %143, %150
  %152 = fmul double %142, %151
  %153 = fadd double %141, %152
  %154 = fmul double %140, %153
  %155 = fadd double %139, %154
  %156 = fmul double %138, %155
  store double %156, double* %6, align 8
  %157 = load i32, i32* %10, align 4
  %158 = icmp slt i32 %157, 0
  br i1 %158, label %159, label %167

159:                                              ; preds = %108
  %160 = load double, double* %3, align 8
  %161 = load double, double* %3, align 8
  %162 = load double, double* %5, align 8
  %163 = load double, double* %6, align 8
  %164 = fadd double %162, %163
  %165 = fmul double %161, %164
  %166 = fsub double %160, %165
  store double %166, double* %2, align 8
  br label %196

167:                                              ; preds = %108
  %168 = load double*, double** @atanhi, align 8
  %169 = load i32, i32* %10, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds double, double* %168, i64 %170
  %172 = load double, double* %171, align 8
  %173 = load double, double* %3, align 8
  %174 = load double, double* %5, align 8
  %175 = load double, double* %6, align 8
  %176 = fadd double %174, %175
  %177 = fmul double %173, %176
  %178 = load double*, double** @atanlo, align 8
  %179 = load i32, i32* %10, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds double, double* %178, i64 %180
  %182 = load double, double* %181, align 8
  %183 = fsub double %177, %182
  %184 = load double, double* %3, align 8
  %185 = fsub double %183, %184
  %186 = fsub double %172, %185
  store double %186, double* %7, align 8
  %187 = load i32, i32* %9, align 4
  %188 = icmp slt i32 %187, 0
  br i1 %188, label %189, label %192

189:                                              ; preds = %167
  %190 = load double, double* %7, align 8
  %191 = fneg double %190
  br label %194

192:                                              ; preds = %167
  %193 = load double, double* %7, align 8
  br label %194

194:                                              ; preds = %192, %189
  %195 = phi double [ %191, %189 ], [ %193, %192 ]
  store double %195, double* %2, align 8
  br label %196

196:                                              ; preds = %194, %159, %63, %42, %34, %27
  %197 = load double, double* %2, align 8
  ret double %197
}

declare dso_local i32 @__HI(double) #1

declare dso_local i64 @__LO(double) #1

; Function Attrs: nounwind readnone speculatable willreturn
declare double @llvm.fabs.f64(double) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone speculatable willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
