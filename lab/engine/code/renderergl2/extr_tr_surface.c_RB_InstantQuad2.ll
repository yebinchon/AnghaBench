; ModuleID = '/home/carl/AnghaBench/lab/engine/code/renderergl2/extr_tr_surface.c_RB_InstantQuad2.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/renderergl2/extr_tr_surface.c_RB_InstantQuad2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32*, i64, i64, i32*, i32* }

@.str = private unnamed_addr constant [25 x i8] c"--- RB_InstantQuad2 ---\0A\00", align 1
@tess = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@ATTR_POSITION = common dso_local global i32 0, align 4
@ATTR_TEXCOORD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @RB_InstantQuad2(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  %5 = call i32 @GLimp_LogComment(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tess, i32 0, i32 0), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tess, i32 0, i32 3), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tess, i32 0, i32 2), align 8
  %6 = load i32*, i32** %3, align 8
  %7 = getelementptr inbounds i32, i32* %6, i64 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tess, i32 0, i32 5), align 8
  %10 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tess, i32 0, i32 0), align 8
  %11 = getelementptr inbounds i32, i32* %9, i64 %10
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @VectorCopy4(i32 %8, i32 %12)
  %14 = load i32*, i32** %4, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tess, i32 0, i32 4), align 8
  %18 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tess, i32 0, i32 0), align 8
  %19 = getelementptr inbounds i32, i32* %17, i64 %18
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @VectorCopy2(i32 %16, i32 %20)
  %22 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tess, i32 0, i32 0), align 8
  %23 = add i64 %22, 1
  store i64 %23, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tess, i32 0, i32 0), align 8
  %24 = load i32*, i32** %3, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 1
  %26 = load i32, i32* %25, align 4
  %27 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tess, i32 0, i32 5), align 8
  %28 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tess, i32 0, i32 0), align 8
  %29 = getelementptr inbounds i32, i32* %27, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @VectorCopy4(i32 %26, i32 %30)
  %32 = load i32*, i32** %4, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 1
  %34 = load i32, i32* %33, align 4
  %35 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tess, i32 0, i32 4), align 8
  %36 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tess, i32 0, i32 0), align 8
  %37 = getelementptr inbounds i32, i32* %35, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @VectorCopy2(i32 %34, i32 %38)
  %40 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tess, i32 0, i32 0), align 8
  %41 = add i64 %40, 1
  store i64 %41, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tess, i32 0, i32 0), align 8
  %42 = load i32*, i32** %3, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 2
  %44 = load i32, i32* %43, align 4
  %45 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tess, i32 0, i32 5), align 8
  %46 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tess, i32 0, i32 0), align 8
  %47 = getelementptr inbounds i32, i32* %45, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @VectorCopy4(i32 %44, i32 %48)
  %50 = load i32*, i32** %4, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 2
  %52 = load i32, i32* %51, align 4
  %53 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tess, i32 0, i32 4), align 8
  %54 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tess, i32 0, i32 0), align 8
  %55 = getelementptr inbounds i32, i32* %53, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @VectorCopy2(i32 %52, i32 %56)
  %58 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tess, i32 0, i32 0), align 8
  %59 = add i64 %58, 1
  store i64 %59, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tess, i32 0, i32 0), align 8
  %60 = load i32*, i32** %3, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 3
  %62 = load i32, i32* %61, align 4
  %63 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tess, i32 0, i32 5), align 8
  %64 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tess, i32 0, i32 0), align 8
  %65 = getelementptr inbounds i32, i32* %63, i64 %64
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @VectorCopy4(i32 %62, i32 %66)
  %68 = load i32*, i32** %4, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 3
  %70 = load i32, i32* %69, align 4
  %71 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tess, i32 0, i32 4), align 8
  %72 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tess, i32 0, i32 0), align 8
  %73 = getelementptr inbounds i32, i32* %71, i64 %72
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @VectorCopy2(i32 %70, i32 %74)
  %76 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tess, i32 0, i32 0), align 8
  %77 = add i64 %76, 1
  store i64 %77, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tess, i32 0, i32 0), align 8
  %78 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tess, i32 0, i32 1), align 8
  %79 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tess, i32 0, i32 3), align 8
  %80 = add nsw i64 %79, 1
  store i64 %80, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tess, i32 0, i32 3), align 8
  %81 = getelementptr inbounds i32, i32* %78, i64 %79
  store i32 0, i32* %81, align 4
  %82 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tess, i32 0, i32 1), align 8
  %83 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tess, i32 0, i32 3), align 8
  %84 = add nsw i64 %83, 1
  store i64 %84, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tess, i32 0, i32 3), align 8
  %85 = getelementptr inbounds i32, i32* %82, i64 %83
  store i32 1, i32* %85, align 4
  %86 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tess, i32 0, i32 1), align 8
  %87 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tess, i32 0, i32 3), align 8
  %88 = add nsw i64 %87, 1
  store i64 %88, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tess, i32 0, i32 3), align 8
  %89 = getelementptr inbounds i32, i32* %86, i64 %87
  store i32 2, i32* %89, align 4
  %90 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tess, i32 0, i32 1), align 8
  %91 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tess, i32 0, i32 3), align 8
  %92 = add nsw i64 %91, 1
  store i64 %92, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tess, i32 0, i32 3), align 8
  %93 = getelementptr inbounds i32, i32* %90, i64 %91
  store i32 0, i32* %93, align 4
  %94 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tess, i32 0, i32 1), align 8
  %95 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tess, i32 0, i32 3), align 8
  %96 = add nsw i64 %95, 1
  store i64 %96, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tess, i32 0, i32 3), align 8
  %97 = getelementptr inbounds i32, i32* %94, i64 %95
  store i32 2, i32* %97, align 4
  %98 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tess, i32 0, i32 1), align 8
  %99 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tess, i32 0, i32 3), align 8
  %100 = add nsw i64 %99, 1
  store i64 %100, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tess, i32 0, i32 3), align 8
  %101 = getelementptr inbounds i32, i32* %98, i64 %99
  store i32 3, i32* %101, align 4
  %102 = load i32, i32* @ATTR_POSITION, align 4
  %103 = load i32, i32* @ATTR_TEXCOORD, align 4
  %104 = or i32 %102, %103
  %105 = call i32 @RB_UpdateTessVao(i32 %104)
  %106 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tess, i32 0, i32 3), align 8
  %107 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tess, i32 0, i32 2), align 8
  %108 = call i32 @R_DrawElements(i64 %106, i64 %107)
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tess, i32 0, i32 3), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tess, i32 0, i32 0), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tess, i32 0, i32 2), align 8
  ret void
}

declare dso_local i32 @GLimp_LogComment(i8*) #1

declare dso_local i32 @VectorCopy4(i32, i32) #1

declare dso_local i32 @VectorCopy2(i32, i32) #1

declare dso_local i32 @RB_UpdateTessVao(i32) #1

declare dso_local i32 @R_DrawElements(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
