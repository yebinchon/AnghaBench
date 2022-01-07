; ModuleID = '/home/carl/AnghaBench/lab/engine/code/game/extr_g_items.c_G_RunItem.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/game/extr_g_items.c_G_RunItem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { i32 }
%struct.TYPE_21__ = type { i32, %struct.TYPE_19__*, %struct.TYPE_18__, %struct.TYPE_17__ }
%struct.TYPE_19__ = type { i64 }
%struct.TYPE_18__ = type { i32, i32, i32, i32 }
%struct.TYPE_17__ = type { i64, %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i64, i32 }
%struct.TYPE_20__ = type { i32, i64, i32 }

@ENTITYNUM_NONE = common dso_local global i64 0, align 8
@TR_GRAVITY = common dso_local global i64 0, align 8
@level = common dso_local global %struct.TYPE_22__ zeroinitializer, align 4
@TR_STATIONARY = common dso_local global i64 0, align 8
@MASK_PLAYERSOLID = common dso_local global i32 0, align 4
@CONTENTS_BODY = common dso_local global i32 0, align 4
@CONTENTS_NODROP = common dso_local global i32 0, align 4
@IT_TEAM = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @G_RunItem(%struct.TYPE_21__* %0) #0 {
  %2 = alloca %struct.TYPE_21__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_20__, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %2, align 8
  %7 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %7, i32 0, i32 3
  %9 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @ENTITYNUM_NONE, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %33

13:                                               ; preds = %1
  %14 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %14, i32 0, i32 3
  %16 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @TR_GRAVITY, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %32

21:                                               ; preds = %13
  %22 = load i64, i64* @TR_GRAVITY, align 8
  %23 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %24 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %23, i32 0, i32 3
  %25 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %25, i32 0, i32 0
  store i64 %22, i64* %26, align 8
  %27 = load i32, i32* getelementptr inbounds (%struct.TYPE_22__, %struct.TYPE_22__* @level, i32 0, i32 0), align 4
  %28 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %29 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %28, i32 0, i32 3
  %30 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %30, i32 0, i32 1
  store i32 %27, i32* %31, align 8
  br label %32

32:                                               ; preds = %21, %13
  br label %33

33:                                               ; preds = %32, %1
  %34 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %35 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %34, i32 0, i32 3
  %36 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @TR_STATIONARY, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %44

41:                                               ; preds = %33
  %42 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %43 = call i32 @G_RunThink(%struct.TYPE_21__* %42)
  br label %138

44:                                               ; preds = %33
  %45 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %46 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %45, i32 0, i32 3
  %47 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %46, i32 0, i32 1
  %48 = load i32, i32* getelementptr inbounds (%struct.TYPE_22__, %struct.TYPE_22__* @level, i32 0, i32 0), align 4
  %49 = load i32, i32* %3, align 4
  %50 = call i32 @BG_EvaluateTrajectory(%struct.TYPE_16__* %47, i32 %48, i32 %49)
  %51 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %52 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %44
  %56 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %57 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  store i32 %58, i32* %6, align 4
  br label %64

59:                                               ; preds = %44
  %60 = load i32, i32* @MASK_PLAYERSOLID, align 4
  %61 = load i32, i32* @CONTENTS_BODY, align 4
  %62 = xor i32 %61, -1
  %63 = and i32 %60, %62
  store i32 %63, i32* %6, align 4
  br label %64

64:                                               ; preds = %59, %55
  %65 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %66 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %65, i32 0, i32 2
  %67 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %70 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %69, i32 0, i32 2
  %71 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %74 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %73, i32 0, i32 2
  %75 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* %3, align 4
  %78 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %79 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %78, i32 0, i32 2
  %80 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* %6, align 4
  %83 = call i32 @trap_Trace(%struct.TYPE_20__* %4, i32 %68, i32 %72, i32 %76, i32 %77, i32 %81, i32 %82)
  %84 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %4, i32 0, i32 2
  %85 = load i32, i32* %84, align 8
  %86 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %87 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %86, i32 0, i32 2
  %88 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = call i32 @VectorCopy(i32 %85, i32 %89)
  %91 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %4, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %96

94:                                               ; preds = %64
  %95 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %4, i32 0, i32 0
  store i32 0, i32* %95, align 8
  br label %96

96:                                               ; preds = %94, %64
  %97 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %98 = call i32 @trap_LinkEntity(%struct.TYPE_21__* %97)
  %99 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %100 = call i32 @G_RunThink(%struct.TYPE_21__* %99)
  %101 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %4, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = icmp eq i32 %102, 1
  br i1 %103, label %104, label %105

104:                                              ; preds = %96
  br label %138

105:                                              ; preds = %96
  %106 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %107 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %106, i32 0, i32 2
  %108 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = call i32 @trap_PointContents(i32 %109, i32 -1)
  store i32 %110, i32* %5, align 4
  %111 = load i32, i32* %5, align 4
  %112 = load i32, i32* @CONTENTS_NODROP, align 4
  %113 = and i32 %111, %112
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %135

115:                                              ; preds = %105
  %116 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %117 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %116, i32 0, i32 1
  %118 = load %struct.TYPE_19__*, %struct.TYPE_19__** %117, align 8
  %119 = icmp ne %struct.TYPE_19__* %118, null
  br i1 %119, label %120, label %131

120:                                              ; preds = %115
  %121 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %122 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %121, i32 0, i32 1
  %123 = load %struct.TYPE_19__*, %struct.TYPE_19__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = load i64, i64* @IT_TEAM, align 8
  %127 = icmp eq i64 %125, %126
  br i1 %127, label %128, label %131

128:                                              ; preds = %120
  %129 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %130 = call i32 @Team_FreeEntity(%struct.TYPE_21__* %129)
  br label %134

131:                                              ; preds = %120, %115
  %132 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %133 = call i32 @G_FreeEntity(%struct.TYPE_21__* %132)
  br label %134

134:                                              ; preds = %131, %128
  br label %138

135:                                              ; preds = %105
  %136 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %137 = call i32 @G_BounceItem(%struct.TYPE_21__* %136, %struct.TYPE_20__* %4)
  br label %138

138:                                              ; preds = %135, %134, %104, %41
  ret void
}

declare dso_local i32 @G_RunThink(%struct.TYPE_21__*) #1

declare dso_local i32 @BG_EvaluateTrajectory(%struct.TYPE_16__*, i32, i32) #1

declare dso_local i32 @trap_Trace(%struct.TYPE_20__*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @VectorCopy(i32, i32) #1

declare dso_local i32 @trap_LinkEntity(%struct.TYPE_21__*) #1

declare dso_local i32 @trap_PointContents(i32, i32) #1

declare dso_local i32 @Team_FreeEntity(%struct.TYPE_21__*) #1

declare dso_local i32 @G_FreeEntity(%struct.TYPE_21__*) #1

declare dso_local i32 @G_BounceItem(%struct.TYPE_21__*, %struct.TYPE_20__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
