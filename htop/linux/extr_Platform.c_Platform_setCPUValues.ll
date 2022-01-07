; ModuleID = '/home/carl/AnghaBench/htop/linux/extr_Platform.c_Platform_setCPUValues.c'
source_filename = "/home/carl/AnghaBench/htop/linux/extr_Platform.c_Platform_setCPUValues.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { double*, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i64, i64 }
%struct.TYPE_11__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32, double, double, double, double, double, double, double, double, double }

@CPU_METER_NICE = common dso_local global i64 0, align 8
@CPU_METER_NORMAL = common dso_local global i64 0, align 8
@CPU_METER_KERNEL = common dso_local global i64 0, align 8
@CPU_METER_IRQ = common dso_local global i64 0, align 8
@CPU_METER_SOFTIRQ = common dso_local global i64 0, align 8
@CPU_METER_STEAL = common dso_local global i64 0, align 8
@CPU_METER_GUEST = common dso_local global i64 0, align 8
@CPU_METER_IOWAIT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local double @Platform_setCPUValues(%struct.TYPE_10__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca double*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 1
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %13 = bitcast %struct.TYPE_9__* %12 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %13, %struct.TYPE_11__** %5, align 8
  %14 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %17 = load i32, i32* %4, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i64 %18
  store %struct.TYPE_12__* %19, %struct.TYPE_12__** %6, align 8
  %20 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %2
  br label %29

25:                                               ; preds = %2
  %26 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  br label %29

29:                                               ; preds = %25, %24
  %30 = phi i32 [ 1, %24 ], [ %28, %25 ]
  %31 = sitofp i32 %30 to double
  store double %31, double* %7, align 8
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 0
  %34 = load double*, double** %33, align 8
  store double* %34, double** %9, align 8
  %35 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %35, i32 0, i32 1
  %37 = load double, double* %36, align 8
  %38 = load double, double* %7, align 8
  %39 = fdiv double %37, %38
  %40 = fmul double %39, 1.000000e+02
  %41 = load double*, double** %9, align 8
  %42 = load i64, i64* @CPU_METER_NICE, align 8
  %43 = getelementptr inbounds double, double* %41, i64 %42
  store double %40, double* %43, align 8
  %44 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %44, i32 0, i32 2
  %46 = load double, double* %45, align 8
  %47 = load double, double* %7, align 8
  %48 = fdiv double %46, %47
  %49 = fmul double %48, 1.000000e+02
  %50 = load double*, double** %9, align 8
  %51 = load i64, i64* @CPU_METER_NORMAL, align 8
  %52 = getelementptr inbounds double, double* %50, i64 %51
  store double %49, double* %52, align 8
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 1
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 0
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %175

61:                                               ; preds = %29
  %62 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %63 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %62, i32 0, i32 3
  %64 = load double, double* %63, align 8
  %65 = load double, double* %7, align 8
  %66 = fdiv double %64, %65
  %67 = fmul double %66, 1.000000e+02
  %68 = load double*, double** %9, align 8
  %69 = load i64, i64* @CPU_METER_KERNEL, align 8
  %70 = getelementptr inbounds double, double* %68, i64 %69
  store double %67, double* %70, align 8
  %71 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %72 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %71, i32 0, i32 4
  %73 = load double, double* %72, align 8
  %74 = load double, double* %7, align 8
  %75 = fdiv double %73, %74
  %76 = fmul double %75, 1.000000e+02
  %77 = load double*, double** %9, align 8
  %78 = load i64, i64* @CPU_METER_IRQ, align 8
  %79 = getelementptr inbounds double, double* %77, i64 %78
  store double %76, double* %79, align 8
  %80 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %81 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %80, i32 0, i32 5
  %82 = load double, double* %81, align 8
  %83 = load double, double* %7, align 8
  %84 = fdiv double %82, %83
  %85 = fmul double %84, 1.000000e+02
  %86 = load double*, double** %9, align 8
  %87 = load i64, i64* @CPU_METER_SOFTIRQ, align 8
  %88 = getelementptr inbounds double, double* %86, i64 %87
  store double %85, double* %88, align 8
  %89 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %90 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %89, i32 0, i32 6
  %91 = load double, double* %90, align 8
  %92 = load double, double* %7, align 8
  %93 = fdiv double %91, %92
  %94 = fmul double %93, 1.000000e+02
  %95 = load double*, double** %9, align 8
  %96 = load i64, i64* @CPU_METER_STEAL, align 8
  %97 = getelementptr inbounds double, double* %95, i64 %96
  store double %94, double* %97, align 8
  %98 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %99 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %98, i32 0, i32 7
  %100 = load double, double* %99, align 8
  %101 = load double, double* %7, align 8
  %102 = fdiv double %100, %101
  %103 = fmul double %102, 1.000000e+02
  %104 = load double*, double** %9, align 8
  %105 = load i64, i64* @CPU_METER_GUEST, align 8
  %106 = getelementptr inbounds double, double* %104, i64 %105
  store double %103, double* %106, align 8
  %107 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %108 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %107, i32 0, i32 8
  %109 = load double, double* %108, align 8
  %110 = load double, double* %7, align 8
  %111 = fdiv double %109, %110
  %112 = fmul double %111, 1.000000e+02
  %113 = load double*, double** %9, align 8
  %114 = load i64, i64* @CPU_METER_IOWAIT, align 8
  %115 = getelementptr inbounds double, double* %113, i64 %114
  store double %112, double* %115, align 8
  %116 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %117 = call i32 @Meter_setItems(%struct.TYPE_10__* %116, i32 8)
  %118 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %119 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %118, i32 0, i32 1
  %120 = load %struct.TYPE_9__*, %struct.TYPE_9__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %120, i32 0, i32 0
  %122 = load %struct.TYPE_8__*, %struct.TYPE_8__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %154

126:                                              ; preds = %61
  %127 = load double*, double** %9, align 8
  %128 = getelementptr inbounds double, double* %127, i64 0
  %129 = load double, double* %128, align 8
  %130 = load double*, double** %9, align 8
  %131 = getelementptr inbounds double, double* %130, i64 1
  %132 = load double, double* %131, align 8
  %133 = fadd double %129, %132
  %134 = load double*, double** %9, align 8
  %135 = getelementptr inbounds double, double* %134, i64 2
  %136 = load double, double* %135, align 8
  %137 = fadd double %133, %136
  %138 = load double*, double** %9, align 8
  %139 = getelementptr inbounds double, double* %138, i64 3
  %140 = load double, double* %139, align 8
  %141 = fadd double %137, %140
  %142 = load double*, double** %9, align 8
  %143 = getelementptr inbounds double, double* %142, i64 4
  %144 = load double, double* %143, align 8
  %145 = fadd double %141, %144
  %146 = load double*, double** %9, align 8
  %147 = getelementptr inbounds double, double* %146, i64 5
  %148 = load double, double* %147, align 8
  %149 = fadd double %145, %148
  %150 = load double*, double** %9, align 8
  %151 = getelementptr inbounds double, double* %150, i64 6
  %152 = load double, double* %151, align 8
  %153 = fadd double %149, %152
  store double %153, double* %8, align 8
  br label %174

154:                                              ; preds = %61
  %155 = load double*, double** %9, align 8
  %156 = getelementptr inbounds double, double* %155, i64 0
  %157 = load double, double* %156, align 8
  %158 = load double*, double** %9, align 8
  %159 = getelementptr inbounds double, double* %158, i64 1
  %160 = load double, double* %159, align 8
  %161 = fadd double %157, %160
  %162 = load double*, double** %9, align 8
  %163 = getelementptr inbounds double, double* %162, i64 2
  %164 = load double, double* %163, align 8
  %165 = fadd double %161, %164
  %166 = load double*, double** %9, align 8
  %167 = getelementptr inbounds double, double* %166, i64 3
  %168 = load double, double* %167, align 8
  %169 = fadd double %165, %168
  %170 = load double*, double** %9, align 8
  %171 = getelementptr inbounds double, double* %170, i64 4
  %172 = load double, double* %171, align 8
  %173 = fadd double %169, %172
  store double %173, double* %8, align 8
  br label %174

174:                                              ; preds = %154, %126
  br label %213

175:                                              ; preds = %29
  %176 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %177 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %176, i32 0, i32 9
  %178 = load double, double* %177, align 8
  %179 = load double, double* %7, align 8
  %180 = fdiv double %178, %179
  %181 = fmul double %180, 1.000000e+02
  %182 = load double*, double** %9, align 8
  %183 = getelementptr inbounds double, double* %182, i64 2
  store double %181, double* %183, align 8
  %184 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %185 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %184, i32 0, i32 6
  %186 = load double, double* %185, align 8
  %187 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %188 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %187, i32 0, i32 7
  %189 = load double, double* %188, align 8
  %190 = fadd double %186, %189
  %191 = load double, double* %7, align 8
  %192 = fdiv double %190, %191
  %193 = fmul double %192, 1.000000e+02
  %194 = load double*, double** %9, align 8
  %195 = getelementptr inbounds double, double* %194, i64 3
  store double %193, double* %195, align 8
  %196 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %197 = call i32 @Meter_setItems(%struct.TYPE_10__* %196, i32 4)
  %198 = load double*, double** %9, align 8
  %199 = getelementptr inbounds double, double* %198, i64 0
  %200 = load double, double* %199, align 8
  %201 = load double*, double** %9, align 8
  %202 = getelementptr inbounds double, double* %201, i64 1
  %203 = load double, double* %202, align 8
  %204 = fadd double %200, %203
  %205 = load double*, double** %9, align 8
  %206 = getelementptr inbounds double, double* %205, i64 2
  %207 = load double, double* %206, align 8
  %208 = fadd double %204, %207
  %209 = load double*, double** %9, align 8
  %210 = getelementptr inbounds double, double* %209, i64 3
  %211 = load double, double* %210, align 8
  %212 = fadd double %208, %211
  store double %212, double* %8, align 8
  br label %213

213:                                              ; preds = %175, %174
  %214 = load double, double* %8, align 8
  %215 = call double @CLAMP(double %214, double 0.000000e+00, double 1.000000e+02)
  store double %215, double* %8, align 8
  %216 = load double, double* %8, align 8
  %217 = call i64 @isnan(double %216)
  %218 = icmp ne i64 %217, 0
  br i1 %218, label %219, label %220

219:                                              ; preds = %213
  store double 0.000000e+00, double* %8, align 8
  br label %220

220:                                              ; preds = %219, %213
  %221 = load double, double* %8, align 8
  ret double %221
}

declare dso_local i32 @Meter_setItems(%struct.TYPE_10__*, i32) #1

declare dso_local double @CLAMP(double, double, double) #1

declare dso_local i64 @isnan(double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
