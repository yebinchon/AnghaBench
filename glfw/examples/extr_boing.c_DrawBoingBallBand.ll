; ModuleID = '/home/carl/AnghaBench/glfw/examples/extr_boing.c_DrawBoingBallBand.c'
source_filename = "/home/carl/AnghaBench/glfw/examples/extr_boing.c_DrawBoingBallBand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { float, float, float }

@DrawBoingBallBand.colorToggle = internal global i32 0, align 4
@STEP_LATITUDE = common dso_local global i32 0, align 4
@drawBallHow = common dso_local global i64 0, align 8
@DRAW_BALL_SHADOW = common dso_local global i64 0, align 8
@RADIUS = common dso_local global float 0.000000e+00, align 4
@STEP_LONGITUDE = common dso_local global i32 0, align 4
@GL_POLYGON = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @DrawBoingBallBand(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_6__, align 4
  %6 = alloca %struct.TYPE_6__, align 4
  %7 = alloca %struct.TYPE_6__, align 4
  %8 = alloca %struct.TYPE_6__, align 4
  %9 = alloca %struct.TYPE_6__, align 4
  %10 = alloca i32, align 4
  %11 = alloca { <2 x float>, float }, align 4
  %12 = alloca { <2 x float>, float }, align 4
  %13 = alloca { <2 x float>, float }, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %10, align 4
  br label %14

14:                                               ; preds = %204, %2
  %15 = load i32, i32* %10, align 4
  %16 = load i32, i32* @STEP_LATITUDE, align 4
  %17 = sub nsw i32 360, %16
  %18 = icmp sle i32 %15, %17
  br i1 %18, label %19, label %208

19:                                               ; preds = %14
  %20 = load i32, i32* @DrawBoingBallBand.colorToggle, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %19
  %23 = call i32 @glColor3f(float 0x3FE99999A0000000, float 0x3FB99999A0000000, float 0x3FB99999A0000000)
  br label %26

24:                                               ; preds = %19
  %25 = call i32 @glColor3f(float 0x3FEE666660000000, float 0x3FEE666660000000, float 0x3FEE666660000000)
  br label %26

26:                                               ; preds = %24, %22
  %27 = load i32, i32* @DrawBoingBallBand.colorToggle, align 4
  %28 = icmp ne i32 %27, 0
  %29 = xor i1 %28, true
  %30 = zext i1 %29 to i32
  store i32 %30, i32* @DrawBoingBallBand.colorToggle, align 4
  %31 = load i64, i64* @drawBallHow, align 8
  %32 = load i64, i64* @DRAW_BALL_SHADOW, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %26
  %35 = call i32 @glColor3f(float 0x3FD6666660000000, float 0x3FD6666660000000, float 0x3FD6666660000000)
  br label %36

36:                                               ; preds = %34, %26
  %37 = load i32, i32* %4, align 4
  %38 = call i64 @cos_deg(i32 %37)
  %39 = sitofp i64 %38 to float
  %40 = load float, float* @RADIUS, align 4
  %41 = fmul float %39, %40
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 0
  store float %41, float* %42, align 4
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 0
  store float %41, float* %43, align 4
  %44 = load i32, i32* %3, align 4
  %45 = call i64 @cos_deg(i32 %44)
  %46 = sitofp i64 %45 to float
  %47 = load float, float* @RADIUS, align 4
  %48 = fmul float %46, %47
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  store float %48, float* %49, align 4
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 0
  store float %48, float* %50, align 4
  %51 = load i32, i32* %10, align 4
  %52 = call i64 @cos_deg(i32 %51)
  %53 = sitofp i64 %52 to float
  %54 = load float, float* @RADIUS, align 4
  %55 = load i32, i32* %3, align 4
  %56 = load i32, i32* @STEP_LONGITUDE, align 4
  %57 = add nsw i32 %55, %56
  %58 = call i64 @sin_deg(i32 %57)
  %59 = sitofp i64 %58 to float
  %60 = fmul float %54, %59
  %61 = fmul float %53, %60
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 1
  store float %61, float* %62, align 4
  %63 = load i32, i32* %10, align 4
  %64 = call i64 @cos_deg(i32 %63)
  %65 = sitofp i64 %64 to float
  %66 = load float, float* @RADIUS, align 4
  %67 = load i32, i32* %3, align 4
  %68 = call i64 @sin_deg(i32 %67)
  %69 = sitofp i64 %68 to float
  %70 = fmul float %66, %69
  %71 = fmul float %65, %70
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 1
  store float %71, float* %72, align 4
  %73 = load i32, i32* %10, align 4
  %74 = load i32, i32* @STEP_LATITUDE, align 4
  %75 = add nsw i32 %73, %74
  %76 = call i64 @cos_deg(i32 %75)
  %77 = sitofp i64 %76 to float
  %78 = load float, float* @RADIUS, align 4
  %79 = load i32, i32* %3, align 4
  %80 = load i32, i32* @STEP_LONGITUDE, align 4
  %81 = add nsw i32 %79, %80
  %82 = call i64 @sin_deg(i32 %81)
  %83 = sitofp i64 %82 to float
  %84 = fmul float %78, %83
  %85 = fmul float %77, %84
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 1
  store float %85, float* %86, align 4
  %87 = load i32, i32* %10, align 4
  %88 = load i32, i32* @STEP_LATITUDE, align 4
  %89 = add nsw i32 %87, %88
  %90 = call i64 @cos_deg(i32 %89)
  %91 = sitofp i64 %90 to float
  %92 = load float, float* @RADIUS, align 4
  %93 = load i32, i32* %3, align 4
  %94 = call i64 @sin_deg(i32 %93)
  %95 = sitofp i64 %94 to float
  %96 = fmul float %92, %95
  %97 = fmul float %91, %96
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 1
  store float %97, float* %98, align 4
  %99 = load i32, i32* %10, align 4
  %100 = call i64 @sin_deg(i32 %99)
  %101 = sitofp i64 %100 to float
  %102 = load float, float* @RADIUS, align 4
  %103 = load i32, i32* %3, align 4
  %104 = load i32, i32* @STEP_LONGITUDE, align 4
  %105 = add nsw i32 %103, %104
  %106 = call i64 @sin_deg(i32 %105)
  %107 = sitofp i64 %106 to float
  %108 = fmul float %102, %107
  %109 = fmul float %101, %108
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 2
  store float %109, float* %110, align 4
  %111 = load i32, i32* %10, align 4
  %112 = call i64 @sin_deg(i32 %111)
  %113 = sitofp i64 %112 to float
  %114 = load float, float* @RADIUS, align 4
  %115 = load i32, i32* %3, align 4
  %116 = call i64 @sin_deg(i32 %115)
  %117 = sitofp i64 %116 to float
  %118 = fmul float %114, %117
  %119 = fmul float %113, %118
  %120 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 2
  store float %119, float* %120, align 4
  %121 = load i32, i32* %10, align 4
  %122 = load i32, i32* @STEP_LATITUDE, align 4
  %123 = add nsw i32 %121, %122
  %124 = call i64 @sin_deg(i32 %123)
  %125 = sitofp i64 %124 to float
  %126 = load float, float* @RADIUS, align 4
  %127 = load i32, i32* %3, align 4
  %128 = load i32, i32* @STEP_LONGITUDE, align 4
  %129 = add nsw i32 %127, %128
  %130 = call i64 @sin_deg(i32 %129)
  %131 = sitofp i64 %130 to float
  %132 = fmul float %126, %131
  %133 = fmul float %125, %132
  %134 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 2
  store float %133, float* %134, align 4
  %135 = load i32, i32* %10, align 4
  %136 = load i32, i32* @STEP_LATITUDE, align 4
  %137 = add nsw i32 %135, %136
  %138 = call i64 @sin_deg(i32 %137)
  %139 = sitofp i64 %138 to float
  %140 = load float, float* @RADIUS, align 4
  %141 = load i32, i32* %3, align 4
  %142 = call i64 @sin_deg(i32 %141)
  %143 = sitofp i64 %142 to float
  %144 = fmul float %140, %143
  %145 = fmul float %139, %144
  %146 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 2
  store float %145, float* %146, align 4
  %147 = load i32, i32* @GL_POLYGON, align 4
  %148 = call i32 @glBegin(i32 %147)
  %149 = bitcast { <2 x float>, float }* %11 to i8*
  %150 = bitcast %struct.TYPE_6__* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %149, i8* align 4 %150, i64 12, i1 false)
  %151 = getelementptr inbounds { <2 x float>, float }, { <2 x float>, float }* %11, i32 0, i32 0
  %152 = load <2 x float>, <2 x float>* %151, align 4
  %153 = getelementptr inbounds { <2 x float>, float }, { <2 x float>, float }* %11, i32 0, i32 1
  %154 = load float, float* %153, align 4
  %155 = bitcast { <2 x float>, float }* %12 to i8*
  %156 = bitcast %struct.TYPE_6__* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %155, i8* align 4 %156, i64 12, i1 false)
  %157 = getelementptr inbounds { <2 x float>, float }, { <2 x float>, float }* %12, i32 0, i32 0
  %158 = load <2 x float>, <2 x float>* %157, align 4
  %159 = getelementptr inbounds { <2 x float>, float }, { <2 x float>, float }* %12, i32 0, i32 1
  %160 = load float, float* %159, align 4
  %161 = bitcast { <2 x float>, float }* %13 to i8*
  %162 = bitcast %struct.TYPE_6__* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %161, i8* align 4 %162, i64 12, i1 false)
  %163 = getelementptr inbounds { <2 x float>, float }, { <2 x float>, float }* %13, i32 0, i32 0
  %164 = load <2 x float>, <2 x float>* %163, align 4
  %165 = getelementptr inbounds { <2 x float>, float }, { <2 x float>, float }* %13, i32 0, i32 1
  %166 = load float, float* %165, align 4
  %167 = call i32 @CrossProduct(<2 x float> %152, float %154, <2 x float> %158, float %160, <2 x float> %164, float %166, %struct.TYPE_6__* %9)
  %168 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 1
  %169 = load float, float* %168, align 4
  %170 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %171 = load float, float* %170, align 4
  %172 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 2
  %173 = load float, float* %172, align 4
  %174 = call i32 @glNormal3f(float %169, float %171, float %173)
  %175 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 1
  %176 = load float, float* %175, align 4
  %177 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 0
  %178 = load float, float* %177, align 4
  %179 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 2
  %180 = load float, float* %179, align 4
  %181 = call i32 @glVertex3f(float %176, float %178, float %180)
  %182 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 1
  %183 = load float, float* %182, align 4
  %184 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 0
  %185 = load float, float* %184, align 4
  %186 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 2
  %187 = load float, float* %186, align 4
  %188 = call i32 @glVertex3f(float %183, float %185, float %187)
  %189 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 1
  %190 = load float, float* %189, align 4
  %191 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 0
  %192 = load float, float* %191, align 4
  %193 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 2
  %194 = load float, float* %193, align 4
  %195 = call i32 @glVertex3f(float %190, float %192, float %194)
  %196 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 1
  %197 = load float, float* %196, align 4
  %198 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %199 = load float, float* %198, align 4
  %200 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 2
  %201 = load float, float* %200, align 4
  %202 = call i32 @glVertex3f(float %197, float %199, float %201)
  %203 = call i32 (...) @glEnd()
  br label %204

204:                                              ; preds = %36
  %205 = load i32, i32* @STEP_LATITUDE, align 4
  %206 = load i32, i32* %10, align 4
  %207 = add nsw i32 %206, %205
  store i32 %207, i32* %10, align 4
  br label %14

208:                                              ; preds = %14
  %209 = load i32, i32* @DrawBoingBallBand.colorToggle, align 4
  %210 = icmp ne i32 %209, 0
  %211 = xor i1 %210, true
  %212 = zext i1 %211 to i32
  store i32 %212, i32* @DrawBoingBallBand.colorToggle, align 4
  ret void
}

declare dso_local i32 @glColor3f(float, float, float) #1

declare dso_local i64 @cos_deg(i32) #1

declare dso_local i64 @sin_deg(i32) #1

declare dso_local i32 @glBegin(i32) #1

declare dso_local i32 @CrossProduct(<2 x float>, float, <2 x float>, float, <2 x float>, float, %struct.TYPE_6__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @glNormal3f(float, float, float) #1

declare dso_local i32 @glVertex3f(float, float, float) #1

declare dso_local i32 @glEnd(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="64" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
