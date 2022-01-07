; ModuleID = '/home/carl/AnghaBench/lab/engine/code/game/extr_ai_dmq3.c_BotHasPersistantPowerupAndWeapon.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/game/extr_ai_dmq3.c_BotHasPersistantPowerupAndWeapon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32* }

@INVENTORY_HEALTH = common dso_local global i64 0, align 8
@qfalse = common dso_local global i32 0, align 4
@INVENTORY_ARMOR = common dso_local global i64 0, align 8
@INVENTORY_BFG10K = common dso_local global i64 0, align 8
@INVENTORY_BFGAMMO = common dso_local global i64 0, align 8
@qtrue = common dso_local global i32 0, align 4
@INVENTORY_RAILGUN = common dso_local global i64 0, align 8
@INVENTORY_SLUGS = common dso_local global i64 0, align 8
@INVENTORY_LIGHTNING = common dso_local global i64 0, align 8
@INVENTORY_LIGHTNINGAMMO = common dso_local global i64 0, align 8
@INVENTORY_ROCKETLAUNCHER = common dso_local global i64 0, align 8
@INVENTORY_ROCKETS = common dso_local global i64 0, align 8
@INVENTORY_NAILGUN = common dso_local global i64 0, align 8
@INVENTORY_NAILS = common dso_local global i64 0, align 8
@INVENTORY_PROXLAUNCHER = common dso_local global i64 0, align 8
@INVENTORY_MINES = common dso_local global i64 0, align 8
@INVENTORY_CHAINGUN = common dso_local global i64 0, align 8
@INVENTORY_BELT = common dso_local global i64 0, align 8
@INVENTORY_PLASMAGUN = common dso_local global i64 0, align 8
@INVENTORY_CELLS = common dso_local global i64 0, align 8
@INVENTORY_AMMOREGEN = common dso_local global i64 0, align 8
@INVENTORY_DOUBLER = common dso_local global i64 0, align 8
@INVENTORY_GUARD = common dso_local global i64 0, align 8
@INVENTORY_SCOUT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @BotHasPersistantPowerupAndWeapon(%struct.TYPE_3__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_3__*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  %4 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %5 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  %6 = load i32*, i32** %5, align 8
  %7 = load i64, i64* @INVENTORY_HEALTH, align 8
  %8 = getelementptr inbounds i32, i32* %6, i64 %7
  %9 = load i32, i32* %8, align 4
  %10 = icmp slt i32 %9, 60
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = load i32, i32* @qfalse, align 4
  store i32 %12, i32* %2, align 4
  br label %178

13:                                               ; preds = %1
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = load i64, i64* @INVENTORY_HEALTH, align 8
  %18 = getelementptr inbounds i32, i32* %16, i64 %17
  %19 = load i32, i32* %18, align 4
  %20 = icmp slt i32 %19, 80
  br i1 %20, label %21, label %32

21:                                               ; preds = %13
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = load i64, i64* @INVENTORY_ARMOR, align 8
  %26 = getelementptr inbounds i32, i32* %24, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = icmp slt i32 %27, 40
  br i1 %28, label %29, label %31

29:                                               ; preds = %21
  %30 = load i32, i32* @qfalse, align 4
  store i32 %30, i32* %2, align 4
  br label %178

31:                                               ; preds = %21
  br label %32

32:                                               ; preds = %31, %13
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = load i64, i64* @INVENTORY_BFG10K, align 8
  %37 = getelementptr inbounds i32, i32* %35, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = icmp sgt i32 %38, 0
  br i1 %39, label %40, label %50

40:                                               ; preds = %32
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = load i64, i64* @INVENTORY_BFGAMMO, align 8
  %45 = getelementptr inbounds i32, i32* %43, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = icmp sgt i32 %46, 7
  br i1 %47, label %48, label %50

48:                                               ; preds = %40
  %49 = load i32, i32* @qtrue, align 4
  store i32 %49, i32* %2, align 4
  br label %178

50:                                               ; preds = %40, %32
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = load i64, i64* @INVENTORY_RAILGUN, align 8
  %55 = getelementptr inbounds i32, i32* %53, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = icmp sgt i32 %56, 0
  br i1 %57, label %58, label %68

58:                                               ; preds = %50
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  %62 = load i64, i64* @INVENTORY_SLUGS, align 8
  %63 = getelementptr inbounds i32, i32* %61, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = icmp sgt i32 %64, 5
  br i1 %65, label %66, label %68

66:                                               ; preds = %58
  %67 = load i32, i32* @qtrue, align 4
  store i32 %67, i32* %2, align 4
  br label %178

68:                                               ; preds = %58, %50
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 0
  %71 = load i32*, i32** %70, align 8
  %72 = load i64, i64* @INVENTORY_LIGHTNING, align 8
  %73 = getelementptr inbounds i32, i32* %71, i64 %72
  %74 = load i32, i32* %73, align 4
  %75 = icmp sgt i32 %74, 0
  br i1 %75, label %76, label %86

76:                                               ; preds = %68
  %77 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 0
  %79 = load i32*, i32** %78, align 8
  %80 = load i64, i64* @INVENTORY_LIGHTNINGAMMO, align 8
  %81 = getelementptr inbounds i32, i32* %79, i64 %80
  %82 = load i32, i32* %81, align 4
  %83 = icmp sgt i32 %82, 50
  br i1 %83, label %84, label %86

84:                                               ; preds = %76
  %85 = load i32, i32* @qtrue, align 4
  store i32 %85, i32* %2, align 4
  br label %178

86:                                               ; preds = %76, %68
  %87 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 0
  %89 = load i32*, i32** %88, align 8
  %90 = load i64, i64* @INVENTORY_ROCKETLAUNCHER, align 8
  %91 = getelementptr inbounds i32, i32* %89, i64 %90
  %92 = load i32, i32* %91, align 4
  %93 = icmp sgt i32 %92, 0
  br i1 %93, label %94, label %104

94:                                               ; preds = %86
  %95 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i32 0, i32 0
  %97 = load i32*, i32** %96, align 8
  %98 = load i64, i64* @INVENTORY_ROCKETS, align 8
  %99 = getelementptr inbounds i32, i32* %97, i64 %98
  %100 = load i32, i32* %99, align 4
  %101 = icmp sgt i32 %100, 5
  br i1 %101, label %102, label %104

102:                                              ; preds = %94
  %103 = load i32, i32* @qtrue, align 4
  store i32 %103, i32* %2, align 4
  br label %178

104:                                              ; preds = %94, %86
  %105 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %105, i32 0, i32 0
  %107 = load i32*, i32** %106, align 8
  %108 = load i64, i64* @INVENTORY_NAILGUN, align 8
  %109 = getelementptr inbounds i32, i32* %107, i64 %108
  %110 = load i32, i32* %109, align 4
  %111 = icmp sgt i32 %110, 0
  br i1 %111, label %112, label %122

112:                                              ; preds = %104
  %113 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %114 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %113, i32 0, i32 0
  %115 = load i32*, i32** %114, align 8
  %116 = load i64, i64* @INVENTORY_NAILS, align 8
  %117 = getelementptr inbounds i32, i32* %115, i64 %116
  %118 = load i32, i32* %117, align 4
  %119 = icmp sgt i32 %118, 5
  br i1 %119, label %120, label %122

120:                                              ; preds = %112
  %121 = load i32, i32* @qtrue, align 4
  store i32 %121, i32* %2, align 4
  br label %178

122:                                              ; preds = %112, %104
  %123 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %124 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %123, i32 0, i32 0
  %125 = load i32*, i32** %124, align 8
  %126 = load i64, i64* @INVENTORY_PROXLAUNCHER, align 8
  %127 = getelementptr inbounds i32, i32* %125, i64 %126
  %128 = load i32, i32* %127, align 4
  %129 = icmp sgt i32 %128, 0
  br i1 %129, label %130, label %140

130:                                              ; preds = %122
  %131 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %132 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %131, i32 0, i32 0
  %133 = load i32*, i32** %132, align 8
  %134 = load i64, i64* @INVENTORY_MINES, align 8
  %135 = getelementptr inbounds i32, i32* %133, i64 %134
  %136 = load i32, i32* %135, align 4
  %137 = icmp sgt i32 %136, 5
  br i1 %137, label %138, label %140

138:                                              ; preds = %130
  %139 = load i32, i32* @qtrue, align 4
  store i32 %139, i32* %2, align 4
  br label %178

140:                                              ; preds = %130, %122
  %141 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %142 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %141, i32 0, i32 0
  %143 = load i32*, i32** %142, align 8
  %144 = load i64, i64* @INVENTORY_CHAINGUN, align 8
  %145 = getelementptr inbounds i32, i32* %143, i64 %144
  %146 = load i32, i32* %145, align 4
  %147 = icmp sgt i32 %146, 0
  br i1 %147, label %148, label %158

148:                                              ; preds = %140
  %149 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %150 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %149, i32 0, i32 0
  %151 = load i32*, i32** %150, align 8
  %152 = load i64, i64* @INVENTORY_BELT, align 8
  %153 = getelementptr inbounds i32, i32* %151, i64 %152
  %154 = load i32, i32* %153, align 4
  %155 = icmp sgt i32 %154, 40
  br i1 %155, label %156, label %158

156:                                              ; preds = %148
  %157 = load i32, i32* @qtrue, align 4
  store i32 %157, i32* %2, align 4
  br label %178

158:                                              ; preds = %148, %140
  %159 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %160 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %159, i32 0, i32 0
  %161 = load i32*, i32** %160, align 8
  %162 = load i64, i64* @INVENTORY_PLASMAGUN, align 8
  %163 = getelementptr inbounds i32, i32* %161, i64 %162
  %164 = load i32, i32* %163, align 4
  %165 = icmp sgt i32 %164, 0
  br i1 %165, label %166, label %176

166:                                              ; preds = %158
  %167 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %168 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %167, i32 0, i32 0
  %169 = load i32*, i32** %168, align 8
  %170 = load i64, i64* @INVENTORY_CELLS, align 8
  %171 = getelementptr inbounds i32, i32* %169, i64 %170
  %172 = load i32, i32* %171, align 4
  %173 = icmp sgt i32 %172, 20
  br i1 %173, label %174, label %176

174:                                              ; preds = %166
  %175 = load i32, i32* @qtrue, align 4
  store i32 %175, i32* %2, align 4
  br label %178

176:                                              ; preds = %166, %158
  %177 = load i32, i32* @qfalse, align 4
  store i32 %177, i32* %2, align 4
  br label %178

178:                                              ; preds = %176, %174, %156, %138, %120, %102, %84, %66, %48, %29, %11
  %179 = load i32, i32* %2, align 4
  ret i32 %179
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
