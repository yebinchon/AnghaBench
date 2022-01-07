; ModuleID = '/home/carl/AnghaBench/lab/engine/code/client/extr_cl_input.c_CL_JoystickMove.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/client/extr_cl_input.c_CL_JoystickMove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_29__ = type { float }
%struct.TYPE_26__ = type { float*, float* }
%struct.TYPE_28__ = type { i64 }
%struct.TYPE_33__ = type { float }
%struct.TYPE_32__ = type { i64 }
%struct.TYPE_20__ = type { float }
%struct.TYPE_19__ = type { i64 }
%struct.TYPE_35__ = type { float }
%struct.TYPE_34__ = type { i64 }
%struct.TYPE_31__ = type { float }
%struct.TYPE_30__ = type { i64 }
%struct.TYPE_22__ = type { i32 }
%struct.TYPE_24__ = type { i32 }
%struct.TYPE_23__ = type { double }
%struct.TYPE_25__ = type { double }
%struct.TYPE_21__ = type { i32 }
%struct.TYPE_27__ = type { i8*, i8*, i8*, i32 }

@j_yaw = common dso_local global %struct.TYPE_29__* null, align 8
@cl = common dso_local global %struct.TYPE_26__ zeroinitializer, align 8
@j_yaw_axis = common dso_local global %struct.TYPE_28__* null, align 8
@j_side = common dso_local global %struct.TYPE_33__* null, align 8
@j_side_axis = common dso_local global %struct.TYPE_32__* null, align 8
@j_forward = common dso_local global %struct.TYPE_20__* null, align 8
@j_forward_axis = common dso_local global %struct.TYPE_19__* null, align 8
@j_pitch = common dso_local global %struct.TYPE_35__* null, align 8
@j_pitch_axis = common dso_local global %struct.TYPE_34__* null, align 8
@j_up = common dso_local global %struct.TYPE_31__* null, align 8
@j_up_axis = common dso_local global %struct.TYPE_30__* null, align 8
@in_speed = common dso_local global %struct.TYPE_22__ zeroinitializer, align 4
@cl_run = common dso_local global %struct.TYPE_24__* null, align 8
@BUTTON_WALKING = common dso_local global i32 0, align 4
@cls = common dso_local global %struct.TYPE_23__ zeroinitializer, align 8
@cl_anglespeedkey = common dso_local global %struct.TYPE_25__* null, align 8
@in_strafe = common dso_local global %struct.TYPE_21__ zeroinitializer, align 4
@YAW = common dso_local global i64 0, align 8
@in_mlooking = common dso_local global i64 0, align 8
@PITCH = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CL_JoystickMove(%struct.TYPE_27__* %0) #0 {
  %2 = alloca %struct.TYPE_27__*, align 8
  %3 = alloca float, align 4
  %4 = alloca float, align 4
  %5 = alloca float, align 4
  %6 = alloca float, align 4
  %7 = alloca float, align 4
  %8 = alloca float, align 4
  store %struct.TYPE_27__* %0, %struct.TYPE_27__** %2, align 8
  %9 = load %struct.TYPE_29__*, %struct.TYPE_29__** @j_yaw, align 8
  %10 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %9, i32 0, i32 0
  %11 = load float, float* %10, align 4
  %12 = load float*, float** getelementptr inbounds (%struct.TYPE_26__, %struct.TYPE_26__* @cl, i32 0, i32 0), align 8
  %13 = load %struct.TYPE_28__*, %struct.TYPE_28__** @j_yaw_axis, align 8
  %14 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = getelementptr inbounds float, float* %12, i64 %15
  %17 = load float, float* %16, align 4
  %18 = fmul float %11, %17
  store float %18, float* %4, align 4
  %19 = load %struct.TYPE_33__*, %struct.TYPE_33__** @j_side, align 8
  %20 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %19, i32 0, i32 0
  %21 = load float, float* %20, align 4
  %22 = load float*, float** getelementptr inbounds (%struct.TYPE_26__, %struct.TYPE_26__* @cl, i32 0, i32 0), align 8
  %23 = load %struct.TYPE_32__*, %struct.TYPE_32__** @j_side_axis, align 8
  %24 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = getelementptr inbounds float, float* %22, i64 %25
  %27 = load float, float* %26, align 4
  %28 = fmul float %21, %27
  store float %28, float* %5, align 4
  %29 = load %struct.TYPE_20__*, %struct.TYPE_20__** @j_forward, align 8
  %30 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %29, i32 0, i32 0
  %31 = load float, float* %30, align 4
  %32 = load float*, float** getelementptr inbounds (%struct.TYPE_26__, %struct.TYPE_26__* @cl, i32 0, i32 0), align 8
  %33 = load %struct.TYPE_19__*, %struct.TYPE_19__** @j_forward_axis, align 8
  %34 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = getelementptr inbounds float, float* %32, i64 %35
  %37 = load float, float* %36, align 4
  %38 = fmul float %31, %37
  store float %38, float* %6, align 4
  %39 = load %struct.TYPE_35__*, %struct.TYPE_35__** @j_pitch, align 8
  %40 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %39, i32 0, i32 0
  %41 = load float, float* %40, align 4
  %42 = load float*, float** getelementptr inbounds (%struct.TYPE_26__, %struct.TYPE_26__* @cl, i32 0, i32 0), align 8
  %43 = load %struct.TYPE_34__*, %struct.TYPE_34__** @j_pitch_axis, align 8
  %44 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = getelementptr inbounds float, float* %42, i64 %45
  %47 = load float, float* %46, align 4
  %48 = fmul float %41, %47
  store float %48, float* %7, align 4
  %49 = load %struct.TYPE_31__*, %struct.TYPE_31__** @j_up, align 8
  %50 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %49, i32 0, i32 0
  %51 = load float, float* %50, align 4
  %52 = load float*, float** getelementptr inbounds (%struct.TYPE_26__, %struct.TYPE_26__* @cl, i32 0, i32 0), align 8
  %53 = load %struct.TYPE_30__*, %struct.TYPE_30__** @j_up_axis, align 8
  %54 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = getelementptr inbounds float, float* %52, i64 %55
  %57 = load float, float* %56, align 4
  %58 = fmul float %51, %57
  store float %58, float* %8, align 4
  %59 = load i32, i32* getelementptr inbounds (%struct.TYPE_22__, %struct.TYPE_22__* @in_speed, i32 0, i32 0), align 4
  %60 = load %struct.TYPE_24__*, %struct.TYPE_24__** @cl_run, align 8
  %61 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = xor i32 %59, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %71, label %65

65:                                               ; preds = %1
  %66 = load i32, i32* @BUTTON_WALKING, align 4
  %67 = load %struct.TYPE_27__*, %struct.TYPE_27__** %2, align 8
  %68 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 8
  %70 = or i32 %69, %66
  store i32 %70, i32* %68, align 8
  br label %71

71:                                               ; preds = %65, %1
  %72 = load i32, i32* getelementptr inbounds (%struct.TYPE_22__, %struct.TYPE_22__* @in_speed, i32 0, i32 0), align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %82

74:                                               ; preds = %71
  %75 = load double, double* getelementptr inbounds (%struct.TYPE_23__, %struct.TYPE_23__* @cls, i32 0, i32 0), align 8
  %76 = fmul double 1.000000e-03, %75
  %77 = load %struct.TYPE_25__*, %struct.TYPE_25__** @cl_anglespeedkey, align 8
  %78 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %77, i32 0, i32 0
  %79 = load double, double* %78, align 8
  %80 = fmul double %76, %79
  %81 = fptrunc double %80 to float
  store float %81, float* %3, align 4
  br label %86

82:                                               ; preds = %71
  %83 = load double, double* getelementptr inbounds (%struct.TYPE_23__, %struct.TYPE_23__* @cls, i32 0, i32 0), align 8
  %84 = fmul double 1.000000e-03, %83
  %85 = fptrunc double %84 to float
  store float %85, float* %3, align 4
  br label %86

86:                                               ; preds = %82, %74
  %87 = load i32, i32* getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @in_strafe, i32 0, i32 0), align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %109, label %89

89:                                               ; preds = %86
  %90 = load float, float* %3, align 4
  %91 = load float, float* %4, align 4
  %92 = fmul float %90, %91
  %93 = load float*, float** getelementptr inbounds (%struct.TYPE_26__, %struct.TYPE_26__* @cl, i32 0, i32 1), align 8
  %94 = load i64, i64* @YAW, align 8
  %95 = getelementptr inbounds float, float* %93, i64 %94
  %96 = load float, float* %95, align 4
  %97 = fadd float %96, %92
  store float %97, float* %95, align 4
  %98 = load %struct.TYPE_27__*, %struct.TYPE_27__** %2, align 8
  %99 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %98, i32 0, i32 2
  %100 = load i8*, i8** %99, align 8
  %101 = load float, float* %5, align 4
  %102 = fptosi float %101 to i32
  %103 = sext i32 %102 to i64
  %104 = getelementptr i8, i8* %100, i64 %103
  %105 = ptrtoint i8* %104 to i32
  %106 = call i8* @ClampChar(i32 %105)
  %107 = load %struct.TYPE_27__*, %struct.TYPE_27__** %2, align 8
  %108 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %107, i32 0, i32 2
  store i8* %106, i8** %108, align 8
  br label %129

109:                                              ; preds = %86
  %110 = load float, float* %3, align 4
  %111 = load float, float* %5, align 4
  %112 = fmul float %110, %111
  %113 = load float*, float** getelementptr inbounds (%struct.TYPE_26__, %struct.TYPE_26__* @cl, i32 0, i32 1), align 8
  %114 = load i64, i64* @YAW, align 8
  %115 = getelementptr inbounds float, float* %113, i64 %114
  %116 = load float, float* %115, align 4
  %117 = fadd float %116, %112
  store float %117, float* %115, align 4
  %118 = load %struct.TYPE_27__*, %struct.TYPE_27__** %2, align 8
  %119 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %118, i32 0, i32 2
  %120 = load i8*, i8** %119, align 8
  %121 = load float, float* %4, align 4
  %122 = fptosi float %121 to i32
  %123 = sext i32 %122 to i64
  %124 = getelementptr i8, i8* %120, i64 %123
  %125 = ptrtoint i8* %124 to i32
  %126 = call i8* @ClampChar(i32 %125)
  %127 = load %struct.TYPE_27__*, %struct.TYPE_27__** %2, align 8
  %128 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %127, i32 0, i32 2
  store i8* %126, i8** %128, align 8
  br label %129

129:                                              ; preds = %109, %89
  %130 = load i64, i64* @in_mlooking, align 8
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %152

132:                                              ; preds = %129
  %133 = load float, float* %3, align 4
  %134 = load float, float* %6, align 4
  %135 = fmul float %133, %134
  %136 = load float*, float** getelementptr inbounds (%struct.TYPE_26__, %struct.TYPE_26__* @cl, i32 0, i32 1), align 8
  %137 = load i64, i64* @PITCH, align 8
  %138 = getelementptr inbounds float, float* %136, i64 %137
  %139 = load float, float* %138, align 4
  %140 = fadd float %139, %135
  store float %140, float* %138, align 4
  %141 = load %struct.TYPE_27__*, %struct.TYPE_27__** %2, align 8
  %142 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %141, i32 0, i32 1
  %143 = load i8*, i8** %142, align 8
  %144 = load float, float* %7, align 4
  %145 = fptosi float %144 to i32
  %146 = sext i32 %145 to i64
  %147 = getelementptr i8, i8* %143, i64 %146
  %148 = ptrtoint i8* %147 to i32
  %149 = call i8* @ClampChar(i32 %148)
  %150 = load %struct.TYPE_27__*, %struct.TYPE_27__** %2, align 8
  %151 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %150, i32 0, i32 1
  store i8* %149, i8** %151, align 8
  br label %172

152:                                              ; preds = %129
  %153 = load float, float* %3, align 4
  %154 = load float, float* %7, align 4
  %155 = fmul float %153, %154
  %156 = load float*, float** getelementptr inbounds (%struct.TYPE_26__, %struct.TYPE_26__* @cl, i32 0, i32 1), align 8
  %157 = load i64, i64* @PITCH, align 8
  %158 = getelementptr inbounds float, float* %156, i64 %157
  %159 = load float, float* %158, align 4
  %160 = fadd float %159, %155
  store float %160, float* %158, align 4
  %161 = load %struct.TYPE_27__*, %struct.TYPE_27__** %2, align 8
  %162 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %161, i32 0, i32 1
  %163 = load i8*, i8** %162, align 8
  %164 = load float, float* %6, align 4
  %165 = fptosi float %164 to i32
  %166 = sext i32 %165 to i64
  %167 = getelementptr i8, i8* %163, i64 %166
  %168 = ptrtoint i8* %167 to i32
  %169 = call i8* @ClampChar(i32 %168)
  %170 = load %struct.TYPE_27__*, %struct.TYPE_27__** %2, align 8
  %171 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %170, i32 0, i32 1
  store i8* %169, i8** %171, align 8
  br label %172

172:                                              ; preds = %152, %132
  %173 = load %struct.TYPE_27__*, %struct.TYPE_27__** %2, align 8
  %174 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %173, i32 0, i32 0
  %175 = load i8*, i8** %174, align 8
  %176 = load float, float* %8, align 4
  %177 = fptosi float %176 to i32
  %178 = sext i32 %177 to i64
  %179 = getelementptr i8, i8* %175, i64 %178
  %180 = ptrtoint i8* %179 to i32
  %181 = call i8* @ClampChar(i32 %180)
  %182 = load %struct.TYPE_27__*, %struct.TYPE_27__** %2, align 8
  %183 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %182, i32 0, i32 0
  store i8* %181, i8** %183, align 8
  ret void
}

declare dso_local i8* @ClampChar(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
