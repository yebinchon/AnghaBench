; ModuleID = '/home/carl/AnghaBench/lab/engine/code/game/extr_g_items.c_Touch_Item.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/game/extr_g_items.c_Touch_Item.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_46__ = type { i32 }
%struct.TYPE_45__ = type { i64 }
%struct.TYPE_44__ = type { i32, i32, i32, i32, i64, i64, %struct.TYPE_43__, %struct.TYPE_40__, i8*, i8*, i32, %struct.TYPE_41__*, %struct.TYPE_39__*, i32 }
%struct.TYPE_43__ = type { i64, i32, i32 }
%struct.TYPE_40__ = type { i32, i32, i32, i32, %struct.TYPE_42__ }
%struct.TYPE_42__ = type { i32 }
%struct.TYPE_41__ = type { i32, i32 }
%struct.TYPE_39__ = type { i32, %struct.TYPE_38__ }
%struct.TYPE_38__ = type { i64 }

@g_gametype = common dso_local global %struct.TYPE_46__ zeroinitializer, align 4
@.str = private unnamed_addr constant [13 x i8] c"Item: %i %s\0A\00", align 1
@qfalse = common dso_local global i64 0, align 8
@EV_ITEM_PICKUP = common dso_local global i32 0, align 4
@EV_GLOBAL_ITEM_PICKUP = common dso_local global i32 0, align 4
@SVF_BROADCAST = common dso_local global i32 0, align 4
@SVF_SINGLECLIENT = common dso_local global i32 0, align 4
@SVF_NOCLIENT = common dso_local global i32 0, align 4
@EF_NODRAW = common dso_local global i32 0, align 4
@qtrue = common dso_local global i8* null, align 8
@FL_DROPPED_ITEM = common dso_local global i32 0, align 4
@level = common dso_local global %struct.TYPE_45__ zeroinitializer, align 8
@RespawnItem = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Touch_Item(%struct.TYPE_44__* %0, %struct.TYPE_44__* %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_44__*, align 8
  %5 = alloca %struct.TYPE_44__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_44__*, align 8
  %10 = alloca %struct.TYPE_44__*, align 8
  store %struct.TYPE_44__* %0, %struct.TYPE_44__** %4, align 8
  store %struct.TYPE_44__* %1, %struct.TYPE_44__** %5, align 8
  store i32* %2, i32** %6, align 8
  %11 = load %struct.TYPE_44__*, %struct.TYPE_44__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %11, i32 0, i32 12
  %13 = load %struct.TYPE_39__*, %struct.TYPE_39__** %12, align 8
  %14 = icmp ne %struct.TYPE_39__* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %3
  br label %302

16:                                               ; preds = %3
  %17 = load %struct.TYPE_44__*, %struct.TYPE_44__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp slt i32 %19, 1
  br i1 %20, label %21, label %22

21:                                               ; preds = %16
  br label %302

22:                                               ; preds = %16
  %23 = load i32, i32* getelementptr inbounds (%struct.TYPE_46__, %struct.TYPE_46__* @g_gametype, i32 0, i32 0), align 4
  %24 = load %struct.TYPE_44__*, %struct.TYPE_44__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %24, i32 0, i32 7
  %26 = load %struct.TYPE_44__*, %struct.TYPE_44__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %26, i32 0, i32 12
  %28 = load %struct.TYPE_39__*, %struct.TYPE_39__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %28, i32 0, i32 0
  %30 = call i32 @BG_CanItemBeGrabbed(i32 %23, %struct.TYPE_40__* %25, i32* %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %22
  br label %302

33:                                               ; preds = %22
  %34 = load %struct.TYPE_44__*, %struct.TYPE_44__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %34, i32 0, i32 7
  %36 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.TYPE_44__*, %struct.TYPE_44__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %38, i32 0, i32 11
  %40 = load %struct.TYPE_41__*, %struct.TYPE_41__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @G_LogPrintf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %37, i32 %42)
  %44 = load %struct.TYPE_44__*, %struct.TYPE_44__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %44, i32 0, i32 12
  %46 = load %struct.TYPE_39__*, %struct.TYPE_39__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  store i64 %49, i64* %8, align 8
  store i32 -1, i32* %7, align 4
  %50 = load %struct.TYPE_44__*, %struct.TYPE_44__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %50, i32 0, i32 13
  %52 = load i32, i32* %51, align 8
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %64

54:                                               ; preds = %33
  %55 = load %struct.TYPE_44__*, %struct.TYPE_44__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %55, i32 0, i32 13
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.TYPE_44__*, %struct.TYPE_44__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %58, i32 0, i32 12
  %60 = load %struct.TYPE_39__*, %struct.TYPE_39__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %60, i32 0, i32 0
  %62 = call i32 @dmlab_override_pickup(i32 %57, i32* %7, i32* %61)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %109, label %64

64:                                               ; preds = %54, %33
  %65 = load %struct.TYPE_44__*, %struct.TYPE_44__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %65, i32 0, i32 11
  %67 = load %struct.TYPE_41__*, %struct.TYPE_41__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  switch i32 %69, label %107 [
    i32 128, label %70
    i32 137, label %74
    i32 136, label %78
    i32 134, label %82
    i32 131, label %86
    i32 129, label %91
    i32 133, label %95
    i32 130, label %99
    i32 135, label %103
  ]

70:                                               ; preds = %64
  %71 = load %struct.TYPE_44__*, %struct.TYPE_44__** %4, align 8
  %72 = load %struct.TYPE_44__*, %struct.TYPE_44__** %5, align 8
  %73 = call i32 @Pickup_Weapon(%struct.TYPE_44__* %71, %struct.TYPE_44__* %72)
  store i32 %73, i32* %7, align 4
  br label %108

74:                                               ; preds = %64
  %75 = load %struct.TYPE_44__*, %struct.TYPE_44__** %4, align 8
  %76 = load %struct.TYPE_44__*, %struct.TYPE_44__** %5, align 8
  %77 = call i32 @Pickup_Ammo(%struct.TYPE_44__* %75, %struct.TYPE_44__* %76)
  store i32 %77, i32* %7, align 4
  br label %108

78:                                               ; preds = %64
  %79 = load %struct.TYPE_44__*, %struct.TYPE_44__** %4, align 8
  %80 = load %struct.TYPE_44__*, %struct.TYPE_44__** %5, align 8
  %81 = call i32 @Pickup_Armor(%struct.TYPE_44__* %79, %struct.TYPE_44__* %80)
  store i32 %81, i32* %7, align 4
  br label %108

82:                                               ; preds = %64
  %83 = load %struct.TYPE_44__*, %struct.TYPE_44__** %4, align 8
  %84 = load %struct.TYPE_44__*, %struct.TYPE_44__** %5, align 8
  %85 = call i32 @Pickup_Health(%struct.TYPE_44__* %83, %struct.TYPE_44__* %84)
  store i32 %85, i32* %7, align 4
  br label %108

86:                                               ; preds = %64
  %87 = load %struct.TYPE_44__*, %struct.TYPE_44__** %4, align 8
  %88 = load %struct.TYPE_44__*, %struct.TYPE_44__** %5, align 8
  %89 = call i32 @Pickup_Powerup(%struct.TYPE_44__* %87, %struct.TYPE_44__* %88)
  store i32 %89, i32* %7, align 4
  %90 = load i64, i64* @qfalse, align 8
  store i64 %90, i64* %8, align 8
  br label %108

91:                                               ; preds = %64
  %92 = load %struct.TYPE_44__*, %struct.TYPE_44__** %4, align 8
  %93 = load %struct.TYPE_44__*, %struct.TYPE_44__** %5, align 8
  %94 = call i32 @Pickup_Team(%struct.TYPE_44__* %92, %struct.TYPE_44__* %93)
  store i32 %94, i32* %7, align 4
  br label %108

95:                                               ; preds = %64
  %96 = load %struct.TYPE_44__*, %struct.TYPE_44__** %4, align 8
  %97 = load %struct.TYPE_44__*, %struct.TYPE_44__** %5, align 8
  %98 = call i32 @Pickup_Holdable(%struct.TYPE_44__* %96, %struct.TYPE_44__* %97)
  store i32 %98, i32* %7, align 4
  br label %108

99:                                               ; preds = %64
  %100 = load %struct.TYPE_44__*, %struct.TYPE_44__** %4, align 8
  %101 = load %struct.TYPE_44__*, %struct.TYPE_44__** %5, align 8
  %102 = call i32 @Pickup_Reward(%struct.TYPE_44__* %100, %struct.TYPE_44__* %101)
  store i32 %102, i32* %7, align 4
  br label %108

103:                                              ; preds = %64
  %104 = load %struct.TYPE_44__*, %struct.TYPE_44__** %4, align 8
  %105 = load %struct.TYPE_44__*, %struct.TYPE_44__** %5, align 8
  %106 = call i32 @Pickup_Goal(%struct.TYPE_44__* %104, %struct.TYPE_44__* %105)
  store i32 %106, i32* %7, align 4
  br label %108

107:                                              ; preds = %64
  br label %302

108:                                              ; preds = %103, %99, %95, %91, %86, %82, %78, %74, %70
  br label %109

109:                                              ; preds = %108, %54
  %110 = load i32, i32* %7, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %113, label %112

112:                                              ; preds = %109
  br label %302

113:                                              ; preds = %109
  %114 = load i64, i64* %8, align 8
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %124

116:                                              ; preds = %113
  %117 = load %struct.TYPE_44__*, %struct.TYPE_44__** %5, align 8
  %118 = load i32, i32* @EV_ITEM_PICKUP, align 4
  %119 = load %struct.TYPE_44__*, %struct.TYPE_44__** %4, align 8
  %120 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %119, i32 0, i32 7
  %121 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 8
  %123 = call i32 @G_AddPredictableEvent(%struct.TYPE_44__* %117, i32 %118, i32 %122)
  br label %132

124:                                              ; preds = %113
  %125 = load %struct.TYPE_44__*, %struct.TYPE_44__** %5, align 8
  %126 = load i32, i32* @EV_ITEM_PICKUP, align 4
  %127 = load %struct.TYPE_44__*, %struct.TYPE_44__** %4, align 8
  %128 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %127, i32 0, i32 7
  %129 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 8
  %131 = call i32 @G_AddEvent(%struct.TYPE_44__* %125, i32 %126, i32 %130)
  br label %132

132:                                              ; preds = %124, %116
  %133 = load %struct.TYPE_44__*, %struct.TYPE_44__** %4, align 8
  %134 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %133, i32 0, i32 11
  %135 = load %struct.TYPE_41__*, %struct.TYPE_41__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = icmp eq i32 %137, 131
  br i1 %138, label %146, label %139

139:                                              ; preds = %132
  %140 = load %struct.TYPE_44__*, %struct.TYPE_44__** %4, align 8
  %141 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %140, i32 0, i32 11
  %142 = load %struct.TYPE_41__*, %struct.TYPE_41__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = icmp eq i32 %144, 129
  br i1 %145, label %146, label %201

146:                                              ; preds = %139, %132
  %147 = load %struct.TYPE_44__*, %struct.TYPE_44__** %4, align 8
  %148 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %147, i32 0, i32 10
  %149 = load i32, i32* %148, align 8
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %172, label %151

151:                                              ; preds = %146
  %152 = load %struct.TYPE_44__*, %struct.TYPE_44__** %4, align 8
  %153 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %152, i32 0, i32 7
  %154 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %153, i32 0, i32 4
  %155 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  %157 = load i32, i32* @EV_GLOBAL_ITEM_PICKUP, align 4
  %158 = call %struct.TYPE_44__* @G_TempEntity(i32 %156, i32 %157)
  store %struct.TYPE_44__* %158, %struct.TYPE_44__** %9, align 8
  %159 = load %struct.TYPE_44__*, %struct.TYPE_44__** %4, align 8
  %160 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %159, i32 0, i32 7
  %161 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %160, i32 0, i32 2
  %162 = load i32, i32* %161, align 8
  %163 = load %struct.TYPE_44__*, %struct.TYPE_44__** %9, align 8
  %164 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %163, i32 0, i32 7
  %165 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %164, i32 0, i32 3
  store i32 %162, i32* %165, align 4
  %166 = load i32, i32* @SVF_BROADCAST, align 4
  %167 = load %struct.TYPE_44__*, %struct.TYPE_44__** %9, align 8
  %168 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %167, i32 0, i32 6
  %169 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %168, i32 0, i32 1
  %170 = load i32, i32* %169, align 8
  %171 = or i32 %170, %166
  store i32 %171, i32* %169, align 8
  br label %200

172:                                              ; preds = %146
  %173 = load %struct.TYPE_44__*, %struct.TYPE_44__** %4, align 8
  %174 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %173, i32 0, i32 7
  %175 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %174, i32 0, i32 4
  %176 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 8
  %178 = load i32, i32* @EV_GLOBAL_ITEM_PICKUP, align 4
  %179 = call %struct.TYPE_44__* @G_TempEntity(i32 %177, i32 %178)
  store %struct.TYPE_44__* %179, %struct.TYPE_44__** %10, align 8
  %180 = load %struct.TYPE_44__*, %struct.TYPE_44__** %4, align 8
  %181 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %180, i32 0, i32 7
  %182 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %181, i32 0, i32 2
  %183 = load i32, i32* %182, align 8
  %184 = load %struct.TYPE_44__*, %struct.TYPE_44__** %10, align 8
  %185 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %184, i32 0, i32 7
  %186 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %185, i32 0, i32 3
  store i32 %183, i32* %186, align 4
  %187 = load i32, i32* @SVF_SINGLECLIENT, align 4
  %188 = load %struct.TYPE_44__*, %struct.TYPE_44__** %10, align 8
  %189 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %188, i32 0, i32 6
  %190 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %189, i32 0, i32 1
  %191 = load i32, i32* %190, align 8
  %192 = or i32 %191, %187
  store i32 %192, i32* %190, align 8
  %193 = load %struct.TYPE_44__*, %struct.TYPE_44__** %5, align 8
  %194 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %193, i32 0, i32 7
  %195 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %194, i32 0, i32 1
  %196 = load i32, i32* %195, align 4
  %197 = load %struct.TYPE_44__*, %struct.TYPE_44__** %10, align 8
  %198 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %197, i32 0, i32 6
  %199 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %198, i32 0, i32 2
  store i32 %196, i32* %199, align 4
  br label %200

200:                                              ; preds = %172, %151
  br label %201

201:                                              ; preds = %200, %139
  %202 = load %struct.TYPE_44__*, %struct.TYPE_44__** %4, align 8
  %203 = load %struct.TYPE_44__*, %struct.TYPE_44__** %5, align 8
  %204 = call i32 @G_UseTargets(%struct.TYPE_44__* %202, %struct.TYPE_44__* %203)
  %205 = load %struct.TYPE_44__*, %struct.TYPE_44__** %4, align 8
  %206 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %205, i32 0, i32 1
  %207 = load i32, i32* %206, align 4
  %208 = icmp eq i32 %207, -1
  br i1 %208, label %209, label %228

209:                                              ; preds = %201
  %210 = load i32, i32* @SVF_NOCLIENT, align 4
  %211 = load %struct.TYPE_44__*, %struct.TYPE_44__** %4, align 8
  %212 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %211, i32 0, i32 6
  %213 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %212, i32 0, i32 1
  %214 = load i32, i32* %213, align 8
  %215 = or i32 %214, %210
  store i32 %215, i32* %213, align 8
  %216 = load i32, i32* @EF_NODRAW, align 4
  %217 = load %struct.TYPE_44__*, %struct.TYPE_44__** %4, align 8
  %218 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %217, i32 0, i32 7
  %219 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %218, i32 0, i32 0
  %220 = load i32, i32* %219, align 8
  %221 = or i32 %220, %216
  store i32 %221, i32* %219, align 8
  %222 = load %struct.TYPE_44__*, %struct.TYPE_44__** %4, align 8
  %223 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %222, i32 0, i32 6
  %224 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %223, i32 0, i32 0
  store i64 0, i64* %224, align 8
  %225 = load i8*, i8** @qtrue, align 8
  %226 = load %struct.TYPE_44__*, %struct.TYPE_44__** %4, align 8
  %227 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %226, i32 0, i32 9
  store i8* %225, i8** %227, align 8
  br label %302

228:                                              ; preds = %201
  %229 = load %struct.TYPE_44__*, %struct.TYPE_44__** %4, align 8
  %230 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %229, i32 0, i32 1
  %231 = load i32, i32* %230, align 4
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %233, label %237

233:                                              ; preds = %228
  %234 = load %struct.TYPE_44__*, %struct.TYPE_44__** %4, align 8
  %235 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %234, i32 0, i32 1
  %236 = load i32, i32* %235, align 4
  store i32 %236, i32* %7, align 4
  br label %237

237:                                              ; preds = %233, %228
  %238 = load %struct.TYPE_44__*, %struct.TYPE_44__** %4, align 8
  %239 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %238, i32 0, i32 2
  %240 = load i32, i32* %239, align 8
  %241 = icmp ne i32 %240, 0
  br i1 %241, label %242, label %254

242:                                              ; preds = %237
  %243 = call i32 (...) @crandom()
  %244 = load %struct.TYPE_44__*, %struct.TYPE_44__** %4, align 8
  %245 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %244, i32 0, i32 2
  %246 = load i32, i32* %245, align 8
  %247 = mul nsw i32 %243, %246
  %248 = load i32, i32* %7, align 4
  %249 = add nsw i32 %248, %247
  store i32 %249, i32* %7, align 4
  %250 = load i32, i32* %7, align 4
  %251 = icmp slt i32 %250, 1
  br i1 %251, label %252, label %253

252:                                              ; preds = %242
  store i32 1, i32* %7, align 4
  br label %253

253:                                              ; preds = %252, %242
  br label %254

254:                                              ; preds = %253, %237
  %255 = load %struct.TYPE_44__*, %struct.TYPE_44__** %4, align 8
  %256 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %255, i32 0, i32 3
  %257 = load i32, i32* %256, align 4
  %258 = load i32, i32* @FL_DROPPED_ITEM, align 4
  %259 = and i32 %257, %258
  %260 = icmp ne i32 %259, 0
  br i1 %260, label %261, label %265

261:                                              ; preds = %254
  %262 = load i8*, i8** @qtrue, align 8
  %263 = load %struct.TYPE_44__*, %struct.TYPE_44__** %4, align 8
  %264 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %263, i32 0, i32 8
  store i8* %262, i8** %264, align 8
  br label %265

265:                                              ; preds = %261, %254
  %266 = load i32, i32* @SVF_NOCLIENT, align 4
  %267 = load %struct.TYPE_44__*, %struct.TYPE_44__** %4, align 8
  %268 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %267, i32 0, i32 6
  %269 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %268, i32 0, i32 1
  %270 = load i32, i32* %269, align 8
  %271 = or i32 %270, %266
  store i32 %271, i32* %269, align 8
  %272 = load i32, i32* @EF_NODRAW, align 4
  %273 = load %struct.TYPE_44__*, %struct.TYPE_44__** %4, align 8
  %274 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %273, i32 0, i32 7
  %275 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %274, i32 0, i32 0
  %276 = load i32, i32* %275, align 8
  %277 = or i32 %276, %272
  store i32 %277, i32* %275, align 8
  %278 = load %struct.TYPE_44__*, %struct.TYPE_44__** %4, align 8
  %279 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %278, i32 0, i32 6
  %280 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %279, i32 0, i32 0
  store i64 0, i64* %280, align 8
  %281 = load i32, i32* %7, align 4
  %282 = icmp sle i32 %281, 0
  br i1 %282, label %283, label %288

283:                                              ; preds = %265
  %284 = load %struct.TYPE_44__*, %struct.TYPE_44__** %4, align 8
  %285 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %284, i32 0, i32 5
  store i64 0, i64* %285, align 8
  %286 = load %struct.TYPE_44__*, %struct.TYPE_44__** %4, align 8
  %287 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %286, i32 0, i32 4
  store i64 0, i64* %287, align 8
  br label %299

288:                                              ; preds = %265
  %289 = load i64, i64* getelementptr inbounds (%struct.TYPE_45__, %struct.TYPE_45__* @level, i32 0, i32 0), align 8
  %290 = load i32, i32* %7, align 4
  %291 = mul nsw i32 %290, 1000
  %292 = sext i32 %291 to i64
  %293 = add nsw i64 %289, %292
  %294 = load %struct.TYPE_44__*, %struct.TYPE_44__** %4, align 8
  %295 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %294, i32 0, i32 5
  store i64 %293, i64* %295, align 8
  %296 = load i64, i64* @RespawnItem, align 8
  %297 = load %struct.TYPE_44__*, %struct.TYPE_44__** %4, align 8
  %298 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %297, i32 0, i32 4
  store i64 %296, i64* %298, align 8
  br label %299

299:                                              ; preds = %288, %283
  %300 = load %struct.TYPE_44__*, %struct.TYPE_44__** %4, align 8
  %301 = call i32 @trap_LinkEntity(%struct.TYPE_44__* %300)
  br label %302

302:                                              ; preds = %299, %209, %112, %107, %32, %21, %15
  ret void
}

declare dso_local i32 @BG_CanItemBeGrabbed(i32, %struct.TYPE_40__*, i32*) #1

declare dso_local i32 @G_LogPrintf(i8*, i32, i32) #1

declare dso_local i32 @dmlab_override_pickup(i32, i32*, i32*) #1

declare dso_local i32 @Pickup_Weapon(%struct.TYPE_44__*, %struct.TYPE_44__*) #1

declare dso_local i32 @Pickup_Ammo(%struct.TYPE_44__*, %struct.TYPE_44__*) #1

declare dso_local i32 @Pickup_Armor(%struct.TYPE_44__*, %struct.TYPE_44__*) #1

declare dso_local i32 @Pickup_Health(%struct.TYPE_44__*, %struct.TYPE_44__*) #1

declare dso_local i32 @Pickup_Powerup(%struct.TYPE_44__*, %struct.TYPE_44__*) #1

declare dso_local i32 @Pickup_Team(%struct.TYPE_44__*, %struct.TYPE_44__*) #1

declare dso_local i32 @Pickup_Holdable(%struct.TYPE_44__*, %struct.TYPE_44__*) #1

declare dso_local i32 @Pickup_Reward(%struct.TYPE_44__*, %struct.TYPE_44__*) #1

declare dso_local i32 @Pickup_Goal(%struct.TYPE_44__*, %struct.TYPE_44__*) #1

declare dso_local i32 @G_AddPredictableEvent(%struct.TYPE_44__*, i32, i32) #1

declare dso_local i32 @G_AddEvent(%struct.TYPE_44__*, i32, i32) #1

declare dso_local %struct.TYPE_44__* @G_TempEntity(i32, i32) #1

declare dso_local i32 @G_UseTargets(%struct.TYPE_44__*, %struct.TYPE_44__*) #1

declare dso_local i32 @crandom(...) #1

declare dso_local i32 @trap_LinkEntity(%struct.TYPE_44__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
