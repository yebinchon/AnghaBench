; ModuleID = '/home/carl/AnghaBench/lab/engine/code/botlib/extr_be_ai_goal.c_BotGetLevelItemGoal.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/botlib/extr_be_ai_goal.c_BotGetLevelItemGoal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i32, i32 }
%struct.TYPE_8__ = type { i32, i32, i64, i64, i32, i32, i32, %struct.TYPE_8__* }
%struct.TYPE_9__ = type { i32, i64, i32, i32, i32, i32, i32, i32 }

@itemconfig = common dso_local global %struct.TYPE_10__* null, align 8
@levelitems = common dso_local global %struct.TYPE_8__* null, align 8
@g_gametype = common dso_local global i64 0, align 8
@GT_SINGLE_PLAYER = common dso_local global i64 0, align 8
@IFL_NOTSINGLE = common dso_local global i32 0, align 4
@GT_TEAM = common dso_local global i64 0, align 8
@IFL_NOTTEAM = common dso_local global i32 0, align 4
@IFL_NOTFREE = common dso_local global i32 0, align 4
@IFL_NOTBOT = common dso_local global i32 0, align 4
@GFL_ITEM = common dso_local global i32 0, align 4
@GFL_DROPPED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @BotGetLevelItemGoal(i32 %0, i8* %1, %struct.TYPE_9__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca %struct.TYPE_8__*, align 8
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store %struct.TYPE_9__* %2, %struct.TYPE_9__** %7, align 8
  %9 = load %struct.TYPE_10__*, %struct.TYPE_10__** @itemconfig, align 8
  %10 = icmp ne %struct.TYPE_10__* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %174

12:                                               ; preds = %3
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** @levelitems, align 8
  store %struct.TYPE_8__* %13, %struct.TYPE_8__** %8, align 8
  %14 = load i32, i32* %5, align 4
  %15 = icmp sge i32 %14, 0
  br i1 %15, label %16, label %36

16:                                               ; preds = %12
  br label %17

17:                                               ; preds = %31, %16
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %19 = icmp ne %struct.TYPE_8__* %18, null
  br i1 %19, label %20, label %35

20:                                               ; preds = %17
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* %5, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %30

26:                                               ; preds = %20
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 7
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %28, align 8
  store %struct.TYPE_8__* %29, %struct.TYPE_8__** %8, align 8
  br label %35

30:                                               ; preds = %20
  br label %31

31:                                               ; preds = %30
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 7
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %33, align 8
  store %struct.TYPE_8__* %34, %struct.TYPE_8__** %8, align 8
  br label %17

35:                                               ; preds = %26, %17
  br label %36

36:                                               ; preds = %35, %12
  br label %37

37:                                               ; preds = %169, %36
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %39 = icmp ne %struct.TYPE_8__* %38, null
  br i1 %39, label %40, label %173

40:                                               ; preds = %37
  %41 = load i64, i64* @g_gametype, align 8
  %42 = load i64, i64* @GT_SINGLE_PLAYER, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %53

44:                                               ; preds = %40
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @IFL_NOTSINGLE, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %44
  br label %169

52:                                               ; preds = %44
  br label %76

53:                                               ; preds = %40
  %54 = load i64, i64* @g_gametype, align 8
  %55 = load i64, i64* @GT_TEAM, align 8
  %56 = icmp sge i64 %54, %55
  br i1 %56, label %57, label %66

57:                                               ; preds = %53
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @IFL_NOTTEAM, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %57
  br label %169

65:                                               ; preds = %57
  br label %75

66:                                               ; preds = %53
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @IFL_NOTFREE, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %66
  br label %169

74:                                               ; preds = %66
  br label %75

75:                                               ; preds = %74, %65
  br label %76

76:                                               ; preds = %75, %52
  %77 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* @IFL_NOTBOT, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %76
  br label %169

84:                                               ; preds = %76
  %85 = load i8*, i8** %6, align 8
  %86 = load %struct.TYPE_10__*, %struct.TYPE_10__** @itemconfig, align 8
  %87 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %86, i32 0, i32 0
  %88 = load %struct.TYPE_7__*, %struct.TYPE_7__** %87, align 8
  %89 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 2
  %91 = load i64, i64* %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i64 %91
  %93 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @Q_stricmp(i8* %85, i32 %94)
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %168, label %97

97:                                               ; preds = %84
  %98 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %98, i32 0, i32 6
  %100 = load i32, i32* %99, align 8
  %101 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %102 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %101, i32 0, i32 7
  store i32 %100, i32* %102, align 4
  %103 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %103, i32 0, i32 5
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %107 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %106, i32 0, i32 6
  %108 = load i32, i32* %107, align 8
  %109 = call i32 @VectorCopy(i32 %105, i32 %108)
  %110 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %110, i32 0, i32 4
  %112 = load i32, i32* %111, align 8
  %113 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %114 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %113, i32 0, i32 5
  store i32 %112, i32* %114, align 4
  %115 = load %struct.TYPE_10__*, %struct.TYPE_10__** @itemconfig, align 8
  %116 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %115, i32 0, i32 0
  %117 = load %struct.TYPE_7__*, %struct.TYPE_7__** %116, align 8
  %118 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %119 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %118, i32 0, i32 2
  %120 = load i64, i64* %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %117, i64 %120
  %122 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %125 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %124, i32 0, i32 4
  %126 = load i32, i32* %125, align 8
  %127 = call i32 @VectorCopy(i32 %123, i32 %126)
  %128 = load %struct.TYPE_10__*, %struct.TYPE_10__** @itemconfig, align 8
  %129 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %128, i32 0, i32 0
  %130 = load %struct.TYPE_7__*, %struct.TYPE_7__** %129, align 8
  %131 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %132 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %131, i32 0, i32 2
  %133 = load i64, i64* %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %130, i64 %133
  %135 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %138 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %137, i32 0, i32 3
  %139 = load i32, i32* %138, align 4
  %140 = call i32 @VectorCopy(i32 %136, i32 %139)
  %141 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %142 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %145 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %144, i32 0, i32 0
  store i32 %143, i32* %145, align 8
  %146 = load i32, i32* @GFL_ITEM, align 4
  %147 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %148 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %147, i32 0, i32 2
  store i32 %146, i32* %148, align 8
  %149 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %150 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %149, i32 0, i32 3
  %151 = load i64, i64* %150, align 8
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %159

153:                                              ; preds = %97
  %154 = load i32, i32* @GFL_DROPPED, align 4
  %155 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %156 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %155, i32 0, i32 2
  %157 = load i32, i32* %156, align 8
  %158 = or i32 %157, %154
  store i32 %158, i32* %156, align 8
  br label %159

159:                                              ; preds = %153, %97
  %160 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %161 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %160, i32 0, i32 2
  %162 = load i64, i64* %161, align 8
  %163 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %164 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %163, i32 0, i32 1
  store i64 %162, i64* %164, align 8
  %165 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %166 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 8
  store i32 %167, i32* %4, align 4
  br label %174

168:                                              ; preds = %84
  br label %169

169:                                              ; preds = %168, %83, %73, %64, %51
  %170 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %171 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %170, i32 0, i32 7
  %172 = load %struct.TYPE_8__*, %struct.TYPE_8__** %171, align 8
  store %struct.TYPE_8__* %172, %struct.TYPE_8__** %8, align 8
  br label %37

173:                                              ; preds = %37
  store i32 -1, i32* %4, align 4
  br label %174

174:                                              ; preds = %173, %159, %11
  %175 = load i32, i32* %4, align 4
  ret i32 %175
}

declare dso_local i32 @Q_stricmp(i8*, i32) #1

declare dso_local i32 @VectorCopy(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
