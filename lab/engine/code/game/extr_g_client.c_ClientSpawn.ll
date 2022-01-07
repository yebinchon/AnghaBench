; ModuleID = '/home/carl/AnghaBench/lab/engine/code/game/extr_g_client.c_ClientSpawn.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/game/extr_g_client.c_ClientSpawn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_38__ = type { i8*, i32, %struct.TYPE_37__, %struct.TYPE_39__*, %struct.TYPE_35__, i32, i64, i64, i32, i32, i8*, i8* }
%struct.TYPE_37__ = type { i32, i32, i32 }
%struct.TYPE_39__ = type { i32, i32, i32, %struct.TYPE_34__, %struct.TYPE_40__, %struct.TYPE_41__, i64, i64, i64, i64 }
%struct.TYPE_34__ = type { i32, i32, i32*, i32, i32*, i32, i32*, i32, i32, i64, i32, i32, i32, i32, i32 }
%struct.TYPE_40__ = type { i64, i64 }
%struct.TYPE_41__ = type { i32, %struct.TYPE_42__, %struct.TYPE_36__, i8*, i64 }
%struct.TYPE_42__ = type { i64 }
%struct.TYPE_36__ = type { i32 }
%struct.TYPE_35__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_33__ = type { i64 }
%struct.TYPE_43__ = type { i64, i32, %struct.TYPE_39__* }
%struct.TYPE_31__ = type { i64 }
%struct.TYPE_32__ = type { i32 }

@MAX_PERSISTANT = common dso_local global i32 0, align 4
@MAX_INFO_STRING = common dso_local global i32 0, align 4
@g_entities = common dso_local global %struct.TYPE_38__* null, align 8
@TEAM_SPECTATOR = common dso_local global i64 0, align 8
@g_gametype = common dso_local global %struct.TYPE_33__ zeroinitializer, align 8
@GT_CTF = common dso_local global i64 0, align 8
@SVF_BOT = common dso_local global i32 0, align 4
@qtrue = common dso_local global i8* null, align 8
@TEAM_ACTIVE = common dso_local global i32 0, align 4
@EF_KAMIKAZE = common dso_local global i32 0, align 4
@EF_TELEPORT_BIT = common dso_local global i32 0, align 4
@EF_VOTED = common dso_local global i32 0, align 4
@EF_TEAMVOTED = common dso_local global i32 0, align 4
@PERS_SPAWN_COUNT = common dso_local global i64 0, align 8
@PERS_TEAM = common dso_local global i64 0, align 8
@level = common dso_local global %struct.TYPE_43__ zeroinitializer, align 8
@.str = private unnamed_addr constant [9 x i8] c"handicap\00", align 1
@STAT_MAX_HEALTH = common dso_local global i64 0, align 8
@ENTITYNUM_NONE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"player\00", align 1
@CONTENTS_BODY = common dso_local global i32 0, align 4
@MASK_PLAYERSOLID = common dso_local global i32 0, align 4
@player_die = common dso_local global i32 0, align 4
@playerMins = common dso_local global i32 0, align 4
@playerMaxs = common dso_local global i32 0, align 4
@WP_MACHINEGUN = common dso_local global i32 0, align 4
@STAT_WEAPONS = common dso_local global i64 0, align 8
@g_unlimitedAmmo = common dso_local global %struct.TYPE_31__ zeroinitializer, align 8
@GT_TEAM = common dso_local global i64 0, align 8
@WP_GAUNTLET = common dso_local global i32 0, align 4
@WP_GRAPPLING_HOOK = common dso_local global i64 0, align 8
@STAT_HEALTH = common dso_local global i64 0, align 8
@PMF_RESPAWNED = common dso_local global i32 0, align 4
@PMF_TIME_KNOCKBACK = common dso_local global i32 0, align 4
@g_inactivity = common dso_local global %struct.TYPE_32__ zeroinitializer, align 4
@TORSO_STAND = common dso_local global i32 0, align 4
@LEGS_IDLE = common dso_local global i32 0, align 4
@WEAPON_READY = common dso_local global i32 0, align 4
@WP_NUM_WEAPONS = common dso_local global i32 0, align 4
@EV_PLAYER_TELEPORT_IN = common dso_local global i32 0, align 4
@SPECTATOR_FOLLOW = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ClientSpawn(%struct.TYPE_38__* %0) #0 {
  %2 = alloca %struct.TYPE_38__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_39__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_41__, align 8
  %9 = alloca %struct.TYPE_40__, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_38__*, align 8
  %13 = alloca %struct.TYPE_38__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  store %struct.TYPE_38__* %0, %struct.TYPE_38__** %2, align 8
  %20 = load i32, i32* @MAX_PERSISTANT, align 4
  %21 = zext i32 %20 to i64
  %22 = call i8* @llvm.stacksave()
  store i8* %22, i8** %10, align 8
  %23 = alloca i32, i64 %21, align 16
  store i64 %21, i64* %11, align 8
  %24 = load i32, i32* @MAX_INFO_STRING, align 4
  %25 = zext i32 %24 to i64
  %26 = alloca i8, i64 %25, align 16
  store i64 %25, i64* %19, align 8
  %27 = load %struct.TYPE_38__*, %struct.TYPE_38__** %2, align 8
  %28 = load %struct.TYPE_38__*, %struct.TYPE_38__** @g_entities, align 8
  %29 = ptrtoint %struct.TYPE_38__* %27 to i64
  %30 = ptrtoint %struct.TYPE_38__* %28 to i64
  %31 = sub i64 %29, %30
  %32 = sdiv exact i64 %31, 96
  %33 = trunc i64 %32 to i32
  store i32 %33, i32* %3, align 4
  %34 = load %struct.TYPE_38__*, %struct.TYPE_38__** %2, align 8
  %35 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %34, i32 0, i32 3
  %36 = load %struct.TYPE_39__*, %struct.TYPE_39__** %35, align 8
  store %struct.TYPE_39__* %36, %struct.TYPE_39__** %6, align 8
  %37 = load i32, i32* %4, align 4
  %38 = call i32 @VectorClear(i32 %37)
  %39 = load %struct.TYPE_39__*, %struct.TYPE_39__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %39, i32 0, i32 4
  %41 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @TEAM_SPECTATOR, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %49

45:                                               ; preds = %1
  %46 = load i32, i32* %4, align 4
  %47 = load i32, i32* %5, align 4
  %48 = call %struct.TYPE_38__* @SelectSpectatorSpawnPoint(i32 %46, i32 %47)
  store %struct.TYPE_38__* %48, %struct.TYPE_38__** %12, align 8
  br label %126

49:                                               ; preds = %1
  %50 = load i64, i64* getelementptr inbounds (%struct.TYPE_33__, %struct.TYPE_33__* @g_gametype, i32 0, i32 0), align 8
  %51 = load i64, i64* @GT_CTF, align 8
  %52 = icmp sge i64 %50, %51
  br i1 %52, label %53, label %76

53:                                               ; preds = %49
  %54 = load %struct.TYPE_39__*, %struct.TYPE_39__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %54, i32 0, i32 4
  %56 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load %struct.TYPE_39__*, %struct.TYPE_39__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %58, i32 0, i32 5
  %60 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %59, i32 0, i32 2
  %61 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* %4, align 4
  %64 = load i32, i32* %5, align 4
  %65 = load %struct.TYPE_38__*, %struct.TYPE_38__** %2, align 8
  %66 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %65, i32 0, i32 4
  %67 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* @SVF_BOT, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  %72 = xor i1 %71, true
  %73 = xor i1 %72, true
  %74 = zext i1 %73 to i32
  %75 = call %struct.TYPE_38__* @SelectCTFSpawnPoint(i64 %57, i32 %62, i32 %63, i32 %64, i32 %74)
  store %struct.TYPE_38__* %75, %struct.TYPE_38__** %12, align 8
  br label %125

76:                                               ; preds = %49
  %77 = load %struct.TYPE_39__*, %struct.TYPE_39__** %6, align 8
  %78 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %77, i32 0, i32 5
  %79 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %78, i32 0, i32 3
  %80 = load i8*, i8** %79, align 8
  %81 = icmp ne i8* %80, null
  br i1 %81, label %106, label %82

82:                                               ; preds = %76
  %83 = load %struct.TYPE_39__*, %struct.TYPE_39__** %6, align 8
  %84 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %83, i32 0, i32 5
  %85 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %84, i32 0, i32 4
  %86 = load i64, i64* %85, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %106

88:                                               ; preds = %82
  %89 = load i8*, i8** @qtrue, align 8
  %90 = load %struct.TYPE_39__*, %struct.TYPE_39__** %6, align 8
  %91 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %90, i32 0, i32 5
  %92 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %91, i32 0, i32 3
  store i8* %89, i8** %92, align 8
  %93 = load i32, i32* %4, align 4
  %94 = load i32, i32* %5, align 4
  %95 = load %struct.TYPE_38__*, %struct.TYPE_38__** %2, align 8
  %96 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %95, i32 0, i32 4
  %97 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = load i32, i32* @SVF_BOT, align 4
  %100 = and i32 %98, %99
  %101 = icmp ne i32 %100, 0
  %102 = xor i1 %101, true
  %103 = xor i1 %102, true
  %104 = zext i1 %103 to i32
  %105 = call %struct.TYPE_38__* @SelectInitialSpawnPoint(i32 %93, i32 %94, i32 %104)
  store %struct.TYPE_38__* %105, %struct.TYPE_38__** %12, align 8
  br label %124

106:                                              ; preds = %82, %76
  %107 = load %struct.TYPE_39__*, %struct.TYPE_39__** %6, align 8
  %108 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %107, i32 0, i32 3
  %109 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %108, i32 0, i32 10
  %110 = load i32, i32* %109, align 8
  %111 = load i32, i32* %4, align 4
  %112 = load i32, i32* %5, align 4
  %113 = load %struct.TYPE_38__*, %struct.TYPE_38__** %2, align 8
  %114 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %113, i32 0, i32 4
  %115 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = load i32, i32* @SVF_BOT, align 4
  %118 = and i32 %116, %117
  %119 = icmp ne i32 %118, 0
  %120 = xor i1 %119, true
  %121 = xor i1 %120, true
  %122 = zext i1 %121 to i32
  %123 = call %struct.TYPE_38__* @SelectSpawnPoint(i32 %110, i32 %111, i32 %112, i32 %122)
  store %struct.TYPE_38__* %123, %struct.TYPE_38__** %12, align 8
  br label %124

124:                                              ; preds = %106, %88
  br label %125

125:                                              ; preds = %124, %53
  br label %126

126:                                              ; preds = %125, %45
  %127 = load i32, i32* @TEAM_ACTIVE, align 4
  %128 = load %struct.TYPE_39__*, %struct.TYPE_39__** %6, align 8
  %129 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %128, i32 0, i32 5
  %130 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %129, i32 0, i32 2
  %131 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %130, i32 0, i32 0
  store i32 %127, i32* %131, align 8
  %132 = load i32, i32* @EF_KAMIKAZE, align 4
  %133 = xor i32 %132, -1
  %134 = load %struct.TYPE_38__*, %struct.TYPE_38__** %2, align 8
  %135 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %134, i32 0, i32 2
  %136 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %135, i32 0, i32 2
  %137 = load i32, i32* %136, align 4
  %138 = and i32 %137, %133
  store i32 %138, i32* %136, align 4
  %139 = load %struct.TYPE_38__*, %struct.TYPE_38__** %2, align 8
  %140 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %139, i32 0, i32 3
  %141 = load %struct.TYPE_39__*, %struct.TYPE_39__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %141, i32 0, i32 3
  %143 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = load i32, i32* @EF_TELEPORT_BIT, align 4
  %146 = load i32, i32* @EF_VOTED, align 4
  %147 = or i32 %145, %146
  %148 = load i32, i32* @EF_TEAMVOTED, align 4
  %149 = or i32 %147, %148
  %150 = and i32 %144, %149
  store i32 %150, i32* %14, align 4
  %151 = load i32, i32* @EF_TELEPORT_BIT, align 4
  %152 = load i32, i32* %14, align 4
  %153 = xor i32 %152, %151
  store i32 %153, i32* %14, align 4
  %154 = load %struct.TYPE_39__*, %struct.TYPE_39__** %6, align 8
  %155 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %154, i32 0, i32 5
  %156 = bitcast %struct.TYPE_41__* %8 to i8*
  %157 = bitcast %struct.TYPE_41__* %155 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %156, i8* align 8 %157, i64 40, i1 false)
  %158 = load %struct.TYPE_39__*, %struct.TYPE_39__** %6, align 8
  %159 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %158, i32 0, i32 4
  %160 = bitcast %struct.TYPE_40__* %9 to i8*
  %161 = bitcast %struct.TYPE_40__* %159 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %160, i8* align 8 %161, i64 16, i1 false)
  %162 = load %struct.TYPE_39__*, %struct.TYPE_39__** %6, align 8
  %163 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %162, i32 0, i32 3
  %164 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 4
  store i32 %165, i32* %15, align 4
  %166 = load %struct.TYPE_39__*, %struct.TYPE_39__** %6, align 8
  %167 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 8
  store i32 %168, i32* %16, align 4
  %169 = load %struct.TYPE_39__*, %struct.TYPE_39__** %6, align 8
  %170 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %169, i32 0, i32 1
  %171 = load i32, i32* %170, align 4
  store i32 %171, i32* %17, align 4
  store i32 0, i32* %7, align 4
  br label %172

172:                                              ; preds = %188, %126
  %173 = load i32, i32* %7, align 4
  %174 = load i32, i32* @MAX_PERSISTANT, align 4
  %175 = icmp slt i32 %173, %174
  br i1 %175, label %176, label %191

176:                                              ; preds = %172
  %177 = load %struct.TYPE_39__*, %struct.TYPE_39__** %6, align 8
  %178 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %177, i32 0, i32 3
  %179 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %178, i32 0, i32 2
  %180 = load i32*, i32** %179, align 8
  %181 = load i32, i32* %7, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds i32, i32* %180, i64 %182
  %184 = load i32, i32* %183, align 4
  %185 = load i32, i32* %7, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds i32, i32* %23, i64 %186
  store i32 %184, i32* %187, align 4
  br label %188

188:                                              ; preds = %176
  %189 = load i32, i32* %7, align 4
  %190 = add nsw i32 %189, 1
  store i32 %190, i32* %7, align 4
  br label %172

191:                                              ; preds = %172
  %192 = load %struct.TYPE_39__*, %struct.TYPE_39__** %6, align 8
  %193 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %192, i32 0, i32 3
  %194 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %193, i32 0, i32 3
  %195 = load i32, i32* %194, align 8
  store i32 %195, i32* %18, align 4
  %196 = load %struct.TYPE_39__*, %struct.TYPE_39__** %6, align 8
  %197 = call i32 @Com_Memset(%struct.TYPE_39__* %196, i32 0, i32 192)
  %198 = load %struct.TYPE_39__*, %struct.TYPE_39__** %6, align 8
  %199 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %198, i32 0, i32 5
  %200 = bitcast %struct.TYPE_41__* %199 to i8*
  %201 = bitcast %struct.TYPE_41__* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %200, i8* align 8 %201, i64 40, i1 false)
  %202 = load %struct.TYPE_39__*, %struct.TYPE_39__** %6, align 8
  %203 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %202, i32 0, i32 4
  %204 = bitcast %struct.TYPE_40__* %203 to i8*
  %205 = bitcast %struct.TYPE_40__* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %204, i8* align 8 %205, i64 16, i1 false)
  %206 = load i32, i32* %15, align 4
  %207 = load %struct.TYPE_39__*, %struct.TYPE_39__** %6, align 8
  %208 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %207, i32 0, i32 3
  %209 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %208, i32 0, i32 1
  store i32 %206, i32* %209, align 4
  %210 = load i32, i32* %16, align 4
  %211 = load %struct.TYPE_39__*, %struct.TYPE_39__** %6, align 8
  %212 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %211, i32 0, i32 0
  store i32 %210, i32* %212, align 8
  %213 = load i32, i32* %17, align 4
  %214 = load %struct.TYPE_39__*, %struct.TYPE_39__** %6, align 8
  %215 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %214, i32 0, i32 1
  store i32 %213, i32* %215, align 4
  %216 = load %struct.TYPE_39__*, %struct.TYPE_39__** %6, align 8
  %217 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %216, i32 0, i32 2
  store i32 -1, i32* %217, align 8
  store i32 0, i32* %7, align 4
  br label %218

218:                                              ; preds = %234, %191
  %219 = load i32, i32* %7, align 4
  %220 = load i32, i32* @MAX_PERSISTANT, align 4
  %221 = icmp slt i32 %219, %220
  br i1 %221, label %222, label %237

222:                                              ; preds = %218
  %223 = load i32, i32* %7, align 4
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds i32, i32* %23, i64 %224
  %226 = load i32, i32* %225, align 4
  %227 = load %struct.TYPE_39__*, %struct.TYPE_39__** %6, align 8
  %228 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %227, i32 0, i32 3
  %229 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %228, i32 0, i32 2
  %230 = load i32*, i32** %229, align 8
  %231 = load i32, i32* %7, align 4
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds i32, i32* %230, i64 %232
  store i32 %226, i32* %233, align 4
  br label %234

234:                                              ; preds = %222
  %235 = load i32, i32* %7, align 4
  %236 = add nsw i32 %235, 1
  store i32 %236, i32* %7, align 4
  br label %218

237:                                              ; preds = %218
  %238 = load i32, i32* %18, align 4
  %239 = load %struct.TYPE_39__*, %struct.TYPE_39__** %6, align 8
  %240 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %239, i32 0, i32 3
  %241 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %240, i32 0, i32 3
  store i32 %238, i32* %241, align 8
  %242 = load %struct.TYPE_39__*, %struct.TYPE_39__** %6, align 8
  %243 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %242, i32 0, i32 3
  %244 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %243, i32 0, i32 2
  %245 = load i32*, i32** %244, align 8
  %246 = load i64, i64* @PERS_SPAWN_COUNT, align 8
  %247 = getelementptr inbounds i32, i32* %245, i64 %246
  %248 = load i32, i32* %247, align 4
  %249 = add nsw i32 %248, 1
  store i32 %249, i32* %247, align 4
  %250 = load %struct.TYPE_39__*, %struct.TYPE_39__** %6, align 8
  %251 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %250, i32 0, i32 4
  %252 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %251, i32 0, i32 0
  %253 = load i64, i64* %252, align 8
  %254 = trunc i64 %253 to i32
  %255 = load %struct.TYPE_39__*, %struct.TYPE_39__** %6, align 8
  %256 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %255, i32 0, i32 3
  %257 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %256, i32 0, i32 2
  %258 = load i32*, i32** %257, align 8
  %259 = load i64, i64* @PERS_TEAM, align 8
  %260 = getelementptr inbounds i32, i32* %258, i64 %259
  store i32 %254, i32* %260, align 4
  %261 = load i64, i64* getelementptr inbounds (%struct.TYPE_43__, %struct.TYPE_43__* @level, i32 0, i32 0), align 8
  %262 = add nsw i64 %261, 12000
  %263 = load %struct.TYPE_39__*, %struct.TYPE_39__** %6, align 8
  %264 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %263, i32 0, i32 9
  store i64 %262, i64* %264, align 8
  %265 = load i32, i32* %3, align 4
  %266 = trunc i64 %25 to i32
  %267 = call i32 @trap_GetUserinfo(i32 %265, i8* %26, i32 %266)
  %268 = call i32 @Info_ValueForKey(i8* %26, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %269 = call i32 @atoi(i32 %268)
  %270 = load %struct.TYPE_39__*, %struct.TYPE_39__** %6, align 8
  %271 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %270, i32 0, i32 5
  %272 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %271, i32 0, i32 0
  store i32 %269, i32* %272, align 8
  %273 = load %struct.TYPE_39__*, %struct.TYPE_39__** %6, align 8
  %274 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %273, i32 0, i32 5
  %275 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %274, i32 0, i32 0
  %276 = load i32, i32* %275, align 8
  %277 = icmp slt i32 %276, 1
  br i1 %277, label %284, label %278

278:                                              ; preds = %237
  %279 = load %struct.TYPE_39__*, %struct.TYPE_39__** %6, align 8
  %280 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %279, i32 0, i32 5
  %281 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %280, i32 0, i32 0
  %282 = load i32, i32* %281, align 8
  %283 = icmp sgt i32 %282, 100
  br i1 %283, label %284, label %288

284:                                              ; preds = %278, %237
  %285 = load %struct.TYPE_39__*, %struct.TYPE_39__** %6, align 8
  %286 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %285, i32 0, i32 5
  %287 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %286, i32 0, i32 0
  store i32 100, i32* %287, align 8
  br label %288

288:                                              ; preds = %284, %278
  %289 = load %struct.TYPE_39__*, %struct.TYPE_39__** %6, align 8
  %290 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %289, i32 0, i32 5
  %291 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %290, i32 0, i32 0
  %292 = load i32, i32* %291, align 8
  %293 = load %struct.TYPE_39__*, %struct.TYPE_39__** %6, align 8
  %294 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %293, i32 0, i32 3
  %295 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %294, i32 0, i32 4
  %296 = load i32*, i32** %295, align 8
  %297 = load i64, i64* @STAT_MAX_HEALTH, align 8
  %298 = getelementptr inbounds i32, i32* %296, i64 %297
  store i32 %292, i32* %298, align 4
  %299 = load i32, i32* %14, align 4
  %300 = load %struct.TYPE_39__*, %struct.TYPE_39__** %6, align 8
  %301 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %300, i32 0, i32 3
  %302 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %301, i32 0, i32 0
  store i32 %299, i32* %302, align 8
  %303 = load i32, i32* @ENTITYNUM_NONE, align 4
  %304 = load %struct.TYPE_38__*, %struct.TYPE_38__** %2, align 8
  %305 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %304, i32 0, i32 2
  %306 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %305, i32 0, i32 1
  store i32 %303, i32* %306, align 4
  %307 = load %struct.TYPE_39__*, %struct.TYPE_39__** getelementptr inbounds (%struct.TYPE_43__, %struct.TYPE_43__* @level, i32 0, i32 2), align 8
  %308 = load i32, i32* %3, align 4
  %309 = sext i32 %308 to i64
  %310 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %307, i64 %309
  %311 = load %struct.TYPE_38__*, %struct.TYPE_38__** %2, align 8
  %312 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %311, i32 0, i32 3
  store %struct.TYPE_39__* %310, %struct.TYPE_39__** %312, align 8
  %313 = load i8*, i8** @qtrue, align 8
  %314 = load %struct.TYPE_38__*, %struct.TYPE_38__** %2, align 8
  %315 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %314, i32 0, i32 11
  store i8* %313, i8** %315, align 8
  %316 = load i8*, i8** @qtrue, align 8
  %317 = load %struct.TYPE_38__*, %struct.TYPE_38__** %2, align 8
  %318 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %317, i32 0, i32 10
  store i8* %316, i8** %318, align 8
  %319 = load %struct.TYPE_38__*, %struct.TYPE_38__** %2, align 8
  %320 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %319, i32 0, i32 0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8** %320, align 8
  %321 = load i32, i32* @CONTENTS_BODY, align 4
  %322 = load %struct.TYPE_38__*, %struct.TYPE_38__** %2, align 8
  %323 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %322, i32 0, i32 4
  %324 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %323, i32 0, i32 4
  store i32 %321, i32* %324, align 8
  %325 = load i32, i32* @MASK_PLAYERSOLID, align 4
  %326 = load %struct.TYPE_38__*, %struct.TYPE_38__** %2, align 8
  %327 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %326, i32 0, i32 9
  store i32 %325, i32* %327, align 4
  %328 = load i32, i32* @player_die, align 4
  %329 = load %struct.TYPE_38__*, %struct.TYPE_38__** %2, align 8
  %330 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %329, i32 0, i32 8
  store i32 %328, i32* %330, align 8
  %331 = load %struct.TYPE_38__*, %struct.TYPE_38__** %2, align 8
  %332 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %331, i32 0, i32 7
  store i64 0, i64* %332, align 8
  %333 = load %struct.TYPE_38__*, %struct.TYPE_38__** %2, align 8
  %334 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %333, i32 0, i32 6
  store i64 0, i64* %334, align 8
  %335 = load %struct.TYPE_38__*, %struct.TYPE_38__** %2, align 8
  %336 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %335, i32 0, i32 5
  store i32 0, i32* %336, align 4
  %337 = load i32, i32* @playerMins, align 4
  %338 = load %struct.TYPE_38__*, %struct.TYPE_38__** %2, align 8
  %339 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %338, i32 0, i32 4
  %340 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %339, i32 0, i32 3
  %341 = load i32, i32* %340, align 4
  %342 = call i32 @VectorCopy(i32 %337, i32 %341)
  %343 = load i32, i32* @playerMaxs, align 4
  %344 = load %struct.TYPE_38__*, %struct.TYPE_38__** %2, align 8
  %345 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %344, i32 0, i32 4
  %346 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %345, i32 0, i32 2
  %347 = load i32, i32* %346, align 8
  %348 = call i32 @VectorCopy(i32 %343, i32 %347)
  %349 = load i32, i32* %3, align 4
  %350 = load %struct.TYPE_39__*, %struct.TYPE_39__** %6, align 8
  %351 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %350, i32 0, i32 3
  %352 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %351, i32 0, i32 5
  store i32 %349, i32* %352, align 8
  %353 = load i32, i32* @WP_MACHINEGUN, align 4
  %354 = shl i32 1, %353
  %355 = load %struct.TYPE_39__*, %struct.TYPE_39__** %6, align 8
  %356 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %355, i32 0, i32 3
  %357 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %356, i32 0, i32 4
  %358 = load i32*, i32** %357, align 8
  %359 = load i64, i64* @STAT_WEAPONS, align 8
  %360 = getelementptr inbounds i32, i32* %358, i64 %359
  store i32 %354, i32* %360, align 4
  %361 = load i64, i64* getelementptr inbounds (%struct.TYPE_31__, %struct.TYPE_31__* @g_unlimitedAmmo, i32 0, i32 0), align 8
  %362 = icmp ne i64 %361, 0
  br i1 %362, label %363, label %371

363:                                              ; preds = %288
  %364 = load %struct.TYPE_39__*, %struct.TYPE_39__** %6, align 8
  %365 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %364, i32 0, i32 3
  %366 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %365, i32 0, i32 6
  %367 = load i32*, i32** %366, align 8
  %368 = load i32, i32* @WP_MACHINEGUN, align 4
  %369 = sext i32 %368 to i64
  %370 = getelementptr inbounds i32, i32* %367, i64 %369
  store i32 -1, i32* %370, align 4
  br label %392

371:                                              ; preds = %288
  %372 = load i64, i64* getelementptr inbounds (%struct.TYPE_33__, %struct.TYPE_33__* @g_gametype, i32 0, i32 0), align 8
  %373 = load i64, i64* @GT_TEAM, align 8
  %374 = icmp eq i64 %372, %373
  br i1 %374, label %375, label %383

375:                                              ; preds = %371
  %376 = load %struct.TYPE_39__*, %struct.TYPE_39__** %6, align 8
  %377 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %376, i32 0, i32 3
  %378 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %377, i32 0, i32 6
  %379 = load i32*, i32** %378, align 8
  %380 = load i32, i32* @WP_MACHINEGUN, align 4
  %381 = sext i32 %380 to i64
  %382 = getelementptr inbounds i32, i32* %379, i64 %381
  store i32 50, i32* %382, align 4
  br label %391

383:                                              ; preds = %371
  %384 = load %struct.TYPE_39__*, %struct.TYPE_39__** %6, align 8
  %385 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %384, i32 0, i32 3
  %386 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %385, i32 0, i32 6
  %387 = load i32*, i32** %386, align 8
  %388 = load i32, i32* @WP_MACHINEGUN, align 4
  %389 = sext i32 %388 to i64
  %390 = getelementptr inbounds i32, i32* %387, i64 %389
  store i32 100, i32* %390, align 4
  br label %391

391:                                              ; preds = %383, %375
  br label %392

392:                                              ; preds = %391, %363
  %393 = load i32, i32* @WP_GAUNTLET, align 4
  %394 = shl i32 1, %393
  %395 = load %struct.TYPE_39__*, %struct.TYPE_39__** %6, align 8
  %396 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %395, i32 0, i32 3
  %397 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %396, i32 0, i32 4
  %398 = load i32*, i32** %397, align 8
  %399 = load i64, i64* @STAT_WEAPONS, align 8
  %400 = getelementptr inbounds i32, i32* %398, i64 %399
  %401 = load i32, i32* %400, align 4
  %402 = or i32 %401, %394
  store i32 %402, i32* %400, align 4
  %403 = load %struct.TYPE_39__*, %struct.TYPE_39__** %6, align 8
  %404 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %403, i32 0, i32 3
  %405 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %404, i32 0, i32 6
  %406 = load i32*, i32** %405, align 8
  %407 = load i32, i32* @WP_GAUNTLET, align 4
  %408 = sext i32 %407 to i64
  %409 = getelementptr inbounds i32, i32* %406, i64 %408
  store i32 -1, i32* %409, align 4
  %410 = load %struct.TYPE_39__*, %struct.TYPE_39__** %6, align 8
  %411 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %410, i32 0, i32 3
  %412 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %411, i32 0, i32 6
  %413 = load i32*, i32** %412, align 8
  %414 = load i64, i64* @WP_GRAPPLING_HOOK, align 8
  %415 = getelementptr inbounds i32, i32* %413, i64 %414
  store i32 -1, i32* %415, align 4
  %416 = load %struct.TYPE_39__*, %struct.TYPE_39__** %6, align 8
  %417 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %416, i32 0, i32 3
  %418 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %417, i32 0, i32 4
  %419 = load i32*, i32** %418, align 8
  %420 = load i64, i64* @STAT_MAX_HEALTH, align 8
  %421 = getelementptr inbounds i32, i32* %419, i64 %420
  %422 = load i32, i32* %421, align 4
  %423 = add nsw i32 %422, 25
  %424 = load %struct.TYPE_39__*, %struct.TYPE_39__** %6, align 8
  %425 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %424, i32 0, i32 3
  %426 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %425, i32 0, i32 4
  %427 = load i32*, i32** %426, align 8
  %428 = load i64, i64* @STAT_HEALTH, align 8
  %429 = getelementptr inbounds i32, i32* %427, i64 %428
  store i32 %423, i32* %429, align 4
  %430 = load %struct.TYPE_38__*, %struct.TYPE_38__** %2, align 8
  %431 = load i32, i32* %4, align 4
  %432 = call i32 @G_SetOrigin(%struct.TYPE_38__* %430, i32 %431)
  %433 = load i32, i32* %4, align 4
  %434 = load %struct.TYPE_39__*, %struct.TYPE_39__** %6, align 8
  %435 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %434, i32 0, i32 3
  %436 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %435, i32 0, i32 10
  %437 = load i32, i32* %436, align 8
  %438 = call i32 @VectorCopy(i32 %433, i32 %437)
  %439 = load %struct.TYPE_39__*, %struct.TYPE_39__** %6, align 8
  %440 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %439, i32 0, i32 3
  %441 = load %struct.TYPE_38__*, %struct.TYPE_38__** %2, align 8
  %442 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %441, i32 0, i32 4
  %443 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %442, i32 0, i32 0
  %444 = load i32, i32* %443, align 8
  %445 = load i32, i32* @SVF_BOT, align 4
  %446 = and i32 %444, %445
  %447 = icmp ne i32 %446, 0
  %448 = xor i1 %447, true
  %449 = xor i1 %448, true
  %450 = zext i1 %449 to i32
  %451 = call i32 @dmlab_spawn_inventory(%struct.TYPE_34__* %440, i32 %450)
  %452 = load %struct.TYPE_39__*, %struct.TYPE_39__** %6, align 8
  %453 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %452, i32 0, i32 3
  %454 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %453, i32 0, i32 4
  %455 = load i32*, i32** %454, align 8
  %456 = load i64, i64* @STAT_HEALTH, align 8
  %457 = getelementptr inbounds i32, i32* %455, i64 %456
  %458 = load i32, i32* %457, align 4
  %459 = load %struct.TYPE_38__*, %struct.TYPE_38__** %2, align 8
  %460 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %459, i32 0, i32 1
  store i32 %458, i32* %460, align 8
  %461 = load i32, i32* @PMF_RESPAWNED, align 4
  %462 = load %struct.TYPE_39__*, %struct.TYPE_39__** %6, align 8
  %463 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %462, i32 0, i32 3
  %464 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %463, i32 0, i32 14
  %465 = load i32, i32* %464, align 8
  %466 = or i32 %465, %461
  store i32 %466, i32* %464, align 8
  %467 = load %struct.TYPE_39__*, %struct.TYPE_39__** %6, align 8
  %468 = load %struct.TYPE_39__*, %struct.TYPE_39__** getelementptr inbounds (%struct.TYPE_43__, %struct.TYPE_43__* @level, i32 0, i32 2), align 8
  %469 = ptrtoint %struct.TYPE_39__* %467 to i64
  %470 = ptrtoint %struct.TYPE_39__* %468 to i64
  %471 = sub i64 %469, %470
  %472 = sdiv exact i64 %471, 192
  %473 = trunc i64 %472 to i32
  %474 = load %struct.TYPE_38__*, %struct.TYPE_38__** %2, align 8
  %475 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %474, i32 0, i32 3
  %476 = load %struct.TYPE_39__*, %struct.TYPE_39__** %475, align 8
  %477 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %476, i32 0, i32 5
  %478 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %477, i32 0, i32 1
  %479 = call i32 @trap_GetUsercmd(i32 %473, %struct.TYPE_42__* %478)
  %480 = load %struct.TYPE_38__*, %struct.TYPE_38__** %2, align 8
  %481 = load i32, i32* %5, align 4
  %482 = call i32 @SetClientViewAngle(%struct.TYPE_38__* %480, i32 %481)
  %483 = load i32, i32* @PMF_TIME_KNOCKBACK, align 4
  %484 = load %struct.TYPE_39__*, %struct.TYPE_39__** %6, align 8
  %485 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %484, i32 0, i32 3
  %486 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %485, i32 0, i32 14
  %487 = load i32, i32* %486, align 8
  %488 = or i32 %487, %483
  store i32 %488, i32* %486, align 8
  %489 = load %struct.TYPE_39__*, %struct.TYPE_39__** %6, align 8
  %490 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %489, i32 0, i32 3
  %491 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %490, i32 0, i32 7
  store i32 100, i32* %491, align 8
  %492 = load i64, i64* getelementptr inbounds (%struct.TYPE_43__, %struct.TYPE_43__* @level, i32 0, i32 0), align 8
  %493 = load %struct.TYPE_39__*, %struct.TYPE_39__** %6, align 8
  %494 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %493, i32 0, i32 8
  store i64 %492, i64* %494, align 8
  %495 = load i64, i64* getelementptr inbounds (%struct.TYPE_43__, %struct.TYPE_43__* @level, i32 0, i32 0), align 8
  %496 = load i32, i32* getelementptr inbounds (%struct.TYPE_32__, %struct.TYPE_32__* @g_inactivity, i32 0, i32 0), align 4
  %497 = mul nsw i32 %496, 1000
  %498 = sext i32 %497 to i64
  %499 = add nsw i64 %495, %498
  %500 = load %struct.TYPE_39__*, %struct.TYPE_39__** %6, align 8
  %501 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %500, i32 0, i32 7
  store i64 %499, i64* %501, align 8
  %502 = load %struct.TYPE_39__*, %struct.TYPE_39__** %6, align 8
  %503 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %502, i32 0, i32 6
  store i64 0, i64* %503, align 8
  %504 = load i32, i32* @TORSO_STAND, align 4
  %505 = load %struct.TYPE_39__*, %struct.TYPE_39__** %6, align 8
  %506 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %505, i32 0, i32 3
  %507 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %506, i32 0, i32 13
  store i32 %504, i32* %507, align 4
  %508 = load i32, i32* @LEGS_IDLE, align 4
  %509 = load %struct.TYPE_39__*, %struct.TYPE_39__** %6, align 8
  %510 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %509, i32 0, i32 3
  %511 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %510, i32 0, i32 12
  store i32 %508, i32* %511, align 8
  %512 = load i32, i32* getelementptr inbounds (%struct.TYPE_43__, %struct.TYPE_43__* @level, i32 0, i32 1), align 8
  %513 = icmp ne i32 %512, 0
  br i1 %513, label %596, label %514

514:                                              ; preds = %392
  %515 = load %struct.TYPE_38__*, %struct.TYPE_38__** %2, align 8
  %516 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %515, i32 0, i32 3
  %517 = load %struct.TYPE_39__*, %struct.TYPE_39__** %516, align 8
  %518 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %517, i32 0, i32 4
  %519 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %518, i32 0, i32 0
  %520 = load i64, i64* %519, align 8
  %521 = load i64, i64* @TEAM_SPECTATOR, align 8
  %522 = icmp ne i64 %520, %521
  br i1 %522, label %523, label %595

523:                                              ; preds = %514
  %524 = load %struct.TYPE_38__*, %struct.TYPE_38__** %2, align 8
  %525 = call i32 @G_KillBox(%struct.TYPE_38__* %524)
  %526 = load i32, i32* @WP_MACHINEGUN, align 4
  %527 = load %struct.TYPE_39__*, %struct.TYPE_39__** %6, align 8
  %528 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %527, i32 0, i32 3
  %529 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %528, i32 0, i32 8
  store i32 %526, i32* %529, align 4
  %530 = load i32, i32* @WEAPON_READY, align 4
  %531 = load %struct.TYPE_39__*, %struct.TYPE_39__** %6, align 8
  %532 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %531, i32 0, i32 3
  %533 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %532, i32 0, i32 11
  store i32 %530, i32* %533, align 4
  %534 = load %struct.TYPE_38__*, %struct.TYPE_38__** %12, align 8
  %535 = load %struct.TYPE_38__*, %struct.TYPE_38__** %2, align 8
  %536 = call i32 @G_UseTargets(%struct.TYPE_38__* %534, %struct.TYPE_38__* %535)
  %537 = load %struct.TYPE_39__*, %struct.TYPE_39__** %6, align 8
  %538 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %537, i32 0, i32 3
  %539 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %538, i32 0, i32 8
  store i32 1, i32* %539, align 4
  %540 = load i32, i32* @WP_NUM_WEAPONS, align 4
  %541 = sub nsw i32 %540, 1
  store i32 %541, i32* %7, align 4
  br label %542

542:                                              ; preds = %563, %523
  %543 = load i32, i32* %7, align 4
  %544 = icmp sgt i32 %543, 0
  br i1 %544, label %545, label %566

545:                                              ; preds = %542
  %546 = load %struct.TYPE_39__*, %struct.TYPE_39__** %6, align 8
  %547 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %546, i32 0, i32 3
  %548 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %547, i32 0, i32 4
  %549 = load i32*, i32** %548, align 8
  %550 = load i64, i64* @STAT_WEAPONS, align 8
  %551 = getelementptr inbounds i32, i32* %549, i64 %550
  %552 = load i32, i32* %551, align 4
  %553 = load i32, i32* %7, align 4
  %554 = shl i32 1, %553
  %555 = and i32 %552, %554
  %556 = icmp ne i32 %555, 0
  br i1 %556, label %557, label %562

557:                                              ; preds = %545
  %558 = load i32, i32* %7, align 4
  %559 = load %struct.TYPE_39__*, %struct.TYPE_39__** %6, align 8
  %560 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %559, i32 0, i32 3
  %561 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %560, i32 0, i32 8
  store i32 %558, i32* %561, align 4
  br label %566

562:                                              ; preds = %545
  br label %563

563:                                              ; preds = %562
  %564 = load i32, i32* %7, align 4
  %565 = add nsw i32 %564, -1
  store i32 %565, i32* %7, align 4
  br label %542

566:                                              ; preds = %557, %542
  %567 = load %struct.TYPE_38__*, %struct.TYPE_38__** %2, align 8
  %568 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %567, i32 0, i32 3
  %569 = load %struct.TYPE_39__*, %struct.TYPE_39__** %568, align 8
  %570 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %569, i32 0, i32 3
  %571 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %570, i32 0, i32 10
  %572 = load i32, i32* %571, align 8
  %573 = load %struct.TYPE_38__*, %struct.TYPE_38__** %2, align 8
  %574 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %573, i32 0, i32 4
  %575 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %574, i32 0, i32 1
  %576 = load i32, i32* %575, align 4
  %577 = call i32 @VectorCopy(i32 %572, i32 %576)
  %578 = load %struct.TYPE_38__*, %struct.TYPE_38__** %2, align 8
  %579 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %578, i32 0, i32 3
  %580 = load %struct.TYPE_39__*, %struct.TYPE_39__** %579, align 8
  %581 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %580, i32 0, i32 3
  %582 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %581, i32 0, i32 10
  %583 = load i32, i32* %582, align 8
  %584 = load i32, i32* @EV_PLAYER_TELEPORT_IN, align 4
  %585 = call %struct.TYPE_38__* @G_TempEntity(i32 %583, i32 %584)
  store %struct.TYPE_38__* %585, %struct.TYPE_38__** %13, align 8
  %586 = load %struct.TYPE_38__*, %struct.TYPE_38__** %2, align 8
  %587 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %586, i32 0, i32 2
  %588 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %587, i32 0, i32 0
  %589 = load i32, i32* %588, align 4
  %590 = load %struct.TYPE_38__*, %struct.TYPE_38__** %13, align 8
  %591 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %590, i32 0, i32 2
  %592 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %591, i32 0, i32 0
  store i32 %589, i32* %592, align 4
  %593 = load %struct.TYPE_38__*, %struct.TYPE_38__** %2, align 8
  %594 = call i32 @trap_LinkEntity(%struct.TYPE_38__* %593)
  br label %595

595:                                              ; preds = %566, %514
  br label %599

596:                                              ; preds = %392
  %597 = load %struct.TYPE_38__*, %struct.TYPE_38__** %2, align 8
  %598 = call i32 @MoveClientToIntermission(%struct.TYPE_38__* %597)
  br label %599

599:                                              ; preds = %596, %595
  %600 = load i64, i64* getelementptr inbounds (%struct.TYPE_43__, %struct.TYPE_43__* @level, i32 0, i32 0), align 8
  %601 = sub nsw i64 %600, 100
  %602 = load %struct.TYPE_39__*, %struct.TYPE_39__** %6, align 8
  %603 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %602, i32 0, i32 3
  %604 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %603, i32 0, i32 9
  store i64 %601, i64* %604, align 8
  %605 = load i64, i64* getelementptr inbounds (%struct.TYPE_43__, %struct.TYPE_43__* @level, i32 0, i32 0), align 8
  %606 = load %struct.TYPE_38__*, %struct.TYPE_38__** %2, align 8
  %607 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %606, i32 0, i32 3
  %608 = load %struct.TYPE_39__*, %struct.TYPE_39__** %607, align 8
  %609 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %608, i32 0, i32 5
  %610 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %609, i32 0, i32 1
  %611 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %610, i32 0, i32 0
  store i64 %605, i64* %611, align 8
  %612 = load %struct.TYPE_38__*, %struct.TYPE_38__** %2, align 8
  %613 = load %struct.TYPE_38__*, %struct.TYPE_38__** @g_entities, align 8
  %614 = ptrtoint %struct.TYPE_38__* %612 to i64
  %615 = ptrtoint %struct.TYPE_38__* %613 to i64
  %616 = sub i64 %614, %615
  %617 = sdiv exact i64 %616, 96
  %618 = trunc i64 %617 to i32
  %619 = call i32 @ClientThink(i32 %618)
  %620 = load %struct.TYPE_38__*, %struct.TYPE_38__** %2, align 8
  %621 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %620, i32 0, i32 3
  %622 = load %struct.TYPE_39__*, %struct.TYPE_39__** %621, align 8
  %623 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %622, i32 0, i32 4
  %624 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %623, i32 0, i32 1
  %625 = load i64, i64* %624, align 8
  %626 = load i64, i64* @SPECTATOR_FOLLOW, align 8
  %627 = icmp ne i64 %625, %626
  br i1 %627, label %628, label %631

628:                                              ; preds = %599
  %629 = load %struct.TYPE_38__*, %struct.TYPE_38__** %2, align 8
  %630 = call i32 @ClientEndFrame(%struct.TYPE_38__* %629)
  br label %631

631:                                              ; preds = %628, %599
  %632 = load %struct.TYPE_39__*, %struct.TYPE_39__** %6, align 8
  %633 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %632, i32 0, i32 3
  %634 = load %struct.TYPE_38__*, %struct.TYPE_38__** %2, align 8
  %635 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %634, i32 0, i32 2
  %636 = load i8*, i8** @qtrue, align 8
  %637 = call i32 @BG_PlayerStateToEntityState(%struct.TYPE_34__* %633, %struct.TYPE_37__* %635, i8* %636)
  %638 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %638)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @VectorClear(i32) #2

declare dso_local %struct.TYPE_38__* @SelectSpectatorSpawnPoint(i32, i32) #2

declare dso_local %struct.TYPE_38__* @SelectCTFSpawnPoint(i64, i32, i32, i32, i32) #2

declare dso_local %struct.TYPE_38__* @SelectInitialSpawnPoint(i32, i32, i32) #2

declare dso_local %struct.TYPE_38__* @SelectSpawnPoint(i32, i32, i32, i32) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

declare dso_local i32 @Com_Memset(%struct.TYPE_39__*, i32, i32) #2

declare dso_local i32 @trap_GetUserinfo(i32, i8*, i32) #2

declare dso_local i32 @atoi(i32) #2

declare dso_local i32 @Info_ValueForKey(i8*, i8*) #2

declare dso_local i32 @VectorCopy(i32, i32) #2

declare dso_local i32 @G_SetOrigin(%struct.TYPE_38__*, i32) #2

declare dso_local i32 @dmlab_spawn_inventory(%struct.TYPE_34__*, i32) #2

declare dso_local i32 @trap_GetUsercmd(i32, %struct.TYPE_42__*) #2

declare dso_local i32 @SetClientViewAngle(%struct.TYPE_38__*, i32) #2

declare dso_local i32 @G_KillBox(%struct.TYPE_38__*) #2

declare dso_local i32 @G_UseTargets(%struct.TYPE_38__*, %struct.TYPE_38__*) #2

declare dso_local %struct.TYPE_38__* @G_TempEntity(i32, i32) #2

declare dso_local i32 @trap_LinkEntity(%struct.TYPE_38__*) #2

declare dso_local i32 @MoveClientToIntermission(%struct.TYPE_38__*) #2

declare dso_local i32 @ClientThink(i32) #2

declare dso_local i32 @ClientEndFrame(%struct.TYPE_38__*) #2

declare dso_local i32 @BG_PlayerStateToEntityState(%struct.TYPE_34__*, %struct.TYPE_37__*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
