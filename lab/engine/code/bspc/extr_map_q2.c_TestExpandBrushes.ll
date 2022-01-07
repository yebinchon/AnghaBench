; ModuleID = '/home/carl/AnghaBench/lab/engine/code/bspc/extr_map_q2.c_TestExpandBrushes.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/bspc/extr_map_q2.c_TestExpandBrushes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i64, i64 }
%struct.TYPE_13__ = type { i32*, i32 }
%struct.TYPE_12__ = type { i8* }
%struct.TYPE_9__ = type { i64** }

@.str = private unnamed_addr constant [13 x i8] c"expanded.map\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"writing %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"Can't write %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"{\0A\22classname\22 \22worldspawn\22\0A\00", align 1
@nummapbrushes = common dso_local global i32 0, align 4
@mapbrushes = common dso_local global %struct.TYPE_11__* null, align 8
@.str.5 = private unnamed_addr constant [3 x i8] c"{\0A\00", align 1
@mapplanes = common dso_local global %struct.TYPE_13__* null, align 8
@.str.6 = private unnamed_addr constant [14 x i8] c"( %i %i %i ) \00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"%s 0 0 0 1 1\0A\00", align 1
@texinfo = common dso_local global %struct.TYPE_12__* null, align 8
@.str.8 = private unnamed_addr constant [3 x i8] c"}\0A\00", align 1
@.str.9 = private unnamed_addr constant [38 x i8] c"can't proceed after expanding brushes\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @TestExpandBrushes() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca %struct.TYPE_10__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_11__*, align 8
  %9 = alloca i32, align 4
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8** %7, align 8
  %10 = load i8*, i8** %7, align 8
  %11 = call i32 @Log_Print(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8* %10)
  %12 = load i8*, i8** %7, align 8
  %13 = call i32* @fopen(i8* %12, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  store i32* %13, i32** %1, align 8
  %14 = load i32*, i32** %1, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %0
  %17 = load i8*, i8** %7, align 8
  %18 = call i32 (i8*, ...) @Error(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i8* %17)
  br label %19

19:                                               ; preds = %16, %0
  %20 = load i32*, i32** %1, align 8
  %21 = call i32 (i32*, i8*, ...) @fprintf(i32* %20, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %22

22:                                               ; preds = %182, %19
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* @nummapbrushes, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %185

26:                                               ; preds = %22
  %27 = load %struct.TYPE_11__*, %struct.TYPE_11__** @mapbrushes, align 8
  %28 = load i32, i32* %5, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %27, i64 %29
  store %struct.TYPE_11__* %30, %struct.TYPE_11__** %8, align 8
  %31 = load i32*, i32** %1, align 8
  %32 = call i32 (i32*, i8*, ...) @fprintf(i32* %31, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %33

33:                                               ; preds = %176, %26
  %34 = load i32, i32* %3, align 4
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp slt i32 %34, %37
  br i1 %38, label %39, label %179

39:                                               ; preds = %33
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %40, i32 0, i32 1
  %42 = load %struct.TYPE_10__*, %struct.TYPE_10__** %41, align 8
  %43 = load i32, i32* %3, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i64 %44
  store %struct.TYPE_10__* %45, %struct.TYPE_10__** %2, align 8
  %46 = load %struct.TYPE_13__*, %struct.TYPE_13__** @mapplanes, align 8
  %47 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %46, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  store i32 %52, i32* %9, align 4
  store i32 0, i32* %4, align 4
  br label %53

53:                                               ; preds = %74, %39
  %54 = load i32, i32* %4, align 4
  %55 = icmp slt i32 %54, 3
  br i1 %55, label %56, label %77

56:                                               ; preds = %53
  %57 = load %struct.TYPE_13__*, %struct.TYPE_13__** @mapplanes, align 8
  %58 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %57, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %61, i32 0, i32 0
  %63 = load i32*, i32** %62, align 8
  %64 = load i32, i32* %4, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %63, i64 %65
  %67 = load i32, i32* %66, align 4
  %68 = mul nsw i32 16, %67
  %69 = call i64 @fabs(i32 %68)
  %70 = load i32, i32* %9, align 4
  %71 = sext i32 %70 to i64
  %72 = add nsw i64 %71, %69
  %73 = trunc i64 %72 to i32
  store i32 %73, i32* %9, align 4
  br label %74

74:                                               ; preds = %56
  %75 = load i32, i32* %4, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %4, align 4
  br label %53

77:                                               ; preds = %53
  %78 = load %struct.TYPE_13__*, %struct.TYPE_13__** @mapplanes, align 8
  %79 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %80 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %78, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %82, i32 0, i32 0
  %84 = load i32*, i32** %83, align 8
  %85 = load i32, i32* %9, align 4
  %86 = call %struct.TYPE_9__* @BaseWindingForPlane(i32* %84, i32 %85)
  store %struct.TYPE_9__* %86, %struct.TYPE_9__** %6, align 8
  %87 = load i32*, i32** %1, align 8
  %88 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %89 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %88, i32 0, i32 0
  %90 = load i64**, i64*** %89, align 8
  %91 = getelementptr inbounds i64*, i64** %90, i64 0
  %92 = load i64*, i64** %91, align 8
  %93 = getelementptr inbounds i64, i64* %92, i64 0
  %94 = load i64, i64* %93, align 8
  %95 = trunc i64 %94 to i32
  %96 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %97 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %96, i32 0, i32 0
  %98 = load i64**, i64*** %97, align 8
  %99 = getelementptr inbounds i64*, i64** %98, i64 0
  %100 = load i64*, i64** %99, align 8
  %101 = getelementptr inbounds i64, i64* %100, i64 1
  %102 = load i64, i64* %101, align 8
  %103 = trunc i64 %102 to i32
  %104 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %105 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %104, i32 0, i32 0
  %106 = load i64**, i64*** %105, align 8
  %107 = getelementptr inbounds i64*, i64** %106, i64 0
  %108 = load i64*, i64** %107, align 8
  %109 = getelementptr inbounds i64, i64* %108, i64 2
  %110 = load i64, i64* %109, align 8
  %111 = trunc i64 %110 to i32
  %112 = call i32 (i32*, i8*, ...) @fprintf(i32* %87, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0), i32 %95, i32 %103, i32 %111)
  %113 = load i32*, i32** %1, align 8
  %114 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %115 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %114, i32 0, i32 0
  %116 = load i64**, i64*** %115, align 8
  %117 = getelementptr inbounds i64*, i64** %116, i64 1
  %118 = load i64*, i64** %117, align 8
  %119 = getelementptr inbounds i64, i64* %118, i64 0
  %120 = load i64, i64* %119, align 8
  %121 = trunc i64 %120 to i32
  %122 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %123 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %122, i32 0, i32 0
  %124 = load i64**, i64*** %123, align 8
  %125 = getelementptr inbounds i64*, i64** %124, i64 1
  %126 = load i64*, i64** %125, align 8
  %127 = getelementptr inbounds i64, i64* %126, i64 1
  %128 = load i64, i64* %127, align 8
  %129 = trunc i64 %128 to i32
  %130 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %131 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %130, i32 0, i32 0
  %132 = load i64**, i64*** %131, align 8
  %133 = getelementptr inbounds i64*, i64** %132, i64 1
  %134 = load i64*, i64** %133, align 8
  %135 = getelementptr inbounds i64, i64* %134, i64 2
  %136 = load i64, i64* %135, align 8
  %137 = trunc i64 %136 to i32
  %138 = call i32 (i32*, i8*, ...) @fprintf(i32* %113, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0), i32 %121, i32 %129, i32 %137)
  %139 = load i32*, i32** %1, align 8
  %140 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %141 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %140, i32 0, i32 0
  %142 = load i64**, i64*** %141, align 8
  %143 = getelementptr inbounds i64*, i64** %142, i64 2
  %144 = load i64*, i64** %143, align 8
  %145 = getelementptr inbounds i64, i64* %144, i64 0
  %146 = load i64, i64* %145, align 8
  %147 = trunc i64 %146 to i32
  %148 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %149 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %148, i32 0, i32 0
  %150 = load i64**, i64*** %149, align 8
  %151 = getelementptr inbounds i64*, i64** %150, i64 2
  %152 = load i64*, i64** %151, align 8
  %153 = getelementptr inbounds i64, i64* %152, i64 1
  %154 = load i64, i64* %153, align 8
  %155 = trunc i64 %154 to i32
  %156 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %157 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %156, i32 0, i32 0
  %158 = load i64**, i64*** %157, align 8
  %159 = getelementptr inbounds i64*, i64** %158, i64 2
  %160 = load i64*, i64** %159, align 8
  %161 = getelementptr inbounds i64, i64* %160, i64 2
  %162 = load i64, i64* %161, align 8
  %163 = trunc i64 %162 to i32
  %164 = call i32 (i32*, i8*, ...) @fprintf(i32* %139, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0), i32 %147, i32 %155, i32 %163)
  %165 = load i32*, i32** %1, align 8
  %166 = load %struct.TYPE_12__*, %struct.TYPE_12__** @texinfo, align 8
  %167 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %168 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %167, i32 0, i32 1
  %169 = load i64, i64* %168, align 8
  %170 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %166, i64 %169
  %171 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %170, i32 0, i32 0
  %172 = load i8*, i8** %171, align 8
  %173 = call i32 (i32*, i8*, ...) @fprintf(i32* %165, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i8* %172)
  %174 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %175 = call i32 @FreeWinding(%struct.TYPE_9__* %174)
  br label %176

176:                                              ; preds = %77
  %177 = load i32, i32* %3, align 4
  %178 = add nsw i32 %177, 1
  store i32 %178, i32* %3, align 4
  br label %33

179:                                              ; preds = %33
  %180 = load i32*, i32** %1, align 8
  %181 = call i32 (i32*, i8*, ...) @fprintf(i32* %180, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0))
  br label %182

182:                                              ; preds = %179
  %183 = load i32, i32* %5, align 4
  %184 = add nsw i32 %183, 1
  store i32 %184, i32* %5, align 4
  br label %22

185:                                              ; preds = %22
  %186 = load i32*, i32** %1, align 8
  %187 = call i32 (i32*, i8*, ...) @fprintf(i32* %186, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0))
  %188 = load i32*, i32** %1, align 8
  %189 = call i32 @fclose(i32* %188)
  %190 = call i32 (i8*, ...) @Error(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.9, i64 0, i64 0))
  ret void
}

declare dso_local i32 @Log_Print(i8*, i8*) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @Error(i8*, ...) #1

declare dso_local i32 @fprintf(i32*, i8*, ...) #1

declare dso_local i64 @fabs(i32) #1

declare dso_local %struct.TYPE_9__* @BaseWindingForPlane(i32*, i32) #1

declare dso_local i32 @FreeWinding(%struct.TYPE_9__*) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
