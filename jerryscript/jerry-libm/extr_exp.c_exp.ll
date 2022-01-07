; ModuleID = '/home/carl/AnghaBench/jerryscript/jerry-libm/extr_exp.c_exp.c'
source_filename = "/home/carl/AnghaBench/jerryscript/jerry-libm/extr_exp.c_exp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { double, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@o_threshold = common dso_local global double 0.000000e+00, align 8
@huge = common dso_local global double 0.000000e+00, align 8
@u_threshold = common dso_local global double 0.000000e+00, align 8
@twom1000 = common dso_local global double 0.000000e+00, align 8
@ln2HI = common dso_local global double* null, align 8
@ln2LO = common dso_local global double* null, align 8
@invln2 = common dso_local global double 0.000000e+00, align 8
@halF = common dso_local global i64* null, align 8
@one = common dso_local global double 0.000000e+00, align 8
@P1 = common dso_local global double 0.000000e+00, align 8
@P2 = common dso_local global double 0.000000e+00, align 8
@P3 = common dso_local global double 0.000000e+00, align 8
@P4 = common dso_local global double 0.000000e+00, align 8
@P5 = common dso_local global double 0.000000e+00, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local double @exp(double %0) #0 {
  %2 = alloca double, align 8
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_4__, align 8
  store double %0, double* %3, align 8
  store i32 0, i32* %8, align 4
  %12 = load double, double* %3, align 8
  %13 = call i32 @__HI(double %12)
  store i32 %13, i32* %10, align 4
  %14 = load i32, i32* %10, align 4
  %15 = lshr i32 %14, 31
  %16 = and i32 %15, 1
  store i32 %16, i32* %9, align 4
  %17 = load i32, i32* %10, align 4
  %18 = and i32 %17, 2147483647
  store i32 %18, i32* %10, align 4
  %19 = load i32, i32* %10, align 4
  %20 = icmp uge i32 %19, 1082535490
  br i1 %20, label %21, label %60

21:                                               ; preds = %1
  %22 = load i32, i32* %10, align 4
  %23 = icmp uge i32 %22, 2146435072
  br i1 %23, label %24, label %43

24:                                               ; preds = %21
  %25 = load i32, i32* %10, align 4
  %26 = and i32 %25, 1048575
  %27 = load double, double* %3, align 8
  %28 = call i32 @__LO(double %27)
  %29 = or i32 %26, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %24
  %32 = load double, double* %3, align 8
  %33 = load double, double* %3, align 8
  %34 = fadd double %32, %33
  store double %34, double* %2, align 8
  br label %205

35:                                               ; preds = %24
  %36 = load i32, i32* %9, align 4
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %35
  %39 = load double, double* %3, align 8
  br label %41

40:                                               ; preds = %35
  br label %41

41:                                               ; preds = %40, %38
  %42 = phi double [ %39, %38 ], [ 0.000000e+00, %40 ]
  store double %42, double* %2, align 8
  br label %205

43:                                               ; preds = %21
  %44 = load double, double* %3, align 8
  %45 = load double, double* @o_threshold, align 8
  %46 = fcmp ogt double %44, %45
  br i1 %46, label %47, label %51

47:                                               ; preds = %43
  %48 = load double, double* @huge, align 8
  %49 = load double, double* @huge, align 8
  %50 = fmul double %48, %49
  store double %50, double* %2, align 8
  br label %205

51:                                               ; preds = %43
  %52 = load double, double* %3, align 8
  %53 = load double, double* @u_threshold, align 8
  %54 = fcmp olt double %52, %53
  br i1 %54, label %55, label %59

55:                                               ; preds = %51
  %56 = load double, double* @twom1000, align 8
  %57 = load double, double* @twom1000, align 8
  %58 = fmul double %56, %57
  store double %58, double* %2, align 8
  br label %205

59:                                               ; preds = %51
  br label %60

60:                                               ; preds = %59, %1
  %61 = load i32, i32* %10, align 4
  %62 = icmp ugt i32 %61, 1071001154
  br i1 %62, label %63, label %113

63:                                               ; preds = %60
  %64 = load i32, i32* %10, align 4
  %65 = icmp ult i32 %64, 1072734898
  br i1 %65, label %66, label %83

66:                                               ; preds = %63
  %67 = load double, double* %3, align 8
  %68 = load double*, double** @ln2HI, align 8
  %69 = load i32, i32* %9, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds double, double* %68, i64 %70
  %72 = load double, double* %71, align 8
  %73 = fsub double %67, %72
  store double %73, double* %4, align 8
  %74 = load double*, double** @ln2LO, align 8
  %75 = load i32, i32* %9, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds double, double* %74, i64 %76
  %78 = load double, double* %77, align 8
  store double %78, double* %5, align 8
  %79 = load i32, i32* %9, align 4
  %80 = sub nsw i32 1, %79
  %81 = load i32, i32* %9, align 4
  %82 = sub nsw i32 %80, %81
  store i32 %82, i32* %8, align 4
  br label %109

83:                                               ; preds = %63
  %84 = load double, double* @invln2, align 8
  %85 = load double, double* %3, align 8
  %86 = fmul double %84, %85
  %87 = load i64*, i64** @halF, align 8
  %88 = load i32, i32* %9, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i64, i64* %87, i64 %89
  %91 = load i64, i64* %90, align 8
  %92 = sitofp i64 %91 to double
  %93 = fadd double %86, %92
  %94 = fptosi double %93 to i32
  store i32 %94, i32* %8, align 4
  %95 = load i32, i32* %8, align 4
  %96 = sitofp i32 %95 to double
  store double %96, double* %7, align 8
  %97 = load double, double* %3, align 8
  %98 = load double, double* %7, align 8
  %99 = load double*, double** @ln2HI, align 8
  %100 = getelementptr inbounds double, double* %99, i64 0
  %101 = load double, double* %100, align 8
  %102 = fmul double %98, %101
  %103 = fsub double %97, %102
  store double %103, double* %4, align 8
  %104 = load double, double* %7, align 8
  %105 = load double*, double** @ln2LO, align 8
  %106 = getelementptr inbounds double, double* %105, i64 0
  %107 = load double, double* %106, align 8
  %108 = fmul double %104, %107
  store double %108, double* %5, align 8
  br label %109

109:                                              ; preds = %83, %66
  %110 = load double, double* %4, align 8
  %111 = load double, double* %5, align 8
  %112 = fsub double %110, %111
  store double %112, double* %3, align 8
  br label %129

113:                                              ; preds = %60
  %114 = load i32, i32* %10, align 4
  %115 = icmp ult i32 %114, 1043333120
  br i1 %115, label %116, label %127

116:                                              ; preds = %113
  %117 = load double, double* @huge, align 8
  %118 = load double, double* %3, align 8
  %119 = fadd double %117, %118
  %120 = load double, double* @one, align 8
  %121 = fcmp ogt double %119, %120
  br i1 %121, label %122, label %126

122:                                              ; preds = %116
  %123 = load double, double* @one, align 8
  %124 = load double, double* %3, align 8
  %125 = fadd double %123, %124
  store double %125, double* %2, align 8
  br label %205

126:                                              ; preds = %116
  br label %128

127:                                              ; preds = %113
  store i32 0, i32* %8, align 4
  br label %128

128:                                              ; preds = %127, %126
  br label %129

129:                                              ; preds = %128, %109
  %130 = load double, double* %3, align 8
  %131 = load double, double* %3, align 8
  %132 = fmul double %130, %131
  store double %132, double* %7, align 8
  %133 = load double, double* %3, align 8
  %134 = load double, double* %7, align 8
  %135 = load double, double* @P1, align 8
  %136 = load double, double* %7, align 8
  %137 = load double, double* @P2, align 8
  %138 = load double, double* %7, align 8
  %139 = load double, double* @P3, align 8
  %140 = load double, double* %7, align 8
  %141 = load double, double* @P4, align 8
  %142 = load double, double* %7, align 8
  %143 = load double, double* @P5, align 8
  %144 = fmul double %142, %143
  %145 = fadd double %141, %144
  %146 = fmul double %140, %145
  %147 = fadd double %139, %146
  %148 = fmul double %138, %147
  %149 = fadd double %137, %148
  %150 = fmul double %136, %149
  %151 = fadd double %135, %150
  %152 = fmul double %134, %151
  %153 = fsub double %133, %152
  store double %153, double* %6, align 8
  %154 = load i32, i32* %8, align 4
  %155 = icmp eq i32 %154, 0
  br i1 %155, label %156, label %167

156:                                              ; preds = %129
  %157 = load double, double* @one, align 8
  %158 = load double, double* %3, align 8
  %159 = load double, double* %6, align 8
  %160 = fmul double %158, %159
  %161 = load double, double* %6, align 8
  %162 = fsub double %161, 2.000000e+00
  %163 = fdiv double %160, %162
  %164 = load double, double* %3, align 8
  %165 = fsub double %163, %164
  %166 = fsub double %157, %165
  store double %166, double* %2, align 8
  br label %205

167:                                              ; preds = %129
  %168 = load double, double* @one, align 8
  %169 = load double, double* %5, align 8
  %170 = load double, double* %3, align 8
  %171 = load double, double* %6, align 8
  %172 = fmul double %170, %171
  %173 = load double, double* %6, align 8
  %174 = fsub double 2.000000e+00, %173
  %175 = fdiv double %172, %174
  %176 = fsub double %169, %175
  %177 = load double, double* %4, align 8
  %178 = fsub double %176, %177
  %179 = fsub double %168, %178
  %180 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  store double %179, double* %180, align 8
  br label %181

181:                                              ; preds = %167
  %182 = load i32, i32* %8, align 4
  %183 = icmp sge i32 %182, -1021
  br i1 %183, label %184, label %193

184:                                              ; preds = %181
  %185 = load i32, i32* %8, align 4
  %186 = shl i32 %185, 20
  %187 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 1
  %188 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 8
  %190 = add nsw i32 %189, %186
  store i32 %190, i32* %188, align 8
  %191 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %192 = load double, double* %191, align 8
  store double %192, double* %2, align 8
  br label %205

193:                                              ; preds = %181
  %194 = load i32, i32* %8, align 4
  %195 = add nsw i32 %194, 1000
  %196 = shl i32 %195, 20
  %197 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 1
  %198 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 8
  %200 = add nsw i32 %199, %196
  store i32 %200, i32* %198, align 8
  %201 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %202 = load double, double* %201, align 8
  %203 = load double, double* @twom1000, align 8
  %204 = fmul double %202, %203
  store double %204, double* %2, align 8
  br label %205

205:                                              ; preds = %193, %184, %156, %122, %55, %47, %41, %31
  %206 = load double, double* %2, align 8
  ret double %206
}

declare dso_local i32 @__HI(double) #1

declare dso_local i32 @__LO(double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
