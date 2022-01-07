; ModuleID = '/home/carl/AnghaBench/lab/engine/code/deepmind/extr_dmlab_connect.c_dmlab_render_custom_view.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/deepmind/extr_dmlab_connect.c_dmlab_render_custom_view.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32 (...)* }
%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32 }

@re = common dso_local global %struct.TYPE_11__ zeroinitializer, align 8
@GL_PIXEL_PACK_BUFFER = common dso_local global i32 0, align 4
@GL_STREAM_READ = common dso_local global i32 0, align 4
@GL_RGB = common dso_local global i32 0, align 4
@GL_UNSIGNED_BYTE = common dso_local global i32 0, align 4
@GL_READ_ONLY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i8*)* @dmlab_render_custom_view to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dmlab_render_custom_view(i32 %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca %struct.TYPE_9__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %11 = load i32 (...)*, i32 (...)** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @re, i32 0, i32 0), align 8
  %12 = call i32 (...) %11()
  %13 = call %struct.TYPE_10__* (...) @dmlab_context()
  store %struct.TYPE_10__* %13, %struct.TYPE_10__** %7, align 8
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %15 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  store %struct.TYPE_9__* %16, %struct.TYPE_9__** %8, align 8
  %17 = call i32 (...) @SCR_RenderCustomView()
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 0
  store i32 0, i32* %19, align 4
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %32, label %26

26:                                               ; preds = %3
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 1
  %31 = call i32 @qglGenBuffers(i32 1, i32* %30)
  br label %32

32:                                               ; preds = %26, %3
  %33 = load i32, i32* @GL_PIXEL_PACK_BUFFER, align 4
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @qglBindBuffer(i32 %33, i32 %38)
  %40 = load i32, i32* %4, align 4
  %41 = load i32, i32* %5, align 4
  %42 = mul nsw i32 %40, %41
  %43 = mul nsw i32 %42, 3
  store i32 %43, i32* %9, align 4
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* %9, align 4
  %50 = icmp slt i32 %48, %49
  br i1 %50, label %51, label %61

51:                                               ; preds = %32
  %52 = load i32, i32* %9, align 4
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 0
  store i32 %52, i32* %56, align 4
  %57 = load i32, i32* @GL_PIXEL_PACK_BUFFER, align 4
  %58 = load i32, i32* %9, align 4
  %59 = load i32, i32* @GL_STREAM_READ, align 4
  %60 = call i32 @qglBufferData(i32 %57, i32 %58, i32* null, i32 %59)
  br label %61

61:                                               ; preds = %51, %32
  %62 = load i32, i32* %4, align 4
  %63 = load i32, i32* %5, align 4
  %64 = load i32, i32* @GL_RGB, align 4
  %65 = load i32, i32* @GL_UNSIGNED_BYTE, align 4
  %66 = call i32 @qglReadPixels(i32 0, i32 0, i32 %62, i32 %63, i32 %64, i32 %65, i32 0)
  %67 = load i32, i32* @GL_PIXEL_PACK_BUFFER, align 4
  %68 = load i32, i32* @GL_READ_ONLY, align 4
  %69 = call i8* @qglMapBuffer(i32 %67, i32 %68)
  store i8* %69, i8** %10, align 8
  %70 = load i8*, i8** %6, align 8
  %71 = load i8*, i8** %10, align 8
  %72 = load i32, i32* %9, align 4
  %73 = call i32 @memcpy(i8* %70, i8* %71, i32 %72)
  %74 = load i32, i32* @GL_PIXEL_PACK_BUFFER, align 4
  %75 = call i32 @qglUnmapBuffer(i32 %74)
  %76 = load i32, i32* @GL_PIXEL_PACK_BUFFER, align 4
  %77 = call i32 @qglBindBuffer(i32 %76, i32 0)
  ret void
}

declare dso_local %struct.TYPE_10__* @dmlab_context(...) #1

declare dso_local i32 @SCR_RenderCustomView(...) #1

declare dso_local i32 @qglGenBuffers(i32, i32*) #1

declare dso_local i32 @qglBindBuffer(i32, i32) #1

declare dso_local i32 @qglBufferData(i32, i32, i32*, i32) #1

declare dso_local i32 @qglReadPixels(i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i8* @qglMapBuffer(i32, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @qglUnmapBuffer(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
