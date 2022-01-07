; ModuleID = '/home/carl/AnghaBench/lab/engine/code/renderergl1/extr_tr_bsp.c_R_ColorShiftLightingBytes.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/renderergl1/extr_tr_bsp.c_R_ColorShiftLightingBytes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@r_mapOverBrightBits = common dso_local global %struct.TYPE_4__* null, align 8
@tr = common dso_local global %struct.TYPE_3__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*)* @R_ColorShiftLightingBytes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @R_ColorShiftLightingBytes(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** @r_mapOverBrightBits, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @tr, i32 0, i32 0), align 4
  %14 = sub nsw i32 %12, %13
  store i32 %14, i32* %5, align 4
  %15 = load i32*, i32** %3, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* %5, align 4
  %19 = shl i32 %17, %18
  store i32 %19, i32* %6, align 4
  %20 = load i32*, i32** %3, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 1
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %5, align 4
  %24 = shl i32 %22, %23
  store i32 %24, i32* %7, align 4
  %25 = load i32*, i32** %3, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 2
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %5, align 4
  %29 = shl i32 %27, %28
  store i32 %29, i32* %8, align 4
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* %7, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* %8, align 4
  %34 = or i32 %32, %33
  %35 = icmp sgt i32 %34, 255
  br i1 %35, label %36, label %67

36:                                               ; preds = %2
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* %7, align 4
  %39 = icmp sgt i32 %37, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %36
  %41 = load i32, i32* %6, align 4
  br label %44

42:                                               ; preds = %36
  %43 = load i32, i32* %7, align 4
  br label %44

44:                                               ; preds = %42, %40
  %45 = phi i32 [ %41, %40 ], [ %43, %42 ]
  store i32 %45, i32* %9, align 4
  %46 = load i32, i32* %9, align 4
  %47 = load i32, i32* %8, align 4
  %48 = icmp sgt i32 %46, %47
  br i1 %48, label %49, label %51

49:                                               ; preds = %44
  %50 = load i32, i32* %9, align 4
  br label %53

51:                                               ; preds = %44
  %52 = load i32, i32* %8, align 4
  br label %53

53:                                               ; preds = %51, %49
  %54 = phi i32 [ %50, %49 ], [ %52, %51 ]
  store i32 %54, i32* %9, align 4
  %55 = load i32, i32* %6, align 4
  %56 = mul nsw i32 %55, 255
  %57 = load i32, i32* %9, align 4
  %58 = sdiv i32 %56, %57
  store i32 %58, i32* %6, align 4
  %59 = load i32, i32* %7, align 4
  %60 = mul nsw i32 %59, 255
  %61 = load i32, i32* %9, align 4
  %62 = sdiv i32 %60, %61
  store i32 %62, i32* %7, align 4
  %63 = load i32, i32* %8, align 4
  %64 = mul nsw i32 %63, 255
  %65 = load i32, i32* %9, align 4
  %66 = sdiv i32 %64, %65
  store i32 %66, i32* %8, align 4
  br label %67

67:                                               ; preds = %53, %2
  %68 = load i32, i32* %6, align 4
  %69 = load i32*, i32** %4, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 0
  store i32 %68, i32* %70, align 4
  %71 = load i32, i32* %7, align 4
  %72 = load i32*, i32** %4, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 1
  store i32 %71, i32* %73, align 4
  %74 = load i32, i32* %8, align 4
  %75 = load i32*, i32** %4, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 2
  store i32 %74, i32* %76, align 4
  %77 = load i32*, i32** %3, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 3
  %79 = load i32, i32* %78, align 4
  %80 = load i32*, i32** %4, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 3
  store i32 %79, i32* %81, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
