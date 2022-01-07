; ModuleID = '/home/carl/AnghaBench/lab/q3map2/q3map2/extr_surface.c_DrawSurfaceForFlare.c'
source_filename = "/home/carl/AnghaBench/lab/q3map2/q3map2/extr_surface.c_DrawSurfaceForFlare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i8* }
%struct.TYPE_5__ = type { i32, i32, i32*, i32, i8* }

@emitFlares = common dso_local global i64 0, align 8
@qfalse = common dso_local global i64 0, align 8
@SURFACE_FLARE = common dso_local global i32 0, align 4
@game = common dso_local global %struct.TYPE_6__* null, align 8
@LS_NONE = common dso_local global i32 0, align 4
@LS_NORMAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_5__* @DrawSurfaceForFlare(i32 %0, i32* %1, i32* %2, i32* %3, i8* %4, i32 %5) #0 {
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_5__*, align 8
  store i32 %0, i32* %8, align 4
  store i32* %1, i32** %9, align 8
  store i32* %2, i32** %10, align 8
  store i32* %3, i32** %11, align 8
  store i8* %4, i8** %12, align 8
  store i32 %5, i32* %13, align 4
  %15 = load i64, i64* @emitFlares, align 8
  %16 = load i64, i64* @qfalse, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %6
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %7, align 8
  br label %96

19:                                               ; preds = %6
  %20 = load i32, i32* @SURFACE_FLARE, align 4
  %21 = call %struct.TYPE_5__* @AllocDrawSurface(i32 %20)
  store %struct.TYPE_5__* %21, %struct.TYPE_5__** %14, align 8
  %22 = load i32, i32* %8, align 4
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 8
  %25 = load i8*, i8** %12, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %27, label %38

27:                                               ; preds = %19
  %28 = load i8*, i8** %12, align 8
  %29 = getelementptr inbounds i8, i8* %28, i64 0
  %30 = load i8, i8* %29, align 1
  %31 = sext i8 %30 to i32
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %27
  %34 = load i8*, i8** %12, align 8
  %35 = call i8* @ShaderInfoForShader(i8* %34)
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 4
  store i8* %35, i8** %37, align 8
  br label %45

38:                                               ; preds = %27, %19
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** @game, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = load i8*, i8** %40, align 8
  %42 = call i8* @ShaderInfoForShader(i8* %41)
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 4
  store i8* %42, i8** %44, align 8
  br label %45

45:                                               ; preds = %38, %33
  %46 = load i32*, i32** %9, align 8
  %47 = icmp ne i32* %46, null
  br i1 %47, label %48, label %54

48:                                               ; preds = %45
  %49 = load i32*, i32** %9, align 8
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @VectorCopy(i32* %49, i32 %52)
  br label %54

54:                                               ; preds = %48, %45
  %55 = load i32*, i32** %10, align 8
  %56 = icmp ne i32* %55, null
  br i1 %56, label %57, label %65

57:                                               ; preds = %54
  %58 = load i32*, i32** %10, align 8
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 2
  %61 = load i32*, i32** %60, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 2
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @VectorCopy(i32* %58, i32 %63)
  br label %65

65:                                               ; preds = %57, %54
  %66 = load i32*, i32** %11, align 8
  %67 = icmp ne i32* %66, null
  br i1 %67, label %68, label %76

68:                                               ; preds = %65
  %69 = load i32*, i32** %11, align 8
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 2
  %72 = load i32*, i32** %71, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 0
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @VectorCopy(i32* %69, i32 %74)
  br label %76

76:                                               ; preds = %68, %65
  %77 = load i32, i32* %13, align 4
  %78 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 1
  store i32 %77, i32* %79, align 4
  %80 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = icmp slt i32 %82, 0
  br i1 %83, label %90, label %84

84:                                               ; preds = %76
  %85 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* @LS_NONE, align 4
  %89 = icmp sge i32 %87, %88
  br i1 %89, label %90, label %94

90:                                               ; preds = %84, %76
  %91 = load i32, i32* @LS_NORMAL, align 4
  %92 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 1
  store i32 %91, i32* %93, align 4
  br label %94

94:                                               ; preds = %90, %84
  %95 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  store %struct.TYPE_5__* %95, %struct.TYPE_5__** %7, align 8
  br label %96

96:                                               ; preds = %94, %18
  %97 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  ret %struct.TYPE_5__* %97
}

declare dso_local %struct.TYPE_5__* @AllocDrawSurface(i32) #1

declare dso_local i8* @ShaderInfoForShader(i8*) #1

declare dso_local i32 @VectorCopy(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
