; ModuleID = '/home/carl/AnghaBench/lab/engine/code/bspc/extr_glfile.c_OutputWinding.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/bspc/extr_glfile.c_OutputWinding.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, double** }

@OutputWinding.level = internal global i32 128, align 4
@.str = private unnamed_addr constant [4 x i8] c"%i\0A\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"%6.3f %6.3f %6.3f %6.3f %6.3f %6.3f\0A\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @OutputWinding(%struct.TYPE_3__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca double, align 8
  %6 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store i32* %1, i32** %4, align 8
  %7 = load i32*, i32** %4, align 8
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = call i32 (i32*, i8*, ...) @fprintf(i32* %7, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %10)
  %12 = load i32, i32* @OutputWinding.level, align 4
  %13 = add nsw i32 %12, 28
  store i32 %13, i32* @OutputWinding.level, align 4
  %14 = load i32, i32* @OutputWinding.level, align 4
  %15 = and i32 %14, 255
  %16 = sitofp i32 %15 to double
  %17 = fdiv double %16, 2.550000e+02
  store double %17, double* %5, align 8
  store i32 0, i32* %6, align 4
  br label %18

18:                                               ; preds = %57, %2
  %19 = load i32, i32* %6, align 4
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp slt i32 %19, %22
  br i1 %23, label %24, label %60

24:                                               ; preds = %18
  %25 = load i32*, i32** %4, align 8
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 1
  %28 = load double**, double*** %27, align 8
  %29 = load i32, i32* %6, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds double*, double** %28, i64 %30
  %32 = load double*, double** %31, align 8
  %33 = getelementptr inbounds double, double* %32, i64 0
  %34 = load double, double* %33, align 8
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 1
  %37 = load double**, double*** %36, align 8
  %38 = load i32, i32* %6, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds double*, double** %37, i64 %39
  %41 = load double*, double** %40, align 8
  %42 = getelementptr inbounds double, double* %41, i64 1
  %43 = load double, double* %42, align 8
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 1
  %46 = load double**, double*** %45, align 8
  %47 = load i32, i32* %6, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds double*, double** %46, i64 %48
  %50 = load double*, double** %49, align 8
  %51 = getelementptr inbounds double, double* %50, i64 2
  %52 = load double, double* %51, align 8
  %53 = load double, double* %5, align 8
  %54 = load double, double* %5, align 8
  %55 = load double, double* %5, align 8
  %56 = call i32 (i32*, i8*, ...) @fprintf(i32* %25, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), double %34, double %43, double %52, double %53, double %54, double %55)
  br label %57

57:                                               ; preds = %24
  %58 = load i32, i32* %6, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %6, align 4
  br label %18

60:                                               ; preds = %18
  %61 = load i32*, i32** %4, align 8
  %62 = call i32 (i32*, i8*, ...) @fprintf(i32* %61, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  ret void
}

declare dso_local i32 @fprintf(i32*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
