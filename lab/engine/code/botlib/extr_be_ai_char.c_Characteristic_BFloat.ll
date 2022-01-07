; ModuleID = '/home/carl/AnghaBench/lab/engine/code/botlib/extr_be_ai_char.c_Characteristic_BFloat.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/botlib/extr_be_ai_char.c_Characteristic_BFloat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (i32, i8*, i32, float, float)* }

@botimport = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@PRT_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"cannot bound characteristic %d between %f and %f\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local float @Characteristic_BFloat(i32 %0, i32 %1, float %2, float %3) #0 {
  %5 = alloca float, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca float, align 4
  %9 = alloca float, align 4
  %10 = alloca float, align 4
  %11 = alloca i32*, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store float %2, float* %8, align 4
  store float %3, float* %9, align 4
  %12 = load i32, i32* %6, align 4
  %13 = call i32* @BotCharacterFromHandle(i32 %12)
  store i32* %13, i32** %11, align 8
  %14 = load i32*, i32** %11, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %4
  store float 0.000000e+00, float* %5, align 4
  br label %45

17:                                               ; preds = %4
  %18 = load float, float* %8, align 4
  %19 = load float, float* %9, align 4
  %20 = fcmp ogt float %18, %19
  br i1 %20, label %21, label %28

21:                                               ; preds = %17
  %22 = load i32 (i32, i8*, i32, float, float)*, i32 (i32, i8*, i32, float, float)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @botimport, i32 0, i32 0), align 8
  %23 = load i32, i32* @PRT_ERROR, align 4
  %24 = load i32, i32* %7, align 4
  %25 = load float, float* %8, align 4
  %26 = load float, float* %9, align 4
  %27 = call i32 %22(i32 %23, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %24, float %25, float %26)
  store float 0.000000e+00, float* %5, align 4
  br label %45

28:                                               ; preds = %17
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* %7, align 4
  %31 = call float @Characteristic_Float(i32 %29, i32 %30)
  store float %31, float* %10, align 4
  %32 = load float, float* %10, align 4
  %33 = load float, float* %8, align 4
  %34 = fcmp olt float %32, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %28
  %36 = load float, float* %8, align 4
  store float %36, float* %5, align 4
  br label %45

37:                                               ; preds = %28
  %38 = load float, float* %10, align 4
  %39 = load float, float* %9, align 4
  %40 = fcmp ogt float %38, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %37
  %42 = load float, float* %9, align 4
  store float %42, float* %5, align 4
  br label %45

43:                                               ; preds = %37
  %44 = load float, float* %10, align 4
  store float %44, float* %5, align 4
  br label %45

45:                                               ; preds = %43, %41, %35, %21, %16
  %46 = load float, float* %5, align 4
  ret float %46
}

declare dso_local i32* @BotCharacterFromHandle(i32) #1

declare dso_local float @Characteristic_Float(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
