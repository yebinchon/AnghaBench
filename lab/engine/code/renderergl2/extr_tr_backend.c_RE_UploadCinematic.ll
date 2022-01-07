; ModuleID = '/home/carl/AnghaBench/lab/engine/code/renderergl2/extr_tr_backend.c_RE_UploadCinematic.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/renderergl2/extr_tr_backend.c_RE_UploadCinematic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__** }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i32 (i32, i8*)* }

@tr = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@ri = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@PRINT_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"RE_UploadCinematic: scratch images not initialized\0A\00", align 1
@GL_TEXTURE_2D = common dso_local global i32 0, align 4
@GL_RGB8 = common dso_local global i32 0, align 4
@GL_RGBA = common dso_local global i32 0, align 4
@GL_UNSIGNED_BYTE = common dso_local global i32 0, align 4
@GL_TEXTURE_MIN_FILTER = common dso_local global i32 0, align 4
@GL_LINEAR = common dso_local global i32 0, align 4
@GL_TEXTURE_MAG_FILTER = common dso_local global i32 0, align 4
@GL_TEXTURE_WRAP_S = common dso_local global i32 0, align 4
@GL_CLAMP_TO_EDGE = common dso_local global i32 0, align 4
@GL_TEXTURE_WRAP_T = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @RE_UploadCinematic(i32 %0, i32 %1, i32 %2, i32 %3, i32* %4, i32 %5, i64 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store i32 %5, i32* %13, align 4
  store i64 %6, i64* %14, align 8
  %16 = load %struct.TYPE_4__**, %struct.TYPE_4__*** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @tr, i32 0, i32 0), align 8
  %17 = load i32, i32* %13, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %16, i64 %18
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = icmp ne %struct.TYPE_4__* %20, null
  br i1 %21, label %26, label %22

22:                                               ; preds = %7
  %23 = load i32 (i32, i8*)*, i32 (i32, i8*)** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @ri, i32 0, i32 0), align 8
  %24 = load i32, i32* @PRINT_WARNING, align 4
  %25 = call i32 %23(i32 %24, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0))
  br label %122

26:                                               ; preds = %7
  %27 = load %struct.TYPE_4__**, %struct.TYPE_4__*** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @tr, i32 0, i32 0), align 8
  %28 = load i32, i32* %13, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %27, i64 %29
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 4
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %15, align 4
  %34 = load i32, i32* %10, align 4
  %35 = load %struct.TYPE_4__**, %struct.TYPE_4__*** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @tr, i32 0, i32 0), align 8
  %36 = load i32, i32* %13, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %35, i64 %37
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = icmp ne i32 %34, %41
  br i1 %42, label %53, label %43

43:                                               ; preds = %26
  %44 = load i32, i32* %11, align 4
  %45 = load %struct.TYPE_4__**, %struct.TYPE_4__*** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @tr, i32 0, i32 0), align 8
  %46 = load i32, i32* %13, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %45, i64 %47
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = icmp ne i32 %44, %51
  br i1 %52, label %53, label %109

53:                                               ; preds = %43, %26
  %54 = load i32, i32* %10, align 4
  %55 = load %struct.TYPE_4__**, %struct.TYPE_4__*** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @tr, i32 0, i32 0), align 8
  %56 = load i32, i32* %13, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %55, i64 %57
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 2
  store i32 %54, i32* %60, align 4
  %61 = load %struct.TYPE_4__**, %struct.TYPE_4__*** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @tr, i32 0, i32 0), align 8
  %62 = load i32, i32* %13, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %61, i64 %63
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  store i32 %54, i32* %66, align 4
  %67 = load i32, i32* %11, align 4
  %68 = load %struct.TYPE_4__**, %struct.TYPE_4__*** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @tr, i32 0, i32 0), align 8
  %69 = load i32, i32* %13, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %68, i64 %70
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 3
  store i32 %67, i32* %73, align 4
  %74 = load %struct.TYPE_4__**, %struct.TYPE_4__*** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @tr, i32 0, i32 0), align 8
  %75 = load i32, i32* %13, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %74, i64 %76
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 1
  store i32 %67, i32* %79, align 4
  %80 = load i32, i32* %15, align 4
  %81 = load i32, i32* @GL_TEXTURE_2D, align 4
  %82 = load i32, i32* @GL_RGB8, align 4
  %83 = load i32, i32* %10, align 4
  %84 = load i32, i32* %11, align 4
  %85 = load i32, i32* @GL_RGBA, align 4
  %86 = load i32, i32* @GL_UNSIGNED_BYTE, align 4
  %87 = load i32*, i32** %12, align 8
  %88 = call i32 @qglTextureImage2DEXT(i32 %80, i32 %81, i32 0, i32 %82, i32 %83, i32 %84, i32 0, i32 %85, i32 %86, i32* %87)
  %89 = load i32, i32* %15, align 4
  %90 = load i32, i32* @GL_TEXTURE_2D, align 4
  %91 = load i32, i32* @GL_TEXTURE_MIN_FILTER, align 4
  %92 = load i32, i32* @GL_LINEAR, align 4
  %93 = call i32 @qglTextureParameterfEXT(i32 %89, i32 %90, i32 %91, i32 %92)
  %94 = load i32, i32* %15, align 4
  %95 = load i32, i32* @GL_TEXTURE_2D, align 4
  %96 = load i32, i32* @GL_TEXTURE_MAG_FILTER, align 4
  %97 = load i32, i32* @GL_LINEAR, align 4
  %98 = call i32 @qglTextureParameterfEXT(i32 %94, i32 %95, i32 %96, i32 %97)
  %99 = load i32, i32* %15, align 4
  %100 = load i32, i32* @GL_TEXTURE_2D, align 4
  %101 = load i32, i32* @GL_TEXTURE_WRAP_S, align 4
  %102 = load i32, i32* @GL_CLAMP_TO_EDGE, align 4
  %103 = call i32 @qglTextureParameterfEXT(i32 %99, i32 %100, i32 %101, i32 %102)
  %104 = load i32, i32* %15, align 4
  %105 = load i32, i32* @GL_TEXTURE_2D, align 4
  %106 = load i32, i32* @GL_TEXTURE_WRAP_T, align 4
  %107 = load i32, i32* @GL_CLAMP_TO_EDGE, align 4
  %108 = call i32 @qglTextureParameterfEXT(i32 %104, i32 %105, i32 %106, i32 %107)
  br label %122

109:                                              ; preds = %43
  %110 = load i64, i64* %14, align 8
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %121

112:                                              ; preds = %109
  %113 = load i32, i32* %15, align 4
  %114 = load i32, i32* @GL_TEXTURE_2D, align 4
  %115 = load i32, i32* %10, align 4
  %116 = load i32, i32* %11, align 4
  %117 = load i32, i32* @GL_RGBA, align 4
  %118 = load i32, i32* @GL_UNSIGNED_BYTE, align 4
  %119 = load i32*, i32** %12, align 8
  %120 = call i32 @qglTextureSubImage2DEXT(i32 %113, i32 %114, i32 0, i32 0, i32 0, i32 %115, i32 %116, i32 %117, i32 %118, i32* %119)
  br label %121

121:                                              ; preds = %112, %109
  br label %122

122:                                              ; preds = %22, %121, %53
  ret void
}

declare dso_local i32 @qglTextureImage2DEXT(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @qglTextureParameterfEXT(i32, i32, i32, i32) #1

declare dso_local i32 @qglTextureSubImage2DEXT(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
