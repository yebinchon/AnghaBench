; ModuleID = '/home/carl/AnghaBench/lab/engine/code/cgame/extr_cg_snapshot.c_CG_SetNextSnap.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/cgame/extr_cg_snapshot.c_CG_SetNextSnap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i8*, %struct.TYPE_15__*, %struct.TYPE_16__* }
%struct.TYPE_15__ = type { i32, %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i64, i32 }
%struct.TYPE_16__ = type { i32, i32, %struct.TYPE_12__, %struct.TYPE_17__* }
%struct.TYPE_12__ = type { i64, i32 }
%struct.TYPE_17__ = type { i64, i32 }
%struct.TYPE_18__ = type { i8*, %struct.TYPE_13__, i32, i32 }
%struct.TYPE_13__ = type { i32 }

@cg = common dso_local global %struct.TYPE_19__ zeroinitializer, align 8
@cg_entities = common dso_local global %struct.TYPE_18__* null, align 8
@qfalse = common dso_local global i8* null, align 8
@qtrue = common dso_local global i8* null, align 8
@EF_TELEPORT_BIT = common dso_local global i32 0, align 4
@SNAPFLAG_SERVERCOUNT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_16__*)* @CG_SetNextSnap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @CG_SetNextSnap(%struct.TYPE_16__* %0) #0 {
  %2 = alloca %struct.TYPE_16__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_17__*, align 8
  %5 = alloca %struct.TYPE_18__*, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %2, align 8
  %6 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  store %struct.TYPE_16__* %6, %struct.TYPE_16__** getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @cg, i32 0, i32 2), align 8
  %7 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %7, i32 0, i32 2
  %9 = load %struct.TYPE_18__*, %struct.TYPE_18__** @cg_entities, align 8
  %10 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %10, i32 0, i32 2
  %12 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %9, i64 %13
  %15 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %14, i32 0, i32 3
  %16 = load i8*, i8** @qfalse, align 8
  %17 = call i32 @BG_PlayerStateToEntityState(%struct.TYPE_12__* %8, i32* %15, i8* %16)
  %18 = load i8*, i8** @qtrue, align 8
  %19 = load %struct.TYPE_18__*, %struct.TYPE_18__** @cg_entities, align 8
  %20 = load %struct.TYPE_15__*, %struct.TYPE_15__** getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @cg, i32 0, i32 1), align 8
  %21 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %19, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %24, i32 0, i32 0
  store i8* %18, i8** %25, align 8
  store i32 0, i32* %3, align 4
  br label %26

26:                                               ; preds = %73, %1
  %27 = load i32, i32* %3, align 4
  %28 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %29 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp slt i32 %27, %30
  br i1 %31, label %32, label %76

32:                                               ; preds = %26
  %33 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %34 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %33, i32 0, i32 3
  %35 = load %struct.TYPE_17__*, %struct.TYPE_17__** %34, align 8
  %36 = load i32, i32* %3, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %35, i64 %37
  store %struct.TYPE_17__* %38, %struct.TYPE_17__** %4, align 8
  %39 = load %struct.TYPE_18__*, %struct.TYPE_18__** @cg_entities, align 8
  %40 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %39, i64 %42
  store %struct.TYPE_18__* %43, %struct.TYPE_18__** %5, align 8
  %44 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %44, i32 0, i32 3
  %46 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %47 = call i32 @memcpy(i32* %45, %struct.TYPE_17__* %46, i32 16)
  %48 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %64

52:                                               ; preds = %32
  %53 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = xor i32 %56, %59
  %61 = load i32, i32* @EF_TELEPORT_BIT, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %52, %32
  %65 = load i8*, i8** @qfalse, align 8
  %66 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %66, i32 0, i32 0
  store i8* %65, i8** %67, align 8
  br label %72

68:                                               ; preds = %52
  %69 = load i8*, i8** @qtrue, align 8
  %70 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %70, i32 0, i32 0
  store i8* %69, i8** %71, align 8
  br label %72

72:                                               ; preds = %68, %64
  br label %73

73:                                               ; preds = %72
  %74 = load i32, i32* %3, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %3, align 4
  br label %26

76:                                               ; preds = %26
  %77 = load %struct.TYPE_15__*, %struct.TYPE_15__** getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @cg, i32 0, i32 1), align 8
  %78 = icmp ne %struct.TYPE_15__* %77, null
  br i1 %78, label %79, label %94

79:                                               ; preds = %76
  %80 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %81 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %80, i32 0, i32 2
  %82 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 8
  %84 = load %struct.TYPE_15__*, %struct.TYPE_15__** getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @cg, i32 0, i32 1), align 8
  %85 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 8
  %88 = xor i32 %83, %87
  %89 = load i32, i32* @EF_TELEPORT_BIT, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %94

92:                                               ; preds = %79
  %93 = load i8*, i8** @qtrue, align 8
  store i8* %93, i8** getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @cg, i32 0, i32 0), align 8
  br label %96

94:                                               ; preds = %79, %76
  %95 = load i8*, i8** @qfalse, align 8
  store i8* %95, i8** getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @cg, i32 0, i32 0), align 8
  br label %96

96:                                               ; preds = %94, %92
  %97 = load %struct.TYPE_16__*, %struct.TYPE_16__** getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @cg, i32 0, i32 2), align 8
  %98 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %97, i32 0, i32 2
  %99 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = load %struct.TYPE_15__*, %struct.TYPE_15__** getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @cg, i32 0, i32 1), align 8
  %102 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %101, i32 0, i32 1
  %103 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = icmp ne i64 %100, %104
  br i1 %105, label %106, label %108

106:                                              ; preds = %96
  %107 = load i8*, i8** @qtrue, align 8
  store i8* %107, i8** getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @cg, i32 0, i32 0), align 8
  br label %108

108:                                              ; preds = %106, %96
  %109 = load %struct.TYPE_16__*, %struct.TYPE_16__** getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @cg, i32 0, i32 2), align 8
  %110 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.TYPE_15__*, %struct.TYPE_15__** getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @cg, i32 0, i32 1), align 8
  %113 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = xor i32 %111, %114
  %116 = load i32, i32* @SNAPFLAG_SERVERCOUNT, align 4
  %117 = and i32 %115, %116
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %121

119:                                              ; preds = %108
  %120 = load i8*, i8** @qtrue, align 8
  store i8* %120, i8** getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @cg, i32 0, i32 0), align 8
  br label %121

121:                                              ; preds = %119, %108
  %122 = call i32 (...) @CG_BuildSolidList()
  ret void
}

declare dso_local i32 @BG_PlayerStateToEntityState(%struct.TYPE_12__*, i32*, i8*) #1

declare dso_local i32 @memcpy(i32*, %struct.TYPE_17__*, i32) #1

declare dso_local i32 @CG_BuildSolidList(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
