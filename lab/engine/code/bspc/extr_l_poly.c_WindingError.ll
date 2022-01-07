; ModuleID = '/home/carl/AnghaBench/lab/engine/code/bspc/extr_l_poly.c_WindingError.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/bspc/extr_l_poly.c_WindingError.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32** }

@windingerror = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"winding %i points\00", align 1
@WE_NOTENOUGHPOINTS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"winding %f area\00", align 1
@WE_SMALLAREA = common dso_local global i32 0, align 4
@BOGUS_RANGE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [40 x i8] c"winding point %d BUGUS_RANGE '%f %f %f'\00", align 1
@WE_POINTBOGUSRANGE = common dso_local global i32 0, align 4
@ON_EPSILON = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [27 x i8] c"winding point %d off plane\00", align 1
@WE_POINTOFFPLANE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [30 x i8] c"winding degenerate edge %d-%d\00", align 1
@WE_DEGENERATEEDGE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [19 x i8] c"winding non-convex\00", align 1
@WE_NONCONVEX = common dso_local global i32 0, align 4
@WE_NONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @WindingError(%struct.TYPE_5__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp slt i32 %17, 3
  br i1 %18, label %19, label %26

19:                                               ; preds = %1
  %20 = load i32, i32* @windingerror, align 4
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = call i32 (i32, i8*, ...) @sprintf(i32 %20, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %23)
  %25 = load i32, i32* @WE_NOTENOUGHPOINTS, align 4
  store i32 %25, i32* %2, align 4
  br label %196

26:                                               ; preds = %1
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %28 = call i32 @WindingArea(%struct.TYPE_5__* %27)
  store i32 %28, i32* %13, align 4
  %29 = load i32, i32* %13, align 4
  %30 = icmp slt i32 %29, 1
  br i1 %30, label %31, label %36

31:                                               ; preds = %26
  %32 = load i32, i32* @windingerror, align 4
  %33 = load i32, i32* %13, align 4
  %34 = call i32 (i32, i8*, ...) @sprintf(i32 %32, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 %33)
  %35 = load i32, i32* @WE_SMALLAREA, align 4
  store i32 %35, i32* %2, align 4
  br label %196

36:                                               ; preds = %26
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %38 = load i32, i32* %12, align 4
  %39 = call i32 @WindingPlane(%struct.TYPE_5__* %37, i32 %38, i32* %14)
  store i32 0, i32* %4, align 4
  br label %40

40:                                               ; preds = %191, %36
  %41 = load i32, i32* %4, align 4
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = icmp slt i32 %41, %44
  br i1 %45, label %46, label %194

46:                                               ; preds = %40
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 1
  %49 = load i32**, i32*** %48, align 8
  %50 = load i32, i32* %4, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32*, i32** %49, i64 %51
  %53 = load i32*, i32** %52, align 8
  store i32* %53, i32** %6, align 8
  store i32 0, i32* %5, align 4
  br label %54

54:                                               ; preds = %89, %46
  %55 = load i32, i32* %5, align 4
  %56 = icmp slt i32 %55, 3
  br i1 %56, label %57, label %92

57:                                               ; preds = %54
  %58 = load i32*, i32** %6, align 8
  %59 = load i32, i32* %5, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %58, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @BOGUS_RANGE, align 4
  %64 = icmp sgt i32 %62, %63
  br i1 %64, label %74, label %65

65:                                               ; preds = %57
  %66 = load i32*, i32** %6, align 8
  %67 = load i32, i32* %5, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %66, i64 %68
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @BOGUS_RANGE, align 4
  %72 = sub nsw i32 0, %71
  %73 = icmp slt i32 %70, %72
  br i1 %73, label %74, label %88

74:                                               ; preds = %65, %57
  %75 = load i32, i32* @windingerror, align 4
  %76 = load i32, i32* %5, align 4
  %77 = load i32*, i32** %6, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 0
  %79 = load i32, i32* %78, align 4
  %80 = load i32*, i32** %6, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 1
  %82 = load i32, i32* %81, align 4
  %83 = load i32*, i32** %6, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 2
  %85 = load i32, i32* %84, align 4
  %86 = call i32 (i32, i8*, ...) @sprintf(i32 %75, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i32 %76, i32 %79, i32 %82, i32 %85)
  %87 = load i32, i32* @WE_POINTBOGUSRANGE, align 4
  store i32 %87, i32* %2, align 4
  br label %196

88:                                               ; preds = %65
  br label %89

89:                                               ; preds = %88
  %90 = load i32, i32* %5, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %5, align 4
  br label %54

92:                                               ; preds = %54
  %93 = load i32, i32* %4, align 4
  %94 = add nsw i32 %93, 1
  %95 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = icmp eq i32 %94, %97
  br i1 %98, label %99, label %100

99:                                               ; preds = %92
  br label %103

100:                                              ; preds = %92
  %101 = load i32, i32* %4, align 4
  %102 = add nsw i32 %101, 1
  br label %103

103:                                              ; preds = %100, %99
  %104 = phi i32 [ 0, %99 ], [ %102, %100 ]
  store i32 %104, i32* %5, align 4
  %105 = load i32*, i32** %6, align 8
  %106 = load i32, i32* %12, align 4
  %107 = call i32 @DotProduct(i32* %105, i32 %106)
  %108 = load i32, i32* %14, align 4
  %109 = sub nsw i32 %107, %108
  store i32 %109, i32* %8, align 4
  %110 = load i32, i32* %8, align 4
  %111 = load i32, i32* @ON_EPSILON, align 4
  %112 = sub nsw i32 0, %111
  %113 = icmp slt i32 %110, %112
  br i1 %113, label %118, label %114

114:                                              ; preds = %103
  %115 = load i32, i32* %8, align 4
  %116 = load i32, i32* @ON_EPSILON, align 4
  %117 = icmp sgt i32 %115, %116
  br i1 %117, label %118, label %123

118:                                              ; preds = %114, %103
  %119 = load i32, i32* @windingerror, align 4
  %120 = load i32, i32* %4, align 4
  %121 = call i32 (i32, i8*, ...) @sprintf(i32 %119, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i32 %120)
  %122 = load i32, i32* @WE_POINTOFFPLANE, align 4
  store i32 %122, i32* %2, align 4
  br label %196

123:                                              ; preds = %114
  %124 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %125 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %124, i32 0, i32 1
  %126 = load i32**, i32*** %125, align 8
  %127 = load i32, i32* %5, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i32*, i32** %126, i64 %128
  %130 = load i32*, i32** %129, align 8
  store i32* %130, i32** %7, align 8
  %131 = load i32*, i32** %7, align 8
  %132 = load i32*, i32** %6, align 8
  %133 = load i32, i32* %10, align 4
  %134 = call i32 @VectorSubtract(i32* %131, i32* %132, i32 %133)
  %135 = load i32, i32* %10, align 4
  %136 = call i32 @VectorLength(i32 %135)
  %137 = load i32, i32* @ON_EPSILON, align 4
  %138 = icmp slt i32 %136, %137
  br i1 %138, label %139, label %145

139:                                              ; preds = %123
  %140 = load i32, i32* @windingerror, align 4
  %141 = load i32, i32* %4, align 4
  %142 = load i32, i32* %5, align 4
  %143 = call i32 (i32, i8*, ...) @sprintf(i32 %140, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), i32 %141, i32 %142)
  %144 = load i32, i32* @WE_DEGENERATEEDGE, align 4
  store i32 %144, i32* %2, align 4
  br label %196

145:                                              ; preds = %123
  %146 = load i32, i32* %12, align 4
  %147 = load i32, i32* %10, align 4
  %148 = load i32, i32* %11, align 4
  %149 = call i32 @CrossProduct(i32 %146, i32 %147, i32 %148)
  %150 = load i32, i32* %11, align 4
  %151 = call i32 @VectorNormalize(i32 %150)
  %152 = load i32*, i32** %6, align 8
  %153 = load i32, i32* %11, align 4
  %154 = call i32 @DotProduct(i32* %152, i32 %153)
  store i32 %154, i32* %9, align 4
  %155 = load i32, i32* @ON_EPSILON, align 4
  %156 = load i32, i32* %9, align 4
  %157 = add nsw i32 %156, %155
  store i32 %157, i32* %9, align 4
  store i32 0, i32* %5, align 4
  br label %158

158:                                              ; preds = %187, %145
  %159 = load i32, i32* %5, align 4
  %160 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %161 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 8
  %163 = icmp slt i32 %159, %162
  br i1 %163, label %164, label %190

164:                                              ; preds = %158
  %165 = load i32, i32* %5, align 4
  %166 = load i32, i32* %4, align 4
  %167 = icmp eq i32 %165, %166
  br i1 %167, label %168, label %169

168:                                              ; preds = %164
  br label %187

169:                                              ; preds = %164
  %170 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %171 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %170, i32 0, i32 1
  %172 = load i32**, i32*** %171, align 8
  %173 = load i32, i32* %5, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds i32*, i32** %172, i64 %174
  %176 = load i32*, i32** %175, align 8
  %177 = load i32, i32* %11, align 4
  %178 = call i32 @DotProduct(i32* %176, i32 %177)
  store i32 %178, i32* %8, align 4
  %179 = load i32, i32* %8, align 4
  %180 = load i32, i32* %9, align 4
  %181 = icmp sgt i32 %179, %180
  br i1 %181, label %182, label %186

182:                                              ; preds = %169
  %183 = load i32, i32* @windingerror, align 4
  %184 = call i32 (i32, i8*, ...) @sprintf(i32 %183, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0))
  %185 = load i32, i32* @WE_NONCONVEX, align 4
  store i32 %185, i32* %2, align 4
  br label %196

186:                                              ; preds = %169
  br label %187

187:                                              ; preds = %186, %168
  %188 = load i32, i32* %5, align 4
  %189 = add nsw i32 %188, 1
  store i32 %189, i32* %5, align 4
  br label %158

190:                                              ; preds = %158
  br label %191

191:                                              ; preds = %190
  %192 = load i32, i32* %4, align 4
  %193 = add nsw i32 %192, 1
  store i32 %193, i32* %4, align 4
  br label %40

194:                                              ; preds = %40
  %195 = load i32, i32* @WE_NONE, align 4
  store i32 %195, i32* %2, align 4
  br label %196

196:                                              ; preds = %194, %182, %139, %118, %74, %31, %19
  %197 = load i32, i32* %2, align 4
  ret i32 %197
}

declare dso_local i32 @sprintf(i32, i8*, ...) #1

declare dso_local i32 @WindingArea(%struct.TYPE_5__*) #1

declare dso_local i32 @WindingPlane(%struct.TYPE_5__*, i32, i32*) #1

declare dso_local i32 @DotProduct(i32*, i32) #1

declare dso_local i32 @VectorSubtract(i32*, i32*, i32) #1

declare dso_local i32 @VectorLength(i32) #1

declare dso_local i32 @CrossProduct(i32, i32, i32) #1

declare dso_local i32 @VectorNormalize(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
