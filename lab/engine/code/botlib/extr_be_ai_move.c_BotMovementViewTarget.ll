; ModuleID = '/home/carl/AnghaBench/lab/engine/code/botlib/extr_be_ai_move.c_BotMovementViewTarget.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/botlib/extr_be_ai_move.c_BotMovementViewTarget.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_10__ = type { i32, i32, i32, i32 }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i32, i32, i32 }

@qfalse = common dso_local global i32 0, align 4
@qtrue = common dso_local global i32 0, align 4
@TRAVELTYPE_MASK = common dso_local global i32 0, align 4
@TRAVEL_TELEPORT = common dso_local global i32 0, align 4
@TRAVEL_ROCKETJUMP = common dso_local global i32 0, align 4
@TRAVEL_BFGJUMP = common dso_local global i32 0, align 4
@TRAVEL_JUMPPAD = common dso_local global i32 0, align 4
@TRAVEL_ELEVATOR = common dso_local global i32 0, align 4
@TRAVEL_FUNCBOB = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @BotMovementViewTarget(i32 %0, %struct.TYPE_9__* %1, i32 %2, float %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_9__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca float, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_10__, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_8__*, align 8
  %16 = alloca i32, align 4
  %17 = alloca float, align 4
  store i32 %0, i32* %7, align 4
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %8, align 8
  store i32 %2, i32* %9, align 4
  store float %3, float* %10, align 4
  store i32 %4, i32* %11, align 4
  %18 = load i32, i32* %7, align 4
  %19 = call %struct.TYPE_8__* @BotMoveStateFromHandle(i32 %18)
  store %struct.TYPE_8__* %19, %struct.TYPE_8__** %15, align 8
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %21 = icmp ne %struct.TYPE_8__* %20, null
  br i1 %21, label %24, label %22

22:                                               ; preds = %5
  %23 = load i32, i32* @qfalse, align 4
  store i32 %23, i32* %6, align 4
  br label %172

24:                                               ; preds = %5
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %24
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %31 = icmp ne %struct.TYPE_9__* %30, null
  br i1 %31, label %34, label %32

32:                                               ; preds = %29, %24
  %33 = load i32, i32* @qfalse, align 4
  store i32 %33, i32* %6, align 4
  br label %172

34:                                               ; preds = %29
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %13, align 4
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 6
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* %16, align 4
  %42 = call i32 @VectorCopy(i32 %40, i32 %41)
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  store i32 %45, i32* %14, align 4
  store float 0.000000e+00, float* %17, align 4
  br label %46

46:                                               ; preds = %169, %34
  %47 = load i32, i32* %13, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %46
  %50 = load float, float* %17, align 4
  %51 = load float, float* %10, align 4
  %52 = fcmp olt float %50, %51
  br label %53

53:                                               ; preds = %49, %46
  %54 = phi i1 [ false, %46 ], [ %52, %49 ]
  br i1 %54, label %55, label %170

55:                                               ; preds = %53
  %56 = load i32, i32* %13, align 4
  %57 = call i32 @AAS_ReachabilityFromNum(i32 %56, %struct.TYPE_10__* %12)
  %58 = load i32, i32* %16, align 4
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 3
  %60 = load i32, i32* %59, align 4
  %61 = load float, float* %10, align 4
  %62 = load i32, i32* %11, align 4
  %63 = call i64 @BotAddToTarget(i32 %58, i32 %60, float %61, float* %17, i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %55
  %66 = load i32, i32* @qtrue, align 4
  store i32 %66, i32* %6, align 4
  br label %172

67:                                               ; preds = %55
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @TRAVELTYPE_MASK, align 4
  %71 = and i32 %69, %70
  %72 = load i32, i32* @TRAVEL_TELEPORT, align 4
  %73 = icmp eq i32 %71, %72
  br i1 %73, label %74, label %76

74:                                               ; preds = %67
  %75 = load i32, i32* @qtrue, align 4
  store i32 %75, i32* %6, align 4
  br label %172

76:                                               ; preds = %67
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @TRAVELTYPE_MASK, align 4
  %80 = and i32 %78, %79
  %81 = load i32, i32* @TRAVEL_ROCKETJUMP, align 4
  %82 = icmp eq i32 %80, %81
  br i1 %82, label %83, label %85

83:                                               ; preds = %76
  %84 = load i32, i32* @qtrue, align 4
  store i32 %84, i32* %6, align 4
  br label %172

85:                                               ; preds = %76
  %86 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* @TRAVELTYPE_MASK, align 4
  %89 = and i32 %87, %88
  %90 = load i32, i32* @TRAVEL_BFGJUMP, align 4
  %91 = icmp eq i32 %89, %90
  br i1 %91, label %92, label %94

92:                                               ; preds = %85
  %93 = load i32, i32* @qtrue, align 4
  store i32 %93, i32* %6, align 4
  br label %172

94:                                               ; preds = %85
  %95 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* @TRAVELTYPE_MASK, align 4
  %98 = and i32 %96, %97
  %99 = load i32, i32* @TRAVEL_JUMPPAD, align 4
  %100 = icmp ne i32 %98, %99
  br i1 %100, label %101, label %127

101:                                              ; preds = %94
  %102 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* @TRAVELTYPE_MASK, align 4
  %105 = and i32 %103, %104
  %106 = load i32, i32* @TRAVEL_ELEVATOR, align 4
  %107 = icmp ne i32 %105, %106
  br i1 %107, label %108, label %127

108:                                              ; preds = %101
  %109 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* @TRAVELTYPE_MASK, align 4
  %112 = and i32 %110, %111
  %113 = load i32, i32* @TRAVEL_FUNCBOB, align 4
  %114 = icmp ne i32 %112, %113
  br i1 %114, label %115, label %127

115:                                              ; preds = %108
  %116 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 3
  %117 = load i32, i32* %116, align 4
  %118 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 2
  %119 = load i32, i32* %118, align 4
  %120 = load float, float* %10, align 4
  %121 = load i32, i32* %11, align 4
  %122 = call i64 @BotAddToTarget(i32 %117, i32 %119, float %120, float* %17, i32 %121)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %126

124:                                              ; preds = %115
  %125 = load i32, i32* @qtrue, align 4
  store i32 %125, i32* %6, align 4
  br label %172

126:                                              ; preds = %115
  br label %127

127:                                              ; preds = %126, %108, %101, %94
  %128 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 2
  %129 = load i32, i32* %128, align 4
  %130 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %133 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %132, i32 0, i32 5
  %134 = load i32, i32* %133, align 4
  %135 = load i32, i32* %14, align 4
  %136 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %137 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %136, i32 0, i32 4
  %138 = load i32, i32* %137, align 4
  %139 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %140 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %139, i32 0, i32 3
  %141 = load i32, i32* %140, align 4
  %142 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %143 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %142, i32 0, i32 2
  %144 = load i32, i32* %143, align 4
  %145 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %146 = load i32, i32* %9, align 4
  %147 = call i32 @BotGetReachabilityToGoal(i32 %129, i32 %131, i32 %134, i32 %135, i32 %138, i32 %141, i32 %144, %struct.TYPE_9__* %145, i32 %146, i32* null, i32 0, i32* null)
  store i32 %147, i32* %13, align 4
  %148 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 2
  %149 = load i32, i32* %148, align 4
  %150 = load i32, i32* %16, align 4
  %151 = call i32 @VectorCopy(i32 %149, i32 %150)
  %152 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 1
  %153 = load i32, i32* %152, align 4
  store i32 %153, i32* %14, align 4
  %154 = load i32, i32* %14, align 4
  %155 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %156 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 4
  %158 = icmp eq i32 %154, %157
  br i1 %158, label %159, label %169

159:                                              ; preds = %127
  %160 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 2
  %161 = load i32, i32* %160, align 4
  %162 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %163 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %162, i32 0, i32 1
  %164 = load i32, i32* %163, align 4
  %165 = load float, float* %10, align 4
  %166 = load i32, i32* %11, align 4
  %167 = call i64 @BotAddToTarget(i32 %161, i32 %164, float %165, float* %17, i32 %166)
  %168 = load i32, i32* @qtrue, align 4
  store i32 %168, i32* %6, align 4
  br label %172

169:                                              ; preds = %127
  br label %46

170:                                              ; preds = %53
  %171 = load i32, i32* @qfalse, align 4
  store i32 %171, i32* %6, align 4
  br label %172

172:                                              ; preds = %170, %159, %124, %92, %83, %74, %65, %32, %22
  %173 = load i32, i32* %6, align 4
  ret i32 %173
}

declare dso_local %struct.TYPE_8__* @BotMoveStateFromHandle(i32) #1

declare dso_local i32 @VectorCopy(i32, i32) #1

declare dso_local i32 @AAS_ReachabilityFromNum(i32, %struct.TYPE_10__*) #1

declare dso_local i64 @BotAddToTarget(i32, i32, float, float*, i32) #1

declare dso_local i32 @BotGetReachabilityToGoal(i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_9__*, i32, i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
