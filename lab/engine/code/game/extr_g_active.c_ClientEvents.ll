; ModuleID = '/home/carl/AnghaBench/lab/engine/code/game/extr_g_active.c_ClientEvents.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/game/extr_g_active.c_ClientEvents.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_25__ = type { i32 }
%struct.TYPE_23__ = type { i32 }
%struct.TYPE_24__ = type { i32 }
%struct.TYPE_21__ = type { i32, %struct.TYPE_22__*, i32, i32, i32, %struct.TYPE_18__ }
%struct.TYPE_22__ = type { i32, i32, %struct.TYPE_20__, %struct.TYPE_19__ }
%struct.TYPE_20__ = type { i32, i32*, i32*, i32, i32*, i32 }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_18__ = type { i32 }

@MAX_PS_EVENTS = common dso_local global i32 0, align 4
@ET_PLAYER = common dso_local global i32 0, align 4
@g_dmflags = common dso_local global %struct.TYPE_25__ zeroinitializer, align 4
@DF_NO_FALLING = common dso_local global i32 0, align 4
@level = common dso_local global %struct.TYPE_23__ zeroinitializer, align 4
@MOD_FALLING = common dso_local global i32 0, align 4
@PW_REDFLAG = common dso_local global i64 0, align 8
@PW_BLUEFLAG = common dso_local global i64 0, align 8
@PW_NEUTRALFLAG = common dso_local global i64 0, align 8
@qfalse = common dso_local global i32 0, align 4
@STAT_MAX_HEALTH = common dso_local global i64 0, align 8
@GT_HARVESTER = common dso_local global i32 0, align 4
@TEAM_BLUE = common dso_local global i32 0, align 4
@TEAM_RED = common dso_local global i32 0, align 4
@g_gametype = common dso_local global %struct.TYPE_24__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ClientEvents(%struct.TYPE_21__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_21__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_22__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_21__*, align 8
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %3, align 8
  store i32 %1, i32* %4, align 4
  %14 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %14, i32 0, i32 1
  %16 = load %struct.TYPE_22__*, %struct.TYPE_22__** %15, align 8
  store %struct.TYPE_22__* %16, %struct.TYPE_22__** %8, align 8
  %17 = load i32, i32* %4, align 4
  %18 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %19 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %18, i32 0, i32 2
  %20 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @MAX_PS_EVENTS, align 4
  %23 = sub nsw i32 %21, %22
  %24 = icmp slt i32 %17, %23
  br i1 %24, label %25, label %32

25:                                               ; preds = %2
  %26 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %27 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %26, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @MAX_PS_EVENTS, align 4
  %31 = sub nsw i32 %29, %30
  store i32 %31, i32* %4, align 4
  br label %32

32:                                               ; preds = %25, %2
  %33 = load i32, i32* %4, align 4
  store i32 %33, i32* %5, align 4
  br label %34

34:                                               ; preds = %204, %32
  %35 = load i32, i32* %5, align 4
  %36 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %37 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %36, i32 0, i32 2
  %38 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = icmp slt i32 %35, %39
  br i1 %40, label %41, label %207

41:                                               ; preds = %34
  %42 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %43 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %42, i32 0, i32 2
  %44 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %43, i32 0, i32 1
  %45 = load i32*, i32** %44, align 8
  %46 = load i32, i32* %5, align 4
  %47 = load i32, i32* @MAX_PS_EVENTS, align 4
  %48 = sub nsw i32 %47, 1
  %49 = and i32 %46, %48
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %45, i64 %50
  %52 = load i32, i32* %51, align 4
  store i32 %52, i32* %7, align 4
  %53 = load i32, i32* %7, align 4
  switch i32 %53, label %202 [
    i32 134, label %54
    i32 135, label %54
    i32 133, label %82
    i32 132, label %85
    i32 131, label %189
  ]

54:                                               ; preds = %41, %41
  %55 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %55, i32 0, i32 5
  %57 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @ET_PLAYER, align 4
  %60 = icmp ne i32 %58, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %54
  br label %203

62:                                               ; preds = %54
  %63 = load i32, i32* getelementptr inbounds (%struct.TYPE_25__, %struct.TYPE_25__* @g_dmflags, i32 0, i32 0), align 4
  %64 = load i32, i32* @DF_NO_FALLING, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %62
  br label %203

68:                                               ; preds = %62
  %69 = load i32, i32* %7, align 4
  %70 = icmp eq i32 %69, 135
  br i1 %70, label %71, label %72

71:                                               ; preds = %68
  store i32 10, i32* %9, align 4
  br label %73

72:                                               ; preds = %68
  store i32 5, i32* %9, align 4
  br label %73

73:                                               ; preds = %72, %71
  %74 = load i32, i32* getelementptr inbounds (%struct.TYPE_23__, %struct.TYPE_23__* @level, i32 0, i32 0), align 4
  %75 = add nsw i32 %74, 200
  %76 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %77 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %76, i32 0, i32 4
  store i32 %75, i32* %77, align 8
  %78 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %79 = load i32, i32* %9, align 4
  %80 = load i32, i32* @MOD_FALLING, align 4
  %81 = call i32 @G_Damage(%struct.TYPE_21__* %78, i32* null, i32* null, i32* null, i32* null, i32 %79, i32 0, i32 %80)
  br label %203

82:                                               ; preds = %41
  %83 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %84 = call i32 @FireWeapon(%struct.TYPE_21__* %83)
  br label %203

85:                                               ; preds = %41
  store i32* null, i32** %12, align 8
  store i32 0, i32* %6, align 4
  %86 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %87 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %86, i32 0, i32 1
  %88 = load %struct.TYPE_22__*, %struct.TYPE_22__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %88, i32 0, i32 2
  %90 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %89, i32 0, i32 2
  %91 = load i32*, i32** %90, align 8
  %92 = load i64, i64* @PW_REDFLAG, align 8
  %93 = getelementptr inbounds i32, i32* %91, i64 %92
  %94 = load i32, i32* %93, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %101

96:                                               ; preds = %85
  %97 = load i64, i64* @PW_REDFLAG, align 8
  %98 = call i32* @BG_FindItemForPowerup(i64 %97)
  store i32* %98, i32** %12, align 8
  %99 = load i64, i64* @PW_REDFLAG, align 8
  %100 = trunc i64 %99 to i32
  store i32 %100, i32* %6, align 4
  br label %135

101:                                              ; preds = %85
  %102 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %103 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %102, i32 0, i32 1
  %104 = load %struct.TYPE_22__*, %struct.TYPE_22__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %104, i32 0, i32 2
  %106 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %105, i32 0, i32 2
  %107 = load i32*, i32** %106, align 8
  %108 = load i64, i64* @PW_BLUEFLAG, align 8
  %109 = getelementptr inbounds i32, i32* %107, i64 %108
  %110 = load i32, i32* %109, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %117

112:                                              ; preds = %101
  %113 = load i64, i64* @PW_BLUEFLAG, align 8
  %114 = call i32* @BG_FindItemForPowerup(i64 %113)
  store i32* %114, i32** %12, align 8
  %115 = load i64, i64* @PW_BLUEFLAG, align 8
  %116 = trunc i64 %115 to i32
  store i32 %116, i32* %6, align 4
  br label %134

117:                                              ; preds = %101
  %118 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %119 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %118, i32 0, i32 1
  %120 = load %struct.TYPE_22__*, %struct.TYPE_22__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %120, i32 0, i32 2
  %122 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %121, i32 0, i32 2
  %123 = load i32*, i32** %122, align 8
  %124 = load i64, i64* @PW_NEUTRALFLAG, align 8
  %125 = getelementptr inbounds i32, i32* %123, i64 %124
  %126 = load i32, i32* %125, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %133

128:                                              ; preds = %117
  %129 = load i64, i64* @PW_NEUTRALFLAG, align 8
  %130 = call i32* @BG_FindItemForPowerup(i64 %129)
  store i32* %130, i32** %12, align 8
  %131 = load i64, i64* @PW_NEUTRALFLAG, align 8
  %132 = trunc i64 %131 to i32
  store i32 %132, i32* %6, align 4
  br label %133

133:                                              ; preds = %128, %117
  br label %134

134:                                              ; preds = %133, %112
  br label %135

135:                                              ; preds = %134, %96
  %136 = load i32*, i32** %12, align 8
  %137 = icmp ne i32* %136, null
  br i1 %137, label %138, label %174

138:                                              ; preds = %135
  %139 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %140 = load i32*, i32** %12, align 8
  %141 = call %struct.TYPE_21__* @Drop_Item(%struct.TYPE_21__* %139, i32* %140, i32 0)
  store %struct.TYPE_21__* %141, %struct.TYPE_21__** %13, align 8
  %142 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %143 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %142, i32 0, i32 1
  %144 = load %struct.TYPE_22__*, %struct.TYPE_22__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %144, i32 0, i32 2
  %146 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %145, i32 0, i32 2
  %147 = load i32*, i32** %146, align 8
  %148 = load i32, i32* %6, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds i32, i32* %147, i64 %149
  %151 = load i32, i32* %150, align 4
  %152 = load i32, i32* getelementptr inbounds (%struct.TYPE_23__, %struct.TYPE_23__* @level, i32 0, i32 0), align 4
  %153 = sub nsw i32 %151, %152
  %154 = sdiv i32 %153, 1000
  %155 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %156 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %155, i32 0, i32 0
  store i32 %154, i32* %156, align 8
  %157 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %158 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 8
  %160 = icmp slt i32 %159, 1
  br i1 %160, label %161, label %164

161:                                              ; preds = %138
  %162 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %163 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %162, i32 0, i32 0
  store i32 1, i32* %163, align 8
  br label %164

164:                                              ; preds = %161, %138
  %165 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %166 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %165, i32 0, i32 1
  %167 = load %struct.TYPE_22__*, %struct.TYPE_22__** %166, align 8
  %168 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %167, i32 0, i32 2
  %169 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %168, i32 0, i32 2
  %170 = load i32*, i32** %169, align 8
  %171 = load i32, i32* %6, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds i32, i32* %170, i64 %172
  store i32 0, i32* %173, align 4
  br label %174

174:                                              ; preds = %164, %135
  %175 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %176 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %175, i32 0, i32 1
  %177 = load %struct.TYPE_22__*, %struct.TYPE_22__** %176, align 8
  %178 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %177, i32 0, i32 2
  %179 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %178, i32 0, i32 5
  %180 = load i32, i32* %179, align 8
  %181 = load i32, i32* %10, align 4
  %182 = load i32, i32* %11, align 4
  %183 = load i32, i32* @qfalse, align 4
  %184 = call i32 @SelectSpawnPoint(i32 %180, i32 %181, i32 %182, i32 %183)
  %185 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %186 = load i32, i32* %10, align 4
  %187 = load i32, i32* %11, align 4
  %188 = call i32 @TeleportPlayer(%struct.TYPE_21__* %185, i32 %186, i32 %187)
  br label %203

189:                                              ; preds = %41
  %190 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %191 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %190, i32 0, i32 1
  %192 = load %struct.TYPE_22__*, %struct.TYPE_22__** %191, align 8
  %193 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %192, i32 0, i32 2
  %194 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %193, i32 0, i32 4
  %195 = load i32*, i32** %194, align 8
  %196 = load i64, i64* @STAT_MAX_HEALTH, align 8
  %197 = getelementptr inbounds i32, i32* %195, i64 %196
  %198 = load i32, i32* %197, align 4
  %199 = add nsw i32 %198, 25
  %200 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %201 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %200, i32 0, i32 2
  store i32 %199, i32* %201, align 8
  br label %203

202:                                              ; preds = %41
  br label %203

203:                                              ; preds = %202, %189, %174, %82, %73, %67, %61
  br label %204

204:                                              ; preds = %203
  %205 = load i32, i32* %5, align 4
  %206 = add nsw i32 %205, 1
  store i32 %206, i32* %5, align 4
  br label %34

207:                                              ; preds = %34
  ret void
}

declare dso_local i32 @G_Damage(%struct.TYPE_21__*, i32*, i32*, i32*, i32*, i32, i32, i32) #1

declare dso_local i32 @FireWeapon(%struct.TYPE_21__*) #1

declare dso_local i32* @BG_FindItemForPowerup(i64) #1

declare dso_local %struct.TYPE_21__* @Drop_Item(%struct.TYPE_21__*, i32*, i32) #1

declare dso_local i32 @SelectSpawnPoint(i32, i32, i32, i32) #1

declare dso_local i32 @TeleportPlayer(%struct.TYPE_21__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
