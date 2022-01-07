; ModuleID = '/home/carl/AnghaBench/lab/engine/code/cgame/extr_cg_particles.c_ValidBloodPool.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/cgame/extr_cg_particles.c_ValidBloodPool.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32, i32 }

@CONTENTS_SOLID = common dso_local global i32 0, align 4
@ENTITYNUM_WORLD = common dso_local global i64 0, align 8
@qfalse = common dso_local global i32 0, align 4
@qtrue = common dso_local global i32 0, align 4
@EXTRUDE_DIST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ValidBloodPool(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_3__, align 8
  %16 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 16, i32* %13, align 4
  store i32 16, i32* %14, align 4
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @VectorSet(i32 %17, i32 0, i32 0, i32 1)
  %19 = load i32, i32* %16, align 4
  %20 = load i32, i32* %4, align 4
  %21 = call i32 @vectoangles(i32 %19, i32 %20)
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* %6, align 4
  %25 = call i32 @AngleVectors(i32 %22, i32* null, i32 %23, i32 %24)
  %26 = load i32, i32* %3, align 4
  %27 = load i32, i32* %16, align 4
  %28 = load i32, i32* %9, align 4
  %29 = call i32 @VectorMA(i32 %26, i32 0, i32 %27, i32 %28)
  %30 = load i32, i32* %13, align 4
  %31 = sub nsw i32 0, %30
  %32 = sdiv i32 %31, 2
  store i32 %32, i32* %11, align 4
  br label %33

33:                                               ; preds = %86, %1
  %34 = load i32, i32* %11, align 4
  %35 = load i32, i32* %13, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %90

37:                                               ; preds = %33
  %38 = load i32, i32* %9, align 4
  %39 = load i32, i32* %11, align 4
  %40 = load i32, i32* %5, align 4
  %41 = load i32, i32* %8, align 4
  %42 = call i32 @VectorMA(i32 %38, i32 %39, i32 %40, i32 %41)
  %43 = load i32, i32* %14, align 4
  %44 = sub nsw i32 0, %43
  %45 = sdiv i32 %44, 2
  store i32 %45, i32* %12, align 4
  br label %46

46:                                               ; preds = %81, %37
  %47 = load i32, i32* %12, align 4
  %48 = load i32, i32* %14, align 4
  %49 = icmp slt i32 %47, %48
  br i1 %49, label %50, label %85

50:                                               ; preds = %46
  %51 = load i32, i32* %8, align 4
  %52 = load i32, i32* %12, align 4
  %53 = load i32, i32* %6, align 4
  %54 = load i32, i32* %7, align 4
  %55 = call i32 @VectorMA(i32 %51, i32 %52, i32 %53, i32 %54)
  %56 = load i32, i32* %7, align 4
  %57 = load i32, i32* %16, align 4
  %58 = load i32, i32* %10, align 4
  %59 = call i32 @VectorMA(i32 %56, i32 -1, i32 %57, i32 %58)
  %60 = load i32, i32* %7, align 4
  %61 = load i32, i32* %10, align 4
  %62 = load i32, i32* @CONTENTS_SOLID, align 4
  %63 = call i32 @CG_Trace(%struct.TYPE_3__* %15, i32 %60, i32* null, i32* null, i32 %61, i32 -1, i32 %62)
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @ENTITYNUM_WORLD, align 8
  %67 = icmp slt i64 %65, %66
  br i1 %67, label %68, label %70

68:                                               ; preds = %50
  %69 = load i32, i32* @qfalse, align 4
  store i32 %69, i32* %2, align 4
  br label %92

70:                                               ; preds = %50
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %78, label %74

74:                                               ; preds = %70
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = icmp slt i32 %76, 1
  br i1 %77, label %80, label %78

78:                                               ; preds = %74, %70
  %79 = load i32, i32* @qfalse, align 4
  store i32 %79, i32* %2, align 4
  br label %92

80:                                               ; preds = %74
  br label %81

81:                                               ; preds = %80
  %82 = load i32, i32* %14, align 4
  %83 = load i32, i32* %12, align 4
  %84 = add nsw i32 %83, %82
  store i32 %84, i32* %12, align 4
  br label %46

85:                                               ; preds = %46
  br label %86

86:                                               ; preds = %85
  %87 = load i32, i32* %13, align 4
  %88 = load i32, i32* %11, align 4
  %89 = add nsw i32 %88, %87
  store i32 %89, i32* %11, align 4
  br label %33

90:                                               ; preds = %33
  %91 = load i32, i32* @qtrue, align 4
  store i32 %91, i32* %2, align 4
  br label %92

92:                                               ; preds = %90, %78, %68
  %93 = load i32, i32* %2, align 4
  ret i32 %93
}

declare dso_local i32 @VectorSet(i32, i32, i32, i32) #1

declare dso_local i32 @vectoangles(i32, i32) #1

declare dso_local i32 @AngleVectors(i32, i32*, i32, i32) #1

declare dso_local i32 @VectorMA(i32, i32, i32, i32) #1

declare dso_local i32 @CG_Trace(%struct.TYPE_3__*, i32, i32*, i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
