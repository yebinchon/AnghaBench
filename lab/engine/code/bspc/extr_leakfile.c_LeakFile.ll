; ModuleID = '/home/carl/AnghaBench/lab/engine/code/bspc/extr_leakfile.c_LeakFile.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/bspc/extr_leakfile.c_LeakFile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, %struct.TYPE_7__**, %struct.TYPE_6__** }

@.str = private unnamed_addr constant [18 x i8] c"--- LeakFile ---\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"%s.lin\00", align 1
@source = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"Couldn't open %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"%f %f %f\0A\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"origin\00", align 1
@.str.7 = private unnamed_addr constant [20 x i8] c"%5i point linefile\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @LeakFile(%struct.TYPE_5__* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca double*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca [1024 x i8], align 16
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_6__*, align 8
  %10 = alloca %struct.TYPE_6__*, align 8
  %11 = alloca %struct.TYPE_7__*, align 8
  %12 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %2, align 8
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %1
  br label %148

19:                                               ; preds = %1
  %20 = call i32 (i8*, ...) @qprintf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %21 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 0
  %22 = load i8*, i8** @source, align 8
  %23 = call i32 @sprintf(i8* %21, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* %22)
  %24 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 0
  %25 = call i32 (i8*, ...) @qprintf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* %24)
  %26 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 0
  %27 = call i32* @fopen(i8* %26, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  store i32* %27, i32** %4, align 8
  %28 = load i32*, i32** %4, align 8
  %29 = icmp ne i32* %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %19
  %31 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 0
  %32 = call i32 @Error(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i8* %31)
  br label %33

33:                                               ; preds = %30, %19
  store i32 0, i32* %7, align 4
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  store %struct.TYPE_7__* %35, %struct.TYPE_7__** %6, align 8
  br label %36

36:                                               ; preds = %106, %33
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = icmp sgt i32 %39, 1
  br i1 %40, label %41, label %126

41:                                               ; preds = %36
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  store i32 %44, i32* %8, align 4
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 2
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %46, align 8
  store %struct.TYPE_6__* %47, %struct.TYPE_6__** %9, align 8
  br label %48

48:                                               ; preds = %95, %41
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %50 = icmp ne %struct.TYPE_6__* %49, null
  br i1 %50, label %51, label %106

51:                                               ; preds = %48
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 1
  %54 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %54, i64 0
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %55, align 8
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %58 = icmp eq %struct.TYPE_7__* %56, %57
  %59 = zext i1 %58 to i32
  store i32 %59, i32* %12, align 4
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 1
  %62 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %61, align 8
  %63 = load i32, i32* %12, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %62, i64 %64
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %94

70:                                               ; preds = %51
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 1
  %73 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %72, align 8
  %74 = load i32, i32* %12, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %73, i64 %75
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = load i32, i32* %8, align 4
  %81 = icmp slt i32 %79, %80
  br i1 %81, label %82, label %94

82:                                               ; preds = %70
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  store %struct.TYPE_6__* %83, %struct.TYPE_6__** %10, align 8
  %84 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 1
  %86 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %85, align 8
  %87 = load i32, i32* %12, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %86, i64 %88
  %90 = load %struct.TYPE_7__*, %struct.TYPE_7__** %89, align 8
  store %struct.TYPE_7__* %90, %struct.TYPE_7__** %11, align 8
  %91 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  store i32 %93, i32* %8, align 4
  br label %94

94:                                               ; preds = %82, %70, %51
  br label %95

95:                                               ; preds = %94
  %96 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 2
  %98 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %97, align 8
  %99 = load i32, i32* %12, align 4
  %100 = icmp ne i32 %99, 0
  %101 = xor i1 %100, true
  %102 = zext i1 %101 to i32
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %98, i64 %103
  %105 = load %struct.TYPE_6__*, %struct.TYPE_6__** %104, align 8
  store %struct.TYPE_6__* %105, %struct.TYPE_6__** %9, align 8
  br label %48

106:                                              ; preds = %48
  %107 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  store %struct.TYPE_7__* %107, %struct.TYPE_7__** %6, align 8
  %108 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = load double*, double** %3, align 8
  %112 = call i32 @WindingCenter(i32 %110, double* %111)
  %113 = load i32*, i32** %4, align 8
  %114 = load double*, double** %3, align 8
  %115 = getelementptr inbounds double, double* %114, i64 0
  %116 = load double, double* %115, align 8
  %117 = load double*, double** %3, align 8
  %118 = getelementptr inbounds double, double* %117, i64 1
  %119 = load double, double* %118, align 8
  %120 = load double*, double** %3, align 8
  %121 = getelementptr inbounds double, double* %120, i64 2
  %122 = load double, double* %121, align 8
  %123 = call i32 @fprintf(i32* %113, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), double %116, double %119, double %122)
  %124 = load i32, i32* %7, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %7, align 4
  br label %36

126:                                              ; preds = %36
  %127 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %128 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = load double*, double** %3, align 8
  %131 = call i32 @GetVectorForKey(i32 %129, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), double* %130)
  %132 = load i32*, i32** %4, align 8
  %133 = load double*, double** %3, align 8
  %134 = getelementptr inbounds double, double* %133, i64 0
  %135 = load double, double* %134, align 8
  %136 = load double*, double** %3, align 8
  %137 = getelementptr inbounds double, double* %136, i64 1
  %138 = load double, double* %137, align 8
  %139 = load double*, double** %3, align 8
  %140 = getelementptr inbounds double, double* %139, i64 2
  %141 = load double, double* %140, align 8
  %142 = call i32 @fprintf(i32* %132, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), double %135, double %138, double %141)
  %143 = load i32, i32* %7, align 4
  %144 = add nsw i32 %143, 1
  %145 = call i32 (i8*, ...) @qprintf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i64 0, i64 0), i32 %144)
  %146 = load i32*, i32** %4, align 8
  %147 = call i32 @fclose(i32* %146)
  br label %148

148:                                              ; preds = %126, %18
  ret void
}

declare dso_local i32 @qprintf(i8*, ...) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @Error(i8*, i8*) #1

declare dso_local i32 @WindingCenter(i32, double*) #1

declare dso_local i32 @fprintf(i32*, i8*, double, double, double) #1

declare dso_local i32 @GetVectorForKey(i32, i8*, double*) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
