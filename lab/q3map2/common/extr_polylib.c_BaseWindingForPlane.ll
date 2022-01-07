; ModuleID = '/home/carl/AnghaBench/lab/q3map2/common/extr_polylib.c_BaseWindingForPlane.c'
source_filename = "/home/carl/AnghaBench/lab/q3map2/common/extr_polylib.c_BaseWindingForPlane.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32**, i32 }

@BOGUS_RANGE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"BaseWindingForPlane: no axis found\00", align 1
@vec3_origin = common dso_local global i32 0, align 4
@MAX_WORLD_COORD = common dso_local global i32 0, align 4

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
  %62 = load i32*, i32** %11, align 8
  %63 = call i32 @VectorNormalize(i32* %61, i32* %62)
  %64 = load i32*, i32** %3, align 8
  %65 = load i32, i32* %4, align 4
  %66 = load i32*, i32** %9, align 8
  %67 = call i32 @VectorScale(i32* %64, i32 %65, i32* %66)
  %68 = load i32*, i32** %11, align 8
  %69 = load i32*, i32** %3, align 8
  %70 = load i32*, i32** %10, align 8
  %71 = call i32 @CrossProduct(i32* %68, i32* %69, i32* %70)
  %72 = load i32*, i32** %11, align 8
  %73 = load i32, i32* @MAX_WORLD_COORD, align 4
  %74 = mul nsw i32 %73, 2
  %75 = load i32*, i32** %11, align 8
  %76 = call i32 @VectorScale(i32* %72, i32 %74, i32* %75)
  %77 = load i32*, i32** %10, align 8
  %78 = load i32, i32* @MAX_WORLD_COORD, align 4
  %79 = mul nsw i32 %78, 2
  %80 = load i32*, i32** %10, align 8
  %81 = call i32 @VectorScale(i32* %77, i32 %79, i32* %80)
  %82 = call %struct.TYPE_4__* @AllocWinding(i32 4)
  store %struct.TYPE_4__* %82, %struct.TYPE_4__** %12, align 8
  %83 = load i32*, i32** %9, align 8
  %84 = load i32*, i32** %10, align 8
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 0
  %87 = load i32**, i32*** %86, align 8
  %88 = getelementptr inbounds i32*, i32** %87, i64 0
  %89 = load i32*, i32** %88, align 8
  %90 = call i32 @VectorSubtract(i32* %83, i32* %84, i32* %89)
  %91 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 0
  %93 = load i32**, i32*** %92, align 8
  %94 = getelementptr inbounds i32*, i32** %93, i64 0
  %95 = load i32*, i32** %94, align 8
  %96 = load i32*, i32** %11, align 8
  %97 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 0
  %99 = load i32**, i32*** %98, align 8
  %100 = getelementptr inbounds i32*, i32** %99, i64 0
  %101 = load i32*, i32** %100, align 8
  %102 = call i32 @VectorAdd(i32* %95, i32* %96, i32* %101)
  %103 = load i32*, i32** %9, align 8
  %104 = load i32*, i32** %10, align 8
  %105 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 0
  %107 = load i32**, i32*** %106, align 8
  %108 = getelementptr inbounds i32*, i32** %107, i64 1
  %109 = load i32*, i32** %108, align 8
  %110 = call i32 @VectorAdd(i32* %103, i32* %104, i32* %109)
  %111 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 0
  %113 = load i32**, i32*** %112, align 8
  %114 = getelementptr inbounds i32*, i32** %113, i64 1
  %115 = load i32*, i32** %114, align 8
  %116 = load i32*, i32** %11, align 8
  %117 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %117, i32 0, i32 0
  %119 = load i32**, i32*** %118, align 8
  %120 = getelementptr inbounds i32*, i32** %119, i64 1
  %121 = load i32*, i32** %120, align 8
  %122 = call i32 @VectorAdd(i32* %115, i32* %116, i32* %121)
  %123 = load i32*, i32** %9, align 8
  %124 = load i32*, i32** %10, align 8
  %125 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %126 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %125, i32 0, i32 0
  %127 = load i32**, i32*** %126, align 8
  %128 = getelementptr inbounds i32*, i32** %127, i64 2
  %129 = load i32*, i32** %128, align 8
  %130 = call i32 @VectorAdd(i32* %123, i32* %124, i32* %129)
  %131 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %132 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %131, i32 0, i32 0
  %133 = load i32**, i32*** %132, align 8
  %134 = getelementptr inbounds i32*, i32** %133, i64 2
  %135 = load i32*, i32** %134, align 8
  %136 = load i32*, i32** %11, align 8
  %137 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %138 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %137, i32 0, i32 0
  %139 = load i32**, i32*** %138, align 8
  %140 = getelementptr inbounds i32*, i32** %139, i64 2
  %141 = load i32*, i32** %140, align 8
  %142 = call i32 @VectorSubtract(i32* %135, i32* %136, i32* %141)
  %143 = load i32*, i32** %9, align 8
  %144 = load i32*, i32** %10, align 8
  %145 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %146 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %145, i32 0, i32 0
  %147 = load i32**, i32*** %146, align 8
  %148 = getelementptr inbounds i32*, i32** %147, i64 3
  %149 = load i32*, i32** %148, align 8
  %150 = call i32 @VectorSubtract(i32* %143, i32* %144, i32* %149)
  %151 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %152 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %151, i32 0, i32 0
  %153 = load i32**, i32*** %152, align 8
  %154 = getelementptr inbounds i32*, i32** %153, i64 3
  %155 = load i32*, i32** %154, align 8
  %156 = load i32*, i32** %11, align 8
  %157 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %158 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %157, i32 0, i32 0
  %159 = load i32**, i32*** %158, align 8
  %160 = getelementptr inbounds i32*, i32** %159, i64 3
  %161 = load i32*, i32** %160, align 8
  %162 = call i32 @VectorSubtract(i32* %155, i32* %156, i32* %161)
  %163 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %164 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %163, i32 0, i32 1
  store i32 4, i32* %164, align 8
  %165 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  ret %struct.TYPE_4__* %165
}

declare dso_local i32 @fabs(i32) #1

declare dso_local i32 @Error(i8*) #1

declare dso_local i32 @VectorCopy(i32, i32*) #1

declare dso_local i32 @DotProduct(i32*, i32*) #1

declare dso_local i32 @VectorMA(i32*, i32, i32*, i32*) #1

declare dso_local i32 @VectorNormalize(i32*, i32*) #1

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
