; ModuleID = '/home/carl/AnghaBench/lab/engine/code/bspc/extr_l_poly.c_BaseWindingForPlane.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/bspc/extr_l_poly.c_BaseWindingForPlane.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32**, i32 }

@BOGUS_RANGE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"BaseWindingForPlane: no axis found\00", align 1
@vec3_origin = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_4__* @BaseWindingForPlane(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_4__*, align 8
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %13 = load i32, i32* @BOGUS_RANGE, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %7, align 4
  store i32 -1, i32* %6, align 4
  store i32 0, i32* %5, align 4
  br label %15

15:                                               ; preds = %32, %2
  %16 = load i32, i32* %5, align 4
  %17 = icmp slt i32 %16, 3
  br i1 %17, label %18, label %35

18:                                               ; preds = %15
  %19 = load i32*, i32** %3, align 8
  %20 = load i32, i32* %5, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32, i32* %19, i64 %21
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @fabs(i32 %23)
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* %7, align 4
  %27 = icmp sgt i32 %25, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %18
  %29 = load i32, i32* %5, align 4
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* %8, align 4
  store i32 %30, i32* %7, align 4
  br label %31

31:                                               ; preds = %28, %18
  br label %32

32:                                               ; preds = %31
  %33 = load i32, i32* %5, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %5, align 4
  br label %15

35:                                               ; preds = %15
  %36 = load i32, i32* %6, align 4
  %37 = icmp eq i32 %36, -1
  br i1 %37, label %38, label %40

38:                                               ; preds = %35
  %39 = call i32 @Error(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  br label %40

40:                                               ; preds = %38, %35
  %41 = load i32, i32* @vec3_origin, align 4
  %42 = load i32*, i32** %11, align 8
  %43 = call i32 @VectorCopy(i32 %41, i32* %42)
  %44 = load i32, i32* %6, align 4
  switch i32 %44, label %51 [
    i32 0, label %45
    i32 1, label %45
    i32 2, label %48
  ]

45:                                               ; preds = %40, %40
  %46 = load i32*, i32** %11, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 2
  store i32 1, i32* %47, align 4
  br label %51

48:                                               ; preds = %40
  %49 = load i32*, i32** %11, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 0
  store i32 1, i32* %50, align 4
  br label %51

51:                                               ; preds = %40, %48, %45
  %52 = load i32*, i32** %11, align 8
  %53 = load i32*, i32** %3, align 8
  %54 = call i32 @DotProduct(i32* %52, i32* %53)
  store i32 %54, i32* %8, align 4
  %55 = load i32*, i32** %11, align 8
  %56 = load i32, i32* %8, align 4
  %57 = sub nsw i32 0, %56
  %58 = load i32*, i32** %3, align 8
  %59 = load i32*, i32** %11, align 8
  %60 = call i32 @VectorMA(i32* %55, i32 %57, i32* %58, i32* %59)
  %61 = load i32*, i32** %11, align 8
  %62 = call i32 @VectorNormalize(i32* %61)
  %63 = load i32*, i32** %3, align 8
  %64 = load i32, i32* %4, align 4
  %65 = load i32*, i32** %9, align 8
  %66 = call i32 @VectorScale(i32* %63, i32 %64, i32* %65)
  %67 = load i32*, i32** %11, align 8
  %68 = load i32*, i32** %3, align 8
  %69 = load i32*, i32** %10, align 8
  %70 = call i32 @CrossProduct(i32* %67, i32* %68, i32* %69)
  %71 = load i32*, i32** %11, align 8
  %72 = load i32, i32* @BOGUS_RANGE, align 4
  %73 = load i32*, i32** %11, align 8
  %74 = call i32 @VectorScale(i32* %71, i32 %72, i32* %73)
  %75 = load i32*, i32** %10, align 8
  %76 = load i32, i32* @BOGUS_RANGE, align 4
  %77 = load i32*, i32** %10, align 8
  %78 = call i32 @VectorScale(i32* %75, i32 %76, i32* %77)
  %79 = call %struct.TYPE_4__* @AllocWinding(i32 4)
  store %struct.TYPE_4__* %79, %struct.TYPE_4__** %12, align 8
  %80 = load i32*, i32** %9, align 8
  %81 = load i32*, i32** %10, align 8
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 0
  %84 = load i32**, i32*** %83, align 8
  %85 = getelementptr inbounds i32*, i32** %84, i64 0
  %86 = load i32*, i32** %85, align 8
  %87 = call i32 @VectorSubtract(i32* %80, i32* %81, i32* %86)
  %88 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 0
  %90 = load i32**, i32*** %89, align 8
  %91 = getelementptr inbounds i32*, i32** %90, i64 0
  %92 = load i32*, i32** %91, align 8
  %93 = load i32*, i32** %11, align 8
  %94 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 0
  %96 = load i32**, i32*** %95, align 8
  %97 = getelementptr inbounds i32*, i32** %96, i64 0
  %98 = load i32*, i32** %97, align 8
  %99 = call i32 @VectorAdd(i32* %92, i32* %93, i32* %98)
  %100 = load i32*, i32** %9, align 8
  %101 = load i32*, i32** %10, align 8
  %102 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 0
  %104 = load i32**, i32*** %103, align 8
  %105 = getelementptr inbounds i32*, i32** %104, i64 1
  %106 = load i32*, i32** %105, align 8
  %107 = call i32 @VectorAdd(i32* %100, i32* %101, i32* %106)
  %108 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 0
  %110 = load i32**, i32*** %109, align 8
  %111 = getelementptr inbounds i32*, i32** %110, i64 1
  %112 = load i32*, i32** %111, align 8
  %113 = load i32*, i32** %11, align 8
  %114 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i32 0, i32 0
  %116 = load i32**, i32*** %115, align 8
  %117 = getelementptr inbounds i32*, i32** %116, i64 1
  %118 = load i32*, i32** %117, align 8
  %119 = call i32 @VectorAdd(i32* %112, i32* %113, i32* %118)
  %120 = load i32*, i32** %9, align 8
  %121 = load i32*, i32** %10, align 8
  %122 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %123 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %122, i32 0, i32 0
  %124 = load i32**, i32*** %123, align 8
  %125 = getelementptr inbounds i32*, i32** %124, i64 2
  %126 = load i32*, i32** %125, align 8
  %127 = call i32 @VectorAdd(i32* %120, i32* %121, i32* %126)
  %128 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %129 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %128, i32 0, i32 0
  %130 = load i32**, i32*** %129, align 8
  %131 = getelementptr inbounds i32*, i32** %130, i64 2
  %132 = load i32*, i32** %131, align 8
  %133 = load i32*, i32** %11, align 8
  %134 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %135 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %134, i32 0, i32 0
  %136 = load i32**, i32*** %135, align 8
  %137 = getelementptr inbounds i32*, i32** %136, i64 2
  %138 = load i32*, i32** %137, align 8
  %139 = call i32 @VectorSubtract(i32* %132, i32* %133, i32* %138)
  %140 = load i32*, i32** %9, align 8
  %141 = load i32*, i32** %10, align 8
  %142 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %143 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %142, i32 0, i32 0
  %144 = load i32**, i32*** %143, align 8
  %145 = getelementptr inbounds i32*, i32** %144, i64 3
  %146 = load i32*, i32** %145, align 8
  %147 = call i32 @VectorSubtract(i32* %140, i32* %141, i32* %146)
  %148 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %149 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %148, i32 0, i32 0
  %150 = load i32**, i32*** %149, align 8
  %151 = getelementptr inbounds i32*, i32** %150, i64 3
  %152 = load i32*, i32** %151, align 8
  %153 = load i32*, i32** %11, align 8
  %154 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %155 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %154, i32 0, i32 0
  %156 = load i32**, i32*** %155, align 8
  %157 = getelementptr inbounds i32*, i32** %156, i64 3
  %158 = load i32*, i32** %157, align 8
  %159 = call i32 @VectorSubtract(i32* %152, i32* %153, i32* %158)
  %160 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %161 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %160, i32 0, i32 1
  store i32 4, i32* %161, align 8
  %162 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  ret %struct.TYPE_4__* %162
}

declare dso_local i32 @fabs(i32) #1

declare dso_local i32 @Error(i8*) #1

declare dso_local i32 @VectorCopy(i32, i32*) #1

declare dso_local i32 @DotProduct(i32*, i32*) #1

declare dso_local i32 @VectorMA(i32*, i32, i32*, i32*) #1

declare dso_local i32 @VectorNormalize(i32*) #1

declare dso_local i32 @VectorScale(i32*, i32, i32*) #1

declare dso_local i32 @CrossProduct(i32*, i32*, i32*) #1

declare dso_local %struct.TYPE_4__* @AllocWinding(i32) #1

declare dso_local i32 @VectorSubtract(i32*, i32*, i32*) #1

declare dso_local i32 @VectorAdd(i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
