; ModuleID = '/home/carl/AnghaBench/lab/engine/code/botlib/extr_be_aas_move.c_AAS_PredictClientMovement.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/botlib/extr_be_aas_move.c_AAS_PredictClientMovement.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aas_clientmove_s = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @AAS_PredictClientMovement(%struct.aas_clientmove_s* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8, float %9, i32 %10, i32 %11, i32 %12) #0 {
  %14 = alloca %struct.aas_clientmove_s*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca float, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  store %struct.aas_clientmove_s* %0, %struct.aas_clientmove_s** %14, align 8
  store i32 %1, i32* %15, align 4
  store i32 %2, i32* %16, align 4
  store i32 %3, i32* %17, align 4
  store i32 %4, i32* %18, align 4
  store i32 %5, i32* %19, align 4
  store i32 %6, i32* %20, align 4
  store i32 %7, i32* %21, align 4
  store i32 %8, i32* %22, align 4
  store float %9, float* %23, align 4
  store i32 %10, i32* %24, align 4
  store i32 %11, i32* %25, align 4
  store i32 %12, i32* %26, align 4
  %29 = load %struct.aas_clientmove_s*, %struct.aas_clientmove_s** %14, align 8
  %30 = load i32, i32* %15, align 4
  %31 = load i32, i32* %16, align 4
  %32 = load i32, i32* %17, align 4
  %33 = load i32, i32* %18, align 4
  %34 = load i32, i32* %19, align 4
  %35 = load i32, i32* %20, align 4
  %36 = load i32, i32* %21, align 4
  %37 = load i32, i32* %22, align 4
  %38 = load float, float* %23, align 4
  %39 = load i32, i32* %24, align 4
  %40 = load i32, i32* %25, align 4
  %41 = load i32, i32* %27, align 4
  %42 = load i32, i32* %28, align 4
  %43 = load i32, i32* %26, align 4
  %44 = call i32 @AAS_ClientMovementPrediction(%struct.aas_clientmove_s* %29, i32 %30, i32 %31, i32 %32, i32 %33, i32 %34, i32 %35, i32 %36, i32 %37, float %38, i32 %39, i32 %40, i32 %41, i32 %42, i32 %43)
  ret i32 %44
}

declare dso_local i32 @AAS_ClientMovementPrediction(%struct.aas_clientmove_s*, i32, i32, i32, i32, i32, i32, i32, i32, float, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
