; ModuleID = '/home/carl/AnghaBench/h2o/deps/klib/test/extr_kstring_bench.c_main.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/klib/test/extr_kstring_bench.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i64, i64 }

@N = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"kputw: %lf\0A\00", align 1
@CLOCKS_PER_SEC = common dso_local global double 0.000000e+00, align 8
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"ksprintf: %lf\0A\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"kputw+kputs: %lf\0A\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"kputw+ksprintf: %lf\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_5__, align 8
  %5 = alloca %struct.TYPE_5__, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %10 = call i32 @srand48(i32 11)
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 2
  store i64 0, i64* %11, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 1
  store i64 0, i64* %12, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 0
  store i32 0, i32* %13, align 8
  %14 = call i64 (...) @clock()
  store i64 %14, i64* %3, align 8
  store i32 0, i32* %2, align 4
  br label %15

15:                                               ; preds = %24, %0
  %16 = load i32, i32* %2, align 4
  %17 = load i32, i32* @N, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %27

19:                                               ; preds = %15
  %20 = call i32 (...) @lrand48()
  store i32 %20, i32* %6, align 4
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 1
  store i64 0, i64* %21, align 8
  %22 = load i32, i32* %6, align 4
  %23 = call i32 @kputw(i32 %22, %struct.TYPE_5__* %4)
  br label %24

24:                                               ; preds = %19
  %25 = load i32, i32* %2, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %2, align 4
  br label %15

27:                                               ; preds = %15
  %28 = load i32, i32* @stderr, align 4
  %29 = call i64 (...) @clock()
  %30 = load i64, i64* %3, align 8
  %31 = sub nsw i64 %29, %30
  %32 = sitofp i64 %31 to double
  %33 = load double, double* @CLOCKS_PER_SEC, align 8
  %34 = fdiv double %32, %33
  %35 = call i32 @fprintf(i32 %28, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), double %34)
  %36 = call i32 @srand48(i32 11)
  %37 = call i64 (...) @clock()
  store i64 %37, i64* %3, align 8
  store i32 0, i32* %2, align 4
  br label %38

38:                                               ; preds = %47, %27
  %39 = load i32, i32* %2, align 4
  %40 = load i32, i32* @N, align 4
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %42, label %50

42:                                               ; preds = %38
  %43 = call i32 (...) @lrand48()
  store i32 %43, i32* %7, align 4
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 1
  store i64 0, i64* %44, align 8
  %45 = load i32, i32* %7, align 4
  %46 = call i32 @ksprintf(%struct.TYPE_5__* %4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %45)
  br label %47

47:                                               ; preds = %42
  %48 = load i32, i32* %2, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %2, align 4
  br label %38

50:                                               ; preds = %38
  %51 = load i32, i32* @stderr, align 4
  %52 = call i64 (...) @clock()
  %53 = load i64, i64* %3, align 8
  %54 = sub nsw i64 %52, %53
  %55 = sitofp i64 %54 to double
  %56 = load double, double* @CLOCKS_PER_SEC, align 8
  %57 = fdiv double %55, %56
  %58 = call i32 @fprintf(i32 %51, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), double %57)
  %59 = call i32 @srand48(i32 11)
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 2
  store i64 0, i64* %60, align 8
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 1
  store i64 0, i64* %61, align 8
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 0
  store i32 0, i32* %62, align 8
  %63 = call i64 (...) @clock()
  store i64 %63, i64* %3, align 8
  store i32 0, i32* %2, align 4
  br label %64

64:                                               ; preds = %77, %50
  %65 = load i32, i32* %2, align 4
  %66 = load i32, i32* @N, align 4
  %67 = icmp slt i32 %65, %66
  br i1 %67, label %68, label %80

68:                                               ; preds = %64
  %69 = call i32 (...) @lrand48()
  store i32 %69, i32* %8, align 4
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 1
  store i64 0, i64* %70, align 8
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 1
  store i64 0, i64* %71, align 8
  %72 = load i32, i32* %8, align 4
  %73 = call i32 @kputw(i32 %72, %struct.TYPE_5__* %5)
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = call i32 @kputs(i32 %75, %struct.TYPE_5__* %4)
  br label %77

77:                                               ; preds = %68
  %78 = load i32, i32* %2, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %2, align 4
  br label %64

80:                                               ; preds = %64
  %81 = load i32, i32* @stderr, align 4
  %82 = call i64 (...) @clock()
  %83 = load i64, i64* %3, align 8
  %84 = sub nsw i64 %82, %83
  %85 = sitofp i64 %84 to double
  %86 = load double, double* @CLOCKS_PER_SEC, align 8
  %87 = fdiv double %85, %86
  %88 = call i32 @fprintf(i32 %81, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), double %87)
  %89 = call i32 @srand48(i32 11)
  %90 = call i64 (...) @clock()
  store i64 %90, i64* %3, align 8
  store i32 0, i32* %2, align 4
  br label %91

91:                                               ; preds = %104, %80
  %92 = load i32, i32* %2, align 4
  %93 = load i32, i32* @N, align 4
  %94 = icmp slt i32 %92, %93
  br i1 %94, label %95, label %107

95:                                               ; preds = %91
  %96 = call i32 (...) @lrand48()
  store i32 %96, i32* %9, align 4
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 1
  store i64 0, i64* %97, align 8
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 1
  store i64 0, i64* %98, align 8
  %99 = load i32, i32* %9, align 4
  %100 = call i32 @kputw(i32 %99, %struct.TYPE_5__* %5)
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = call i32 @ksprintf(%struct.TYPE_5__* %4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i32 %102)
  br label %104

104:                                              ; preds = %95
  %105 = load i32, i32* %2, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %2, align 4
  br label %91

107:                                              ; preds = %91
  %108 = load i32, i32* @stderr, align 4
  %109 = call i64 (...) @clock()
  %110 = load i64, i64* %3, align 8
  %111 = sub nsw i64 %109, %110
  %112 = sitofp i64 %111 to double
  %113 = load double, double* @CLOCKS_PER_SEC, align 8
  %114 = fdiv double %112, %113
  %115 = call i32 @fprintf(i32 %108, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), double %114)
  ret i32 0
}

declare dso_local i32 @srand48(i32) #1

declare dso_local i64 @clock(...) #1

declare dso_local i32 @lrand48(...) #1

declare dso_local i32 @kputw(i32, %struct.TYPE_5__*) #1

declare dso_local i32 @fprintf(i32, i8*, double) #1

declare dso_local i32 @ksprintf(%struct.TYPE_5__*, i8*, i32) #1

declare dso_local i32 @kputs(i32, %struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
