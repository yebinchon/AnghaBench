; ModuleID = '/home/carl/AnghaBench/lab/engine/code/ui/extr_ui_shared.c_PC_Float_Parse.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/ui/extr_ui_shared.c_PC_Float_Parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i64, float }

@qfalse = common dso_local global i32 0, align 4
@qtrue = common dso_local global i32 0, align 4
@TT_NUMBER = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [28 x i8] c"expected float but found %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @PC_Float_Parse(i32 %0, float* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca float*, align 8
  %6 = alloca %struct.TYPE_3__, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store float* %1, float** %5, align 8
  %8 = load i32, i32* @qfalse, align 4
  store i32 %8, i32* %7, align 4
  %9 = load i32, i32* %4, align 4
  %10 = call i32 @trap_PC_ReadToken(i32 %9, %struct.TYPE_3__* %6)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %14, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* @qfalse, align 4
  store i32 %13, i32* %3, align 4
  br label %54

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %16 = load i8*, i8** %15, align 8
  %17 = getelementptr inbounds i8, i8* %16, i64 0
  %18 = load i8, i8* %17, align 1
  %19 = sext i8 %18 to i32
  %20 = icmp eq i32 %19, 45
  br i1 %20, label %21, label %29

21:                                               ; preds = %14
  %22 = load i32, i32* %4, align 4
  %23 = call i32 @trap_PC_ReadToken(i32 %22, %struct.TYPE_3__* %6)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %21
  %26 = load i32, i32* @qfalse, align 4
  store i32 %26, i32* %3, align 4
  br label %54

27:                                               ; preds = %21
  %28 = load i32, i32* @qtrue, align 4
  store i32 %28, i32* %7, align 4
  br label %29

29:                                               ; preds = %27, %14
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @TT_NUMBER, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %40

34:                                               ; preds = %29
  %35 = load i32, i32* %4, align 4
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %37 = load i8*, i8** %36, align 8
  %38 = call i32 @PC_SourceError(i32 %35, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i8* %37)
  %39 = load i32, i32* @qfalse, align 4
  store i32 %39, i32* %3, align 4
  br label %54

40:                                               ; preds = %29
  %41 = load i32, i32* %7, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %40
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 2
  %45 = load float, float* %44, align 8
  %46 = fneg float %45
  %47 = load float*, float** %5, align 8
  store float %46, float* %47, align 4
  br label %52

48:                                               ; preds = %40
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 2
  %50 = load float, float* %49, align 8
  %51 = load float*, float** %5, align 8
  store float %50, float* %51, align 4
  br label %52

52:                                               ; preds = %48, %43
  %53 = load i32, i32* @qtrue, align 4
  store i32 %53, i32* %3, align 4
  br label %54

54:                                               ; preds = %52, %34, %25, %12
  %55 = load i32, i32* %3, align 4
  ret i32 %55
}

declare dso_local i32 @trap_PC_ReadToken(i32, %struct.TYPE_3__*) #1

declare dso_local i32 @PC_SourceError(i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
