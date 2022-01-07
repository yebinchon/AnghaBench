; ModuleID = '/home/carl/AnghaBench/lab/engine/code/q3_ui/extr_ui_startserver.c_ServerOptions_InitPlayerItems.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/q3_ui/extr_ui_startserver.c_ServerOptions_InitPlayerItems.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i64, %struct.TYPE_11__*, i32*, %struct.TYPE_9__*, %struct.TYPE_7__, i64 }
%struct.TYPE_11__ = type { i32, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i64 }

@s_serveroptions = common dso_local global %struct.TYPE_12__ zeroinitializer, align 8
@PLAYER_SLOTS = common dso_local global i32 0, align 4
@GT_TEAM = common dso_local global i64 0, align 8
@QMF_INACTIVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"name\00", align 1
@QMF_HIDDEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @ServerOptions_InitPlayerItems to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ServerOptions_InitPlayerItems() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load i64, i64* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @s_serveroptions, i32 0, i32 5), align 8
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %5, label %6

5:                                                ; preds = %0
  store i32 0, i32* %2, align 4
  br label %7

6:                                                ; preds = %0
  store i32 1, i32* %2, align 4
  br label %7

7:                                                ; preds = %6, %5
  store i32 0, i32* %1, align 4
  br label %8

8:                                                ; preds = %19, %7
  %9 = load i32, i32* %1, align 4
  %10 = load i32, i32* @PLAYER_SLOTS, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %22

12:                                               ; preds = %8
  %13 = load i32, i32* %2, align 4
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @s_serveroptions, i32 0, i32 3), align 8
  %15 = load i32, i32* %1, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i64 %16
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 0
  store i32 %13, i32* %18, align 4
  br label %19

19:                                               ; preds = %12
  %20 = load i32, i32* %1, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %1, align 4
  br label %8

22:                                               ; preds = %8
  %23 = load i64, i64* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @s_serveroptions, i32 0, i32 5), align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %44

25:                                               ; preds = %22
  %26 = load i64, i64* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @s_serveroptions, i32 0, i32 0), align 8
  %27 = load i64, i64* @GT_TEAM, align 8
  %28 = icmp slt i64 %26, %27
  br i1 %28, label %29, label %44

29:                                               ; preds = %25
  store i32 8, i32* %1, align 4
  br label %30

30:                                               ; preds = %40, %29
  %31 = load i32, i32* %1, align 4
  %32 = load i32, i32* @PLAYER_SLOTS, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %43

34:                                               ; preds = %30
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @s_serveroptions, i32 0, i32 3), align 8
  %36 = load i32, i32* %1, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 0
  store i32 2, i32* %39, align 4
  br label %40

40:                                               ; preds = %34
  %41 = load i32, i32* %1, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %1, align 4
  br label %30

43:                                               ; preds = %30
  br label %44

44:                                               ; preds = %43, %25, %22
  %45 = load i64, i64* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @s_serveroptions, i32 0, i32 4, i32 0), align 8
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %47, label %66

47:                                               ; preds = %44
  %48 = load i32, i32* @QMF_INACTIVE, align 4
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @s_serveroptions, i32 0, i32 3), align 8
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i64 0
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = or i32 %53, %48
  store i32 %54, i32* %52, align 4
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @s_serveroptions, i32 0, i32 3), align 8
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i64 0
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 0
  store i32 0, i32* %57, align 4
  %58 = load i32*, i32** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @s_serveroptions, i32 0, i32 2), align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @trap_Cvar_VariableStringBuffer(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %60, i32 4)
  %62 = load i32*, i32** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @s_serveroptions, i32 0, i32 2), align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @Q_CleanStr(i32 %64)
  br label %66

66:                                               ; preds = %47, %44
  %67 = load i64, i64* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @s_serveroptions, i32 0, i32 0), align 8
  %68 = load i64, i64* @GT_TEAM, align 8
  %69 = icmp sge i64 %67, %68
  br i1 %69, label %70, label %100

70:                                               ; preds = %66
  store i32 0, i32* %1, align 4
  br label %71

71:                                               ; preds = %82, %70
  %72 = load i32, i32* %1, align 4
  %73 = load i32, i32* @PLAYER_SLOTS, align 4
  %74 = sdiv i32 %73, 2
  %75 = icmp slt i32 %72, %74
  br i1 %75, label %76, label %85

76:                                               ; preds = %71
  %77 = load %struct.TYPE_11__*, %struct.TYPE_11__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @s_serveroptions, i32 0, i32 1), align 8
  %78 = load i32, i32* %1, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %77, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %80, i32 0, i32 0
  store i32 0, i32* %81, align 4
  br label %82

82:                                               ; preds = %76
  %83 = load i32, i32* %1, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %1, align 4
  br label %71

85:                                               ; preds = %71
  br label %86

86:                                               ; preds = %96, %85
  %87 = load i32, i32* %1, align 4
  %88 = load i32, i32* @PLAYER_SLOTS, align 4
  %89 = icmp slt i32 %87, %88
  br i1 %89, label %90, label %99

90:                                               ; preds = %86
  %91 = load %struct.TYPE_11__*, %struct.TYPE_11__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @s_serveroptions, i32 0, i32 1), align 8
  %92 = load i32, i32* %1, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %91, i64 %93
  %95 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %94, i32 0, i32 0
  store i32 1, i32* %95, align 4
  br label %96

96:                                               ; preds = %90
  %97 = load i32, i32* %1, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %1, align 4
  br label %86

99:                                               ; preds = %86
  br label %121

100:                                              ; preds = %66
  store i32 0, i32* %1, align 4
  br label %101

101:                                              ; preds = %117, %100
  %102 = load i32, i32* %1, align 4
  %103 = load i32, i32* @PLAYER_SLOTS, align 4
  %104 = icmp slt i32 %102, %103
  br i1 %104, label %105, label %120

105:                                              ; preds = %101
  %106 = load i32, i32* @QMF_INACTIVE, align 4
  %107 = load i32, i32* @QMF_HIDDEN, align 4
  %108 = or i32 %106, %107
  %109 = load %struct.TYPE_11__*, %struct.TYPE_11__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @s_serveroptions, i32 0, i32 1), align 8
  %110 = load i32, i32* %1, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %109, i64 %111
  %113 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %112, i32 0, i32 1
  %114 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = or i32 %115, %108
  store i32 %116, i32* %114, align 4
  br label %117

117:                                              ; preds = %105
  %118 = load i32, i32* %1, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %1, align 4
  br label %101

120:                                              ; preds = %101
  br label %121

121:                                              ; preds = %120, %99
  ret void
}

declare dso_local i32 @trap_Cvar_VariableStringBuffer(i8*, i32, i32) #1

declare dso_local i32 @Q_CleanStr(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
