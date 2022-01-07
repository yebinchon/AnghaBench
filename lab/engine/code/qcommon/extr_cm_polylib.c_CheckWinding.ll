; ModuleID = '/home/carl/AnghaBench/lab/engine/code/qcommon/extr_cm_polylib.c_CheckWinding.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/qcommon/extr_cm_polylib.c_CheckWinding.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32** }

@ERR_DROP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"CheckWinding: %i points\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"CheckWinding: %f area\00", align 1
@MAX_MAP_BOUNDS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"CheckFace: BUGUS_RANGE: %f\00", align 1
@ON_EPSILON = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [30 x i8] c"CheckWinding: point off plane\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"CheckWinding: degenerate edge\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"CheckWinding: non-convex\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CheckWinding(%struct.TYPE_5__* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %2, align 8
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp slt i32 %16, 3
  br i1 %17, label %18, label %24

18:                                               ; preds = %1
  %19 = load i32, i32* @ERR_DROP, align 4
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = call i32 (i32, i8*, ...) @Com_Error(i32 %19, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %22)
  br label %24

24:                                               ; preds = %18, %1
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %26 = call i32 @WindingArea(%struct.TYPE_5__* %25)
  store i32 %26, i32* %12, align 4
  %27 = load i32, i32* %12, align 4
  %28 = icmp slt i32 %27, 1
  br i1 %28, label %29, label %33

29:                                               ; preds = %24
  %30 = load i32, i32* @ERR_DROP, align 4
  %31 = load i32, i32* %12, align 4
  %32 = call i32 (i32, i8*, ...) @Com_Error(i32 %30, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %31)
  br label %33

33:                                               ; preds = %29, %24
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %35 = load i32, i32* %11, align 4
  %36 = call i32 @WindingPlane(%struct.TYPE_5__* %34, i32 %35, i32* %13)
  store i32 0, i32* %3, align 4
  br label %37

37:                                               ; preds = %177, %33
  %38 = load i32, i32* %3, align 4
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = icmp slt i32 %38, %41
  br i1 %42, label %43, label %180

43:                                               ; preds = %37
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 1
  %46 = load i32**, i32*** %45, align 8
  %47 = load i32, i32* %3, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32*, i32** %46, i64 %48
  %50 = load i32*, i32** %49, align 8
  store i32* %50, i32** %5, align 8
  store i32 0, i32* %4, align 4
  br label %51

51:                                               ; preds = %80, %43
  %52 = load i32, i32* %4, align 4
  %53 = icmp slt i32 %52, 3
  br i1 %53, label %54, label %83

54:                                               ; preds = %51
  %55 = load i32*, i32** %5, align 8
  %56 = load i32, i32* %4, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %55, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @MAX_MAP_BOUNDS, align 4
  %61 = icmp sgt i32 %59, %60
  br i1 %61, label %71, label %62

62:                                               ; preds = %54
  %63 = load i32*, i32** %5, align 8
  %64 = load i32, i32* %4, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %63, i64 %65
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @MAX_MAP_BOUNDS, align 4
  %69 = sub nsw i32 0, %68
  %70 = icmp slt i32 %67, %69
  br i1 %70, label %71, label %79

71:                                               ; preds = %62, %54
  %72 = load i32, i32* @ERR_DROP, align 4
  %73 = load i32*, i32** %5, align 8
  %74 = load i32, i32* %4, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %73, i64 %75
  %77 = load i32, i32* %76, align 4
  %78 = call i32 (i32, i8*, ...) @Com_Error(i32 %72, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %77)
  br label %79

79:                                               ; preds = %71, %62
  br label %80

80:                                               ; preds = %79
  %81 = load i32, i32* %4, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %4, align 4
  br label %51

83:                                               ; preds = %51
  %84 = load i32, i32* %3, align 4
  %85 = add nsw i32 %84, 1
  %86 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = icmp eq i32 %85, %88
  br i1 %89, label %90, label %91

90:                                               ; preds = %83
  br label %94

91:                                               ; preds = %83
  %92 = load i32, i32* %3, align 4
  %93 = add nsw i32 %92, 1
  br label %94

94:                                               ; preds = %91, %90
  %95 = phi i32 [ 0, %90 ], [ %93, %91 ]
  store i32 %95, i32* %4, align 4
  %96 = load i32*, i32** %5, align 8
  %97 = load i32, i32* %11, align 4
  %98 = call i32 @DotProduct(i32* %96, i32 %97)
  %99 = load i32, i32* %13, align 4
  %100 = sub nsw i32 %98, %99
  store i32 %100, i32* %7, align 4
  %101 = load i32, i32* %7, align 4
  %102 = load i32, i32* @ON_EPSILON, align 4
  %103 = sub nsw i32 0, %102
  %104 = icmp slt i32 %101, %103
  br i1 %104, label %109, label %105

105:                                              ; preds = %94
  %106 = load i32, i32* %7, align 4
  %107 = load i32, i32* @ON_EPSILON, align 4
  %108 = icmp sgt i32 %106, %107
  br i1 %108, label %109, label %112

109:                                              ; preds = %105, %94
  %110 = load i32, i32* @ERR_DROP, align 4
  %111 = call i32 (i32, i8*, ...) @Com_Error(i32 %110, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  br label %112

112:                                              ; preds = %109, %105
  %113 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %114 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %113, i32 0, i32 1
  %115 = load i32**, i32*** %114, align 8
  %116 = load i32, i32* %4, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i32*, i32** %115, i64 %117
  %119 = load i32*, i32** %118, align 8
  store i32* %119, i32** %6, align 8
  %120 = load i32*, i32** %6, align 8
  %121 = load i32*, i32** %5, align 8
  %122 = load i32, i32* %9, align 4
  %123 = call i32 @VectorSubtract(i32* %120, i32* %121, i32 %122)
  %124 = load i32, i32* %9, align 4
  %125 = call i32 @VectorLength(i32 %124)
  %126 = load i32, i32* @ON_EPSILON, align 4
  %127 = icmp slt i32 %125, %126
  br i1 %127, label %128, label %131

128:                                              ; preds = %112
  %129 = load i32, i32* @ERR_DROP, align 4
  %130 = call i32 (i32, i8*, ...) @Com_Error(i32 %129, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0))
  br label %131

131:                                              ; preds = %128, %112
  %132 = load i32, i32* %11, align 4
  %133 = load i32, i32* %9, align 4
  %134 = load i32, i32* %10, align 4
  %135 = call i32 @CrossProduct(i32 %132, i32 %133, i32 %134)
  %136 = load i32, i32* %10, align 4
  %137 = load i32, i32* %10, align 4
  %138 = call i32 @VectorNormalize2(i32 %136, i32 %137)
  %139 = load i32*, i32** %5, align 8
  %140 = load i32, i32* %10, align 4
  %141 = call i32 @DotProduct(i32* %139, i32 %140)
  store i32 %141, i32* %8, align 4
  %142 = load i32, i32* @ON_EPSILON, align 4
  %143 = load i32, i32* %8, align 4
  %144 = add nsw i32 %143, %142
  store i32 %144, i32* %8, align 4
  store i32 0, i32* %4, align 4
  br label %145

145:                                              ; preds = %173, %131
  %146 = load i32, i32* %4, align 4
  %147 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %148 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  %150 = icmp slt i32 %146, %149
  br i1 %150, label %151, label %176

151:                                              ; preds = %145
  %152 = load i32, i32* %4, align 4
  %153 = load i32, i32* %3, align 4
  %154 = icmp eq i32 %152, %153
  br i1 %154, label %155, label %156

155:                                              ; preds = %151
  br label %173

156:                                              ; preds = %151
  %157 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %158 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %157, i32 0, i32 1
  %159 = load i32**, i32*** %158, align 8
  %160 = load i32, i32* %4, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds i32*, i32** %159, i64 %161
  %163 = load i32*, i32** %162, align 8
  %164 = load i32, i32* %10, align 4
  %165 = call i32 @DotProduct(i32* %163, i32 %164)
  store i32 %165, i32* %7, align 4
  %166 = load i32, i32* %7, align 4
  %167 = load i32, i32* %8, align 4
  %168 = icmp sgt i32 %166, %167
  br i1 %168, label %169, label %172

169:                                              ; preds = %156
  %170 = load i32, i32* @ERR_DROP, align 4
  %171 = call i32 (i32, i8*, ...) @Com_Error(i32 %170, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0))
  br label %172

172:                                              ; preds = %169, %156
  br label %173

173:                                              ; preds = %172, %155
  %174 = load i32, i32* %4, align 4
  %175 = add nsw i32 %174, 1
  store i32 %175, i32* %4, align 4
  br label %145

176:                                              ; preds = %145
  br label %177

177:                                              ; preds = %176
  %178 = load i32, i32* %3, align 4
  %179 = add nsw i32 %178, 1
  store i32 %179, i32* %3, align 4
  br label %37

180:                                              ; preds = %37
  ret void
}

declare dso_local i32 @Com_Error(i32, i8*, ...) #1

declare dso_local i32 @WindingArea(%struct.TYPE_5__*) #1

declare dso_local i32 @WindingPlane(%struct.TYPE_5__*, i32, i32*) #1

declare dso_local i32 @DotProduct(i32*, i32) #1

declare dso_local i32 @VectorSubtract(i32*, i32*, i32) #1

declare dso_local i32 @VectorLength(i32) #1

declare dso_local i32 @CrossProduct(i32, i32, i32) #1

declare dso_local i32 @VectorNormalize2(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
