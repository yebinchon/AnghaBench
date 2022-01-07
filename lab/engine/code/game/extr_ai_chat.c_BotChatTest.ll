; ModuleID = '/home/carl/AnghaBench/lab/engine/code/game/extr_ai_chat.c_BotChatTest.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/game/extr_ai_chat.c_BotChatTest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { i64, i64, i64, i32, i32 }

@.str = private unnamed_addr constant [11 x i8] c"game_enter\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"[invalid var]\00", align 1
@CHAT_ALL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [10 x i8] c"game_exit\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"level_start\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"level_end_victory\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"level_end_lose\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"level_end\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"death_drown\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"death_slime\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"death_lava\00", align 1
@.str.10 = private unnamed_addr constant [15 x i8] c"death_cratered\00", align 1
@.str.11 = private unnamed_addr constant [14 x i8] c"death_suicide\00", align 1
@.str.12 = private unnamed_addr constant [15 x i8] c"death_telefrag\00", align 1
@.str.13 = private unnamed_addr constant [15 x i8] c"death_gauntlet\00", align 1
@.str.14 = private unnamed_addr constant [11 x i8] c"death_rail\00", align 1
@.str.15 = private unnamed_addr constant [10 x i8] c"death_bfg\00", align 1
@.str.16 = private unnamed_addr constant [13 x i8] c"death_insult\00", align 1
@.str.17 = private unnamed_addr constant [13 x i8] c"death_praise\00", align 1
@.str.18 = private unnamed_addr constant [14 x i8] c"kill_gauntlet\00", align 1
@.str.19 = private unnamed_addr constant [10 x i8] c"kill_rail\00", align 1
@.str.20 = private unnamed_addr constant [14 x i8] c"kill_telefrag\00", align 1
@.str.21 = private unnamed_addr constant [12 x i8] c"kill_insult\00", align 1
@.str.22 = private unnamed_addr constant [12 x i8] c"kill_praise\00", align 1
@.str.23 = private unnamed_addr constant [14 x i8] c"enemy_suicide\00", align 1
@g_entities = common dso_local global %struct.TYPE_9__* null, align 8
@.str.24 = private unnamed_addr constant [12 x i8] c"hit_talking\00", align 1
@.str.25 = private unnamed_addr constant [12 x i8] c"hit_nodeath\00", align 1
@.str.26 = private unnamed_addr constant [11 x i8] c"hit_nokill\00", align 1
@.str.27 = private unnamed_addr constant [12 x i8] c"random_misc\00", align 1
@.str.28 = private unnamed_addr constant [14 x i8] c"random_insult\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @BotChatTest(%struct.TYPE_8__* %0) #0 {
  %2 = alloca %struct.TYPE_8__*, align 8
  %3 = alloca [32 x i8], align 16
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %2, align 8
  %7 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 3
  %9 = load i32, i32* %8, align 8
  %10 = call i32 @trap_BotNumInitialChats(i32 %9, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  store i32 %10, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %11

11:                                               ; preds = %35, %1
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* %5, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %38

15:                                               ; preds = %11
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = getelementptr inbounds [32 x i8], [32 x i8]* %3, i64 0, i64 0
  %21 = call i32 @EasyClientName(i64 %19, i8* %20, i32 32)
  %22 = sext i32 %21 to i64
  %23 = inttoptr i64 %22 to i8*
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %25 = call i32 @BotRandomOpponentName(%struct.TYPE_8__* %24)
  %26 = sext i32 %25 to i64
  %27 = inttoptr i64 %26 to i8*
  %28 = call i32 (...) @BotMapTitle()
  %29 = call i32 (%struct.TYPE_8__*, i8*, i8*, i8*, ...) @BotAI_BotInitialChat(%struct.TYPE_8__* %16, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* %23, i8* %27, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 %28, i8* null)
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @CHAT_ALL, align 4
  %34 = call i32 @trap_BotEnterChat(i32 %32, i32 0, i32 %33)
  br label %35

35:                                               ; preds = %15
  %36 = load i32, i32* %6, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %6, align 4
  br label %11

38:                                               ; preds = %11
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @trap_BotNumInitialChats(i32 %41, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  store i32 %42, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %43

43:                                               ; preds = %67, %38
  %44 = load i32, i32* %6, align 4
  %45 = load i32, i32* %5, align 4
  %46 = icmp slt i32 %44, %45
  br i1 %46, label %47, label %70

47:                                               ; preds = %43
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = getelementptr inbounds [32 x i8], [32 x i8]* %3, i64 0, i64 0
  %53 = call i32 @EasyClientName(i64 %51, i8* %52, i32 32)
  %54 = sext i32 %53 to i64
  %55 = inttoptr i64 %54 to i8*
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %57 = call i32 @BotRandomOpponentName(%struct.TYPE_8__* %56)
  %58 = sext i32 %57 to i64
  %59 = inttoptr i64 %58 to i8*
  %60 = call i32 (...) @BotMapTitle()
  %61 = call i32 (%struct.TYPE_8__*, i8*, i8*, i8*, ...) @BotAI_BotInitialChat(%struct.TYPE_8__* %48, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8* %55, i8* %59, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 %60, i8* null)
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* @CHAT_ALL, align 4
  %66 = call i32 @trap_BotEnterChat(i32 %64, i32 0, i32 %65)
  br label %67

67:                                               ; preds = %47
  %68 = load i32, i32* %6, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %6, align 4
  br label %43

70:                                               ; preds = %43
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 3
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @trap_BotNumInitialChats(i32 %73, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  store i32 %74, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %75

75:                                               ; preds = %94, %70
  %76 = load i32, i32* %6, align 4
  %77 = load i32, i32* %5, align 4
  %78 = icmp slt i32 %76, %77
  br i1 %78, label %79, label %97

79:                                               ; preds = %75
  %80 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %81 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = getelementptr inbounds [32 x i8], [32 x i8]* %3, i64 0, i64 0
  %85 = call i32 @EasyClientName(i64 %83, i8* %84, i32 32)
  %86 = sext i32 %85 to i64
  %87 = inttoptr i64 %86 to i8*
  %88 = call i32 (%struct.TYPE_8__*, i8*, i8*, i8*, ...) @BotAI_BotInitialChat(%struct.TYPE_8__* %80, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i8* %87, i8* null)
  %89 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 3
  %91 = load i32, i32* %90, align 8
  %92 = load i32, i32* @CHAT_ALL, align 4
  %93 = call i32 @trap_BotEnterChat(i32 %91, i32 0, i32 %92)
  br label %94

94:                                               ; preds = %79
  %95 = load i32, i32* %6, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %6, align 4
  br label %75

97:                                               ; preds = %75
  %98 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %98, i32 0, i32 3
  %100 = load i32, i32* %99, align 8
  %101 = call i32 @trap_BotNumInitialChats(i32 %100, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0))
  store i32 %101, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %102

102:                                              ; preds = %128, %97
  %103 = load i32, i32* %6, align 4
  %104 = load i32, i32* %5, align 4
  %105 = icmp slt i32 %103, %104
  br i1 %105, label %106, label %131

106:                                              ; preds = %102
  %107 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %108 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %109 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = getelementptr inbounds [32 x i8], [32 x i8]* %3, i64 0, i64 0
  %112 = call i32 @EasyClientName(i64 %110, i8* %111, i32 32)
  %113 = sext i32 %112 to i64
  %114 = inttoptr i64 %113 to i8*
  %115 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %116 = call i32 @BotRandomOpponentName(%struct.TYPE_8__* %115)
  %117 = sext i32 %116 to i64
  %118 = inttoptr i64 %117 to i8*
  %119 = call i32 (...) @BotFirstClientInRankings()
  %120 = call i32 (...) @BotLastClientInRankings()
  %121 = call i32 (...) @BotMapTitle()
  %122 = call i32 (%struct.TYPE_8__*, i8*, i8*, i8*, ...) @BotAI_BotInitialChat(%struct.TYPE_8__* %107, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i8* %114, i8* %118, i32 %119, i32 %120, i32 %121, i8* null)
  %123 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %124 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %123, i32 0, i32 3
  %125 = load i32, i32* %124, align 8
  %126 = load i32, i32* @CHAT_ALL, align 4
  %127 = call i32 @trap_BotEnterChat(i32 %125, i32 0, i32 %126)
  br label %128

128:                                              ; preds = %106
  %129 = load i32, i32* %6, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %6, align 4
  br label %102

131:                                              ; preds = %102
  %132 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %133 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %132, i32 0, i32 3
  %134 = load i32, i32* %133, align 8
  %135 = call i32 @trap_BotNumInitialChats(i32 %134, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0))
  store i32 %135, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %136

136:                                              ; preds = %162, %131
  %137 = load i32, i32* %6, align 4
  %138 = load i32, i32* %5, align 4
  %139 = icmp slt i32 %137, %138
  br i1 %139, label %140, label %165

140:                                              ; preds = %136
  %141 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %142 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %143 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %142, i32 0, i32 0
  %144 = load i64, i64* %143, align 8
  %145 = getelementptr inbounds [32 x i8], [32 x i8]* %3, i64 0, i64 0
  %146 = call i32 @EasyClientName(i64 %144, i8* %145, i32 32)
  %147 = sext i32 %146 to i64
  %148 = inttoptr i64 %147 to i8*
  %149 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %150 = call i32 @BotRandomOpponentName(%struct.TYPE_8__* %149)
  %151 = sext i32 %150 to i64
  %152 = inttoptr i64 %151 to i8*
  %153 = call i32 (...) @BotFirstClientInRankings()
  %154 = call i32 (...) @BotLastClientInRankings()
  %155 = call i32 (...) @BotMapTitle()
  %156 = call i32 (%struct.TYPE_8__*, i8*, i8*, i8*, ...) @BotAI_BotInitialChat(%struct.TYPE_8__* %141, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0), i8* %148, i8* %152, i32 %153, i32 %154, i32 %155, i8* null)
  %157 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %158 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %157, i32 0, i32 3
  %159 = load i32, i32* %158, align 8
  %160 = load i32, i32* @CHAT_ALL, align 4
  %161 = call i32 @trap_BotEnterChat(i32 %159, i32 0, i32 %160)
  br label %162

162:                                              ; preds = %140
  %163 = load i32, i32* %6, align 4
  %164 = add nsw i32 %163, 1
  store i32 %164, i32* %6, align 4
  br label %136

165:                                              ; preds = %136
  %166 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %167 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %166, i32 0, i32 3
  %168 = load i32, i32* %167, align 8
  %169 = call i32 @trap_BotNumInitialChats(i32 %168, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0))
  store i32 %169, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %170

170:                                              ; preds = %196, %165
  %171 = load i32, i32* %6, align 4
  %172 = load i32, i32* %5, align 4
  %173 = icmp slt i32 %171, %172
  br i1 %173, label %174, label %199

174:                                              ; preds = %170
  %175 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %176 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %177 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %176, i32 0, i32 0
  %178 = load i64, i64* %177, align 8
  %179 = getelementptr inbounds [32 x i8], [32 x i8]* %3, i64 0, i64 0
  %180 = call i32 @EasyClientName(i64 %178, i8* %179, i32 32)
  %181 = sext i32 %180 to i64
  %182 = inttoptr i64 %181 to i8*
  %183 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %184 = call i32 @BotRandomOpponentName(%struct.TYPE_8__* %183)
  %185 = sext i32 %184 to i64
  %186 = inttoptr i64 %185 to i8*
  %187 = call i32 (...) @BotFirstClientInRankings()
  %188 = call i32 (...) @BotLastClientInRankings()
  %189 = call i32 (...) @BotMapTitle()
  %190 = call i32 (%struct.TYPE_8__*, i8*, i8*, i8*, ...) @BotAI_BotInitialChat(%struct.TYPE_8__* %175, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0), i8* %182, i8* %186, i32 %187, i32 %188, i32 %189, i8* null)
  %191 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %192 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %191, i32 0, i32 3
  %193 = load i32, i32* %192, align 8
  %194 = load i32, i32* @CHAT_ALL, align 4
  %195 = call i32 @trap_BotEnterChat(i32 %193, i32 0, i32 %194)
  br label %196

196:                                              ; preds = %174
  %197 = load i32, i32* %6, align 4
  %198 = add nsw i32 %197, 1
  store i32 %198, i32* %6, align 4
  br label %170

199:                                              ; preds = %170
  %200 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %201 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %200, i32 0, i32 1
  %202 = load i64, i64* %201, align 8
  %203 = getelementptr inbounds [32 x i8], [32 x i8]* %3, i64 0, i64 0
  %204 = call i32 @EasyClientName(i64 %202, i8* %203, i32 32)
  %205 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %206 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %205, i32 0, i32 3
  %207 = load i32, i32* %206, align 8
  %208 = call i32 @trap_BotNumInitialChats(i32 %207, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0))
  store i32 %208, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %209

209:                                              ; preds = %222, %199
  %210 = load i32, i32* %6, align 4
  %211 = load i32, i32* %5, align 4
  %212 = icmp slt i32 %210, %211
  br i1 %212, label %213, label %225

213:                                              ; preds = %209
  %214 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %215 = getelementptr inbounds [32 x i8], [32 x i8]* %3, i64 0, i64 0
  %216 = call i32 (%struct.TYPE_8__*, i8*, i8*, i8*, ...) @BotAI_BotInitialChat(%struct.TYPE_8__* %214, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0), i8* %215, i8* null)
  %217 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %218 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %217, i32 0, i32 3
  %219 = load i32, i32* %218, align 8
  %220 = load i32, i32* @CHAT_ALL, align 4
  %221 = call i32 @trap_BotEnterChat(i32 %219, i32 0, i32 %220)
  br label %222

222:                                              ; preds = %213
  %223 = load i32, i32* %6, align 4
  %224 = add nsw i32 %223, 1
  store i32 %224, i32* %6, align 4
  br label %209

225:                                              ; preds = %209
  %226 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %227 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %226, i32 0, i32 3
  %228 = load i32, i32* %227, align 8
  %229 = call i32 @trap_BotNumInitialChats(i32 %228, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0))
  store i32 %229, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %230

230:                                              ; preds = %243, %225
  %231 = load i32, i32* %6, align 4
  %232 = load i32, i32* %5, align 4
  %233 = icmp slt i32 %231, %232
  br i1 %233, label %234, label %246

234:                                              ; preds = %230
  %235 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %236 = getelementptr inbounds [32 x i8], [32 x i8]* %3, i64 0, i64 0
  %237 = call i32 (%struct.TYPE_8__*, i8*, i8*, i8*, ...) @BotAI_BotInitialChat(%struct.TYPE_8__* %235, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0), i8* %236, i8* null)
  %238 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %239 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %238, i32 0, i32 3
  %240 = load i32, i32* %239, align 8
  %241 = load i32, i32* @CHAT_ALL, align 4
  %242 = call i32 @trap_BotEnterChat(i32 %240, i32 0, i32 %241)
  br label %243

243:                                              ; preds = %234
  %244 = load i32, i32* %6, align 4
  %245 = add nsw i32 %244, 1
  store i32 %245, i32* %6, align 4
  br label %230

246:                                              ; preds = %230
  %247 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %248 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %247, i32 0, i32 3
  %249 = load i32, i32* %248, align 8
  %250 = call i32 @trap_BotNumInitialChats(i32 %249, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i64 0, i64 0))
  store i32 %250, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %251

251:                                              ; preds = %264, %246
  %252 = load i32, i32* %6, align 4
  %253 = load i32, i32* %5, align 4
  %254 = icmp slt i32 %252, %253
  br i1 %254, label %255, label %267

255:                                              ; preds = %251
  %256 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %257 = getelementptr inbounds [32 x i8], [32 x i8]* %3, i64 0, i64 0
  %258 = call i32 (%struct.TYPE_8__*, i8*, i8*, i8*, ...) @BotAI_BotInitialChat(%struct.TYPE_8__* %256, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i64 0, i64 0), i8* %257, i8* null)
  %259 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %260 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %259, i32 0, i32 3
  %261 = load i32, i32* %260, align 8
  %262 = load i32, i32* @CHAT_ALL, align 4
  %263 = call i32 @trap_BotEnterChat(i32 %261, i32 0, i32 %262)
  br label %264

264:                                              ; preds = %255
  %265 = load i32, i32* %6, align 4
  %266 = add nsw i32 %265, 1
  store i32 %266, i32* %6, align 4
  br label %251

267:                                              ; preds = %251
  %268 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %269 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %268, i32 0, i32 3
  %270 = load i32, i32* %269, align 8
  %271 = call i32 @trap_BotNumInitialChats(i32 %270, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i64 0, i64 0))
  store i32 %271, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %272

272:                                              ; preds = %285, %267
  %273 = load i32, i32* %6, align 4
  %274 = load i32, i32* %5, align 4
  %275 = icmp slt i32 %273, %274
  br i1 %275, label %276, label %288

276:                                              ; preds = %272
  %277 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %278 = getelementptr inbounds [32 x i8], [32 x i8]* %3, i64 0, i64 0
  %279 = call i32 (%struct.TYPE_8__*, i8*, i8*, i8*, ...) @BotAI_BotInitialChat(%struct.TYPE_8__* %277, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i64 0, i64 0), i8* %278, i8* null)
  %280 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %281 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %280, i32 0, i32 3
  %282 = load i32, i32* %281, align 8
  %283 = load i32, i32* @CHAT_ALL, align 4
  %284 = call i32 @trap_BotEnterChat(i32 %282, i32 0, i32 %283)
  br label %285

285:                                              ; preds = %276
  %286 = load i32, i32* %6, align 4
  %287 = add nsw i32 %286, 1
  store i32 %287, i32* %6, align 4
  br label %272

288:                                              ; preds = %272
  %289 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %290 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %289, i32 0, i32 3
  %291 = load i32, i32* %290, align 8
  %292 = call i32 @trap_BotNumInitialChats(i32 %291, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i64 0, i64 0))
  store i32 %292, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %293

293:                                              ; preds = %306, %288
  %294 = load i32, i32* %6, align 4
  %295 = load i32, i32* %5, align 4
  %296 = icmp slt i32 %294, %295
  br i1 %296, label %297, label %309

297:                                              ; preds = %293
  %298 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %299 = getelementptr inbounds [32 x i8], [32 x i8]* %3, i64 0, i64 0
  %300 = call i32 (%struct.TYPE_8__*, i8*, i8*, i8*, ...) @BotAI_BotInitialChat(%struct.TYPE_8__* %298, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i64 0, i64 0), i8* %299, i8* null)
  %301 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %302 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %301, i32 0, i32 3
  %303 = load i32, i32* %302, align 8
  %304 = load i32, i32* @CHAT_ALL, align 4
  %305 = call i32 @trap_BotEnterChat(i32 %303, i32 0, i32 %304)
  br label %306

306:                                              ; preds = %297
  %307 = load i32, i32* %6, align 4
  %308 = add nsw i32 %307, 1
  store i32 %308, i32* %6, align 4
  br label %293

309:                                              ; preds = %293
  %310 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %311 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %310, i32 0, i32 3
  %312 = load i32, i32* %311, align 8
  %313 = call i32 @trap_BotNumInitialChats(i32 %312, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.12, i64 0, i64 0))
  store i32 %313, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %314

314:                                              ; preds = %327, %309
  %315 = load i32, i32* %6, align 4
  %316 = load i32, i32* %5, align 4
  %317 = icmp slt i32 %315, %316
  br i1 %317, label %318, label %330

318:                                              ; preds = %314
  %319 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %320 = getelementptr inbounds [32 x i8], [32 x i8]* %3, i64 0, i64 0
  %321 = call i32 (%struct.TYPE_8__*, i8*, i8*, i8*, ...) @BotAI_BotInitialChat(%struct.TYPE_8__* %319, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.12, i64 0, i64 0), i8* %320, i8* null)
  %322 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %323 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %322, i32 0, i32 3
  %324 = load i32, i32* %323, align 8
  %325 = load i32, i32* @CHAT_ALL, align 4
  %326 = call i32 @trap_BotEnterChat(i32 %324, i32 0, i32 %325)
  br label %327

327:                                              ; preds = %318
  %328 = load i32, i32* %6, align 4
  %329 = add nsw i32 %328, 1
  store i32 %329, i32* %6, align 4
  br label %314

330:                                              ; preds = %314
  %331 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %332 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %331, i32 0, i32 3
  %333 = load i32, i32* %332, align 8
  %334 = call i32 @trap_BotNumInitialChats(i32 %333, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.13, i64 0, i64 0))
  store i32 %334, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %335

335:                                              ; preds = %352, %330
  %336 = load i32, i32* %6, align 4
  %337 = load i32, i32* %5, align 4
  %338 = icmp slt i32 %336, %337
  br i1 %338, label %339, label %355

339:                                              ; preds = %335
  %340 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %341 = getelementptr inbounds [32 x i8], [32 x i8]* %3, i64 0, i64 0
  %342 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %343 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %342, i32 0, i32 4
  %344 = load i32, i32* %343, align 4
  %345 = call i8* @BotWeaponNameForMeansOfDeath(i32 %344)
  %346 = call i32 (%struct.TYPE_8__*, i8*, i8*, i8*, ...) @BotAI_BotInitialChat(%struct.TYPE_8__* %340, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.13, i64 0, i64 0), i8* %341, i8* %345, i8* null)
  %347 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %348 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %347, i32 0, i32 3
  %349 = load i32, i32* %348, align 8
  %350 = load i32, i32* @CHAT_ALL, align 4
  %351 = call i32 @trap_BotEnterChat(i32 %349, i32 0, i32 %350)
  br label %352

352:                                              ; preds = %339
  %353 = load i32, i32* %6, align 4
  %354 = add nsw i32 %353, 1
  store i32 %354, i32* %6, align 4
  br label %335

355:                                              ; preds = %335
  %356 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %357 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %356, i32 0, i32 3
  %358 = load i32, i32* %357, align 8
  %359 = call i32 @trap_BotNumInitialChats(i32 %358, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.14, i64 0, i64 0))
  store i32 %359, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %360

360:                                              ; preds = %377, %355
  %361 = load i32, i32* %6, align 4
  %362 = load i32, i32* %5, align 4
  %363 = icmp slt i32 %361, %362
  br i1 %363, label %364, label %380

364:                                              ; preds = %360
  %365 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %366 = getelementptr inbounds [32 x i8], [32 x i8]* %3, i64 0, i64 0
  %367 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %368 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %367, i32 0, i32 4
  %369 = load i32, i32* %368, align 4
  %370 = call i8* @BotWeaponNameForMeansOfDeath(i32 %369)
  %371 = call i32 (%struct.TYPE_8__*, i8*, i8*, i8*, ...) @BotAI_BotInitialChat(%struct.TYPE_8__* %365, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.14, i64 0, i64 0), i8* %366, i8* %370, i8* null)
  %372 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %373 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %372, i32 0, i32 3
  %374 = load i32, i32* %373, align 8
  %375 = load i32, i32* @CHAT_ALL, align 4
  %376 = call i32 @trap_BotEnterChat(i32 %374, i32 0, i32 %375)
  br label %377

377:                                              ; preds = %364
  %378 = load i32, i32* %6, align 4
  %379 = add nsw i32 %378, 1
  store i32 %379, i32* %6, align 4
  br label %360

380:                                              ; preds = %360
  %381 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %382 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %381, i32 0, i32 3
  %383 = load i32, i32* %382, align 8
  %384 = call i32 @trap_BotNumInitialChats(i32 %383, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.15, i64 0, i64 0))
  store i32 %384, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %385

385:                                              ; preds = %402, %380
  %386 = load i32, i32* %6, align 4
  %387 = load i32, i32* %5, align 4
  %388 = icmp slt i32 %386, %387
  br i1 %388, label %389, label %405

389:                                              ; preds = %385
  %390 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %391 = getelementptr inbounds [32 x i8], [32 x i8]* %3, i64 0, i64 0
  %392 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %393 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %392, i32 0, i32 4
  %394 = load i32, i32* %393, align 4
  %395 = call i8* @BotWeaponNameForMeansOfDeath(i32 %394)
  %396 = call i32 (%struct.TYPE_8__*, i8*, i8*, i8*, ...) @BotAI_BotInitialChat(%struct.TYPE_8__* %390, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.15, i64 0, i64 0), i8* %391, i8* %395, i8* null)
  %397 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %398 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %397, i32 0, i32 3
  %399 = load i32, i32* %398, align 8
  %400 = load i32, i32* @CHAT_ALL, align 4
  %401 = call i32 @trap_BotEnterChat(i32 %399, i32 0, i32 %400)
  br label %402

402:                                              ; preds = %389
  %403 = load i32, i32* %6, align 4
  %404 = add nsw i32 %403, 1
  store i32 %404, i32* %6, align 4
  br label %385

405:                                              ; preds = %385
  %406 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %407 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %406, i32 0, i32 3
  %408 = load i32, i32* %407, align 8
  %409 = call i32 @trap_BotNumInitialChats(i32 %408, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.16, i64 0, i64 0))
  store i32 %409, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %410

410:                                              ; preds = %427, %405
  %411 = load i32, i32* %6, align 4
  %412 = load i32, i32* %5, align 4
  %413 = icmp slt i32 %411, %412
  br i1 %413, label %414, label %430

414:                                              ; preds = %410
  %415 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %416 = getelementptr inbounds [32 x i8], [32 x i8]* %3, i64 0, i64 0
  %417 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %418 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %417, i32 0, i32 4
  %419 = load i32, i32* %418, align 4
  %420 = call i8* @BotWeaponNameForMeansOfDeath(i32 %419)
  %421 = call i32 (%struct.TYPE_8__*, i8*, i8*, i8*, ...) @BotAI_BotInitialChat(%struct.TYPE_8__* %415, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.16, i64 0, i64 0), i8* %416, i8* %420, i8* null)
  %422 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %423 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %422, i32 0, i32 3
  %424 = load i32, i32* %423, align 8
  %425 = load i32, i32* @CHAT_ALL, align 4
  %426 = call i32 @trap_BotEnterChat(i32 %424, i32 0, i32 %425)
  br label %427

427:                                              ; preds = %414
  %428 = load i32, i32* %6, align 4
  %429 = add nsw i32 %428, 1
  store i32 %429, i32* %6, align 4
  br label %410

430:                                              ; preds = %410
  %431 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %432 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %431, i32 0, i32 3
  %433 = load i32, i32* %432, align 8
  %434 = call i32 @trap_BotNumInitialChats(i32 %433, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.17, i64 0, i64 0))
  store i32 %434, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %435

435:                                              ; preds = %452, %430
  %436 = load i32, i32* %6, align 4
  %437 = load i32, i32* %5, align 4
  %438 = icmp slt i32 %436, %437
  br i1 %438, label %439, label %455

439:                                              ; preds = %435
  %440 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %441 = getelementptr inbounds [32 x i8], [32 x i8]* %3, i64 0, i64 0
  %442 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %443 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %442, i32 0, i32 4
  %444 = load i32, i32* %443, align 4
  %445 = call i8* @BotWeaponNameForMeansOfDeath(i32 %444)
  %446 = call i32 (%struct.TYPE_8__*, i8*, i8*, i8*, ...) @BotAI_BotInitialChat(%struct.TYPE_8__* %440, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.17, i64 0, i64 0), i8* %441, i8* %445, i8* null)
  %447 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %448 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %447, i32 0, i32 3
  %449 = load i32, i32* %448, align 8
  %450 = load i32, i32* @CHAT_ALL, align 4
  %451 = call i32 @trap_BotEnterChat(i32 %449, i32 0, i32 %450)
  br label %452

452:                                              ; preds = %439
  %453 = load i32, i32* %6, align 4
  %454 = add nsw i32 %453, 1
  store i32 %454, i32* %6, align 4
  br label %435

455:                                              ; preds = %435
  %456 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %457 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %456, i32 0, i32 2
  %458 = load i64, i64* %457, align 8
  %459 = getelementptr inbounds [32 x i8], [32 x i8]* %3, i64 0, i64 0
  %460 = call i32 @EasyClientName(i64 %458, i8* %459, i32 32)
  %461 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %462 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %461, i32 0, i32 3
  %463 = load i32, i32* %462, align 8
  %464 = call i32 @trap_BotNumInitialChats(i32 %463, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.18, i64 0, i64 0))
  store i32 %464, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %465

465:                                              ; preds = %478, %455
  %466 = load i32, i32* %6, align 4
  %467 = load i32, i32* %5, align 4
  %468 = icmp slt i32 %466, %467
  br i1 %468, label %469, label %481

469:                                              ; preds = %465
  %470 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %471 = getelementptr inbounds [32 x i8], [32 x i8]* %3, i64 0, i64 0
  %472 = call i32 (%struct.TYPE_8__*, i8*, i8*, i8*, ...) @BotAI_BotInitialChat(%struct.TYPE_8__* %470, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.18, i64 0, i64 0), i8* %471, i8* null)
  %473 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %474 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %473, i32 0, i32 3
  %475 = load i32, i32* %474, align 8
  %476 = load i32, i32* @CHAT_ALL, align 4
  %477 = call i32 @trap_BotEnterChat(i32 %475, i32 0, i32 %476)
  br label %478

478:                                              ; preds = %469
  %479 = load i32, i32* %6, align 4
  %480 = add nsw i32 %479, 1
  store i32 %480, i32* %6, align 4
  br label %465

481:                                              ; preds = %465
  %482 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %483 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %482, i32 0, i32 3
  %484 = load i32, i32* %483, align 8
  %485 = call i32 @trap_BotNumInitialChats(i32 %484, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.19, i64 0, i64 0))
  store i32 %485, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %486

486:                                              ; preds = %499, %481
  %487 = load i32, i32* %6, align 4
  %488 = load i32, i32* %5, align 4
  %489 = icmp slt i32 %487, %488
  br i1 %489, label %490, label %502

490:                                              ; preds = %486
  %491 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %492 = getelementptr inbounds [32 x i8], [32 x i8]* %3, i64 0, i64 0
  %493 = call i32 (%struct.TYPE_8__*, i8*, i8*, i8*, ...) @BotAI_BotInitialChat(%struct.TYPE_8__* %491, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.19, i64 0, i64 0), i8* %492, i8* null)
  %494 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %495 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %494, i32 0, i32 3
  %496 = load i32, i32* %495, align 8
  %497 = load i32, i32* @CHAT_ALL, align 4
  %498 = call i32 @trap_BotEnterChat(i32 %496, i32 0, i32 %497)
  br label %499

499:                                              ; preds = %490
  %500 = load i32, i32* %6, align 4
  %501 = add nsw i32 %500, 1
  store i32 %501, i32* %6, align 4
  br label %486

502:                                              ; preds = %486
  %503 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %504 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %503, i32 0, i32 3
  %505 = load i32, i32* %504, align 8
  %506 = call i32 @trap_BotNumInitialChats(i32 %505, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.20, i64 0, i64 0))
  store i32 %506, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %507

507:                                              ; preds = %520, %502
  %508 = load i32, i32* %6, align 4
  %509 = load i32, i32* %5, align 4
  %510 = icmp slt i32 %508, %509
  br i1 %510, label %511, label %523

511:                                              ; preds = %507
  %512 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %513 = getelementptr inbounds [32 x i8], [32 x i8]* %3, i64 0, i64 0
  %514 = call i32 (%struct.TYPE_8__*, i8*, i8*, i8*, ...) @BotAI_BotInitialChat(%struct.TYPE_8__* %512, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.20, i64 0, i64 0), i8* %513, i8* null)
  %515 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %516 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %515, i32 0, i32 3
  %517 = load i32, i32* %516, align 8
  %518 = load i32, i32* @CHAT_ALL, align 4
  %519 = call i32 @trap_BotEnterChat(i32 %517, i32 0, i32 %518)
  br label %520

520:                                              ; preds = %511
  %521 = load i32, i32* %6, align 4
  %522 = add nsw i32 %521, 1
  store i32 %522, i32* %6, align 4
  br label %507

523:                                              ; preds = %507
  %524 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %525 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %524, i32 0, i32 3
  %526 = load i32, i32* %525, align 8
  %527 = call i32 @trap_BotNumInitialChats(i32 %526, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.21, i64 0, i64 0))
  store i32 %527, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %528

528:                                              ; preds = %541, %523
  %529 = load i32, i32* %6, align 4
  %530 = load i32, i32* %5, align 4
  %531 = icmp slt i32 %529, %530
  br i1 %531, label %532, label %544

532:                                              ; preds = %528
  %533 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %534 = getelementptr inbounds [32 x i8], [32 x i8]* %3, i64 0, i64 0
  %535 = call i32 (%struct.TYPE_8__*, i8*, i8*, i8*, ...) @BotAI_BotInitialChat(%struct.TYPE_8__* %533, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.21, i64 0, i64 0), i8* %534, i8* null)
  %536 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %537 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %536, i32 0, i32 3
  %538 = load i32, i32* %537, align 8
  %539 = load i32, i32* @CHAT_ALL, align 4
  %540 = call i32 @trap_BotEnterChat(i32 %538, i32 0, i32 %539)
  br label %541

541:                                              ; preds = %532
  %542 = load i32, i32* %6, align 4
  %543 = add nsw i32 %542, 1
  store i32 %543, i32* %6, align 4
  br label %528

544:                                              ; preds = %528
  %545 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %546 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %545, i32 0, i32 3
  %547 = load i32, i32* %546, align 8
  %548 = call i32 @trap_BotNumInitialChats(i32 %547, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.22, i64 0, i64 0))
  store i32 %548, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %549

549:                                              ; preds = %562, %544
  %550 = load i32, i32* %6, align 4
  %551 = load i32, i32* %5, align 4
  %552 = icmp slt i32 %550, %551
  br i1 %552, label %553, label %565

553:                                              ; preds = %549
  %554 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %555 = getelementptr inbounds [32 x i8], [32 x i8]* %3, i64 0, i64 0
  %556 = call i32 (%struct.TYPE_8__*, i8*, i8*, i8*, ...) @BotAI_BotInitialChat(%struct.TYPE_8__* %554, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.22, i64 0, i64 0), i8* %555, i8* null)
  %557 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %558 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %557, i32 0, i32 3
  %559 = load i32, i32* %558, align 8
  %560 = load i32, i32* @CHAT_ALL, align 4
  %561 = call i32 @trap_BotEnterChat(i32 %559, i32 0, i32 %560)
  br label %562

562:                                              ; preds = %553
  %563 = load i32, i32* %6, align 4
  %564 = add nsw i32 %563, 1
  store i32 %564, i32* %6, align 4
  br label %549

565:                                              ; preds = %549
  %566 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %567 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %566, i32 0, i32 3
  %568 = load i32, i32* %567, align 8
  %569 = call i32 @trap_BotNumInitialChats(i32 %568, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.23, i64 0, i64 0))
  store i32 %569, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %570

570:                                              ; preds = %583, %565
  %571 = load i32, i32* %6, align 4
  %572 = load i32, i32* %5, align 4
  %573 = icmp slt i32 %571, %572
  br i1 %573, label %574, label %586

574:                                              ; preds = %570
  %575 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %576 = getelementptr inbounds [32 x i8], [32 x i8]* %3, i64 0, i64 0
  %577 = call i32 (%struct.TYPE_8__*, i8*, i8*, i8*, ...) @BotAI_BotInitialChat(%struct.TYPE_8__* %575, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.23, i64 0, i64 0), i8* %576, i8* null)
  %578 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %579 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %578, i32 0, i32 3
  %580 = load i32, i32* %579, align 8
  %581 = load i32, i32* @CHAT_ALL, align 4
  %582 = call i32 @trap_BotEnterChat(i32 %580, i32 0, i32 %581)
  br label %583

583:                                              ; preds = %574
  %584 = load i32, i32* %6, align 4
  %585 = add nsw i32 %584, 1
  store i32 %585, i32* %6, align 4
  br label %570

586:                                              ; preds = %570
  %587 = load %struct.TYPE_9__*, %struct.TYPE_9__** @g_entities, align 8
  %588 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %589 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %588, i32 0, i32 0
  %590 = load i64, i64* %589, align 8
  %591 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %587, i64 %590
  %592 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %591, i32 0, i32 0
  %593 = load %struct.TYPE_7__*, %struct.TYPE_7__** %592, align 8
  %594 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %593, i32 0, i32 0
  %595 = load i32, i32* %594, align 4
  %596 = getelementptr inbounds [32 x i8], [32 x i8]* %3, i64 0, i64 0
  %597 = call i32 @ClientName(i32 %595, i8* %596, i32 32)
  %598 = load %struct.TYPE_9__*, %struct.TYPE_9__** @g_entities, align 8
  %599 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %600 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %599, i32 0, i32 0
  %601 = load i64, i64* %600, align 8
  %602 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %598, i64 %601
  %603 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %602, i32 0, i32 0
  %604 = load %struct.TYPE_7__*, %struct.TYPE_7__** %603, align 8
  %605 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %604, i32 0, i32 0
  %606 = load i32, i32* %605, align 4
  %607 = call i8* @BotWeaponNameForMeansOfDeath(i32 %606)
  store i8* %607, i8** %4, align 8
  %608 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %609 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %608, i32 0, i32 3
  %610 = load i32, i32* %609, align 8
  %611 = call i32 @trap_BotNumInitialChats(i32 %610, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.24, i64 0, i64 0))
  store i32 %611, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %612

612:                                              ; preds = %626, %586
  %613 = load i32, i32* %6, align 4
  %614 = load i32, i32* %5, align 4
  %615 = icmp slt i32 %613, %614
  br i1 %615, label %616, label %629

616:                                              ; preds = %612
  %617 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %618 = getelementptr inbounds [32 x i8], [32 x i8]* %3, i64 0, i64 0
  %619 = load i8*, i8** %4, align 8
  %620 = call i32 (%struct.TYPE_8__*, i8*, i8*, i8*, ...) @BotAI_BotInitialChat(%struct.TYPE_8__* %617, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.24, i64 0, i64 0), i8* %618, i8* %619, i8* null)
  %621 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %622 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %621, i32 0, i32 3
  %623 = load i32, i32* %622, align 8
  %624 = load i32, i32* @CHAT_ALL, align 4
  %625 = call i32 @trap_BotEnterChat(i32 %623, i32 0, i32 %624)
  br label %626

626:                                              ; preds = %616
  %627 = load i32, i32* %6, align 4
  %628 = add nsw i32 %627, 1
  store i32 %628, i32* %6, align 4
  br label %612

629:                                              ; preds = %612
  %630 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %631 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %630, i32 0, i32 3
  %632 = load i32, i32* %631, align 8
  %633 = call i32 @trap_BotNumInitialChats(i32 %632, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.25, i64 0, i64 0))
  store i32 %633, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %634

634:                                              ; preds = %648, %629
  %635 = load i32, i32* %6, align 4
  %636 = load i32, i32* %5, align 4
  %637 = icmp slt i32 %635, %636
  br i1 %637, label %638, label %651

638:                                              ; preds = %634
  %639 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %640 = getelementptr inbounds [32 x i8], [32 x i8]* %3, i64 0, i64 0
  %641 = load i8*, i8** %4, align 8
  %642 = call i32 (%struct.TYPE_8__*, i8*, i8*, i8*, ...) @BotAI_BotInitialChat(%struct.TYPE_8__* %639, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.25, i64 0, i64 0), i8* %640, i8* %641, i8* null)
  %643 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %644 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %643, i32 0, i32 3
  %645 = load i32, i32* %644, align 8
  %646 = load i32, i32* @CHAT_ALL, align 4
  %647 = call i32 @trap_BotEnterChat(i32 %645, i32 0, i32 %646)
  br label %648

648:                                              ; preds = %638
  %649 = load i32, i32* %6, align 4
  %650 = add nsw i32 %649, 1
  store i32 %650, i32* %6, align 4
  br label %634

651:                                              ; preds = %634
  %652 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %653 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %652, i32 0, i32 3
  %654 = load i32, i32* %653, align 8
  %655 = call i32 @trap_BotNumInitialChats(i32 %654, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.26, i64 0, i64 0))
  store i32 %655, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %656

656:                                              ; preds = %670, %651
  %657 = load i32, i32* %6, align 4
  %658 = load i32, i32* %5, align 4
  %659 = icmp slt i32 %657, %658
  br i1 %659, label %660, label %673

660:                                              ; preds = %656
  %661 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %662 = getelementptr inbounds [32 x i8], [32 x i8]* %3, i64 0, i64 0
  %663 = load i8*, i8** %4, align 8
  %664 = call i32 (%struct.TYPE_8__*, i8*, i8*, i8*, ...) @BotAI_BotInitialChat(%struct.TYPE_8__* %661, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.26, i64 0, i64 0), i8* %662, i8* %663, i8* null)
  %665 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %666 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %665, i32 0, i32 3
  %667 = load i32, i32* %666, align 8
  %668 = load i32, i32* @CHAT_ALL, align 4
  %669 = call i32 @trap_BotEnterChat(i32 %667, i32 0, i32 %668)
  br label %670

670:                                              ; preds = %660
  %671 = load i32, i32* %6, align 4
  %672 = add nsw i32 %671, 1
  store i32 %672, i32* %6, align 4
  br label %656

673:                                              ; preds = %656
  %674 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %675 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %674, i32 0, i32 2
  %676 = load i64, i64* %675, align 8
  %677 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %678 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %677, i32 0, i32 0
  %679 = load i64, i64* %678, align 8
  %680 = icmp eq i64 %676, %679
  br i1 %680, label %681, label %686

681:                                              ; preds = %673
  %682 = getelementptr inbounds [32 x i8], [32 x i8]* %3, i64 0, i64 0
  %683 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %684 = call i32 @BotRandomOpponentName(%struct.TYPE_8__* %683)
  %685 = call i32 @strcpy(i8* %682, i32 %684)
  br label %692

686:                                              ; preds = %673
  %687 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %688 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %687, i32 0, i32 2
  %689 = load i64, i64* %688, align 8
  %690 = getelementptr inbounds [32 x i8], [32 x i8]* %3, i64 0, i64 0
  %691 = call i32 @EasyClientName(i64 %689, i8* %690, i32 32)
  br label %692

692:                                              ; preds = %686, %681
  %693 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %694 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %693, i32 0, i32 3
  %695 = load i32, i32* %694, align 8
  %696 = call i32 @trap_BotNumInitialChats(i32 %695, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.27, i64 0, i64 0))
  store i32 %696, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %697

697:                                              ; preds = %716, %692
  %698 = load i32, i32* %6, align 4
  %699 = load i32, i32* %5, align 4
  %700 = icmp slt i32 %698, %699
  br i1 %700, label %701, label %719

701:                                              ; preds = %697
  %702 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %703 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %704 = call i32 @BotRandomOpponentName(%struct.TYPE_8__* %703)
  %705 = sext i32 %704 to i64
  %706 = inttoptr i64 %705 to i8*
  %707 = getelementptr inbounds [32 x i8], [32 x i8]* %3, i64 0, i64 0
  %708 = call i32 (...) @BotMapTitle()
  %709 = call i32 (...) @BotRandomWeaponName()
  %710 = call i32 (%struct.TYPE_8__*, i8*, i8*, i8*, ...) @BotAI_BotInitialChat(%struct.TYPE_8__* %702, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.27, i64 0, i64 0), i8* %706, i8* %707, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 %708, i32 %709, i8* null)
  %711 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %712 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %711, i32 0, i32 3
  %713 = load i32, i32* %712, align 8
  %714 = load i32, i32* @CHAT_ALL, align 4
  %715 = call i32 @trap_BotEnterChat(i32 %713, i32 0, i32 %714)
  br label %716

716:                                              ; preds = %701
  %717 = load i32, i32* %6, align 4
  %718 = add nsw i32 %717, 1
  store i32 %718, i32* %6, align 4
  br label %697

719:                                              ; preds = %697
  %720 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %721 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %720, i32 0, i32 3
  %722 = load i32, i32* %721, align 8
  %723 = call i32 @trap_BotNumInitialChats(i32 %722, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.28, i64 0, i64 0))
  store i32 %723, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %724

724:                                              ; preds = %743, %719
  %725 = load i32, i32* %6, align 4
  %726 = load i32, i32* %5, align 4
  %727 = icmp slt i32 %725, %726
  br i1 %727, label %728, label %746

728:                                              ; preds = %724
  %729 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %730 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %731 = call i32 @BotRandomOpponentName(%struct.TYPE_8__* %730)
  %732 = sext i32 %731 to i64
  %733 = inttoptr i64 %732 to i8*
  %734 = getelementptr inbounds [32 x i8], [32 x i8]* %3, i64 0, i64 0
  %735 = call i32 (...) @BotMapTitle()
  %736 = call i32 (...) @BotRandomWeaponName()
  %737 = call i32 (%struct.TYPE_8__*, i8*, i8*, i8*, ...) @BotAI_BotInitialChat(%struct.TYPE_8__* %729, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.28, i64 0, i64 0), i8* %733, i8* %734, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 %735, i32 %736, i8* null)
  %738 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %739 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %738, i32 0, i32 3
  %740 = load i32, i32* %739, align 8
  %741 = load i32, i32* @CHAT_ALL, align 4
  %742 = call i32 @trap_BotEnterChat(i32 %740, i32 0, i32 %741)
  br label %743

743:                                              ; preds = %728
  %744 = load i32, i32* %6, align 4
  %745 = add nsw i32 %744, 1
  store i32 %745, i32* %6, align 4
  br label %724

746:                                              ; preds = %724
  ret void
}

declare dso_local i32 @trap_BotNumInitialChats(i32, i8*) #1

declare dso_local i32 @BotAI_BotInitialChat(%struct.TYPE_8__*, i8*, i8*, i8*, ...) #1

declare dso_local i32 @EasyClientName(i64, i8*, i32) #1

declare dso_local i32 @BotRandomOpponentName(%struct.TYPE_8__*) #1

declare dso_local i32 @BotMapTitle(...) #1

declare dso_local i32 @trap_BotEnterChat(i32, i32, i32) #1

declare dso_local i32 @BotFirstClientInRankings(...) #1

declare dso_local i32 @BotLastClientInRankings(...) #1

declare dso_local i8* @BotWeaponNameForMeansOfDeath(i32) #1

declare dso_local i32 @ClientName(i32, i8*, i32) #1

declare dso_local i32 @strcpy(i8*, i32) #1

declare dso_local i32 @BotRandomWeaponName(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
