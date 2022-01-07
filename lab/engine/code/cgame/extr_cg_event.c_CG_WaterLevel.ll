; ModuleID = '/home/carl/AnghaBench/lab/engine/code/cgame/extr_cg_event.c_CG_WaterLevel.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/cgame/extr_cg_event.c_CG_WaterLevel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64*, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@ANIM_TOGGLEBIT = common dso_local global i32 0, align 4
@LEGS_WALKCR = common dso_local global i32 0, align 4
@LEGS_IDLECR = common dso_local global i32 0, align 4
@CROUCH_VIEWHEIGHT = common dso_local global i32 0, align 4
@DEFAULT_VIEWHEIGHT = common dso_local global i32 0, align 4
@MINS_Z = common dso_local global i32 0, align 4
@MASK_WATER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @CG_WaterLevel(%struct.TYPE_5__* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca i64*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %2, align 8
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @ANIM_TOGGLEBIT, align 4
  %15 = xor i32 %14, -1
  %16 = and i32 %13, %15
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* @LEGS_WALKCR, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %24, label %20

20:                                               ; preds = %1
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* @LEGS_IDLECR, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %20, %1
  %25 = load i32, i32* @CROUCH_VIEWHEIGHT, align 4
  store i32 %25, i32* %9, align 4
  br label %28

26:                                               ; preds = %20
  %27 = load i32, i32* @DEFAULT_VIEWHEIGHT, align 4
  store i32 %27, i32* %9, align 4
  br label %28

28:                                               ; preds = %26, %24
  store i32 0, i32* %8, align 4
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = load i64*, i64** %30, align 8
  %32 = getelementptr inbounds i64, i64* %31, i64 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64*, i64** %3, align 8
  %35 = getelementptr inbounds i64, i64* %34, i64 0
  store i64 %33, i64* %35, align 8
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = load i64*, i64** %37, align 8
  %39 = getelementptr inbounds i64, i64* %38, i64 1
  %40 = load i64, i64* %39, align 8
  %41 = load i64*, i64** %3, align 8
  %42 = getelementptr inbounds i64, i64* %41, i64 1
  store i64 %40, i64* %42, align 8
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = load i64*, i64** %44, align 8
  %46 = getelementptr inbounds i64, i64* %45, i64 2
  %47 = load i64, i64* %46, align 8
  %48 = load i32, i32* @MINS_Z, align 4
  %49 = sext i32 %48 to i64
  %50 = add nsw i64 %47, %49
  %51 = add nsw i64 %50, 1
  %52 = load i64*, i64** %3, align 8
  %53 = getelementptr inbounds i64, i64* %52, i64 2
  store i64 %51, i64* %53, align 8
  %54 = load i64*, i64** %3, align 8
  %55 = call i32 @CG_PointContents(i64* %54, i32 -1)
  store i32 %55, i32* %4, align 4
  %56 = load i32, i32* %4, align 4
  %57 = load i32, i32* @MASK_WATER, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %108

60:                                               ; preds = %28
  %61 = load i32, i32* %9, align 4
  %62 = load i32, i32* @MINS_Z, align 4
  %63 = sub nsw i32 %61, %62
  store i32 %63, i32* %6, align 4
  %64 = load i32, i32* %6, align 4
  %65 = sdiv i32 %64, 2
  store i32 %65, i32* %5, align 4
  store i32 1, i32* %8, align 4
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 0
  %68 = load i64*, i64** %67, align 8
  %69 = getelementptr inbounds i64, i64* %68, i64 2
  %70 = load i64, i64* %69, align 8
  %71 = load i32, i32* @MINS_Z, align 4
  %72 = sext i32 %71 to i64
  %73 = add nsw i64 %70, %72
  %74 = load i32, i32* %5, align 4
  %75 = sext i32 %74 to i64
  %76 = add nsw i64 %73, %75
  %77 = load i64*, i64** %3, align 8
  %78 = getelementptr inbounds i64, i64* %77, i64 2
  store i64 %76, i64* %78, align 8
  %79 = load i64*, i64** %3, align 8
  %80 = call i32 @CG_PointContents(i64* %79, i32 -1)
  store i32 %80, i32* %4, align 4
  %81 = load i32, i32* %4, align 4
  %82 = load i32, i32* @MASK_WATER, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %107

85:                                               ; preds = %60
  store i32 2, i32* %8, align 4
  %86 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 0
  %88 = load i64*, i64** %87, align 8
  %89 = getelementptr inbounds i64, i64* %88, i64 2
  %90 = load i64, i64* %89, align 8
  %91 = load i32, i32* @MINS_Z, align 4
  %92 = sext i32 %91 to i64
  %93 = add nsw i64 %90, %92
  %94 = load i32, i32* %6, align 4
  %95 = sext i32 %94 to i64
  %96 = add nsw i64 %93, %95
  %97 = load i64*, i64** %3, align 8
  %98 = getelementptr inbounds i64, i64* %97, i64 2
  store i64 %96, i64* %98, align 8
  %99 = load i64*, i64** %3, align 8
  %100 = call i32 @CG_PointContents(i64* %99, i32 -1)
  store i32 %100, i32* %4, align 4
  %101 = load i32, i32* %4, align 4
  %102 = load i32, i32* @MASK_WATER, align 4
  %103 = and i32 %101, %102
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %85
  store i32 3, i32* %8, align 4
  br label %106

106:                                              ; preds = %105, %85
  br label %107

107:                                              ; preds = %106, %60
  br label %108

108:                                              ; preds = %107, %28
  %109 = load i32, i32* %8, align 4
  ret i32 %109
}

declare dso_local i32 @CG_PointContents(i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
