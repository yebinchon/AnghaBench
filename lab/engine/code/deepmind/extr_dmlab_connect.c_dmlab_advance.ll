; ModuleID = '/home/carl/AnghaBench/lab/engine/code/deepmind/extr_dmlab_connect.c_dmlab_advance.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/deepmind/extr_dmlab_connect.c_dmlab_advance.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32 (...)* }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_16__ = type { i64 }
%struct.TYPE_13__ = type { i32, i32, i32, i32, double, i32, %struct.TYPE_11__*, %struct.TYPE_14__* }
%struct.TYPE_11__ = type { i64 }
%struct.TYPE_14__ = type { i32, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i64 (i32)*, i32 (i32, double)*, i32 (i32, i32)*, i64 (i32)*, %struct.TYPE_10__, i64 (i32)* }
%struct.TYPE_10__ = type { i32 (i32)* }

@re = common dso_local global %struct.TYPE_15__ zeroinitializer, align 8
@RO_BOTTOM_LEFT = common dso_local global i32 0, align 4
@RO_TOP_LEFT = common dso_local global i32 0, align 4
@DMLAB_RECORDING_ERROR_NONE = common dso_local global i64 0, align 8
@EnvCApi_EnvironmentStatus_Error = common dso_local global i32 0, align 4
@EnvCApi_EnvironmentStatus_Terminated = common dso_local global i32 0, align 4
@cl = common dso_local global %struct.TYPE_17__ zeroinitializer, align 4
@kEngineTimePerExternalTime = common dso_local global double 0.000000e+00, align 8
@clc = common dso_local global %struct.TYPE_16__ zeroinitializer, align 8
@CA_ACTIVE = common dso_local global i64 0, align 8
@EnvCApi_EnvironmentStatus_Running = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, double*)* @dmlab_advance to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dmlab_advance(i8* %0, i32 %1, double* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca double*, align 8
  %8 = alloca %struct.TYPE_13__*, align 8
  %9 = alloca %struct.TYPE_14__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  %14 = alloca i32, align 4
  %15 = alloca double, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca double, align 8
  %19 = alloca double, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store double* %2, double** %7, align 8
  %20 = load i32 (...)*, i32 (...)** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @re, i32 0, i32 0), align 8
  %21 = call i32 (...) %20()
  %22 = load i8*, i8** %5, align 8
  %23 = bitcast i8* %22 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %23, %struct.TYPE_13__** %8, align 8
  %24 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %25 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %24, i32 0, i32 7
  %26 = load %struct.TYPE_14__*, %struct.TYPE_14__** %25, align 8
  store %struct.TYPE_14__* %26, %struct.TYPE_14__** %9, align 8
  %27 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %28 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %28, i32 0, i32 5
  %30 = load i64 (i32)*, i64 (i32)** %29, align 8
  %31 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %32 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call i64 %30(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %3
  %37 = call i32 @SCR_SkipRendering(i32 0)
  %38 = load i32, i32* @RO_BOTTOM_LEFT, align 4
  %39 = call i32 @SCR_RenderOrigin(i32 %38)
  br label %44

40:                                               ; preds = %3
  %41 = call i32 @SCR_SkipRendering(i32 1)
  %42 = load i32, i32* @RO_TOP_LEFT, align 4
  %43 = call i32 @SCR_RenderOrigin(i32 %42)
  br label %44

44:                                               ; preds = %40, %36
  %45 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %46 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %45, i32 0, i32 0
  store i32 0, i32* %46, align 8
  %47 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %48 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %48, i32 0, i32 4
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 0
  %51 = load i32 (i32)*, i32 (i32)** %50, align 8
  %52 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %53 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = call i32 %51(i32 %54)
  %56 = load double*, double** %7, align 8
  store double 0.000000e+00, double* %56, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  br label %57

57:                                               ; preds = %195, %44
  %58 = load i32, i32* %11, align 4
  %59 = load i32, i32* %6, align 4
  %60 = icmp slt i32 %58, %59
  br i1 %60, label %61, label %65

61:                                               ; preds = %57
  %62 = load i32, i32* %10, align 4
  %63 = icmp ne i32 %62, 0
  %64 = xor i1 %63, true
  br label %65

65:                                               ; preds = %61, %57
  %66 = phi i1 [ false, %57 ], [ %64, %61 ]
  br i1 %66, label %67, label %198

67:                                               ; preds = %65
  %68 = call double (...) @get_engine_score()
  store double %68, double* %12, align 8
  %69 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %70 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %70, i32 0, i32 3
  %72 = load i64 (i32)*, i64 (i32)** %71, align 8
  %73 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %74 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = call i64 %72(i32 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %123

78:                                               ; preds = %67
  %79 = call double (...) @get_engine_score()
  store double %79, double* %13, align 8
  %80 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %81 = call i32 @load_map(%struct.TYPE_13__* %80)
  store i32 %81, i32* %14, align 4
  %82 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %83 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %82, i32 0, i32 6
  %84 = load %struct.TYPE_11__*, %struct.TYPE_11__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* @DMLAB_RECORDING_ERROR_NONE, align 8
  %88 = icmp ne i64 %86, %87
  br i1 %88, label %89, label %91

89:                                               ; preds = %78
  %90 = load i32, i32* @EnvCApi_EnvironmentStatus_Error, align 4
  store i32 %90, i32* %4, align 4
  br label %209

91:                                               ; preds = %78
  %92 = load i32, i32* %14, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %96, label %94

94:                                               ; preds = %91
  %95 = load i32, i32* @EnvCApi_EnvironmentStatus_Terminated, align 4
  store i32 %95, i32* %4, align 4
  br label %209

96:                                               ; preds = %91
  %97 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %98 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %97, i32 0, i32 1
  %99 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %98, i32 0, i32 0
  %100 = load i64 (i32)*, i64 (i32)** %99, align 8
  %101 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %102 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = call i64 %100(i32 %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %108

106:                                              ; preds = %96
  %107 = load i32, i32* @EnvCApi_EnvironmentStatus_Error, align 4
  store i32 %107, i32* %4, align 4
  br label %209

108:                                              ; preds = %96
  %109 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %110 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %109, i32 0, i32 1
  %111 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %110, i32 0, i32 2
  %112 = load i32 (i32, i32)*, i32 (i32, i32)** %111, align 8
  %113 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %114 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = call i32 %112(i32 %115, i32 0)
  %117 = call double (...) @get_engine_score()
  store double %117, double* %15, align 8
  %118 = load double, double* %15, align 8
  %119 = load double, double* %13, align 8
  %120 = load double, double* %12, align 8
  %121 = fsub double %119, %120
  %122 = fsub double %118, %121
  store double %122, double* %12, align 8
  br label %123

123:                                              ; preds = %108, %67
  %124 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %125 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %125, align 4
  %128 = load i32, i32* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @cl, i32 0, i32 0), align 4
  store i32 %128, i32* %16, align 4
  %129 = call i32 (...) @IN_Frame()
  %130 = call i32 (...) @Com_Frame()
  %131 = load i32, i32* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @cl, i32 0, i32 0), align 4
  store i32 %131, i32* %17, align 4
  %132 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %133 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %132, i32 0, i32 2
  %134 = load i32, i32* %133, align 8
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %136, label %144

136:                                              ; preds = %123
  %137 = load i32, i32* %17, align 4
  %138 = load i32, i32* %16, align 4
  %139 = sub nsw i32 %137, %138
  %140 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %141 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %140, i32 0, i32 3
  %142 = load i32, i32* %141, align 4
  %143 = add nsw i32 %142, %139
  store i32 %143, i32* %141, align 4
  br label %154

144:                                              ; preds = %123
  %145 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %146 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  %148 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %149 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %148, i32 0, i32 2
  %150 = load i32, i32* %149, align 8
  %151 = mul nsw i32 %147, %150
  %152 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %153 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %152, i32 0, i32 3
  store i32 %151, i32* %153, align 4
  br label %154

154:                                              ; preds = %144, %136
  %155 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %156 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %155, i32 0, i32 1
  %157 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %156, i32 0, i32 1
  %158 = load i32 (i32, double)*, i32 (i32, double)** %157, align 8
  %159 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %160 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 8
  %162 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %163 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %162, i32 0, i32 3
  %164 = load i32, i32* %163, align 4
  %165 = sitofp i32 %164 to double
  %166 = load double, double* @kEngineTimePerExternalTime, align 8
  %167 = fmul double %166, 1.000000e+03
  %168 = fdiv double %165, %167
  %169 = call i32 %158(i32 %161, double %168)
  store i32 %169, i32* %10, align 4
  %170 = load i32, i32* %10, align 4
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %174

172:                                              ; preds = %154
  %173 = call i32 (...) @Com_Frame()
  br label %174

174:                                              ; preds = %172, %154
  %175 = load i64, i64* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @clc, i32 0, i32 0), align 8
  %176 = load i64, i64* @CA_ACTIVE, align 8
  %177 = icmp eq i64 %175, %176
  br i1 %177, label %178, label %192

178:                                              ; preds = %174
  %179 = call double (...) @get_engine_score()
  store double %179, double* %18, align 8
  %180 = load double, double* %18, align 8
  %181 = load double, double* %12, align 8
  %182 = fsub double %180, %181
  store double %182, double* %19, align 8
  %183 = load double, double* %19, align 8
  %184 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %185 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %184, i32 0, i32 4
  %186 = load double, double* %185, align 8
  %187 = fadd double %186, %183
  store double %187, double* %185, align 8
  %188 = load double, double* %19, align 8
  %189 = load double*, double** %7, align 8
  %190 = load double, double* %189, align 8
  %191 = fadd double %190, %188
  store double %191, double* %189, align 8
  br label %192

192:                                              ; preds = %178, %174
  %193 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %194 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %193, i32 0, i32 5
  store i32 0, i32* %194, align 8
  br label %195

195:                                              ; preds = %192
  %196 = load i32, i32* %11, align 4
  %197 = add nsw i32 %196, 1
  store i32 %197, i32* %11, align 4
  br label %57

198:                                              ; preds = %65
  %199 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %200 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %199, i32 0, i32 0
  store i32 0, i32* %200, align 8
  %201 = load i32, i32* %10, align 4
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %203, label %205

203:                                              ; preds = %198
  %204 = load i32, i32* @EnvCApi_EnvironmentStatus_Terminated, align 4
  br label %207

205:                                              ; preds = %198
  %206 = load i32, i32* @EnvCApi_EnvironmentStatus_Running, align 4
  br label %207

207:                                              ; preds = %205, %203
  %208 = phi i32 [ %204, %203 ], [ %206, %205 ]
  store i32 %208, i32* %4, align 4
  br label %209

209:                                              ; preds = %207, %106, %94, %89
  %210 = load i32, i32* %4, align 4
  ret i32 %210
}

declare dso_local i32 @SCR_SkipRendering(i32) #1

declare dso_local i32 @SCR_RenderOrigin(i32) #1

declare dso_local double @get_engine_score(...) #1

declare dso_local i32 @load_map(%struct.TYPE_13__*) #1

declare dso_local i32 @IN_Frame(...) #1

declare dso_local i32 @Com_Frame(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
