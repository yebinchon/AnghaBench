; ModuleID = '/home/carl/AnghaBench/lab/engine/code/game/extr_g_main.c_CheckTeamLeader.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/game/extr_g_main.c_CheckTeamLeader.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i8* }
%struct.TYPE_10__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@level = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8
@g_entities = common dso_local global %struct.TYPE_10__* null, align 8
@SVF_BOT = common dso_local global i32 0, align 4
@qtrue = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CheckTeamLeader(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %30, %1
  %5 = load i32, i32* %3, align 4
  %6 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @level, i32 0, i32 0), align 8
  %7 = icmp slt i32 %5, %6
  br i1 %7, label %8, label %33

8:                                                ; preds = %4
  %9 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @level, i32 0, i32 1), align 8
  %10 = load i32, i32* %3, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i64 %11
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* %2, align 4
  %17 = icmp ne i32 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %8
  br label %30

19:                                               ; preds = %8
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @level, i32 0, i32 1), align 8
  %21 = load i32, i32* %3, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 1
  %26 = load i8*, i8** %25, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %28, label %29

28:                                               ; preds = %19
  br label %33

29:                                               ; preds = %19
  br label %30

30:                                               ; preds = %29, %18
  %31 = load i32, i32* %3, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %3, align 4
  br label %4

33:                                               ; preds = %28, %4
  %34 = load i32, i32* %3, align 4
  %35 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @level, i32 0, i32 0), align 8
  %36 = icmp sge i32 %34, %35
  br i1 %36, label %37, label %109

37:                                               ; preds = %33
  store i32 0, i32* %3, align 4
  br label %38

38:                                               ; preds = %73, %37
  %39 = load i32, i32* %3, align 4
  %40 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @level, i32 0, i32 0), align 8
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %42, label %76

42:                                               ; preds = %38
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @level, i32 0, i32 1), align 8
  %44 = load i32, i32* %3, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* %2, align 4
  %51 = icmp ne i32 %49, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %42
  br label %73

53:                                               ; preds = %42
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** @g_entities, align 8
  %55 = load i32, i32* %3, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @SVF_BOT, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %72, label %64

64:                                               ; preds = %53
  %65 = load i8*, i8** @qtrue, align 8
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @level, i32 0, i32 1), align 8
  %67 = load i32, i32* %3, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 1
  store i8* %65, i8** %71, align 8
  br label %76

72:                                               ; preds = %53
  br label %73

73:                                               ; preds = %72, %52
  %74 = load i32, i32* %3, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %3, align 4
  br label %38

76:                                               ; preds = %64, %38
  %77 = load i32, i32* %3, align 4
  %78 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @level, i32 0, i32 0), align 8
  %79 = icmp sge i32 %77, %78
  br i1 %79, label %80, label %108

80:                                               ; preds = %76
  store i32 0, i32* %3, align 4
  br label %81

81:                                               ; preds = %104, %80
  %82 = load i32, i32* %3, align 4
  %83 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @level, i32 0, i32 0), align 8
  %84 = icmp slt i32 %82, %83
  br i1 %84, label %85, label %107

85:                                               ; preds = %81
  %86 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @level, i32 0, i32 1), align 8
  %87 = load i32, i32* %3, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i64 %88
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = load i32, i32* %2, align 4
  %94 = icmp ne i32 %92, %93
  br i1 %94, label %95, label %96

95:                                               ; preds = %85
  br label %104

96:                                               ; preds = %85
  %97 = load i8*, i8** @qtrue, align 8
  %98 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @level, i32 0, i32 1), align 8
  %99 = load i32, i32* %3, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %98, i64 %100
  %102 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %102, i32 0, i32 1
  store i8* %97, i8** %103, align 8
  br label %107

104:                                              ; preds = %95
  %105 = load i32, i32* %3, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %3, align 4
  br label %81

107:                                              ; preds = %96, %81
  br label %108

108:                                              ; preds = %107, %76
  br label %109

109:                                              ; preds = %108, %33
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
