; ModuleID = '/home/carl/AnghaBench/lab/engine/code/renderergl1/extr_tr_backend.c_GL_BindMultitexture.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/renderergl1/extr_tr_backend.c_GL_BindMultitexture.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64 }
%struct.TYPE_10__ = type { i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_12__ = type { i32* }
%struct.TYPE_9__ = type { i32, i32 }

@r_nobind = common dso_local global %struct.TYPE_11__* null, align 8
@tr = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@glState = common dso_local global %struct.TYPE_12__ zeroinitializer, align 8
@GL_TEXTURE_2D = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @GL_BindMultitexture(%struct.TYPE_9__* %0, i32 %1, %struct.TYPE_9__* %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.TYPE_9__* %2, %struct.TYPE_9__** %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %9, align 4
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %10, align 4
  %17 = load %struct.TYPE_11__*, %struct.TYPE_11__** @r_nobind, align 8
  %18 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %28

21:                                               ; preds = %4
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @tr, i32 0, i32 1), align 8
  %23 = icmp ne %struct.TYPE_8__* %22, null
  br i1 %23, label %24, label %28

24:                                               ; preds = %21
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @tr, i32 0, i32 1), align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %10, align 4
  store i32 %27, i32* %9, align 4
  br label %28

28:                                               ; preds = %24, %21, %4
  %29 = load i32*, i32** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @glState, i32 0, i32 0), align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 1
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %10, align 4
  %33 = icmp ne i32 %31, %32
  br i1 %33, label %34, label %45

34:                                               ; preds = %28
  %35 = call i32 @GL_SelectTexture(i32 1)
  %36 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @tr, i32 0, i32 0), align 8
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 1
  store i32 %36, i32* %38, align 4
  %39 = load i32, i32* %10, align 4
  %40 = load i32*, i32** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @glState, i32 0, i32 0), align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 1
  store i32 %39, i32* %41, align 4
  %42 = load i32, i32* @GL_TEXTURE_2D, align 4
  %43 = load i32, i32* %10, align 4
  %44 = call i32 @qglBindTexture(i32 %42, i32 %43)
  br label %45

45:                                               ; preds = %34, %28
  %46 = load i32*, i32** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @glState, i32 0, i32 0), align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* %9, align 4
  %50 = icmp ne i32 %48, %49
  br i1 %50, label %51, label %62

51:                                               ; preds = %45
  %52 = call i32 @GL_SelectTexture(i32 0)
  %53 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @tr, i32 0, i32 0), align 8
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 1
  store i32 %53, i32* %55, align 4
  %56 = load i32, i32* %9, align 4
  %57 = load i32*, i32** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @glState, i32 0, i32 0), align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 0
  store i32 %56, i32* %58, align 4
  %59 = load i32, i32* @GL_TEXTURE_2D, align 4
  %60 = load i32, i32* %9, align 4
  %61 = call i32 @qglBindTexture(i32 %59, i32 %60)
  br label %62

62:                                               ; preds = %51, %45
  ret void
}

declare dso_local i32 @GL_SelectTexture(i32) #1

declare dso_local i32 @qglBindTexture(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
