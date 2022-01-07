; ModuleID = '/home/carl/AnghaBench/lab/engine/code/renderergl2/extr_tr_fbo.c_FBO_CreateBuffer.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/renderergl2/extr_tr_fbo.c_FBO_CreateBuffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 (i32, i8*, i32)* }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_5__ = type { i32, i64*, i32, i64, i32, i64, i32, i64, i32, i32, i32 }

@GL_COLOR_ATTACHMENT0 = common dso_local global i32 0, align 4
@GL_DEPTH_ATTACHMENT = common dso_local global i64 0, align 8
@GL_STENCIL_ATTACHMENT = common dso_local global i64 0, align 8
@ri = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@PRINT_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"FBO_CreateBuffer: invalid format %d\0A\00", align 1
@glRefConfig = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@GL_RENDERBUFFER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @FBO_CreateBuffer(%struct.TYPE_5__* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load i32, i32* %6, align 4
  switch i32 %12, label %47 [
    i32 140, label %13
    i32 136, label %13
    i32 137, label %13
    i32 133, label %13
    i32 139, label %13
    i32 135, label %13
    i32 138, label %13
    i32 134, label %13
    i32 145, label %27
    i32 144, label %27
    i32 143, label %27
    i32 142, label %27
    i32 132, label %34
    i32 131, label %34
    i32 129, label %34
    i32 128, label %34
    i32 130, label %34
    i32 141, label %41
    i32 146, label %41
  ]

13:                                               ; preds = %4, %4, %4, %4, %4, %4, %4, %4
  %14 = load i32, i32* %6, align 4
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  store i32 %14, i32* %16, align 8
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 1
  %19 = load i64*, i64** %18, align 8
  %20 = load i32, i32* %7, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i64, i64* %19, i64 %21
  store i64* %22, i64** %9, align 8
  %23 = load i32, i32* @GL_COLOR_ATTACHMENT0, align 4
  %24 = load i32, i32* %7, align 4
  %25 = add nsw i32 %23, %24
  %26 = sext i32 %25 to i64
  store i64 %26, i64* %10, align 8
  br label %52

27:                                               ; preds = %4, %4, %4, %4
  %28 = load i32, i32* %6, align 4
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 2
  store i32 %28, i32* %30, align 8
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 3
  store i64* %32, i64** %9, align 8
  %33 = load i64, i64* @GL_DEPTH_ATTACHMENT, align 8
  store i64 %33, i64* %10, align 8
  br label %52

34:                                               ; preds = %4, %4, %4, %4, %4
  %35 = load i32, i32* %6, align 4
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 4
  store i32 %35, i32* %37, align 8
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 5
  store i64* %39, i64** %9, align 8
  %40 = load i64, i64* @GL_STENCIL_ATTACHMENT, align 8
  store i64 %40, i64* %10, align 8
  br label %52

41:                                               ; preds = %4, %4
  %42 = load i32, i32* %6, align 4
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 6
  store i32 %42, i32* %44, align 8
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 7
  store i64* %46, i64** %9, align 8
  store i64 0, i64* %10, align 8
  br label %52

47:                                               ; preds = %4
  %48 = load i32 (i32, i8*, i32)*, i32 (i32, i8*, i32)** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @ri, i32 0, i32 0), align 8
  %49 = load i32, i32* @PRINT_WARNING, align 4
  %50 = load i32, i32* %6, align 4
  %51 = call i32 %48(i32 %49, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %50)
  br label %124

52:                                               ; preds = %41, %34, %27, %13
  %53 = load i64*, i64** %9, align 8
  %54 = load i64, i64* %53, align 8
  %55 = icmp eq i64 %54, 0
  %56 = zext i1 %55 to i32
  store i32 %56, i32* %11, align 4
  %57 = load i32, i32* %11, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %52
  %60 = load i64*, i64** %9, align 8
  %61 = call i32 @qglGenRenderbuffers(i32 1, i64* %60)
  br label %62

62:                                               ; preds = %59, %52
  %63 = load i32, i32* %8, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %80

65:                                               ; preds = %62
  %66 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @glRefConfig, i32 0, i32 0), align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %80

68:                                               ; preds = %65
  %69 = load i64*, i64** %9, align 8
  %70 = load i64, i64* %69, align 8
  %71 = load i32, i32* %8, align 4
  %72 = load i32, i32* %6, align 4
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 10
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 9
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @qglNamedRenderbufferStorageMultisampleEXT(i64 %70, i32 %71, i32 %72, i32 %75, i32 %78)
  br label %91

80:                                               ; preds = %65, %62
  %81 = load i64*, i64** %9, align 8
  %82 = load i64, i64* %81, align 8
  %83 = load i32, i32* %6, align 4
  %84 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 10
  %86 = load i32, i32* %85, align 8
  %87 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i32 0, i32 9
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @qglNamedRenderbufferStorageEXT(i64 %82, i32 %83, i32 %86, i32 %89)
  br label %91

91:                                               ; preds = %80, %68
  %92 = load i32, i32* %11, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %124

94:                                               ; preds = %91
  %95 = load i64, i64* %10, align 8
  %96 = icmp eq i64 %95, 0
  br i1 %96, label %97, label %114

97:                                               ; preds = %94
  %98 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i32 0, i32 8
  %100 = load i32, i32* %99, align 8
  %101 = load i64, i64* @GL_DEPTH_ATTACHMENT, align 8
  %102 = load i32, i32* @GL_RENDERBUFFER, align 4
  %103 = load i64*, i64** %9, align 8
  %104 = load i64, i64* %103, align 8
  %105 = call i32 @qglNamedFramebufferRenderbufferEXT(i32 %100, i64 %101, i32 %102, i64 %104)
  %106 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %107 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %106, i32 0, i32 8
  %108 = load i32, i32* %107, align 8
  %109 = load i64, i64* @GL_STENCIL_ATTACHMENT, align 8
  %110 = load i32, i32* @GL_RENDERBUFFER, align 4
  %111 = load i64*, i64** %9, align 8
  %112 = load i64, i64* %111, align 8
  %113 = call i32 @qglNamedFramebufferRenderbufferEXT(i32 %108, i64 %109, i32 %110, i64 %112)
  br label %123

114:                                              ; preds = %94
  %115 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %116 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %115, i32 0, i32 8
  %117 = load i32, i32* %116, align 8
  %118 = load i64, i64* %10, align 8
  %119 = load i32, i32* @GL_RENDERBUFFER, align 4
  %120 = load i64*, i64** %9, align 8
  %121 = load i64, i64* %120, align 8
  %122 = call i32 @qglNamedFramebufferRenderbufferEXT(i32 %117, i64 %118, i32 %119, i64 %121)
  br label %123

123:                                              ; preds = %114, %97
  br label %124

124:                                              ; preds = %47, %123, %91
  ret void
}

declare dso_local i32 @qglGenRenderbuffers(i32, i64*) #1

declare dso_local i32 @qglNamedRenderbufferStorageMultisampleEXT(i64, i32, i32, i32, i32) #1

declare dso_local i32 @qglNamedRenderbufferStorageEXT(i64, i32, i32, i32) #1

declare dso_local i32 @qglNamedFramebufferRenderbufferEXT(i32, i64, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
