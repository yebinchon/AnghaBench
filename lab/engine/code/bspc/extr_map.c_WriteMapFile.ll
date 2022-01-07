; ModuleID = '/home/carl/AnghaBench/lab/engine/code/bspc/extr_map.c_WriteMapFile.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/bspc/extr_map.c_WriteMapFile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@c_writtenbrushes = common dso_local global double 0.000000e+00, align 8
@.str = private unnamed_addr constant [12 x i8] c"writing %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"can't open %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"error writing map file %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"written %d brushes\0A\00", align 1
@.str.5 = private unnamed_addr constant [35 x i8] c"map file written in %5.0f seconds\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @WriteMapFile(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca double, align 8
  store i8* %0, i8** %2, align 8
  store double 0.000000e+00, double* @c_writtenbrushes, align 8
  %5 = call double (...) @I_FloatTime()
  store double %5, double* %4, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = call i32 (i8*, ...) @Log_Print(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* %6)
  %8 = load i8*, i8** %2, align 8
  %9 = call i32* @fopen(i8* %8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  store i32* %9, i32** %3, align 8
  %10 = load i32*, i32** %3, align 8
  %11 = icmp ne i32* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = load i8*, i8** %2, align 8
  %14 = call i32 (i8*, ...) @Log_Print(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i8* %13)
  br label %33

15:                                               ; preds = %1
  %16 = load i32*, i32** %3, align 8
  %17 = call i32 @WriteMapFileSafe(i32* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %24, label %19

19:                                               ; preds = %15
  %20 = load i32*, i32** %3, align 8
  %21 = call i32 @fclose(i32* %20)
  %22 = load i8*, i8** %2, align 8
  %23 = call i32 (i8*, ...) @Log_Print(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i8* %22)
  br label %33

24:                                               ; preds = %15
  %25 = load i32*, i32** %3, align 8
  %26 = call i32 @fclose(i32* %25)
  %27 = load double, double* @c_writtenbrushes, align 8
  %28 = call i32 (i8*, ...) @Log_Print(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), double %27)
  %29 = call double (...) @I_FloatTime()
  %30 = load double, double* %4, align 8
  %31 = fsub double %29, %30
  %32 = call i32 (i8*, ...) @Log_Print(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0), double %31)
  br label %33

33:                                               ; preds = %24, %19, %12
  ret void
}

declare dso_local double @I_FloatTime(...) #1

declare dso_local i32 @Log_Print(i8*, ...) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @WriteMapFileSafe(i32*) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
