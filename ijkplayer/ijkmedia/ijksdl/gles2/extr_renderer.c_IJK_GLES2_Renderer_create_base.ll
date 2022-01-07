; ModuleID = '/home/carl/AnghaBench/ijkplayer/ijkmedia/ijksdl/gles2/extr_renderer.c_IJK_GLES2_Renderer_create_base.c'
source_filename = "/home/carl/AnghaBench/ijkplayer/ijkmedia/ijksdl/gles2/extr_renderer.c_IJK_GLES2_Renderer_create_base.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i32, i8*, i8*, i8*, i8* }

@GL_VERTEX_SHADER = common dso_local global i32 0, align 4
@GL_FRAGMENT_SHADER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"glCreateProgram\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"glAttachShader(vertex)\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"glAttachShader(fragment)\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"glLinkProgram\00", align 1
@GL_FALSE = common dso_local global i32 0, align 4
@GL_LINK_STATUS = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [13 x i8] c"av4_Position\00", align 1
@.str.5 = private unnamed_addr constant [34 x i8] c"glGetAttribLocation(av4_Position)\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"av2_Texcoord\00", align 1
@.str.7 = private unnamed_addr constant [34 x i8] c"glGetAttribLocation(av2_Texcoord)\00", align 1
@.str.8 = private unnamed_addr constant [24 x i8] c"um4_ModelViewProjection\00", align 1
@.str.9 = private unnamed_addr constant [46 x i8] c"glGetUniformLocation(um4_ModelViewProjection)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_4__* @IJK_GLES2_Renderer_create_base(i8* %0) #0 {
  %2 = alloca %struct.TYPE_4__*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = call i32 @assert(i8* %6)
  %8 = call i64 @calloc(i32 1, i32 48)
  %9 = inttoptr i64 %8 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %9, %struct.TYPE_4__** %4, align 8
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %11 = icmp ne %struct.TYPE_4__* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  br label %99

13:                                               ; preds = %1
  %14 = load i32, i32* @GL_VERTEX_SHADER, align 4
  %15 = call i8* (...) @IJK_GLES2_getVertexShader_default()
  %16 = call i8* @IJK_GLES2_loadShader(i32 %14, i8* %15)
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 5
  store i8* %16, i8** %18, align 8
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 5
  %21 = load i8*, i8** %20, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %13
  br label %99

24:                                               ; preds = %13
  %25 = load i32, i32* @GL_FRAGMENT_SHADER, align 4
  %26 = load i8*, i8** %3, align 8
  %27 = call i8* @IJK_GLES2_loadShader(i32 %25, i8* %26)
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 4
  store i8* %27, i8** %29, align 8
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 4
  %32 = load i8*, i8** %31, align 8
  %33 = icmp ne i8* %32, null
  br i1 %33, label %35, label %34

34:                                               ; preds = %24
  br label %99

35:                                               ; preds = %24
  %36 = call i64 (...) @glCreateProgram()
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  store i64 %36, i64* %38, align 8
  %39 = call i32 @IJK_GLES2_checkError(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %35
  br label %99

45:                                               ; preds = %35
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 5
  %51 = load i8*, i8** %50, align 8
  %52 = call i32 @glAttachShader(i64 %48, i8* %51)
  %53 = call i32 @IJK_GLES2_checkError(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 4
  %59 = load i8*, i8** %58, align 8
  %60 = call i32 @glAttachShader(i64 %56, i8* %59)
  %61 = call i32 @IJK_GLES2_checkError(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = call i32 @glLinkProgram(i64 %64)
  %66 = call i32 @IJK_GLES2_checkError(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  %67 = load i32, i32* @GL_FALSE, align 4
  store i32 %67, i32* %5, align 4
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load i32, i32* @GL_LINK_STATUS, align 4
  %72 = call i32 @glGetProgramiv(i64 %70, i32 %71, i32* %5)
  %73 = load i32, i32* %5, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %76, label %75

75:                                               ; preds = %45
  br label %99

76:                                               ; preds = %45
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = call i8* @glGetAttribLocation(i64 %79, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0))
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 3
  store i8* %80, i8** %82, align 8
  %83 = call i32 @IJK_GLES2_checkError_TRACE(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0))
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = call i8* @glGetAttribLocation(i64 %86, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0))
  %88 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 2
  store i8* %87, i8** %89, align 8
  %90 = call i32 @IJK_GLES2_checkError_TRACE(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.7, i64 0, i64 0))
  %91 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = call i32 @glGetUniformLocation(i64 %93, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i64 0, i64 0))
  %95 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 1
  store i32 %94, i32* %96, align 8
  %97 = call i32 @IJK_GLES2_checkError_TRACE(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.9, i64 0, i64 0))
  %98 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  store %struct.TYPE_4__* %98, %struct.TYPE_4__** %2, align 8
  br label %115

99:                                               ; preds = %75, %44, %34, %23, %12
  %100 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %101 = icmp ne %struct.TYPE_4__* %100, null
  br i1 %101, label %102, label %112

102:                                              ; preds = %99
  %103 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %112

107:                                              ; preds = %102
  %108 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = call i32 @IJK_GLES2_printProgramInfo(i64 %110)
  br label %112

112:                                              ; preds = %107, %102, %99
  %113 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %114 = call i32 @IJK_GLES2_Renderer_free(%struct.TYPE_4__* %113)
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %2, align 8
  br label %115

115:                                              ; preds = %112, %76
  %116 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  ret %struct.TYPE_4__* %116
}

declare dso_local i32 @assert(i8*) #1

declare dso_local i64 @calloc(i32, i32) #1

declare dso_local i8* @IJK_GLES2_loadShader(i32, i8*) #1

declare dso_local i8* @IJK_GLES2_getVertexShader_default(...) #1

declare dso_local i64 @glCreateProgram(...) #1

declare dso_local i32 @IJK_GLES2_checkError(i8*) #1

declare dso_local i32 @glAttachShader(i64, i8*) #1

declare dso_local i32 @glLinkProgram(i64) #1

declare dso_local i32 @glGetProgramiv(i64, i32, i32*) #1

declare dso_local i8* @glGetAttribLocation(i64, i8*) #1

declare dso_local i32 @IJK_GLES2_checkError_TRACE(i8*) #1

declare dso_local i32 @glGetUniformLocation(i64, i8*) #1

declare dso_local i32 @IJK_GLES2_printProgramInfo(i64) #1

declare dso_local i32 @IJK_GLES2_Renderer_free(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
