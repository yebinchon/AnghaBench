; ModuleID = '/home/carl/AnghaBench/lab/engine/code/renderergl2/extr_tr_surface.c_RB_SurfaceVaoCached.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/renderergl2/extr_tr_surface.c_RB_SurfaceVaoCached.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i8*, i8*, i64, i32, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i32 }

@qfalse = common dso_local global i8* null, align 8
@tess = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@qtrue = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32, i32*, i32, i32*, i32, i32)* @RB_SurfaceVaoCached to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @RB_SurfaceVaoCached(i32 %0, i32* %1, i32 %2, i32* %3, i32 %4, i32 %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  store i32 %0, i32* %8, align 4
  store i32* %1, i32** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32* %3, i32** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %17 = load i8*, i8** @qfalse, align 8
  store i8* %17, i8** %14, align 8
  %18 = load i8*, i8** @qfalse, align 8
  store i8* %18, i8** %15, align 8
  %19 = load i8*, i8** @qfalse, align 8
  store i8* %19, i8** %16, align 8
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @tess, i32 0, i32 8), align 8
  %21 = call i32 @ShaderRequiresCPUDeforms(%struct.TYPE_5__* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %33, label %23

23:                                               ; preds = %6
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @tess, i32 0, i32 8), align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %33, label %28

28:                                               ; preds = %23
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @tess, i32 0, i32 8), align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %28, %23, %6
  %34 = load i8*, i8** @qfalse, align 8
  store i8* %34, i8** %7, align 8
  br label %93

35:                                               ; preds = %28
  %36 = load i32, i32* %10, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %35
  %39 = load i32, i32* %8, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %43, label %41

41:                                               ; preds = %38, %35
  %42 = load i8*, i8** @qfalse, align 8
  store i8* %42, i8** %7, align 8
  br label %93

43:                                               ; preds = %38
  %44 = call i32 (...) @VaoCache_BindVao()
  %45 = load i32, i32* %12, align 4
  %46 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @tess, i32 0, i32 0), align 8
  %47 = or i32 %46, %45
  store i32 %47, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @tess, i32 0, i32 0), align 8
  %48 = load i32, i32* %13, align 4
  %49 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @tess, i32 0, i32 1), align 4
  %50 = or i32 %49, %48
  store i32 %50, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @tess, i32 0, i32 1), align 4
  %51 = load i32, i32* %8, align 4
  %52 = load i32, i32* %10, align 4
  %53 = call i32 @VaoCache_CheckAdd(i8** %16, i8** %14, i8** %15, i32 %51, i32 %52)
  %54 = load i8*, i8** %16, align 8
  %55 = icmp ne i8* %54, null
  br i1 %55, label %56, label %62

56:                                               ; preds = %43
  %57 = call i32 (...) @RB_EndSurface()
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @tess, i32 0, i32 8), align 8
  %59 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @tess, i32 0, i32 7), align 4
  %60 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @tess, i32 0, i32 6), align 8
  %61 = call i32 @RB_BeginSurface(%struct.TYPE_5__* %58, i32 %59, i32 %60)
  br label %62

62:                                               ; preds = %56, %43
  %63 = load i8*, i8** %14, align 8
  %64 = icmp ne i8* %63, null
  br i1 %64, label %65, label %67

65:                                               ; preds = %62
  %66 = call i32 (...) @VaoCache_RecycleVertexBuffer()
  br label %67

67:                                               ; preds = %65, %62
  %68 = load i8*, i8** %15, align 8
  %69 = icmp ne i8* %68, null
  br i1 %69, label %70, label %72

70:                                               ; preds = %67
  %71 = call i32 (...) @VaoCache_RecycleIndexBuffer()
  br label %72

72:                                               ; preds = %70, %67
  %73 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @tess, i32 0, i32 5), align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %77, label %75

75:                                               ; preds = %72
  %76 = call i32 (...) @VaoCache_InitQueue()
  br label %77

77:                                               ; preds = %75, %72
  %78 = load i32*, i32** %9, align 8
  %79 = load i32, i32* %8, align 4
  %80 = load i32*, i32** %11, align 8
  %81 = load i32, i32* %10, align 4
  %82 = call i32 @VaoCache_AddSurface(i32* %78, i32 %79, i32* %80, i32 %81)
  %83 = load i32, i32* %10, align 4
  %84 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @tess, i32 0, i32 2), align 8
  %85 = add nsw i32 %84, %83
  store i32 %85, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @tess, i32 0, i32 2), align 8
  %86 = load i32, i32* %8, align 4
  %87 = sext i32 %86 to i64
  %88 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @tess, i32 0, i32 5), align 8
  %89 = add nsw i64 %88, %87
  store i64 %89, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @tess, i32 0, i32 5), align 8
  %90 = load i8*, i8** @qfalse, align 8
  store i8* %90, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @tess, i32 0, i32 4), align 8
  %91 = load i8*, i8** @qtrue, align 8
  store i8* %91, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @tess, i32 0, i32 3), align 8
  %92 = load i8*, i8** @qtrue, align 8
  store i8* %92, i8** %7, align 8
  br label %93

93:                                               ; preds = %77, %41, %33
  %94 = load i8*, i8** %7, align 8
  ret i8* %94
}

declare dso_local i32 @ShaderRequiresCPUDeforms(%struct.TYPE_5__*) #1

declare dso_local i32 @VaoCache_BindVao(...) #1

declare dso_local i32 @VaoCache_CheckAdd(i8**, i8**, i8**, i32, i32) #1

declare dso_local i32 @RB_EndSurface(...) #1

declare dso_local i32 @RB_BeginSurface(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i32 @VaoCache_RecycleVertexBuffer(...) #1

declare dso_local i32 @VaoCache_RecycleIndexBuffer(...) #1

declare dso_local i32 @VaoCache_InitQueue(...) #1

declare dso_local i32 @VaoCache_AddSurface(i32*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
