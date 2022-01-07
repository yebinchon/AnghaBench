; ModuleID = '/home/carl/AnghaBench/lab/engine/code/game/extr_bg_pmove.c_PM_GroundTraceMissed.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/game/extr_bg_pmove.c_PM_GroundTraceMissed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_8__*, %struct.TYPE_7__, i32, i32, i32, i32 (%struct.TYPE_9__*, i32, i32, i32, i32*, i32, i32)*, i64 }
%struct.TYPE_8__ = type { i64, i32, i32, i32 }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_9__ = type { double }
%struct.TYPE_10__ = type { i8*, i8* }

@pm = common dso_local global %struct.TYPE_11__* null, align 8
@ENTITYNUM_NONE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [9 x i8] c"%i:lift\0A\00", align 1
@c_pmove = common dso_local global i32 0, align 4
@LEGS_JUMP = common dso_local global i32 0, align 4
@PMF_BACKWARDS_JUMP = common dso_local global i32 0, align 4
@LEGS_JUMPB = common dso_local global i32 0, align 4
@qfalse = common dso_local global i8* null, align 8
@pml = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @PM_GroundTraceMissed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @PM_GroundTraceMissed() #0 {
  %1 = alloca %struct.TYPE_9__, align 8
  %2 = alloca i32*, align 8
  %3 = load %struct.TYPE_11__*, %struct.TYPE_11__** @pm, align 8
  %4 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %3, i32 0, i32 0
  %5 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %6 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @ENTITYNUM_NONE, align 8
  %9 = icmp ne i64 %7, %8
  br i1 %9, label %10, label %86

10:                                               ; preds = %0
  %11 = load %struct.TYPE_11__*, %struct.TYPE_11__** @pm, align 8
  %12 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %11, i32 0, i32 6
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %10
  %16 = load i32, i32* @c_pmove, align 4
  %17 = call i32 @Com_Printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %16)
  br label %18

18:                                               ; preds = %15, %10
  %19 = load %struct.TYPE_11__*, %struct.TYPE_11__** @pm, align 8
  %20 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 8
  %24 = load i32*, i32** %2, align 8
  %25 = call i32 @VectorCopy(i32 %23, i32* %24)
  %26 = load i32*, i32** %2, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 2
  %28 = load i32, i32* %27, align 4
  %29 = sub nsw i32 %28, 64
  store i32 %29, i32* %27, align 4
  %30 = load %struct.TYPE_11__*, %struct.TYPE_11__** @pm, align 8
  %31 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %30, i32 0, i32 5
  %32 = load i32 (%struct.TYPE_9__*, i32, i32, i32, i32*, i32, i32)*, i32 (%struct.TYPE_9__*, i32, i32, i32, i32*, i32, i32)** %31, align 8
  %33 = load %struct.TYPE_11__*, %struct.TYPE_11__** @pm, align 8
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.TYPE_11__*, %struct.TYPE_11__** @pm, align 8
  %39 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %38, i32 0, i32 4
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.TYPE_11__*, %struct.TYPE_11__** @pm, align 8
  %42 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 4
  %44 = load i32*, i32** %2, align 8
  %45 = load %struct.TYPE_11__*, %struct.TYPE_11__** @pm, align 8
  %46 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %45, i32 0, i32 0
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.TYPE_11__*, %struct.TYPE_11__** @pm, align 8
  %51 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = call i32 %32(%struct.TYPE_9__* %1, i32 %37, i32 %40, i32 %43, i32* %44, i32 %49, i32 %52)
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %1, i32 0, i32 0
  %55 = load double, double* %54, align 8
  %56 = fcmp oeq double %55, 1.000000e+00
  br i1 %56, label %57, label %85

57:                                               ; preds = %18
  %58 = load %struct.TYPE_11__*, %struct.TYPE_11__** @pm, align 8
  %59 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = icmp sge i64 %61, 0
  br i1 %62, label %63, label %74

63:                                               ; preds = %57
  %64 = load i32, i32* @LEGS_JUMP, align 4
  %65 = call i32 @PM_ForceLegsAnim(i32 %64)
  %66 = load i32, i32* @PMF_BACKWARDS_JUMP, align 4
  %67 = xor i32 %66, -1
  %68 = load %struct.TYPE_11__*, %struct.TYPE_11__** @pm, align 8
  %69 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %68, i32 0, i32 0
  %70 = load %struct.TYPE_8__*, %struct.TYPE_8__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = and i32 %72, %67
  store i32 %73, i32* %71, align 8
  br label %84

74:                                               ; preds = %57
  %75 = load i32, i32* @LEGS_JUMPB, align 4
  %76 = call i32 @PM_ForceLegsAnim(i32 %75)
  %77 = load i32, i32* @PMF_BACKWARDS_JUMP, align 4
  %78 = load %struct.TYPE_11__*, %struct.TYPE_11__** @pm, align 8
  %79 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %78, i32 0, i32 0
  %80 = load %struct.TYPE_8__*, %struct.TYPE_8__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 8
  %83 = or i32 %82, %77
  store i32 %83, i32* %81, align 8
  br label %84

84:                                               ; preds = %74, %63
  br label %85

85:                                               ; preds = %84, %18
  br label %86

86:                                               ; preds = %85, %0
  %87 = load i64, i64* @ENTITYNUM_NONE, align 8
  %88 = load %struct.TYPE_11__*, %struct.TYPE_11__** @pm, align 8
  %89 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %88, i32 0, i32 0
  %90 = load %struct.TYPE_8__*, %struct.TYPE_8__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 0
  store i64 %87, i64* %91, align 8
  %92 = load i8*, i8** @qfalse, align 8
  store i8* %92, i8** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @pml, i32 0, i32 1), align 8
  %93 = load i8*, i8** @qfalse, align 8
  store i8* %93, i8** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @pml, i32 0, i32 0), align 8
  ret void
}

declare dso_local i32 @Com_Printf(i8*, i32) #1

declare dso_local i32 @VectorCopy(i32, i32*) #1

declare dso_local i32 @PM_ForceLegsAnim(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
