; ModuleID = '/home/carl/AnghaBench/lab/engine/code/bspc/extr_writebsp.c_EmitBrushes.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/bspc/extr_writebsp.c_EmitBrushes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, %struct.TYPE_8__*, i32*, i32*, i32 }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_11__ = type { i64, i32, i32 }
%struct.TYPE_10__ = type { i32, i32 }

@numbrushsides = common dso_local global i64 0, align 8
@nummapbrushes = common dso_local global i32 0, align 4
@numbrushes = common dso_local global i32 0, align 4
@mapbrushes = common dso_local global %struct.TYPE_9__* null, align 8
@dbrushes = common dso_local global %struct.TYPE_11__* null, align 8
@MAX_MAP_BRUSHSIDES = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [19 x i8] c"MAX_MAP_BRUSHSIDES\00", align 1
@dbrushsides = common dso_local global %struct.TYPE_10__* null, align 8
@vec3_origin = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @EmitBrushes() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca %struct.TYPE_10__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i64 0, i64* @numbrushsides, align 8
  %12 = load i32, i32* @nummapbrushes, align 4
  store i32 %12, i32* @numbrushes, align 4
  store i32 0, i32* %3, align 4
  br label %13

13:                                               ; preds = %185, %0
  %14 = load i32, i32* %3, align 4
  %15 = load i32, i32* @nummapbrushes, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %188

17:                                               ; preds = %13
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** @mapbrushes, align 8
  %19 = load i32, i32* %3, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i64 %20
  store %struct.TYPE_9__* %21, %struct.TYPE_9__** %7, align 8
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** @dbrushes, align 8
  %23 = load i32, i32* %3, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %22, i64 %24
  store %struct.TYPE_11__* %25, %struct.TYPE_11__** %6, align 8
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 4
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %29, i32 0, i32 2
  store i32 %28, i32* %30, align 4
  %31 = load i64, i64* @numbrushsides, align 8
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i32 0, i32 0
  store i64 %31, i64* %33, align 8
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %37, i32 0, i32 1
  store i32 %36, i32* %38, align 8
  store i32 0, i32* %2, align 4
  br label %39

39:                                               ; preds = %77, %17
  %40 = load i32, i32* %2, align 4
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = icmp slt i32 %40, %43
  br i1 %44, label %45, label %80

45:                                               ; preds = %39
  %46 = load i64, i64* @numbrushsides, align 8
  %47 = load i64, i64* @MAX_MAP_BRUSHSIDES, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %51

49:                                               ; preds = %45
  %50 = call i32 @Error(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  br label %51

51:                                               ; preds = %49, %45
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** @dbrushsides, align 8
  %53 = load i64, i64* @numbrushsides, align 8
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i64 %53
  store %struct.TYPE_10__* %54, %struct.TYPE_10__** %8, align 8
  %55 = load i64, i64* @numbrushsides, align 8
  %56 = add i64 %55, 1
  store i64 %56, i64* @numbrushsides, align 8
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 1
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %58, align 8
  %60 = load i32, i32* %2, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 0
  store i32 %64, i32* %66, align 4
  %67 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i32 0, i32 1
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** %68, align 8
  %70 = load i32, i32* %2, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i32 0, i32 1
  store i32 %74, i32* %76, align 4
  br label %77

77:                                               ; preds = %51
  %78 = load i32, i32* %2, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %2, align 4
  br label %39

80:                                               ; preds = %39
  store i32 0, i32* %5, align 4
  br label %81

81:                                               ; preds = %181, %80
  %82 = load i32, i32* %5, align 4
  %83 = icmp slt i32 %82, 3
  br i1 %83, label %84, label %184

84:                                               ; preds = %81
  store i32 -1, i32* %4, align 4
  br label %85

85:                                               ; preds = %177, %84
  %86 = load i32, i32* %4, align 4
  %87 = icmp sle i32 %86, 1
  br i1 %87, label %88, label %180

88:                                               ; preds = %85
  %89 = load i32, i32* @vec3_origin, align 4
  %90 = load i32*, i32** %9, align 8
  %91 = call i32 @VectorCopy(i32 %89, i32* %90)
  %92 = load i32, i32* %4, align 4
  %93 = load i32*, i32** %9, align 8
  %94 = load i32, i32* %5, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i32, i32* %93, i64 %95
  store i32 %92, i32* %96, align 4
  %97 = load i32, i32* %4, align 4
  %98 = icmp eq i32 %97, -1
  br i1 %98, label %99, label %108

99:                                               ; preds = %88
  %100 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %101 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %100, i32 0, i32 3
  %102 = load i32*, i32** %101, align 8
  %103 = load i32, i32* %5, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i32, i32* %102, i64 %104
  %106 = load i32, i32* %105, align 4
  %107 = sub nsw i32 0, %106
  store i32 %107, i32* %10, align 4
  br label %116

108:                                              ; preds = %88
  %109 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %110 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %109, i32 0, i32 2
  %111 = load i32*, i32** %110, align 8
  %112 = load i32, i32* %5, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i32, i32* %111, i64 %113
  %115 = load i32, i32* %114, align 4
  store i32 %115, i32* %10, align 4
  br label %116

116:                                              ; preds = %108, %99
  %117 = load i32*, i32** %9, align 8
  %118 = load i32, i32* %10, align 4
  %119 = call i32 @FindFloatPlane(i32* %117, i32 %118)
  store i32 %119, i32* %11, align 4
  store i32 0, i32* %1, align 4
  br label %120

120:                                              ; preds = %139, %116
  %121 = load i32, i32* %1, align 4
  %122 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %123 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = icmp slt i32 %121, %124
  br i1 %125, label %126, label %142

126:                                              ; preds = %120
  %127 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %128 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %127, i32 0, i32 1
  %129 = load %struct.TYPE_8__*, %struct.TYPE_8__** %128, align 8
  %130 = load i32, i32* %1, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %129, i64 %131
  %133 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = load i32, i32* %11, align 4
  %136 = icmp eq i32 %134, %135
  br i1 %136, label %137, label %138

137:                                              ; preds = %126
  br label %142

138:                                              ; preds = %126
  br label %139

139:                                              ; preds = %138
  %140 = load i32, i32* %1, align 4
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %1, align 4
  br label %120

142:                                              ; preds = %137, %120
  %143 = load i32, i32* %1, align 4
  %144 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %145 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = icmp eq i32 %143, %146
  br i1 %147, label %148, label %176

148:                                              ; preds = %142
  %149 = load i64, i64* @numbrushsides, align 8
  %150 = load i64, i64* @MAX_MAP_BRUSHSIDES, align 8
  %151 = icmp uge i64 %149, %150
  br i1 %151, label %152, label %154

152:                                              ; preds = %148
  %153 = call i32 @Error(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  br label %154

154:                                              ; preds = %152, %148
  %155 = load i32, i32* %11, align 4
  %156 = load %struct.TYPE_10__*, %struct.TYPE_10__** @dbrushsides, align 8
  %157 = load i64, i64* @numbrushsides, align 8
  %158 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %156, i64 %157
  %159 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %158, i32 0, i32 0
  store i32 %155, i32* %159, align 4
  %160 = load %struct.TYPE_10__*, %struct.TYPE_10__** @dbrushsides, align 8
  %161 = load i64, i64* @numbrushsides, align 8
  %162 = sub i64 %161, 1
  %163 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %160, i64 %162
  %164 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 4
  %166 = load %struct.TYPE_10__*, %struct.TYPE_10__** @dbrushsides, align 8
  %167 = load i64, i64* @numbrushsides, align 8
  %168 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %166, i64 %167
  %169 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %168, i32 0, i32 1
  store i32 %165, i32* %169, align 4
  %170 = load i64, i64* @numbrushsides, align 8
  %171 = add i64 %170, 1
  store i64 %171, i64* @numbrushsides, align 8
  %172 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %173 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %172, i32 0, i32 1
  %174 = load i32, i32* %173, align 8
  %175 = add nsw i32 %174, 1
  store i32 %175, i32* %173, align 8
  br label %176

176:                                              ; preds = %154, %142
  br label %177

177:                                              ; preds = %176
  %178 = load i32, i32* %4, align 4
  %179 = add nsw i32 %178, 2
  store i32 %179, i32* %4, align 4
  br label %85

180:                                              ; preds = %85
  br label %181

181:                                              ; preds = %180
  %182 = load i32, i32* %5, align 4
  %183 = add nsw i32 %182, 1
  store i32 %183, i32* %5, align 4
  br label %81

184:                                              ; preds = %81
  br label %185

185:                                              ; preds = %184
  %186 = load i32, i32* %3, align 4
  %187 = add nsw i32 %186, 1
  store i32 %187, i32* %3, align 4
  br label %13

188:                                              ; preds = %13
  ret void
}

declare dso_local i32 @Error(i8*) #1

declare dso_local i32 @VectorCopy(i32, i32*) #1

declare dso_local i32 @FindFloatPlane(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
