; ModuleID = '/home/carl/AnghaBench/lab/engine/code/botlib/extr_be_ai_weight.c_ReadValue.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/botlib/extr_be_ai_weight.c_ReadValue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, float, i32 }

@qfalse = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"negative value set to zero\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"Missing return value\00", align 1
@TT_NUMBER = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [24 x i8] c"invalid return value %s\00", align 1
@qtrue = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ReadValue(i32* %0, float* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca float*, align 8
  %6 = alloca %struct.TYPE_3__, align 8
  store i32* %0, i32** %4, align 8
  store float* %1, float** %5, align 8
  %7 = load i32*, i32** %4, align 8
  %8 = call i32 @PC_ExpectAnyToken(i32* %7, %struct.TYPE_3__* %6)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %2
  %11 = load i32, i32* @qfalse, align 4
  store i32 %11, i32* %3, align 4
  br label %44

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @strcmp(i32 %14, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %28, label %17

17:                                               ; preds = %12
  %18 = load i32*, i32** %4, align 8
  %19 = call i32 @SourceWarning(i32* %18, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %20 = load i32*, i32** %4, align 8
  %21 = call i32 @PC_ExpectAnyToken(i32* %20, %struct.TYPE_3__* %6)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %27, label %23

23:                                               ; preds = %17
  %24 = load i32*, i32** %4, align 8
  %25 = call i32 (i32*, i8*, ...) @SourceError(i32* %24, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  %26 = load i32, i32* @qfalse, align 4
  store i32 %26, i32* %3, align 4
  br label %44

27:                                               ; preds = %17
  br label %28

28:                                               ; preds = %27, %12
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @TT_NUMBER, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %39

33:                                               ; preds = %28
  %34 = load i32*, i32** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = call i32 (i32*, i8*, ...) @SourceError(i32* %34, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i32 %36)
  %38 = load i32, i32* @qfalse, align 4
  store i32 %38, i32* %3, align 4
  br label %44

39:                                               ; preds = %28
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 1
  %41 = load float, float* %40, align 8
  %42 = load float*, float** %5, align 8
  store float %41, float* %42, align 4
  %43 = load i32, i32* @qtrue, align 4
  store i32 %43, i32* %3, align 4
  br label %44

44:                                               ; preds = %39, %33, %23, %10
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

declare dso_local i32 @PC_ExpectAnyToken(i32*, %struct.TYPE_3__*) #1

declare dso_local i32 @strcmp(i32, i8*) #1

declare dso_local i32 @SourceWarning(i32*, i8*) #1

declare dso_local i32 @SourceError(i32*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
