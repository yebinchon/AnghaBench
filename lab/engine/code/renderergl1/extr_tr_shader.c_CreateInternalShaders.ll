; ModuleID = '/home/carl/AnghaBench/lab/engine/code/renderergl1/extr_tr_shader.c_CreateInternalShaders.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/renderergl1/extr_tr_shader.c_CreateInternalShaders.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i8*, i8*, i32, i64 }
%struct.TYPE_7__ = type { i32, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32* }
%struct.TYPE_8__ = type { i32, i32 }

@tr = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@.str = private unnamed_addr constant [10 x i8] c"<default>\00", align 1
@LIGHTMAP_NONE = common dso_local global i32 0, align 4
@stages = common dso_local global %struct.TYPE_7__* null, align 8
@qtrue = common dso_local global i32 0, align 4
@GLS_DEFAULT = common dso_local global i32 0, align 4
@shader = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"<stencil shadow>\00", align 1
@SS_STENCIL_SHADOW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @CreateInternalShaders to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @CreateInternalShaders() #0 {
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @tr, i32 0, i32 3), align 8
  %1 = load i32, i32* @LIGHTMAP_NONE, align 4
  %2 = call i32 @InitShader(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %1)
  %3 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @tr, i32 0, i32 2), align 8
  %4 = load %struct.TYPE_7__*, %struct.TYPE_7__** @stages, align 8
  %5 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %4, i64 0
  %6 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 2
  %7 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i64 0
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %10 = load i32*, i32** %9, align 8
  %11 = getelementptr inbounds i32, i32* %10, i64 0
  store i32 %3, i32* %11, align 4
  %12 = load i32, i32* @qtrue, align 4
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** @stages, align 8
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i64 0
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 1
  store i32 %12, i32* %15, align 4
  %16 = load i32, i32* @GLS_DEFAULT, align 4
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** @stages, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i64 0
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  store i32 %16, i32* %19, align 8
  %20 = call i8* (...) @FinishShader()
  store i8* %20, i8** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @tr, i32 0, i32 1), align 8
  %21 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @shader, i32 0, i32 1), align 4
  %22 = call i32 @Q_strncpyz(i32 %21, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 4)
  %23 = load i32, i32* @SS_STENCIL_SHADOW, align 4
  store i32 %23, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @shader, i32 0, i32 0), align 4
  %24 = call i8* (...) @FinishShader()
  store i8* %24, i8** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @tr, i32 0, i32 0), align 8
  ret void
}

declare dso_local i32 @InitShader(i8*, i32) #1

declare dso_local i8* @FinishShader(...) #1

declare dso_local i32 @Q_strncpyz(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
