; ModuleID = '/home/carl/AnghaBench/lab/engine/code/game/extr_g_spawn.c_G_SpawnEntitiesFromString.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/game/extr_g_spawn.c_G_SpawnEntitiesFromString.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32**, i32, i32, i64 }

@MAX_SPAWN_VARS = common dso_local global i32 0, align 4
@qtrue = common dso_local global i32 0, align 4
@level = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@.str = private unnamed_addr constant [27 x i8] c"SpawnEntities: no entities\00", align 1
@qfalse = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @G_SpawnEntitiesFromString() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = load i32, i32* @MAX_SPAWN_VARS, align 4
  %7 = zext i32 %6 to i64
  %8 = call i8* @llvm.stacksave()
  store i8* %8, i8** %4, align 8
  %9 = alloca [2 x i32], i64 %7, align 16
  store i64 %7, i64* %5, align 8
  %10 = load i32, i32* @qtrue, align 4
  store i32 %10, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @level, i32 0, i32 3), align 4
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @level, i32 0, i32 0), align 8
  %11 = call i64 (...) @G_ParseSpawnVars()
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %0
  %14 = call i32 @G_Error(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %15

15:                                               ; preds = %13, %0
  %16 = call i32 (...) @SP_worldspawn()
  br label %17

17:                                               ; preds = %96, %60, %15
  %18 = call i64 (...) @G_ParseSpawnVars()
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %98

20:                                               ; preds = %17
  store i32 0, i32* %1, align 4
  br label %21

21:                                               ; preds = %52, %20
  %22 = load i32, i32* %1, align 4
  %23 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @level, i32 0, i32 0), align 8
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %55

25:                                               ; preds = %21
  %26 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @level, i32 0, i32 1), align 8
  %27 = load i32, i32* %1, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32*, i32** %26, i64 %28
  %30 = load i32*, i32** %29, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @level, i32 0, i32 2), align 8
  %34 = sub nsw i32 %32, %33
  %35 = load i32, i32* %1, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 %36
  %38 = getelementptr inbounds [2 x i32], [2 x i32]* %37, i64 0, i64 0
  store i32 %34, i32* %38, align 8
  %39 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @level, i32 0, i32 1), align 8
  %40 = load i32, i32* %1, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32*, i32** %39, i64 %41
  %43 = load i32*, i32** %42, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 1
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @level, i32 0, i32 2), align 8
  %47 = sub nsw i32 %45, %46
  %48 = load i32, i32* %1, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 %49
  %51 = getelementptr inbounds [2 x i32], [2 x i32]* %50, i64 0, i64 1
  store i32 %47, i32* %51, align 4
  br label %52

52:                                               ; preds = %25
  %53 = load i32, i32* %1, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %1, align 4
  br label %21

55:                                               ; preds = %21
  %56 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @level, i32 0, i32 2), align 8
  %57 = bitcast [2 x i32]* %9 to i32**
  %58 = call i32 @dmlab_update_spawn_vars(i32 %56, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @level, i32 0, i32 4), i32** %57, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @level, i32 0, i32 0))
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %61, label %60

60:                                               ; preds = %55
  br label %17

61:                                               ; preds = %55
  store i32 0, i32* %1, align 4
  br label %62

62:                                               ; preds = %93, %61
  %63 = load i32, i32* %1, align 4
  %64 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @level, i32 0, i32 0), align 8
  %65 = icmp slt i32 %63, %64
  br i1 %65, label %66, label %96

66:                                               ; preds = %62
  %67 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @level, i32 0, i32 2), align 8
  %68 = load i32, i32* %1, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 %69
  %71 = getelementptr inbounds [2 x i32], [2 x i32]* %70, i64 0, i64 0
  %72 = load i32, i32* %71, align 8
  %73 = add nsw i32 %67, %72
  %74 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @level, i32 0, i32 1), align 8
  %75 = load i32, i32* %1, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32*, i32** %74, i64 %76
  %78 = load i32*, i32** %77, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 0
  store i32 %73, i32* %79, align 4
  %80 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @level, i32 0, i32 2), align 8
  %81 = load i32, i32* %1, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 %82
  %84 = getelementptr inbounds [2 x i32], [2 x i32]* %83, i64 0, i64 1
  %85 = load i32, i32* %84, align 4
  %86 = add nsw i32 %80, %85
  %87 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @level, i32 0, i32 1), align 8
  %88 = load i32, i32* %1, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i32*, i32** %87, i64 %89
  %91 = load i32*, i32** %90, align 8
  %92 = getelementptr inbounds i32, i32* %91, i64 1
  store i32 %86, i32* %92, align 4
  br label %93

93:                                               ; preds = %66
  %94 = load i32, i32* %1, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %1, align 4
  br label %62

96:                                               ; preds = %62
  %97 = call i32 (...) @G_SpawnGEntityFromSpawnVars()
  br label %17

98:                                               ; preds = %17
  %99 = call i32 (...) @dmlab_make_extra_entities()
  store i32 %99, i32* %3, align 4
  store i32 0, i32* %2, align 4
  br label %100

100:                                              ; preds = %145, %98
  %101 = load i32, i32* %2, align 4
  %102 = load i32, i32* %3, align 4
  %103 = icmp slt i32 %101, %102
  br i1 %103, label %104, label %148

104:                                              ; preds = %100
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @level, i32 0, i32 0), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @level, i32 0, i32 4), align 8
  %105 = load i32, i32* %2, align 4
  %106 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @level, i32 0, i32 2), align 8
  %107 = bitcast [2 x i32]* %9 to i32**
  %108 = call i32 @dmlab_read_extra_entity(i32 %105, i32 %106, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @level, i32 0, i32 4), i32** %107, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @level, i32 0, i32 0))
  store i32 0, i32* %1, align 4
  br label %109

109:                                              ; preds = %140, %104
  %110 = load i32, i32* %1, align 4
  %111 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @level, i32 0, i32 0), align 8
  %112 = icmp slt i32 %110, %111
  br i1 %112, label %113, label %143

113:                                              ; preds = %109
  %114 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @level, i32 0, i32 2), align 8
  %115 = load i32, i32* %1, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 %116
  %118 = getelementptr inbounds [2 x i32], [2 x i32]* %117, i64 0, i64 0
  %119 = load i32, i32* %118, align 8
  %120 = add nsw i32 %114, %119
  %121 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @level, i32 0, i32 1), align 8
  %122 = load i32, i32* %1, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i32*, i32** %121, i64 %123
  %125 = load i32*, i32** %124, align 8
  %126 = getelementptr inbounds i32, i32* %125, i64 0
  store i32 %120, i32* %126, align 4
  %127 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @level, i32 0, i32 2), align 8
  %128 = load i32, i32* %1, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 %129
  %131 = getelementptr inbounds [2 x i32], [2 x i32]* %130, i64 0, i64 1
  %132 = load i32, i32* %131, align 4
  %133 = add nsw i32 %127, %132
  %134 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @level, i32 0, i32 1), align 8
  %135 = load i32, i32* %1, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i32*, i32** %134, i64 %136
  %138 = load i32*, i32** %137, align 8
  %139 = getelementptr inbounds i32, i32* %138, i64 1
  store i32 %133, i32* %139, align 4
  br label %140

140:                                              ; preds = %113
  %141 = load i32, i32* %1, align 4
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %1, align 4
  br label %109

143:                                              ; preds = %109
  %144 = call i32 (...) @G_SpawnGEntityFromSpawnVars()
  br label %145

145:                                              ; preds = %143
  %146 = load i32, i32* %2, align 4
  %147 = add nsw i32 %146, 1
  store i32 %147, i32* %2, align 4
  br label %100

148:                                              ; preds = %100
  %149 = load i32, i32* @qfalse, align 4
  store i32 %149, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @level, i32 0, i32 3), align 4
  %150 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %150)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @G_ParseSpawnVars(...) #2

declare dso_local i32 @G_Error(i8*) #2

declare dso_local i32 @SP_worldspawn(...) #2

declare dso_local i32 @dmlab_update_spawn_vars(i32, i64*, i32**, i32*) #2

declare dso_local i32 @G_SpawnGEntityFromSpawnVars(...) #2

declare dso_local i32 @dmlab_make_extra_entities(...) #2

declare dso_local i32 @dmlab_read_extra_entity(i32, i32, i64*, i32**, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
