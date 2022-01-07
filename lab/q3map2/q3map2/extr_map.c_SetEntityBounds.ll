; ModuleID = '/home/carl/AnghaBench/lab/q3map2/q3map2/extr_map.c_SetEntityBounds.c'
source_filename = "/home/carl/AnghaBench/lab/q3map2/q3map2/extr_map.c_SetEntityBounds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_11__*, %struct.TYPE_13__* }
%struct.TYPE_11__ = type { i32, i32, %struct.TYPE_11__*, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_13__ = type { i32, i32, %struct.TYPE_13__*, i32, i32 }

@.str = private unnamed_addr constant [4 x i8] c"min\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"max\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @SetEntityBounds(%struct.TYPE_12__* %0) #0 {
  %2 = alloca %struct.TYPE_12__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %2, align 8
  %9 = load i32, i32* %6, align 4
  %10 = load i32, i32* %7, align 4
  %11 = call i32 @ClearBounds(i32 %9, i32 %10)
  %12 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %12, i32 0, i32 1
  %14 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  store %struct.TYPE_13__* %14, %struct.TYPE_13__** %4, align 8
  br label %15

15:                                               ; preds = %31, %1
  %16 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %17 = icmp ne %struct.TYPE_13__* %16, null
  br i1 %17, label %18, label %35

18:                                               ; preds = %15
  %19 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %19, i32 0, i32 4
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* %7, align 4
  %24 = call i32 @AddPointToBounds(i32 %21, i32 %22, i32 %23)
  %25 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* %7, align 4
  %30 = call i32 @AddPointToBounds(i32 %27, i32 %28, i32 %29)
  br label %31

31:                                               ; preds = %18
  %32 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %32, i32 0, i32 2
  %34 = load %struct.TYPE_13__*, %struct.TYPE_13__** %33, align 8
  store %struct.TYPE_13__* %34, %struct.TYPE_13__** %4, align 8
  br label %15

35:                                               ; preds = %15
  %36 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %37 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_11__*, %struct.TYPE_11__** %37, align 8
  store %struct.TYPE_11__* %38, %struct.TYPE_11__** %5, align 8
  br label %39

39:                                               ; preds = %72, %35
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %41 = icmp ne %struct.TYPE_11__* %40, null
  br i1 %41, label %42, label %76

42:                                               ; preds = %39
  store i32 0, i32* %3, align 4
  br label %43

43:                                               ; preds = %68, %42
  %44 = load i32, i32* %3, align 4
  %45 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %45, i32 0, i32 3
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %49, i32 0, i32 3
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = mul nsw i32 %48, %52
  %54 = icmp slt i32 %44, %53
  br i1 %54, label %55, label %71

55:                                               ; preds = %43
  %56 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %56, i32 0, i32 3
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 2
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** %58, align 8
  %60 = load i32, i32* %3, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* %6, align 4
  %66 = load i32, i32* %7, align 4
  %67 = call i32 @AddPointToBounds(i32 %64, i32 %65, i32 %66)
  br label %68

68:                                               ; preds = %55
  %69 = load i32, i32* %3, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %3, align 4
  br label %43

71:                                               ; preds = %43
  br label %72

72:                                               ; preds = %71
  %73 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %73, i32 0, i32 2
  %75 = load %struct.TYPE_11__*, %struct.TYPE_11__** %74, align 8
  store %struct.TYPE_11__* %75, %struct.TYPE_11__** %5, align 8
  br label %39

76:                                               ; preds = %39
  %77 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %78 = call i8* @ValueForKey(%struct.TYPE_12__* %77, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  store i8* %78, i8** %8, align 8
  %79 = load i8*, i8** %8, align 8
  %80 = getelementptr inbounds i8, i8* %79, i64 0
  %81 = load i8, i8* %80, align 1
  %82 = sext i8 %81 to i32
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %88

84:                                               ; preds = %76
  %85 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %86 = load i32, i32* %6, align 4
  %87 = call i32 @GetVectorForKey(%struct.TYPE_12__* %85, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %86)
  br label %88

88:                                               ; preds = %84, %76
  %89 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %90 = call i8* @ValueForKey(%struct.TYPE_12__* %89, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  store i8* %90, i8** %8, align 8
  %91 = load i8*, i8** %8, align 8
  %92 = getelementptr inbounds i8, i8* %91, i64 0
  %93 = load i8, i8* %92, align 1
  %94 = sext i8 %93 to i32
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %100

96:                                               ; preds = %88
  %97 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %98 = load i32, i32* %7, align 4
  %99 = call i32 @GetVectorForKey(%struct.TYPE_12__* %97, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %98)
  br label %100

100:                                              ; preds = %96, %88
  %101 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %102 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %101, i32 0, i32 1
  %103 = load %struct.TYPE_13__*, %struct.TYPE_13__** %102, align 8
  store %struct.TYPE_13__* %103, %struct.TYPE_13__** %4, align 8
  br label %104

104:                                              ; preds = %118, %100
  %105 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %106 = icmp ne %struct.TYPE_13__* %105, null
  br i1 %106, label %107, label %122

107:                                              ; preds = %104
  %108 = load i32, i32* %6, align 4
  %109 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %110 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @VectorCopy(i32 %108, i32 %111)
  %113 = load i32, i32* %7, align 4
  %114 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %115 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = call i32 @VectorCopy(i32 %113, i32 %116)
  br label %118

118:                                              ; preds = %107
  %119 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %120 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %119, i32 0, i32 2
  %121 = load %struct.TYPE_13__*, %struct.TYPE_13__** %120, align 8
  store %struct.TYPE_13__* %121, %struct.TYPE_13__** %4, align 8
  br label %104

122:                                              ; preds = %104
  %123 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %124 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %123, i32 0, i32 0
  %125 = load %struct.TYPE_11__*, %struct.TYPE_11__** %124, align 8
  store %struct.TYPE_11__* %125, %struct.TYPE_11__** %5, align 8
  br label %126

126:                                              ; preds = %140, %122
  %127 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %128 = icmp ne %struct.TYPE_11__* %127, null
  br i1 %128, label %129, label %144

129:                                              ; preds = %126
  %130 = load i32, i32* %6, align 4
  %131 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %132 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = call i32 @VectorCopy(i32 %130, i32 %133)
  %135 = load i32, i32* %7, align 4
  %136 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %137 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = call i32 @VectorCopy(i32 %135, i32 %138)
  br label %140

140:                                              ; preds = %129
  %141 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %142 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %141, i32 0, i32 2
  %143 = load %struct.TYPE_11__*, %struct.TYPE_11__** %142, align 8
  store %struct.TYPE_11__* %143, %struct.TYPE_11__** %5, align 8
  br label %126

144:                                              ; preds = %126
  ret void
}

declare dso_local i32 @ClearBounds(i32, i32) #1

declare dso_local i32 @AddPointToBounds(i32, i32, i32) #1

declare dso_local i8* @ValueForKey(%struct.TYPE_12__*, i8*) #1

declare dso_local i32 @GetVectorForKey(%struct.TYPE_12__*, i8*, i32) #1

declare dso_local i32 @VectorCopy(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
