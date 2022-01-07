; ModuleID = '/home/carl/AnghaBench/lab/engine/code/deepmind/extr_headless_osmesa_glimp.c_GLimp_Init.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/deepmind/extr_headless_osmesa_glimp.c_GLimp_Init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32 (i8*, i8*)* }

@r_colorbits = common dso_local global %struct.TYPE_7__* null, align 8
@r_depthbits = common dso_local global %struct.TYPE_6__* null, align 8
@OSMESA_RGBA = common dso_local global i32 0, align 4
@osmesa_ctx = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"OSMesaCreateContext failed!\00", align 1
@glConfig = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@osmesa_frame_buffer = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"Alloc image buffer failed!\00", align 1
@ri = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@.str.2 = private unnamed_addr constant [13 x i8] c"r_drawBuffer\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"GL_FRONT\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @GLimp_Init(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load %struct.TYPE_7__*, %struct.TYPE_7__** @r_colorbits, align 8
  %4 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %3, i32 0, i32 0
  store i32 16, i32* %4, align 4
  %5 = load %struct.TYPE_6__*, %struct.TYPE_6__** @r_depthbits, align 8
  %6 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 0
  store i32 24, i32* %6, align 4
  %7 = call i32 (...) @GLimp_CommonPreInit()
  %8 = load i32, i32* @OSMESA_RGBA, align 4
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** @r_depthbits, align 8
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @OSMesaCreateContextExt(i32 %8, i32 %11, i32 0, i32 0, i32* null)
  store i32 %12, i32* @osmesa_ctx, align 4
  %13 = load i32, i32* @osmesa_ctx, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %1
  %16 = call i32 @Sys_Error(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %17

17:                                               ; preds = %15, %1
  %18 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @glConfig, i32 0, i32 0), align 4
  %19 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @glConfig, i32 0, i32 1), align 4
  %20 = mul nsw i32 %18, %19
  %21 = mul nsw i32 %20, 4
  %22 = call i32 @calloc(i32 %21, i32 4)
  store i32 %22, i32* @osmesa_frame_buffer, align 4
  %23 = load i32, i32* @osmesa_frame_buffer, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %17
  %26 = call i32 @Sys_Error(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  br label %27

27:                                               ; preds = %25, %17
  %28 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @ri, i32 0, i32 0), align 8
  %29 = call i32 %28(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  %30 = call i32 (...) @GLimp_CommonPostInit()
  ret void
}

declare dso_local i32 @GLimp_CommonPreInit(...) #1

declare dso_local i32 @OSMesaCreateContextExt(i32, i32, i32, i32, i32*) #1

declare dso_local i32 @Sys_Error(i8*) #1

declare dso_local i32 @calloc(i32, i32) #1

declare dso_local i32 @GLimp_CommonPostInit(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
