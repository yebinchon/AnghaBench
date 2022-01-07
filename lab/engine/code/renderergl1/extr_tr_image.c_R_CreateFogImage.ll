; ModuleID = '/home/carl/AnghaBench/lab/engine/code/renderergl1/extr_tr_image.c_R_CreateFogImage.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/renderergl1/extr_tr_image.c_R_CreateFogImage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32* (i32)*, i32 (i32*)* }
%struct.TYPE_3__ = type { i32 }

@ri = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@FOG_S = common dso_local global i32 0, align 4
@FOG_T = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"*fog\00", align 1
@IMGTYPE_COLORALPHA = common dso_local global i32 0, align 4
@IMGFLAG_CLAMPTOEDGE = common dso_local global i32 0, align 4
@tr = common dso_local global %struct.TYPE_3__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @R_CreateFogImage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @R_CreateFogImage() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca float, align 4
  %5 = load i32* (i32)*, i32* (i32)** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ri, i32 0, i32 0), align 8
  %6 = load i32, i32* @FOG_S, align 4
  %7 = load i32, i32* @FOG_T, align 4
  %8 = mul nsw i32 %6, %7
  %9 = mul nsw i32 %8, 4
  %10 = call i32* %5(i32 %9)
  store i32* %10, i32** %3, align 8
  store i32 0, i32* %1, align 4
  br label %11

11:                                               ; preds = %83, %0
  %12 = load i32, i32* %1, align 4
  %13 = load i32, i32* @FOG_S, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %86

15:                                               ; preds = %11
  store i32 0, i32* %2, align 4
  br label %16

16:                                               ; preds = %79, %15
  %17 = load i32, i32* %2, align 4
  %18 = load i32, i32* @FOG_T, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %82

20:                                               ; preds = %16
  %21 = load i32, i32* %1, align 4
  %22 = sitofp i32 %21 to float
  %23 = fadd float %22, 5.000000e-01
  %24 = load i32, i32* @FOG_S, align 4
  %25 = sitofp i32 %24 to float
  %26 = fdiv float %23, %25
  %27 = fptosi float %26 to i32
  %28 = load i32, i32* %2, align 4
  %29 = sitofp i32 %28 to float
  %30 = fadd float %29, 5.000000e-01
  %31 = load i32, i32* @FOG_T, align 4
  %32 = sitofp i32 %31 to float
  %33 = fdiv float %30, %32
  %34 = fptosi float %33 to i32
  %35 = call float @R_FogFactor(i32 %27, i32 %34)
  store float %35, float* %4, align 4
  %36 = load i32*, i32** %3, align 8
  %37 = load i32, i32* %2, align 4
  %38 = load i32, i32* @FOG_S, align 4
  %39 = mul nsw i32 %37, %38
  %40 = load i32, i32* %1, align 4
  %41 = add nsw i32 %39, %40
  %42 = mul nsw i32 %41, 4
  %43 = add nsw i32 %42, 2
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %36, i64 %44
  store i32 255, i32* %45, align 4
  %46 = load i32*, i32** %3, align 8
  %47 = load i32, i32* %2, align 4
  %48 = load i32, i32* @FOG_S, align 4
  %49 = mul nsw i32 %47, %48
  %50 = load i32, i32* %1, align 4
  %51 = add nsw i32 %49, %50
  %52 = mul nsw i32 %51, 4
  %53 = add nsw i32 %52, 1
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %46, i64 %54
  store i32 255, i32* %55, align 4
  %56 = load i32*, i32** %3, align 8
  %57 = load i32, i32* %2, align 4
  %58 = load i32, i32* @FOG_S, align 4
  %59 = mul nsw i32 %57, %58
  %60 = load i32, i32* %1, align 4
  %61 = add nsw i32 %59, %60
  %62 = mul nsw i32 %61, 4
  %63 = add nsw i32 %62, 0
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %56, i64 %64
  store i32 255, i32* %65, align 4
  %66 = load float, float* %4, align 4
  %67 = fmul float 2.550000e+02, %66
  %68 = fptosi float %67 to i32
  %69 = load i32*, i32** %3, align 8
  %70 = load i32, i32* %2, align 4
  %71 = load i32, i32* @FOG_S, align 4
  %72 = mul nsw i32 %70, %71
  %73 = load i32, i32* %1, align 4
  %74 = add nsw i32 %72, %73
  %75 = mul nsw i32 %74, 4
  %76 = add nsw i32 %75, 3
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %69, i64 %77
  store i32 %68, i32* %78, align 4
  br label %79

79:                                               ; preds = %20
  %80 = load i32, i32* %2, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %2, align 4
  br label %16

82:                                               ; preds = %16
  br label %83

83:                                               ; preds = %82
  %84 = load i32, i32* %1, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %1, align 4
  br label %11

86:                                               ; preds = %11
  %87 = load i32*, i32** %3, align 8
  %88 = load i32, i32* @FOG_S, align 4
  %89 = load i32, i32* @FOG_T, align 4
  %90 = load i32, i32* @IMGTYPE_COLORALPHA, align 4
  %91 = load i32, i32* @IMGFLAG_CLAMPTOEDGE, align 4
  %92 = call i32 @R_CreateImage(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32* %87, i32 %88, i32 %89, i32 %90, i32 %91, i32 0)
  store i32 %92, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @tr, i32 0, i32 0), align 4
  %93 = load i32 (i32*)*, i32 (i32*)** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ri, i32 0, i32 1), align 8
  %94 = load i32*, i32** %3, align 8
  %95 = call i32 %93(i32* %94)
  ret void
}

declare dso_local float @R_FogFactor(i32, i32) #1

declare dso_local i32 @R_CreateImage(i8*, i32*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
