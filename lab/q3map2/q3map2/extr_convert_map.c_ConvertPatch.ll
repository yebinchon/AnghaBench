; ModuleID = '/home/carl/AnghaBench/lab/q3map2/q3map2/extr_convert_map.c_ConvertPatch.c'
source_filename = "/home/carl/AnghaBench/lab/q3map2/q3map2/extr_convert_map.c_ConvertPatch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i8* }
%struct.TYPE_8__ = type { double*, i32 }
%struct.TYPE_9__ = type { i64, i64, i32, i32, i32 }

@MST_PATCH = common dso_local global i64 0, align 8
@numBSPShaders = common dso_local global i64 0, align 8
@bspShaders = common dso_local global %struct.TYPE_7__* null, align 8
@.str = private unnamed_addr constant [10 x i8] c"textures/\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"\09// patch %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"\09{\0A\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"\09\09patchDef2\0A\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"\09\09{\0A\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"\09\09\09%s\0A\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"\09\09\09( %d %d 0 0 0 )\0A\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"\09\09\09(\0A\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"\09\09\09\09(\00", align 1
@bspDrawVerts = common dso_local global %struct.TYPE_8__* null, align 8
@.str.9 = private unnamed_addr constant [20 x i8] c" ( %f %f %f %f %f )\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c" )\0A\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"\09\09\09)\0A\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"\09\09}\0A\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"\09}\0A\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, %struct.TYPE_9__*, double*)* @ConvertPatch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ConvertPatch(i32* %0, i32 %1, %struct.TYPE_9__* %2, double* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca double*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_7__*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.TYPE_8__*, align 8
  %14 = alloca double*, align 8
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.TYPE_9__* %2, %struct.TYPE_9__** %7, align 8
  store double* %3, double** %8, align 8
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @MST_PATCH, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %4
  br label %149

21:                                               ; preds = %4
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = icmp ult i64 %24, 0
  br i1 %25, label %32, label %26

26:                                               ; preds = %21
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @numBSPShaders, align 8
  %31 = icmp uge i64 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %26, %21
  br label %149

33:                                               ; preds = %26
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** @bspShaders, align 8
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i64 %37
  store %struct.TYPE_7__* %38, %struct.TYPE_7__** %11, align 8
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 0
  %41 = load i8*, i8** %40, align 8
  %42 = call i32 @Q_strncasecmp(i8* %41, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 9)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %49, label %44

44:                                               ; preds = %33
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 0
  %47 = load i8*, i8** %46, align 8
  %48 = getelementptr inbounds i8, i8* %47, i64 9
  store i8* %48, i8** %12, align 8
  br label %53

49:                                               ; preds = %33
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 0
  %52 = load i8*, i8** %51, align 8
  store i8* %52, i8** %12, align 8
  br label %53

53:                                               ; preds = %49, %44
  %54 = load i32*, i32** %5, align 8
  %55 = load i32, i32* %6, align 4
  %56 = call i32 (i32*, i8*, ...) @fprintf(i32* %54, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 %55)
  %57 = load i32*, i32** %5, align 8
  %58 = call i32 (i32*, i8*, ...) @fprintf(i32* %57, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %59 = load i32*, i32** %5, align 8
  %60 = call i32 (i32*, i8*, ...) @fprintf(i32* %59, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  %61 = load i32*, i32** %5, align 8
  %62 = call i32 (i32*, i8*, ...) @fprintf(i32* %61, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %63 = load i32*, i32** %5, align 8
  %64 = load i8*, i8** %12, align 8
  %65 = call i32 (i32*, i8*, ...) @fprintf(i32* %63, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i8* %64)
  %66 = load i32*, i32** %5, align 8
  %67 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 4
  %73 = call i32 (i32*, i8*, ...) @fprintf(i32* %66, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0), i32 %69, i32 %72)
  %74 = load i32*, i32** %5, align 8
  %75 = call i32 (i32*, i8*, ...) @fprintf(i32* %74, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0))
  store i32 0, i32* %9, align 4
  br label %76

76:                                               ; preds = %139, %53
  %77 = load i32, i32* %9, align 4
  %78 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %79 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 8
  %81 = icmp slt i32 %77, %80
  br i1 %81, label %82, label %142

82:                                               ; preds = %76
  %83 = load i32*, i32** %5, align 8
  %84 = call i32 (i32*, i8*, ...) @fprintf(i32* %83, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0))
  store i32 0, i32* %10, align 4
  br label %85

85:                                               ; preds = %133, %82
  %86 = load i32, i32* %10, align 4
  %87 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %88 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %87, i32 0, i32 3
  %89 = load i32, i32* %88, align 4
  %90 = icmp slt i32 %86, %89
  br i1 %90, label %91, label %136

91:                                               ; preds = %85
  %92 = load %struct.TYPE_8__*, %struct.TYPE_8__** @bspDrawVerts, align 8
  %93 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %94 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %93, i32 0, i32 4
  %95 = load i32, i32* %94, align 8
  %96 = load i32, i32* %10, align 4
  %97 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %98 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 8
  %100 = mul nsw i32 %96, %99
  %101 = add nsw i32 %95, %100
  %102 = load i32, i32* %9, align 4
  %103 = add nsw i32 %101, %102
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i64 %104
  store %struct.TYPE_8__* %105, %struct.TYPE_8__** %13, align 8
  %106 = load double*, double** %8, align 8
  %107 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %108 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 8
  %110 = load double*, double** %14, align 8
  %111 = call i32 @VectorAdd(double* %106, i32 %109, double* %110)
  %112 = load i32*, i32** %5, align 8
  %113 = load double*, double** %14, align 8
  %114 = getelementptr inbounds double, double* %113, i64 0
  %115 = load double, double* %114, align 8
  %116 = load double*, double** %14, align 8
  %117 = getelementptr inbounds double, double* %116, i64 1
  %118 = load double, double* %117, align 8
  %119 = load double*, double** %14, align 8
  %120 = getelementptr inbounds double, double* %119, i64 2
  %121 = load double, double* %120, align 8
  %122 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %123 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %122, i32 0, i32 0
  %124 = load double*, double** %123, align 8
  %125 = getelementptr inbounds double, double* %124, i64 0
  %126 = load double, double* %125, align 8
  %127 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %128 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %127, i32 0, i32 0
  %129 = load double*, double** %128, align 8
  %130 = getelementptr inbounds double, double* %129, i64 1
  %131 = load double, double* %130, align 8
  %132 = call i32 (i32*, i8*, ...) @fprintf(i32* %112, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.9, i64 0, i64 0), double %115, double %118, double %121, double %126, double %131)
  br label %133

133:                                              ; preds = %91
  %134 = load i32, i32* %10, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %10, align 4
  br label %85

136:                                              ; preds = %85
  %137 = load i32*, i32** %5, align 8
  %138 = call i32 (i32*, i8*, ...) @fprintf(i32* %137, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0))
  br label %139

139:                                              ; preds = %136
  %140 = load i32, i32* %9, align 4
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %9, align 4
  br label %76

142:                                              ; preds = %76
  %143 = load i32*, i32** %5, align 8
  %144 = call i32 (i32*, i8*, ...) @fprintf(i32* %143, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i64 0, i64 0))
  %145 = load i32*, i32** %5, align 8
  %146 = call i32 (i32*, i8*, ...) @fprintf(i32* %145, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0))
  %147 = load i32*, i32** %5, align 8
  %148 = call i32 (i32*, i8*, ...) @fprintf(i32* %147, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0))
  br label %149

149:                                              ; preds = %142, %32, %20
  ret void
}

declare dso_local i32 @Q_strncasecmp(i8*, i8*, i32) #1

declare dso_local i32 @fprintf(i32*, i8*, ...) #1

declare dso_local i32 @VectorAdd(double*, i32, double*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
