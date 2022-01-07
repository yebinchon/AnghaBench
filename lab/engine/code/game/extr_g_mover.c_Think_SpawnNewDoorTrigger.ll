; ModuleID = '/home/carl/AnghaBench/lab/engine/code/game/extr_g_mover.c_Think_SpawnNewDoorTrigger.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/game/extr_g_mover.c_Think_SpawnNewDoorTrigger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i8*, i32, i32, i32, %struct.TYPE_8__, %struct.TYPE_9__*, %struct.TYPE_9__*, i32 }
%struct.TYPE_8__ = type { i64*, i64*, i64*, i64*, i32 }

@qtrue = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"door_trigger\00", align 1
@CONTENTS_TRIGGER = common dso_local global i32 0, align 4
@Touch_DoorTrigger = common dso_local global i32 0, align 4
@level = common dso_local global %struct.TYPE_10__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Think_SpawnNewDoorTrigger(%struct.TYPE_9__* %0) #0 {
  %2 = alloca %struct.TYPE_9__*, align 8
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca i64*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %2, align 8
  %8 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %9 = icmp ne %struct.TYPE_9__* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  br label %145

11:                                               ; preds = %1
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  store %struct.TYPE_9__* %12, %struct.TYPE_9__** %3, align 8
  br label %13

13:                                               ; preds = %20, %11
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %15 = icmp ne %struct.TYPE_9__* %14, null
  br i1 %15, label %16, label %24

16:                                               ; preds = %13
  %17 = load i32, i32* @qtrue, align 4
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 7
  store i32 %17, i32* %19, align 8
  br label %20

20:                                               ; preds = %16
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 6
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %22, align 8
  store %struct.TYPE_9__* %23, %struct.TYPE_9__** %3, align 8
  br label %13

24:                                               ; preds = %13
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 4
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 0
  %28 = load i64*, i64** %27, align 8
  %29 = load i64*, i64** %4, align 8
  %30 = call i32 @VectorCopy(i64* %28, i64* %29)
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 4
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 1
  %34 = load i64*, i64** %33, align 8
  %35 = load i64*, i64** %5, align 8
  %36 = call i32 @VectorCopy(i64* %34, i64* %35)
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 6
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %38, align 8
  store %struct.TYPE_9__* %39, %struct.TYPE_9__** %3, align 8
  br label %40

40:                                               ; preds = %58, %24
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %42 = icmp ne %struct.TYPE_9__* %41, null
  br i1 %42, label %43, label %62

43:                                               ; preds = %40
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 4
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 0
  %47 = load i64*, i64** %46, align 8
  %48 = load i64*, i64** %4, align 8
  %49 = load i64*, i64** %5, align 8
  %50 = call i32 @AddPointToBounds(i64* %47, i64* %48, i64* %49)
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 4
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 1
  %54 = load i64*, i64** %53, align 8
  %55 = load i64*, i64** %4, align 8
  %56 = load i64*, i64** %5, align 8
  %57 = call i32 @AddPointToBounds(i64* %54, i64* %55, i64* %56)
  br label %58

58:                                               ; preds = %43
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 6
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** %60, align 8
  store %struct.TYPE_9__* %61, %struct.TYPE_9__** %3, align 8
  br label %40

62:                                               ; preds = %40
  store i32 0, i32* %7, align 4
  store i32 1, i32* %6, align 4
  br label %63

63:                                               ; preds = %93, %62
  %64 = load i32, i32* %6, align 4
  %65 = icmp slt i32 %64, 3
  br i1 %65, label %66, label %96

66:                                               ; preds = %63
  %67 = load i64*, i64** %5, align 8
  %68 = load i32, i32* %6, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i64, i64* %67, i64 %69
  %71 = load i64, i64* %70, align 8
  %72 = load i64*, i64** %4, align 8
  %73 = load i32, i32* %6, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i64, i64* %72, i64 %74
  %76 = load i64, i64* %75, align 8
  %77 = sub nsw i64 %71, %76
  %78 = load i64*, i64** %5, align 8
  %79 = load i32, i32* %7, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i64, i64* %78, i64 %80
  %82 = load i64, i64* %81, align 8
  %83 = load i64*, i64** %4, align 8
  %84 = load i32, i32* %7, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i64, i64* %83, i64 %85
  %87 = load i64, i64* %86, align 8
  %88 = sub nsw i64 %82, %87
  %89 = icmp slt i64 %77, %88
  br i1 %89, label %90, label %92

90:                                               ; preds = %66
  %91 = load i32, i32* %6, align 4
  store i32 %91, i32* %7, align 4
  br label %92

92:                                               ; preds = %90, %66
  br label %93

93:                                               ; preds = %92
  %94 = load i32, i32* %6, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %6, align 4
  br label %63

96:                                               ; preds = %63
  %97 = load i64*, i64** %5, align 8
  %98 = load i32, i32* %7, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i64, i64* %97, i64 %99
  %101 = load i64, i64* %100, align 8
  %102 = add nsw i64 %101, 120
  store i64 %102, i64* %100, align 8
  %103 = load i64*, i64** %4, align 8
  %104 = load i32, i32* %7, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i64, i64* %103, i64 %105
  %107 = load i64, i64* %106, align 8
  %108 = sub nsw i64 %107, 120
  store i64 %108, i64* %106, align 8
  %109 = call %struct.TYPE_9__* (...) @G_Spawn()
  store %struct.TYPE_9__* %109, %struct.TYPE_9__** %3, align 8
  %110 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %111 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %110, i32 0, i32 0
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8** %111, align 8
  %112 = load i64*, i64** %4, align 8
  %113 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %114 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %113, i32 0, i32 4
  %115 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %114, i32 0, i32 2
  %116 = load i64*, i64** %115, align 8
  %117 = call i32 @VectorCopy(i64* %112, i64* %116)
  %118 = load i64*, i64** %5, align 8
  %119 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %120 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %119, i32 0, i32 4
  %121 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %120, i32 0, i32 3
  %122 = load i64*, i64** %121, align 8
  %123 = call i32 @VectorCopy(i64* %118, i64* %122)
  %124 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %125 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %126 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %125, i32 0, i32 5
  store %struct.TYPE_9__* %124, %struct.TYPE_9__** %126, align 8
  %127 = load i32, i32* @CONTENTS_TRIGGER, align 4
  %128 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %129 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %128, i32 0, i32 4
  %130 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %129, i32 0, i32 4
  store i32 %127, i32* %130, align 8
  %131 = load i32, i32* @Touch_DoorTrigger, align 4
  %132 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %133 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %132, i32 0, i32 3
  store i32 %131, i32* %133, align 8
  %134 = load i32, i32* %7, align 4
  %135 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %136 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %135, i32 0, i32 1
  store i32 %134, i32* %136, align 8
  %137 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %138 = call i32 @trap_LinkEntity(%struct.TYPE_9__* %137)
  %139 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %140 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %141 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %140, i32 0, i32 2
  %142 = load i32, i32* %141, align 4
  %143 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @level, i32 0, i32 0), align 4
  %144 = call i32 @MatchTeam(%struct.TYPE_9__* %139, i32 %142, i32 %143)
  br label %145

145:                                              ; preds = %96, %10
  ret void
}

declare dso_local i32 @VectorCopy(i64*, i64*) #1

declare dso_local i32 @AddPointToBounds(i64*, i64*, i64*) #1

declare dso_local %struct.TYPE_9__* @G_Spawn(...) #1

declare dso_local i32 @trap_LinkEntity(%struct.TYPE_9__*) #1

declare dso_local i32 @MatchTeam(%struct.TYPE_9__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
