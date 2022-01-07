; ModuleID = '/home/carl/AnghaBench/lab/engine/code/cgame/extr_cg_newdraw.c_CG_DrawPlayerAmmoIcon.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/cgame/extr_cg_newdraw.c_CG_DrawPlayerAmmoIcon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i64 }
%struct.TYPE_14__ = type { double, %struct.TYPE_17__, %struct.TYPE_16__* }
%struct.TYPE_17__ = type { i64 }
%struct.TYPE_16__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i64 }
%struct.TYPE_13__ = type { i64 }
%struct.TYPE_22__ = type { i64 }
%struct.TYPE_21__ = type { i64, i64 }
%struct.TYPE_19__ = type { i32, i32, i32, i32 }

@cg_entities = common dso_local global %struct.TYPE_20__* null, align 8
@cg = common dso_local global %struct.TYPE_14__ zeroinitializer, align 8
@cg_draw3dIcons = common dso_local global %struct.TYPE_13__ zeroinitializer, align 8
@cg_drawIcons = common dso_local global %struct.TYPE_22__ zeroinitializer, align 8
@cg_weapons = common dso_local global %struct.TYPE_21__* null, align 8
@YAW = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_19__*, i64)* @CG_DrawPlayerAmmoIcon to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @CG_DrawPlayerAmmoIcon(%struct.TYPE_19__* %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_19__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_20__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %3, align 8
  store i64 %1, i64* %4, align 8
  %9 = load %struct.TYPE_20__*, %struct.TYPE_20__** @cg_entities, align 8
  %10 = load %struct.TYPE_16__*, %struct.TYPE_16__** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @cg, i32 0, i32 2), align 8
  %11 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %9, i64 %13
  store %struct.TYPE_20__* %14, %struct.TYPE_20__** %5, align 8
  %15 = load i64, i64* %4, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %23, label %17

17:                                               ; preds = %2
  %18 = load i64, i64* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @cg_draw3dIcons, i32 0, i32 0), align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %47, label %20

20:                                               ; preds = %17
  %21 = load i64, i64* getelementptr inbounds (%struct.TYPE_22__, %struct.TYPE_22__* @cg_drawIcons, i32 0, i32 0), align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %47

23:                                               ; preds = %20, %2
  %24 = load %struct.TYPE_21__*, %struct.TYPE_21__** @cg_weapons, align 8
  %25 = load i64, i64* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @cg, i32 0, i32 1, i32 0), align 8
  %26 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %24, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  store i64 %28, i64* %8, align 8
  %29 = load i64, i64* %8, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %46

31:                                               ; preds = %23
  %32 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i64, i64* %8, align 8
  %45 = call i32 @CG_DrawPic(i32 %34, i32 %37, i32 %40, i32 %43, i64 %44)
  br label %46

46:                                               ; preds = %31, %23
  br label %108

47:                                               ; preds = %20, %17
  %48 = load i64, i64* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @cg_draw3dIcons, i32 0, i32 0), align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %107

50:                                               ; preds = %47
  %51 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %106

56:                                               ; preds = %50
  %57 = load %struct.TYPE_21__*, %struct.TYPE_21__** @cg_weapons, align 8
  %58 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %57, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %106

66:                                               ; preds = %56
  %67 = load i32*, i32** %6, align 8
  %68 = call i32 @VectorClear(i32* %67)
  %69 = load i32*, i32** %7, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 0
  store i32 70, i32* %70, align 4
  %71 = load i32*, i32** %7, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 1
  store i32 0, i32* %72, align 4
  %73 = load i32*, i32** %7, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 2
  store i32 0, i32* %74, align 4
  %75 = load double, double* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @cg, i32 0, i32 0), align 8
  %76 = fdiv double %75, 1.000000e+03
  %77 = call i32 @sin(double %76)
  %78 = mul nsw i32 20, %77
  %79 = add nsw i32 90, %78
  %80 = load i32*, i32** %6, align 8
  %81 = load i64, i64* @YAW, align 8
  %82 = getelementptr inbounds i32, i32* %80, i64 %81
  store i32 %79, i32* %82, align 4
  %83 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %84 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %83, i32 0, i32 3
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %87 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %90 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %93 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.TYPE_21__*, %struct.TYPE_21__** @cg_weapons, align 8
  %96 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %97 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %95, i64 %99
  %101 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = load i32*, i32** %7, align 8
  %104 = load i32*, i32** %6, align 8
  %105 = call i32 @CG_Draw3DModel(i32 %85, i32 %88, i32 %91, i32 %94, i64 %102, i32 0, i32* %103, i32* %104)
  br label %106

106:                                              ; preds = %66, %56, %50
  br label %107

107:                                              ; preds = %106, %47
  br label %108

108:                                              ; preds = %107, %46
  ret void
}

declare dso_local i32 @CG_DrawPic(i32, i32, i32, i32, i64) #1

declare dso_local i32 @VectorClear(i32*) #1

declare dso_local i32 @sin(double) #1

declare dso_local i32 @CG_Draw3DModel(i32, i32, i32, i32, i64, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
