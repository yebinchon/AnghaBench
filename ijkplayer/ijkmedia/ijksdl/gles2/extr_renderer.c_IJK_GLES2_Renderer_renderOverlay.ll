; ModuleID = '/home/carl/AnghaBench/ijkplayer/ijkmedia/ijksdl/gles2/extr_renderer.c_IJK_GLES2_Renderer_renderOverlay.c'
source_filename = "/home/carl/AnghaBench/ijkplayer/ijkmedia/ijksdl/gles2/extr_renderer.c_IJK_GLES2_Renderer_renderOverlay.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i64, i64, i64, i64, i32, i64, i64 (%struct.TYPE_15__*, %struct.TYPE_14__*)*, i64, i64, {}* }
%struct.TYPE_14__ = type { i64, i64, i64, i64 }

@GL_FALSE = common dso_local global i32 0, align 4
@GL_COLOR_BUFFER_BIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"glClear\00", align 1
@GL_TRIANGLE_STRIP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"glDrawArrays\00", align 1
@GL_TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @IJK_GLES2_Renderer_renderOverlay(%struct.TYPE_15__* %0, %struct.TYPE_14__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %4, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %5, align 8
  %11 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %12 = icmp ne %struct.TYPE_15__* %11, null
  br i1 %12, label %13, label %19

13:                                               ; preds = %2
  %14 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %14, i32 0, i32 9
  %16 = bitcast {}** %15 to i32 (%struct.TYPE_15__*, %struct.TYPE_14__*)**
  %17 = load i32 (%struct.TYPE_15__*, %struct.TYPE_14__*)*, i32 (%struct.TYPE_15__*, %struct.TYPE_14__*)** %16, align 8
  %18 = icmp ne i32 (%struct.TYPE_15__*, %struct.TYPE_14__*)* %17, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %13, %2
  %20 = load i32, i32* @GL_FALSE, align 4
  store i32 %20, i32* %3, align 4
  br label %167

21:                                               ; preds = %13
  %22 = load i32, i32* @GL_COLOR_BUFFER_BIT, align 4
  %23 = call i32 @glClear(i32 %22)
  %24 = call i32 @IJK_GLES2_checkError_TRACE(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %25 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  store i64 %27, i64* %6, align 8
  %28 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  store i64 %30, i64* %7, align 8
  %31 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %32 = icmp ne %struct.TYPE_14__* %31, null
  br i1 %32, label %33, label %106

33:                                               ; preds = %21
  %34 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  store i64 %36, i64* %6, align 8
  %37 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  store i64 %39, i64* %7, align 8
  %40 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* %6, align 8
  %44 = icmp ne i64 %42, %43
  br i1 %44, label %67, label %45

45:                                               ; preds = %33
  %46 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* %7, align 8
  %50 = icmp ne i64 %48, %49
  br i1 %50, label %67, label %51

51:                                               ; preds = %45
  %52 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %52, i32 0, i32 2
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %55, i32 0, i32 2
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %54, %57
  br i1 %58, label %67, label %59

59:                                               ; preds = %51
  %60 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %60, i32 0, i32 3
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %63, i32 0, i32 3
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %62, %65
  br i1 %66, label %67, label %86

67:                                               ; preds = %59, %51, %45, %33
  %68 = load i64, i64* %6, align 8
  %69 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %69, i32 0, i32 0
  store i64 %68, i64* %70, align 8
  %71 = load i64, i64* %7, align 8
  %72 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %72, i32 0, i32 1
  store i64 %71, i64* %73, align 8
  %74 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %74, i32 0, i32 2
  %76 = load i64, i64* %75, align 8
  %77 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %78 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %77, i32 0, i32 2
  store i64 %76, i64* %78, align 8
  %79 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %80 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %79, i32 0, i32 3
  %81 = load i64, i64* %80, align 8
  %82 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %83 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %82, i32 0, i32 3
  store i64 %81, i64* %83, align 8
  %84 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %85 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %84, i32 0, i32 4
  store i32 1, i32* %85, align 8
  br label %86

86:                                               ; preds = %67, %59
  %87 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %88 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %87, i32 0, i32 6
  %89 = load i64 (%struct.TYPE_15__*, %struct.TYPE_14__*)*, i64 (%struct.TYPE_15__*, %struct.TYPE_14__*)** %88, align 8
  %90 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %91 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %92 = call i64 %89(%struct.TYPE_15__* %90, %struct.TYPE_14__* %91)
  %93 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %94 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %93, i32 0, i32 5
  store i64 %92, i64* %94, align 8
  %95 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %96 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %95, i32 0, i32 9
  %97 = bitcast {}** %96 to i32 (%struct.TYPE_15__*, %struct.TYPE_14__*)**
  %98 = load i32 (%struct.TYPE_15__*, %struct.TYPE_14__*)*, i32 (%struct.TYPE_15__*, %struct.TYPE_14__*)** %97, align 8
  %99 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %100 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %101 = call i32 %98(%struct.TYPE_15__* %99, %struct.TYPE_14__* %100)
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %105, label %103

103:                                              ; preds = %86
  %104 = load i32, i32* @GL_FALSE, align 4
  store i32 %104, i32* %3, align 4
  br label %167

105:                                              ; preds = %86
  br label %109

106:                                              ; preds = %21
  %107 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %108 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %107, i32 0, i32 4
  store i32 1, i32* %108, align 8
  br label %109

109:                                              ; preds = %106, %105
  %110 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %111 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %110, i32 0, i32 5
  %112 = load i64, i64* %111, align 8
  store i64 %112, i64* %8, align 8
  %113 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %114 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %113, i32 0, i32 4
  %115 = load i32, i32* %114, align 8
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %136, label %117

117:                                              ; preds = %109
  %118 = load i64, i64* %8, align 8
  %119 = icmp sgt i64 %118, 0
  br i1 %119, label %120, label %162

120:                                              ; preds = %117
  %121 = load i64, i64* %8, align 8
  %122 = load i64, i64* %6, align 8
  %123 = icmp sgt i64 %121, %122
  br i1 %123, label %124, label %162

124:                                              ; preds = %120
  %125 = load i64, i64* %8, align 8
  %126 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %127 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %126, i32 0, i32 7
  %128 = load i64, i64* %127, align 8
  %129 = icmp ne i64 %125, %128
  br i1 %129, label %130, label %162

130:                                              ; preds = %124
  %131 = load i64, i64* %6, align 8
  %132 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %133 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %132, i32 0, i32 8
  %134 = load i64, i64* %133, align 8
  %135 = icmp ne i64 %131, %134
  br i1 %135, label %136, label %162

136:                                              ; preds = %130, %109
  %137 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %138 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %137, i32 0, i32 4
  store i32 0, i32* %138, align 8
  %139 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %140 = call i32 @IJK_GLES2_Renderer_Vertices_apply(%struct.TYPE_15__* %139)
  %141 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %142 = call i32 @IJK_GLES2_Renderer_Vertices_reloadVertex(%struct.TYPE_15__* %141)
  %143 = load i64, i64* %8, align 8
  %144 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %145 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %144, i32 0, i32 7
  store i64 %143, i64* %145, align 8
  %146 = load i64, i64* %6, align 8
  %147 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %148 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %147, i32 0, i32 8
  store i64 %146, i64* %148, align 8
  %149 = load i64, i64* %8, align 8
  %150 = load i64, i64* %6, align 8
  %151 = sub nsw i64 %149, %150
  store i64 %151, i64* %9, align 8
  %152 = load i64, i64* %9, align 8
  %153 = load i64, i64* %8, align 8
  %154 = sdiv i64 %152, %153
  store i64 %154, i64* %10, align 8
  %155 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %156 = call i32 @IJK_GLES2_Renderer_TexCoords_reset(%struct.TYPE_15__* %155)
  %157 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %158 = load i64, i64* %10, align 8
  %159 = call i32 @IJK_GLES2_Renderer_TexCoords_cropRight(%struct.TYPE_15__* %157, i64 %158)
  %160 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %161 = call i32 @IJK_GLES2_Renderer_TexCoords_reloadVertex(%struct.TYPE_15__* %160)
  br label %162

162:                                              ; preds = %136, %130, %124, %120, %117
  %163 = load i32, i32* @GL_TRIANGLE_STRIP, align 4
  %164 = call i32 @glDrawArrays(i32 %163, i32 0, i32 4)
  %165 = call i32 @IJK_GLES2_checkError_TRACE(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  %166 = load i32, i32* @GL_TRUE, align 4
  store i32 %166, i32* %3, align 4
  br label %167

167:                                              ; preds = %162, %103, %19
  %168 = load i32, i32* %3, align 4
  ret i32 %168
}

declare dso_local i32 @glClear(i32) #1

declare dso_local i32 @IJK_GLES2_checkError_TRACE(i8*) #1

declare dso_local i32 @IJK_GLES2_Renderer_Vertices_apply(%struct.TYPE_15__*) #1

declare dso_local i32 @IJK_GLES2_Renderer_Vertices_reloadVertex(%struct.TYPE_15__*) #1

declare dso_local i32 @IJK_GLES2_Renderer_TexCoords_reset(%struct.TYPE_15__*) #1

declare dso_local i32 @IJK_GLES2_Renderer_TexCoords_cropRight(%struct.TYPE_15__*, i64) #1

declare dso_local i32 @IJK_GLES2_Renderer_TexCoords_reloadVertex(%struct.TYPE_15__*) #1

declare dso_local i32 @glDrawArrays(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
