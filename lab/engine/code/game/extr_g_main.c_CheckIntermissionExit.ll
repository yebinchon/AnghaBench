; ModuleID = '/home/carl/AnghaBench/lab/engine/code/game/extr_g_main.c_CheckIntermissionExit.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/game/extr_g_main.c_CheckIntermissionExit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i64 }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_13__ = type { i64, i64, i64, i64, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { %struct.TYPE_11__, %struct.TYPE_10__, i64 }
%struct.TYPE_11__ = type { i32* }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_16__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }

@g_gametype = common dso_local global %struct.TYPE_15__ zeroinitializer, align 8
@GT_SINGLE_PLAYER = common dso_local global i64 0, align 8
@g_maxclients = common dso_local global %struct.TYPE_14__ zeroinitializer, align 4
@level = common dso_local global %struct.TYPE_13__ zeroinitializer, align 8
@CON_CONNECTED = common dso_local global i64 0, align 8
@g_entities = common dso_local global %struct.TYPE_16__* null, align 8
@SVF_BOT = common dso_local global i32 0, align 4
@STAT_CLIENTS_READY = common dso_local global i64 0, align 8
@qfalse = common dso_local global i64 0, align 8
@qtrue = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CheckIntermissionExit() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca i32, align 4
  %7 = load i64, i64* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @g_gametype, i32 0, i32 0), align 8
  %8 = load i64, i64* @GT_SINGLE_PLAYER, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %11

10:                                               ; preds = %0
  br label %127

11:                                               ; preds = %0
  store i32 0, i32* %1, align 4
  store i32 0, i32* %2, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  br label %12

12:                                               ; preds = %62, %11
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @g_maxclients, i32 0, i32 0), align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %65

16:                                               ; preds = %12
  %17 = load %struct.TYPE_12__*, %struct.TYPE_12__** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @level, i32 0, i32 4), align 8
  %18 = load i32, i32* %4, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i64 %19
  store %struct.TYPE_12__* %20, %struct.TYPE_12__** %5, align 8
  %21 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @CON_CONNECTED, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %16
  br label %62

28:                                               ; preds = %16
  %29 = load %struct.TYPE_16__*, %struct.TYPE_16__** @g_entities, align 8
  %30 = load i32, i32* %4, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %29, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @SVF_BOT, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %28
  br label %62

40:                                               ; preds = %28
  %41 = load i32, i32* %3, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %3, align 4
  %43 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %43, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %58

47:                                               ; preds = %40
  %48 = load i32, i32* %1, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %1, align 4
  %50 = load i32, i32* %4, align 4
  %51 = icmp slt i32 %50, 16
  br i1 %51, label %52, label %57

52:                                               ; preds = %47
  %53 = load i32, i32* %4, align 4
  %54 = shl i32 1, %53
  %55 = load i32, i32* %6, align 4
  %56 = or i32 %55, %54
  store i32 %56, i32* %6, align 4
  br label %57

57:                                               ; preds = %52, %47
  br label %61

58:                                               ; preds = %40
  %59 = load i32, i32* %2, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %2, align 4
  br label %61

61:                                               ; preds = %58, %57
  br label %62

62:                                               ; preds = %61, %39, %27
  %63 = load i32, i32* %4, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %4, align 4
  br label %12

65:                                               ; preds = %12
  store i32 0, i32* %4, align 4
  br label %66

66:                                               ; preds = %90, %65
  %67 = load i32, i32* %4, align 4
  %68 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @g_maxclients, i32 0, i32 0), align 4
  %69 = icmp slt i32 %67, %68
  br i1 %69, label %70, label %93

70:                                               ; preds = %66
  %71 = load %struct.TYPE_12__*, %struct.TYPE_12__** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @level, i32 0, i32 4), align 8
  %72 = load i32, i32* %4, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %71, i64 %73
  store %struct.TYPE_12__* %74, %struct.TYPE_12__** %5, align 8
  %75 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %76 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @CON_CONNECTED, align 8
  %80 = icmp ne i64 %78, %79
  br i1 %80, label %81, label %82

81:                                               ; preds = %70
  br label %90

82:                                               ; preds = %70
  %83 = load i32, i32* %6, align 4
  %84 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %85 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %85, i32 0, i32 0
  %87 = load i32*, i32** %86, align 8
  %88 = load i64, i64* @STAT_CLIENTS_READY, align 8
  %89 = getelementptr inbounds i32, i32* %87, i64 %88
  store i32 %83, i32* %89, align 4
  br label %90

90:                                               ; preds = %82, %81
  %91 = load i32, i32* %4, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %4, align 4
  br label %66

93:                                               ; preds = %66
  %94 = load i64, i64* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @level, i32 0, i32 0), align 8
  %95 = load i64, i64* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @level, i32 0, i32 1), align 8
  %96 = add nsw i64 %95, 5000
  %97 = icmp slt i64 %94, %96
  br i1 %97, label %98, label %99

98:                                               ; preds = %93
  br label %127

99:                                               ; preds = %93
  %100 = load i32, i32* %3, align 4
  %101 = icmp sgt i32 %100, 0
  br i1 %101, label %102, label %113

102:                                              ; preds = %99
  %103 = load i32, i32* %1, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %107, label %105

105:                                              ; preds = %102
  %106 = load i64, i64* @qfalse, align 8
  store i64 %106, i64* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @level, i32 0, i32 3), align 8
  br label %127

107:                                              ; preds = %102
  %108 = load i32, i32* %2, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %112, label %110

110:                                              ; preds = %107
  %111 = call i32 (...) @ExitLevel()
  br label %127

112:                                              ; preds = %107
  br label %113

113:                                              ; preds = %112, %99
  %114 = load i64, i64* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @level, i32 0, i32 3), align 8
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %119, label %116

116:                                              ; preds = %113
  %117 = load i64, i64* @qtrue, align 8
  store i64 %117, i64* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @level, i32 0, i32 3), align 8
  %118 = load i64, i64* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @level, i32 0, i32 0), align 8
  store i64 %118, i64* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @level, i32 0, i32 2), align 8
  br label %119

119:                                              ; preds = %116, %113
  %120 = load i64, i64* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @level, i32 0, i32 0), align 8
  %121 = load i64, i64* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @level, i32 0, i32 2), align 8
  %122 = add nsw i64 %121, 10000
  %123 = icmp slt i64 %120, %122
  br i1 %123, label %124, label %125

124:                                              ; preds = %119
  br label %127

125:                                              ; preds = %119
  %126 = call i32 (...) @ExitLevel()
  br label %127

127:                                              ; preds = %125, %124, %110, %105, %98, %10
  ret void
}

declare dso_local i32 @ExitLevel(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
