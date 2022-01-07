; ModuleID = '/home/carl/AnghaBench/lab/engine/code/game/extr_g_items.c_RespawnItem.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/game/extr_g_items.c_RespawnItem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i64, %struct.TYPE_13__, %struct.TYPE_12__, i64, %struct.TYPE_10__*, %struct.TYPE_14__*, %struct.TYPE_14__*, i64 }
%struct.TYPE_13__ = type { i32, i32 }
%struct.TYPE_12__ = type { i8*, %struct.TYPE_11__, i32 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i64, i64 }

@.str = private unnamed_addr constant [28 x i8] c"RespawnItem: bad teammaster\00", align 1
@CONTENTS_TRIGGER = common dso_local global i32 0, align 4
@EF_NODRAW = common dso_local global i32 0, align 4
@SVF_NOCLIENT = common dso_local global i32 0, align 4
@IT_POWERUP = common dso_local global i64 0, align 8
@EV_GENERAL_SOUND = common dso_local global i32 0, align 4
@EV_GLOBAL_SOUND = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"sound/items/poweruprespawn.wav\00", align 1
@SVF_BROADCAST = common dso_local global i32 0, align 4
@IT_HOLDABLE = common dso_local global i64 0, align 8
@HI_KAMIKAZE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [32 x i8] c"sound/items/kamikazerespawn.wav\00", align 1
@EV_ITEM_RESPAWN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @RespawnItem(%struct.TYPE_14__* %0) #0 {
  %2 = alloca %struct.TYPE_14__*, align 8
  %3 = alloca %struct.TYPE_14__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca %struct.TYPE_14__*, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %2, align 8
  %8 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %9 = icmp ne %struct.TYPE_14__* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  br label %178

11:                                               ; preds = %1
  %12 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %12, i32 0, i32 7
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %60

16:                                               ; preds = %11
  %17 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %18 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %17, i32 0, i32 6
  %19 = load %struct.TYPE_14__*, %struct.TYPE_14__** %18, align 8
  %20 = icmp ne %struct.TYPE_14__* %19, null
  br i1 %20, label %23, label %21

21:                                               ; preds = %16
  %22 = call i32 @G_Error(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %23

23:                                               ; preds = %21, %16
  %24 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %25 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %24, i32 0, i32 6
  %26 = load %struct.TYPE_14__*, %struct.TYPE_14__** %25, align 8
  store %struct.TYPE_14__* %26, %struct.TYPE_14__** %3, align 8
  store i32 0, i32* %4, align 4
  %27 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  store %struct.TYPE_14__* %27, %struct.TYPE_14__** %2, align 8
  br label %28

28:                                               ; preds = %32, %23
  %29 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %30 = icmp ne %struct.TYPE_14__* %29, null
  br i1 %30, label %31, label %38

31:                                               ; preds = %28
  br label %32

32:                                               ; preds = %31
  %33 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %34 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %33, i32 0, i32 5
  %35 = load %struct.TYPE_14__*, %struct.TYPE_14__** %34, align 8
  store %struct.TYPE_14__* %35, %struct.TYPE_14__** %2, align 8
  %36 = load i32, i32* %4, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %4, align 4
  br label %28

38:                                               ; preds = %28
  %39 = call i32 (...) @rand()
  %40 = load i32, i32* %4, align 4
  %41 = srem i32 %39, %40
  store i32 %41, i32* %5, align 4
  store i32 0, i32* %4, align 4
  %42 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  store %struct.TYPE_14__* %42, %struct.TYPE_14__** %2, align 8
  br label %43

43:                                               ; preds = %53, %38
  %44 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %45 = icmp ne %struct.TYPE_14__* %44, null
  br i1 %45, label %46, label %50

46:                                               ; preds = %43
  %47 = load i32, i32* %4, align 4
  %48 = load i32, i32* %5, align 4
  %49 = icmp slt i32 %47, %48
  br label %50

50:                                               ; preds = %46, %43
  %51 = phi i1 [ false, %43 ], [ %49, %46 ]
  br i1 %51, label %52, label %59

52:                                               ; preds = %50
  br label %53

53:                                               ; preds = %52
  %54 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %55 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %54, i32 0, i32 5
  %56 = load %struct.TYPE_14__*, %struct.TYPE_14__** %55, align 8
  store %struct.TYPE_14__* %56, %struct.TYPE_14__** %2, align 8
  %57 = load i32, i32* %4, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %4, align 4
  br label %43

59:                                               ; preds = %50
  br label %60

60:                                               ; preds = %59, %11
  %61 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %62 = icmp ne %struct.TYPE_14__* %61, null
  br i1 %62, label %64, label %63

63:                                               ; preds = %60
  br label %178

64:                                               ; preds = %60
  %65 = load i32, i32* @CONTENTS_TRIGGER, align 4
  %66 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %67 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %67, i32 0, i32 1
  store i32 %65, i32* %68, align 4
  %69 = load i32, i32* @EF_NODRAW, align 4
  %70 = xor i32 %69, -1
  %71 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %72 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %71, i32 0, i32 2
  %73 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 4
  %75 = and i32 %74, %70
  store i32 %75, i32* %73, align 4
  %76 = load i32, i32* @SVF_NOCLIENT, align 4
  %77 = xor i32 %76, -1
  %78 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %79 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = and i32 %81, %77
  store i32 %82, i32* %80, align 8
  %83 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %84 = call i32 @trap_LinkEntity(%struct.TYPE_14__* %83)
  %85 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %86 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %85, i32 0, i32 4
  %87 = load %struct.TYPE_10__*, %struct.TYPE_10__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* @IT_POWERUP, align 8
  %91 = icmp eq i64 %89, %90
  br i1 %91, label %92, label %124

92:                                               ; preds = %64
  %93 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %94 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %93, i32 0, i32 3
  %95 = load i64, i64* %94, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %105

97:                                               ; preds = %92
  %98 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %99 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %98, i32 0, i32 2
  %100 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %99, i32 0, i32 1
  %101 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = load i32, i32* @EV_GENERAL_SOUND, align 4
  %104 = call %struct.TYPE_14__* @G_TempEntity(i32 %102, i32 %103)
  store %struct.TYPE_14__* %104, %struct.TYPE_14__** %6, align 8
  br label %113

105:                                              ; preds = %92
  %106 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %107 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %106, i32 0, i32 2
  %108 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %107, i32 0, i32 1
  %109 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = load i32, i32* @EV_GLOBAL_SOUND, align 4
  %112 = call %struct.TYPE_14__* @G_TempEntity(i32 %110, i32 %111)
  store %struct.TYPE_14__* %112, %struct.TYPE_14__** %6, align 8
  br label %113

113:                                              ; preds = %105, %97
  %114 = call i8* @G_SoundIndex(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %115 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %116 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %115, i32 0, i32 2
  %117 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %116, i32 0, i32 0
  store i8* %114, i8** %117, align 8
  %118 = load i32, i32* @SVF_BROADCAST, align 4
  %119 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %120 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %119, i32 0, i32 1
  %121 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = or i32 %122, %118
  store i32 %123, i32* %121, align 8
  br label %124

124:                                              ; preds = %113, %64
  %125 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %126 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %125, i32 0, i32 4
  %127 = load %struct.TYPE_10__*, %struct.TYPE_10__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = load i64, i64* @IT_HOLDABLE, align 8
  %131 = icmp eq i64 %129, %130
  br i1 %131, label %132, label %172

132:                                              ; preds = %124
  %133 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %134 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %133, i32 0, i32 4
  %135 = load %struct.TYPE_10__*, %struct.TYPE_10__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %135, i32 0, i32 1
  %137 = load i64, i64* %136, align 8
  %138 = load i64, i64* @HI_KAMIKAZE, align 8
  %139 = icmp eq i64 %137, %138
  br i1 %139, label %140, label %172

140:                                              ; preds = %132
  %141 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %142 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %141, i32 0, i32 3
  %143 = load i64, i64* %142, align 8
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %153

145:                                              ; preds = %140
  %146 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %147 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %146, i32 0, i32 2
  %148 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %147, i32 0, i32 1
  %149 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = load i32, i32* @EV_GENERAL_SOUND, align 4
  %152 = call %struct.TYPE_14__* @G_TempEntity(i32 %150, i32 %151)
  store %struct.TYPE_14__* %152, %struct.TYPE_14__** %7, align 8
  br label %161

153:                                              ; preds = %140
  %154 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %155 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %154, i32 0, i32 2
  %156 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %155, i32 0, i32 1
  %157 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 8
  %159 = load i32, i32* @EV_GLOBAL_SOUND, align 4
  %160 = call %struct.TYPE_14__* @G_TempEntity(i32 %158, i32 %159)
  store %struct.TYPE_14__* %160, %struct.TYPE_14__** %7, align 8
  br label %161

161:                                              ; preds = %153, %145
  %162 = call i8* @G_SoundIndex(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  %163 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %164 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %163, i32 0, i32 2
  %165 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %164, i32 0, i32 0
  store i8* %162, i8** %165, align 8
  %166 = load i32, i32* @SVF_BROADCAST, align 4
  %167 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %168 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %167, i32 0, i32 1
  %169 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 8
  %171 = or i32 %170, %166
  store i32 %171, i32* %169, align 8
  br label %172

172:                                              ; preds = %161, %132, %124
  %173 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %174 = load i32, i32* @EV_ITEM_RESPAWN, align 4
  %175 = call i32 @G_AddEvent(%struct.TYPE_14__* %173, i32 %174, i32 0)
  %176 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %177 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %176, i32 0, i32 0
  store i64 0, i64* %177, align 8
  br label %178

178:                                              ; preds = %172, %63, %10
  ret void
}

declare dso_local i32 @G_Error(i8*) #1

declare dso_local i32 @rand(...) #1

declare dso_local i32 @trap_LinkEntity(%struct.TYPE_14__*) #1

declare dso_local %struct.TYPE_14__* @G_TempEntity(i32, i32) #1

declare dso_local i8* @G_SoundIndex(i8*) #1

declare dso_local i32 @G_AddEvent(%struct.TYPE_14__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
