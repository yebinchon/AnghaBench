; ModuleID = '/home/carl/AnghaBench/lab/engine/code/renderergl1/extr_tr_shade.c_RB_FogPass.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/renderergl1/extr_tr_shade.c_RB_FogPass.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32, i32, i32, %struct.TYPE_9__*, %struct.TYPE_8__ }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_8__ = type { i64*, i32* }
%struct.TYPE_11__ = type { i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 }

@GL_COLOR_ARRAY = common dso_local global i32 0, align 4
@GL_UNSIGNED_BYTE = common dso_local global i32 0, align 4
@tess = common dso_local global %struct.TYPE_12__ zeroinitializer, align 8
@GL_TEXTURE_COORD_ARRAY = common dso_local global i32 0, align 4
@GL_FLOAT = common dso_local global i32 0, align 4
@tr = common dso_local global %struct.TYPE_11__ zeroinitializer, align 8
@FP_EQUAL = common dso_local global i64 0, align 8
@GLS_SRCBLEND_SRC_ALPHA = common dso_local global i32 0, align 4
@GLS_DSTBLEND_ONE_MINUS_SRC_ALPHA = common dso_local global i32 0, align 4
@GLS_DEPTHFUNC_EQUAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @RB_FogPass to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @RB_FogPass() #0 {
  %1 = alloca %struct.TYPE_10__*, align 8
  %2 = alloca i32, align 4
  %3 = load i32, i32* @GL_COLOR_ARRAY, align 4
  %4 = call i32 @qglEnableClientState(i32 %3)
  %5 = load i32, i32* @GL_UNSIGNED_BYTE, align 4
  %6 = load i32*, i32** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @tess, i32 0, i32 5, i32 1), align 8
  %7 = call i32 @qglColorPointer(i32 4, i32 %5, i32 0, i32* %6)
  %8 = load i32, i32* @GL_TEXTURE_COORD_ARRAY, align 4
  %9 = call i32 @qglEnableClientState(i32 %8)
  %10 = load i32, i32* @GL_FLOAT, align 4
  %11 = load i64*, i64** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @tess, i32 0, i32 5, i32 0), align 8
  %12 = getelementptr inbounds i64, i64* %11, i64 0
  %13 = load i64, i64* %12, align 8
  %14 = call i32 @qglTexCoordPointer(i32 2, i32 %10, i32 0, i64 %13)
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @tr, i32 0, i32 1), align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %18 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @tess, i32 0, i32 0), align 8
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i64 %19
  store %struct.TYPE_10__* %20, %struct.TYPE_10__** %1, align 8
  store i32 0, i32* %2, align 4
  br label %21

21:                                               ; preds = %33, %0
  %22 = load i32, i32* %2, align 4
  %23 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @tess, i32 0, i32 1), align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %36

25:                                               ; preds = %21
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %1, align 8
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32*, i32** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @tess, i32 0, i32 5, i32 1), align 8
  %30 = load i32, i32* %2, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %29, i64 %31
  store i32 %28, i32* %32, align 4
  br label %33

33:                                               ; preds = %25
  %34 = load i32, i32* %2, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %2, align 4
  br label %21

36:                                               ; preds = %21
  %37 = load i64*, i64** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @tess, i32 0, i32 5, i32 0), align 8
  %38 = getelementptr inbounds i64, i64* %37, i64 0
  %39 = load i64, i64* %38, align 8
  %40 = inttoptr i64 %39 to float*
  %41 = call i32 @RB_CalcFogTexCoords(float* %40)
  %42 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @tr, i32 0, i32 0), align 8
  %43 = call i32 @GL_Bind(i32 %42)
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @tess, i32 0, i32 4), align 8
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @FP_EQUAL, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %56

49:                                               ; preds = %36
  %50 = load i32, i32* @GLS_SRCBLEND_SRC_ALPHA, align 4
  %51 = load i32, i32* @GLS_DSTBLEND_ONE_MINUS_SRC_ALPHA, align 4
  %52 = or i32 %50, %51
  %53 = load i32, i32* @GLS_DEPTHFUNC_EQUAL, align 4
  %54 = or i32 %52, %53
  %55 = call i32 @GL_State(i32 %54)
  br label %61

56:                                               ; preds = %36
  %57 = load i32, i32* @GLS_SRCBLEND_SRC_ALPHA, align 4
  %58 = load i32, i32* @GLS_DSTBLEND_ONE_MINUS_SRC_ALPHA, align 4
  %59 = or i32 %57, %58
  %60 = call i32 @GL_State(i32 %59)
  br label %61

61:                                               ; preds = %56, %49
  %62 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @tess, i32 0, i32 3), align 4
  %63 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @tess, i32 0, i32 2), align 8
  %64 = call i32 @R_DrawElements(i32 %62, i32 %63)
  ret void
}

declare dso_local i32 @qglEnableClientState(i32) #1

declare dso_local i32 @qglColorPointer(i32, i32, i32, i32*) #1

declare dso_local i32 @qglTexCoordPointer(i32, i32, i32, i64) #1

declare dso_local i32 @RB_CalcFogTexCoords(float*) #1

declare dso_local i32 @GL_Bind(i32) #1

declare dso_local i32 @GL_State(i32) #1

declare dso_local i32 @R_DrawElements(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
