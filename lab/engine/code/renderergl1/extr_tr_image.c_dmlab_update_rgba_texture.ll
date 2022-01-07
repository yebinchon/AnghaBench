; ModuleID = '/home/carl/AnghaBench/lab/engine/code/renderergl1/extr_tr_image.c_dmlab_update_rgba_texture.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/renderergl1/extr_tr_image.c_dmlab_update_rgba_texture.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i64, i32* }

@hashTable = common dso_local global %struct.TYPE_4__** null, align 8
@IMGFLAG_PICMIP = common dso_local global i32 0, align 4
@IMGFLAG_MIPMAP = common dso_local global i32 0, align 4
@glState = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@GL_TEXTURE_2D = common dso_local global i32 0, align 4
@qfalse = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dmlab_update_rgba_texture(i8* %0, i32 %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_4__*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %15 = load i8*, i8** %6, align 8
  %16 = call i64 @generateHashValue(i8* %15)
  store i64 %16, i64* %11, align 8
  %17 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @hashTable, align 8
  %18 = load i64, i64* %11, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %17, i64 %18
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  store %struct.TYPE_4__* %20, %struct.TYPE_4__** %10, align 8
  br label %21

21:                                               ; preds = %86, %4
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %23 = icmp ne %struct.TYPE_4__* %22, null
  br i1 %23, label %24, label %90

24:                                               ; preds = %21
  %25 = load i8*, i8** %6, align 8
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 6
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @strcmp(i8* %25, i32 %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %85, label %31

31:                                               ; preds = %24
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @IMGFLAG_PICMIP, align 4
  %36 = and i32 %34, %35
  store i32 %36, i32* %12, align 4
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @IMGFLAG_MIPMAP, align 4
  %41 = and i32 %39, %40
  store i32 %41, i32* %13, align 4
  %42 = load i32, i32* %7, align 4
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = icmp ne i32 %42, %45
  br i1 %46, label %53, label %47

47:                                               ; preds = %31
  %48 = load i32, i32* %8, align 4
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = icmp ne i32 %48, %51
  br label %53

53:                                               ; preds = %47, %31
  %54 = phi i1 [ true, %31 ], [ %52, %47 ]
  %55 = zext i1 %54 to i32
  store i32 %55, i32* %14, align 4
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 5
  %58 = load i32, i32* %57, align 4
  %59 = load i32*, i32** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @glState, i32 0, i32 1), align 8
  %60 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @glState, i32 0, i32 0), align 8
  %61 = getelementptr inbounds i32, i32* %59, i64 %60
  store i32 %58, i32* %61, align 4
  %62 = load i32, i32* @GL_TEXTURE_2D, align 4
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 5
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @qglBindTexture(i32 %62, i32 %65)
  %67 = load i8*, i8** %9, align 8
  %68 = bitcast i8* %67 to i32*
  %69 = load i32, i32* %7, align 4
  %70 = load i32, i32* %8, align 4
  %71 = load i32, i32* %13, align 4
  %72 = load i32, i32* %12, align 4
  %73 = load i32, i32* @qfalse, align 4
  %74 = load i32, i32* @qfalse, align 4
  %75 = load i32, i32* %14, align 4
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 4
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 1
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 2
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 3
  %84 = call i32 @Upload32(i32* %68, i32 %69, i32 %70, i32 0, i32 %71, i32 %72, i32 %73, i32 %74, i32 %75, i32* %77, i32* %79, i32* %81, i32* %83)
  store i32 1, i32* %5, align 4
  br label %91

85:                                               ; preds = %24
  br label %86

86:                                               ; preds = %85
  %87 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 7
  %89 = load %struct.TYPE_4__*, %struct.TYPE_4__** %88, align 8
  store %struct.TYPE_4__* %89, %struct.TYPE_4__** %10, align 8
  br label %21

90:                                               ; preds = %21
  store i32 0, i32* %5, align 4
  br label %91

91:                                               ; preds = %90, %53
  %92 = load i32, i32* %5, align 4
  ret i32 %92
}

declare dso_local i64 @generateHashValue(i8*) #1

declare dso_local i32 @strcmp(i8*, i32) #1

declare dso_local i32 @qglBindTexture(i32, i32) #1

declare dso_local i32 @Upload32(i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
