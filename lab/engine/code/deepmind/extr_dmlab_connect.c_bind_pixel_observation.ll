; ModuleID = '/home/carl/AnghaBench/lab/engine/code/deepmind/extr_dmlab_connect.c_bind_pixel_observation.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/deepmind/extr_dmlab_connect.c_bind_pixel_observation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i8*, i32, i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }

@GL_PIXEL_PACK_BUFFER = common dso_local global i32 0, align 4
@GL_READ_ONLY = common dso_local global i32 0, align 4
@GL_RGB = common dso_local global i32 0, align 4
@GL_UNSIGNED_BYTE = common dso_local global i32 0, align 4
@GL_BGR_EXT = common dso_local global i32 0, align 4
@GL_DEPTH_COMPONENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.TYPE_10__*, i32)* @bind_pixel_observation to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @bind_pixel_observation(%struct.TYPE_10__* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %8 = call i64 @use_pbo_rendering(%struct.TYPE_10__* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %33

10:                                               ; preds = %2
  %11 = load i32, i32* %5, align 4
  switch i32 %11, label %28 [
    i32 128, label %12
    i32 130, label %12
    i32 129, label %20
  ]

12:                                               ; preds = %10, %10
  %13 = load i32, i32* @GL_PIXEL_PACK_BUFFER, align 4
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 3
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @qglBindBuffer(i32 %13, i32 %18)
  br label %28

20:                                               ; preds = %10
  %21 = load i32, i32* @GL_PIXEL_PACK_BUFFER, align 4
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 3
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @qglBindBuffer(i32 %21, i32 %26)
  br label %28

28:                                               ; preds = %10, %20, %12
  %29 = load i32, i32* @GL_PIXEL_PACK_BUFFER, align 4
  %30 = load i32, i32* @GL_READ_ONLY, align 4
  %31 = call i8* @qglMapBuffer(i32 %29, i32 %30)
  store i8* %31, i8** %6, align 8
  %32 = load i8*, i8** %6, align 8
  store i8* %32, i8** %3, align 8
  br label %92

33:                                               ; preds = %2
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 0
  %36 = load i8*, i8** %35, align 8
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = mul nsw i32 %39, %42
  %44 = mul nsw i32 %43, 3
  %45 = call i8* @realloc_or_die(i8* %36, i32 %44)
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 0
  store i8* %45, i8** %47, align 8
  %48 = load i32, i32* %5, align 4
  switch i32 %48, label %88 [
    i32 128, label %49
    i32 130, label %62
    i32 129, label %75
  ]

49:                                               ; preds = %33
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @GL_RGB, align 4
  %57 = load i32, i32* @GL_UNSIGNED_BYTE, align 4
  %58 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i32 0, i32 0
  %60 = load i8*, i8** %59, align 8
  %61 = call i32 @qglReadPixels(i32 0, i32 0, i32 %52, i32 %55, i32 %56, i32 %57, i8* %60)
  br label %88

62:                                               ; preds = %33
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @GL_BGR_EXT, align 4
  %70 = load i32, i32* @GL_UNSIGNED_BYTE, align 4
  %71 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %71, i32 0, i32 0
  %73 = load i8*, i8** %72, align 8
  %74 = call i32 @qglReadPixels(i32 0, i32 0, i32 %65, i32 %68, i32 %69, i32 %70, i8* %73)
  br label %88

75:                                               ; preds = %33
  %76 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %80 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* @GL_DEPTH_COMPONENT, align 4
  %83 = load i32, i32* @GL_UNSIGNED_BYTE, align 4
  %84 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %85 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %84, i32 0, i32 0
  %86 = load i8*, i8** %85, align 8
  %87 = call i32 @qglReadPixels(i32 0, i32 0, i32 %78, i32 %81, i32 %82, i32 %83, i8* %86)
  br label %88

88:                                               ; preds = %33, %75, %62, %49
  %89 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %90 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %89, i32 0, i32 0
  %91 = load i8*, i8** %90, align 8
  store i8* %91, i8** %3, align 8
  br label %92

92:                                               ; preds = %88, %28
  %93 = load i8*, i8** %3, align 8
  ret i8* %93
}

declare dso_local i64 @use_pbo_rendering(%struct.TYPE_10__*) #1

declare dso_local i32 @qglBindBuffer(i32, i32) #1

declare dso_local i8* @qglMapBuffer(i32, i32) #1

declare dso_local i8* @realloc_or_die(i8*, i32) #1

declare dso_local i32 @qglReadPixels(i32, i32, i32, i32, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
