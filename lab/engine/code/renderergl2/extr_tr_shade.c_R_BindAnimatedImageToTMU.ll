; ModuleID = '/home/carl/AnghaBench/lab/engine/code/renderergl2/extr_tr_shade.c_R_BindAnimatedImageToTMU.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/renderergl2/extr_tr_shade.c_R_BindAnimatedImageToTMU.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 (i64)*, i32 (i64)* }
%struct.TYPE_7__ = type { i32* }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_6__ = type { i64, i32, i64, i32*, i64 }

@ri = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8
@tr = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@tess = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@FUNCTABLE_SIZE = common dso_local global i64 0, align 8
@FUNCTABLE_SIZE2 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*, i32)* @R_BindAnimatedImageToTMU to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @R_BindAnimatedImageToTMU(%struct.TYPE_6__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 4
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %29

10:                                               ; preds = %2
  %11 = load i32 (i64)*, i32 (i64)** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @ri, i32 0, i32 1), align 8
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = call i32 %11(i64 %14)
  %16 = load i32 (i64)*, i32 (i64)** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @ri, i32 0, i32 0), align 8
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = call i32 %16(i64 %19)
  %21 = load i32*, i32** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @tr, i32 0, i32 0), align 8
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = getelementptr inbounds i32, i32* %21, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %4, align 4
  %28 = call i32 @GL_BindToTMU(i32 %26, i32 %27)
  br label %80

29:                                               ; preds = %2
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = icmp sle i32 %32, 1
  br i1 %33, label %34, label %42

34:                                               ; preds = %29
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 3
  %37 = load i32*, i32** %36, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %4, align 4
  %41 = call i32 @GL_BindToTMU(i32 %39, i32 %40)
  br label %80

42:                                               ; preds = %29
  %43 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @tess, i32 0, i32 0), align 8
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = mul i64 %43, %46
  %48 = load i64, i64* @FUNCTABLE_SIZE, align 8
  %49 = mul i64 %47, %48
  store i64 %49, i64* %5, align 8
  %50 = load i64, i64* @FUNCTABLE_SIZE2, align 8
  %51 = load i64, i64* %5, align 8
  %52 = lshr i64 %51, %50
  store i64 %52, i64* %5, align 8
  %53 = load i64, i64* %5, align 8
  %54 = icmp ult i64 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %42
  store i64 0, i64* %5, align 8
  br label %56

56:                                               ; preds = %55, %42
  br label %57

57:                                               ; preds = %64, %56
  %58 = load i64, i64* %5, align 8
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = sext i32 %61 to i64
  %63 = icmp uge i64 %58, %62
  br i1 %63, label %64, label %71

64:                                               ; preds = %57
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = sext i32 %67 to i64
  %69 = load i64, i64* %5, align 8
  %70 = sub i64 %69, %68
  store i64 %70, i64* %5, align 8
  br label %57

71:                                               ; preds = %57
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 3
  %74 = load i32*, i32** %73, align 8
  %75 = load i64, i64* %5, align 8
  %76 = getelementptr inbounds i32, i32* %74, i64 %75
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* %4, align 4
  %79 = call i32 @GL_BindToTMU(i32 %77, i32 %78)
  br label %80

80:                                               ; preds = %71, %34, %10
  ret void
}

declare dso_local i32 @GL_BindToTMU(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
