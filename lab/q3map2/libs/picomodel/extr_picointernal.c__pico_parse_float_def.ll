; ModuleID = '/home/carl/AnghaBench/lab/q3map2/libs/picomodel/extr_picointernal.c__pico_parse_float_def.c'
source_filename = "/home/carl/AnghaBench/lab/q3map2/libs/picomodel/extr_picointernal.c__pico_parse_float_def.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_pico_parse_float_def(i32* %0, float* %1, float %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca float*, align 8
  %7 = alloca float, align 4
  %8 = alloca i8*, align 8
  store i32* %0, i32** %5, align 8
  store float* %1, float** %6, align 8
  store float %2, float* %7, align 4
  %9 = load i32*, i32** %5, align 8
  %10 = icmp eq i32* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %3
  %12 = load float*, float** %6, align 8
  %13 = icmp eq float* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %11, %3
  store i32 0, i32* %4, align 4
  br label %28

15:                                               ; preds = %11
  %16 = load float, float* %7, align 4
  %17 = load float*, float** %6, align 8
  store float %16, float* %17, align 4
  %18 = load i32*, i32** %5, align 8
  %19 = call i8* @_pico_parse(i32* %18, i32 0)
  store i8* %19, i8** %8, align 8
  %20 = load i8*, i8** %8, align 8
  %21 = icmp eq i8* %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %15
  store i32 0, i32* %4, align 4
  br label %28

23:                                               ; preds = %15
  %24 = load i8*, i8** %8, align 8
  %25 = call i64 @atof(i8* %24)
  %26 = sitofp i64 %25 to float
  %27 = load float*, float** %6, align 8
  store float %26, float* %27, align 4
  store i32 1, i32* %4, align 4
  br label %28

28:                                               ; preds = %23, %22, %14
  %29 = load i32, i32* %4, align 4
  ret i32 %29
}

declare dso_local i8* @_pico_parse(i32*, i32) #1

declare dso_local i64 @atof(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
