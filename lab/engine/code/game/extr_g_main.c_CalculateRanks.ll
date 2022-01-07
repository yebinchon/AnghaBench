; ModuleID = '/home/carl/AnghaBench/lab/engine/code/game/extr_g_main.c_CalculateRanks.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/game/extr_g_main.c_CalculateRanks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, i32, i64, i32, i32, i32*, i64*, i64, %struct.TYPE_13__*, i64*, i64, i64 }
%struct.TYPE_13__ = type { %struct.TYPE_12__, %struct.TYPE_11__, %struct.TYPE_9__ }
%struct.TYPE_12__ = type { i32* }
%struct.TYPE_11__ = type { i64 }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_16__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_15__ = type { i64 }

@level = common dso_local global %struct.TYPE_14__ zeroinitializer, align 8
@CON_DISCONNECTED = common dso_local global i64 0, align 8
@TEAM_SPECTATOR = common dso_local global i64 0, align 8
@CON_CONNECTED = common dso_local global i64 0, align 8
@g_entities = common dso_local global %struct.TYPE_16__* null, align 8
@SVF_BOT = common dso_local global i32 0, align 4
@TEAM_RED = common dso_local global i64 0, align 8
@TEAM_BLUE = common dso_local global i64 0, align 8
@SortRanks = common dso_local global i32 0, align 4
@g_gametype = common dso_local global %struct.TYPE_15__ zeroinitializer, align 8
@GT_TEAM = common dso_local global i64 0, align 8
@PERS_RANK = common dso_local global i64 0, align 8
@PERS_SCORE = common dso_local global i64 0, align 8
@RANK_TIED_FLAG = common dso_local global i32 0, align 4
@GT_SINGLE_PLAYER = common dso_local global i64 0, align 8
@CS_SCORES1 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%i\00", align 1
@CS_SCORES2 = common dso_local global i32 0, align 4
@SCORE_NOT_PRESENT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CalculateRanks() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_13__*, align 8
  store i32 -1, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @level, i32 0, i32 0), align 8
  store i32 -1, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @level, i32 0, i32 1), align 4
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @level, i32 0, i32 2), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @level, i32 0, i32 11), align 8
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @level, i32 0, i32 3), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @level, i32 0, i32 10), align 8
  store i32 0, i32* %1, align 4
  br label %6

6:                                                ; preds = %16, %0
  %7 = load i32, i32* %1, align 4
  %8 = load i64*, i64** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @level, i32 0, i32 9), align 8
  %9 = call i32 @ARRAY_LEN(i64* %8)
  %10 = icmp slt i32 %7, %9
  br i1 %10, label %11, label %19

11:                                               ; preds = %6
  %12 = load i64*, i64** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @level, i32 0, i32 9), align 8
  %13 = load i32, i32* %1, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i64, i64* %12, i64 %14
  store i64 0, i64* %15, align 8
  br label %16

16:                                               ; preds = %11
  %17 = load i32, i32* %1, align 4
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* %1, align 4
  br label %6

19:                                               ; preds = %6
  store i32 0, i32* %1, align 4
  br label %20

20:                                               ; preds = %124, %19
  %21 = load i32, i32* %1, align 4
  %22 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @level, i32 0, i32 4), align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %127

24:                                               ; preds = %20
  %25 = load %struct.TYPE_13__*, %struct.TYPE_13__** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @level, i32 0, i32 8), align 8
  %26 = load i32, i32* %1, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %25, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %28, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @CON_DISCONNECTED, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %123

34:                                               ; preds = %24
  %35 = load i32, i32* %1, align 4
  %36 = load i32*, i32** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @level, i32 0, i32 5), align 8
  %37 = load i64, i64* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @level, i32 0, i32 2), align 8
  %38 = getelementptr inbounds i32, i32* %36, i64 %37
  store i32 %35, i32* %38, align 4
  %39 = load i64, i64* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @level, i32 0, i32 2), align 8
  %40 = add i64 %39, 1
  store i64 %40, i64* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @level, i32 0, i32 2), align 8
  %41 = load %struct.TYPE_13__*, %struct.TYPE_13__** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @level, i32 0, i32 8), align 8
  %42 = load i32, i32* %1, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %41, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @TEAM_SPECTATOR, align 8
  %49 = icmp ne i64 %47, %48
  br i1 %49, label %50, label %122

50:                                               ; preds = %34
  %51 = load i64, i64* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @level, i32 0, i32 11), align 8
  %52 = add nsw i64 %51, 1
  store i64 %52, i64* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @level, i32 0, i32 11), align 8
  %53 = load %struct.TYPE_13__*, %struct.TYPE_13__** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @level, i32 0, i32 8), align 8
  %54 = load i32, i32* %1, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %53, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %56, i32 0, i32 2
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @CON_CONNECTED, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %121

62:                                               ; preds = %50
  %63 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @level, i32 0, i32 3), align 8
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @level, i32 0, i32 3), align 8
  %65 = load %struct.TYPE_16__*, %struct.TYPE_16__** @g_entities, align 8
  %66 = load i32, i32* %1, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %65, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @SVF_BOT, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %109, label %75

75:                                               ; preds = %62
  %76 = load i64, i64* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @level, i32 0, i32 10), align 8
  %77 = add nsw i64 %76, 1
  store i64 %77, i64* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @level, i32 0, i32 10), align 8
  %78 = load %struct.TYPE_13__*, %struct.TYPE_13__** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @level, i32 0, i32 8), align 8
  %79 = load i32, i32* %1, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %78, i64 %80
  %82 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @TEAM_RED, align 8
  %86 = icmp eq i64 %84, %85
  br i1 %86, label %87, label %92

87:                                               ; preds = %75
  %88 = load i64*, i64** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @level, i32 0, i32 9), align 8
  %89 = getelementptr inbounds i64, i64* %88, i64 0
  %90 = load i64, i64* %89, align 8
  %91 = add nsw i64 %90, 1
  store i64 %91, i64* %89, align 8
  br label %108

92:                                               ; preds = %75
  %93 = load %struct.TYPE_13__*, %struct.TYPE_13__** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @level, i32 0, i32 8), align 8
  %94 = load i32, i32* %1, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %93, i64 %95
  %97 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = load i64, i64* @TEAM_BLUE, align 8
  %101 = icmp eq i64 %99, %100
  br i1 %101, label %102, label %107

102:                                              ; preds = %92
  %103 = load i64*, i64** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @level, i32 0, i32 9), align 8
  %104 = getelementptr inbounds i64, i64* %103, i64 1
  %105 = load i64, i64* %104, align 8
  %106 = add nsw i64 %105, 1
  store i64 %106, i64* %104, align 8
  br label %107

107:                                              ; preds = %102, %92
  br label %108

108:                                              ; preds = %107, %87
  br label %109

109:                                              ; preds = %108, %62
  %110 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @level, i32 0, i32 0), align 8
  %111 = icmp eq i32 %110, -1
  br i1 %111, label %112, label %114

112:                                              ; preds = %109
  %113 = load i32, i32* %1, align 4
  store i32 %113, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @level, i32 0, i32 0), align 8
  br label %120

114:                                              ; preds = %109
  %115 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @level, i32 0, i32 1), align 4
  %116 = icmp eq i32 %115, -1
  br i1 %116, label %117, label %119

117:                                              ; preds = %114
  %118 = load i32, i32* %1, align 4
  store i32 %118, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @level, i32 0, i32 1), align 4
  br label %119

119:                                              ; preds = %117, %114
  br label %120

120:                                              ; preds = %119, %112
  br label %121

121:                                              ; preds = %120, %50
  br label %122

122:                                              ; preds = %121, %34
  br label %123

123:                                              ; preds = %122, %24
  br label %124

124:                                              ; preds = %123
  %125 = load i32, i32* %1, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %1, align 4
  br label %20

127:                                              ; preds = %20
  %128 = load i32*, i32** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @level, i32 0, i32 5), align 8
  %129 = load i64, i64* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @level, i32 0, i32 2), align 8
  %130 = load i32, i32* @SortRanks, align 4
  %131 = call i32 @qsort(i32* %128, i64 %129, i32 4, i32 %130)
  %132 = load i64, i64* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @g_gametype, i32 0, i32 0), align 8
  %133 = load i64, i64* @GT_TEAM, align 8
  %134 = icmp sge i64 %132, %133
  br i1 %134, label %135, label %196

135:                                              ; preds = %127
  store i32 0, i32* %1, align 4
  br label %136

136:                                              ; preds = %192, %135
  %137 = load i32, i32* %1, align 4
  %138 = sext i32 %137 to i64
  %139 = load i64, i64* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @level, i32 0, i32 2), align 8
  %140 = icmp ult i64 %138, %139
  br i1 %140, label %141, label %195

141:                                              ; preds = %136
  %142 = load %struct.TYPE_13__*, %struct.TYPE_13__** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @level, i32 0, i32 8), align 8
  %143 = load i32*, i32** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @level, i32 0, i32 5), align 8
  %144 = load i32, i32* %1, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i32, i32* %143, i64 %145
  %147 = load i32, i32* %146, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %142, i64 %148
  store %struct.TYPE_13__* %149, %struct.TYPE_13__** %5, align 8
  %150 = load i64*, i64** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @level, i32 0, i32 6), align 8
  %151 = load i64, i64* @TEAM_RED, align 8
  %152 = getelementptr inbounds i64, i64* %150, i64 %151
  %153 = load i64, i64* %152, align 8
  %154 = load i64*, i64** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @level, i32 0, i32 6), align 8
  %155 = load i64, i64* @TEAM_BLUE, align 8
  %156 = getelementptr inbounds i64, i64* %154, i64 %155
  %157 = load i64, i64* %156, align 8
  %158 = icmp eq i64 %153, %157
  br i1 %158, label %159, label %166

159:                                              ; preds = %141
  %160 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %161 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %160, i32 0, i32 0
  %162 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %161, i32 0, i32 0
  %163 = load i32*, i32** %162, align 8
  %164 = load i64, i64* @PERS_RANK, align 8
  %165 = getelementptr inbounds i32, i32* %163, i64 %164
  store i32 2, i32* %165, align 4
  br label %191

166:                                              ; preds = %141
  %167 = load i64*, i64** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @level, i32 0, i32 6), align 8
  %168 = load i64, i64* @TEAM_RED, align 8
  %169 = getelementptr inbounds i64, i64* %167, i64 %168
  %170 = load i64, i64* %169, align 8
  %171 = load i64*, i64** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @level, i32 0, i32 6), align 8
  %172 = load i64, i64* @TEAM_BLUE, align 8
  %173 = getelementptr inbounds i64, i64* %171, i64 %172
  %174 = load i64, i64* %173, align 8
  %175 = icmp sgt i64 %170, %174
  br i1 %175, label %176, label %183

176:                                              ; preds = %166
  %177 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %178 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %177, i32 0, i32 0
  %179 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %178, i32 0, i32 0
  %180 = load i32*, i32** %179, align 8
  %181 = load i64, i64* @PERS_RANK, align 8
  %182 = getelementptr inbounds i32, i32* %180, i64 %181
  store i32 0, i32* %182, align 4
  br label %190

183:                                              ; preds = %166
  %184 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %185 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %184, i32 0, i32 0
  %186 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %185, i32 0, i32 0
  %187 = load i32*, i32** %186, align 8
  %188 = load i64, i64* @PERS_RANK, align 8
  %189 = getelementptr inbounds i32, i32* %187, i64 %188
  store i32 1, i32* %189, align 4
  br label %190

190:                                              ; preds = %183, %176
  br label %191

191:                                              ; preds = %190, %159
  br label %192

192:                                              ; preds = %191
  %193 = load i32, i32* %1, align 4
  %194 = add nsw i32 %193, 1
  store i32 %194, i32* %1, align 4
  br label %136

195:                                              ; preds = %136
  br label %303

196:                                              ; preds = %127
  store i32 -1, i32* %2, align 4
  store i32 0, i32* %3, align 4
  store i32 0, i32* %1, align 4
  br label %197

197:                                              ; preds = %299, %196
  %198 = load i32, i32* %1, align 4
  %199 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @level, i32 0, i32 3), align 8
  %200 = icmp slt i32 %198, %199
  br i1 %200, label %201, label %302

201:                                              ; preds = %197
  %202 = load %struct.TYPE_13__*, %struct.TYPE_13__** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @level, i32 0, i32 8), align 8
  %203 = load i32*, i32** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @level, i32 0, i32 5), align 8
  %204 = load i32, i32* %1, align 4
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds i32, i32* %203, i64 %205
  %207 = load i32, i32* %206, align 4
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %202, i64 %208
  store %struct.TYPE_13__* %209, %struct.TYPE_13__** %5, align 8
  %210 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %211 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %210, i32 0, i32 0
  %212 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %211, i32 0, i32 0
  %213 = load i32*, i32** %212, align 8
  %214 = load i64, i64* @PERS_SCORE, align 8
  %215 = getelementptr inbounds i32, i32* %213, i64 %214
  %216 = load i32, i32* %215, align 4
  store i32 %216, i32* %4, align 4
  %217 = load i32, i32* %1, align 4
  %218 = icmp eq i32 %217, 0
  br i1 %218, label %223, label %219

219:                                              ; preds = %201
  %220 = load i32, i32* %4, align 4
  %221 = load i32, i32* %3, align 4
  %222 = icmp ne i32 %220, %221
  br i1 %222, label %223, label %239

223:                                              ; preds = %219, %201
  %224 = load i32, i32* %1, align 4
  store i32 %224, i32* %2, align 4
  %225 = load i32, i32* %2, align 4
  %226 = load %struct.TYPE_13__*, %struct.TYPE_13__** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @level, i32 0, i32 8), align 8
  %227 = load i32*, i32** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @level, i32 0, i32 5), align 8
  %228 = load i32, i32* %1, align 4
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds i32, i32* %227, i64 %229
  %231 = load i32, i32* %230, align 4
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %226, i64 %232
  %234 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %233, i32 0, i32 0
  %235 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %234, i32 0, i32 0
  %236 = load i32*, i32** %235, align 8
  %237 = load i64, i64* @PERS_RANK, align 8
  %238 = getelementptr inbounds i32, i32* %236, i64 %237
  store i32 %225, i32* %238, align 4
  br label %273

239:                                              ; preds = %219
  %240 = load i32, i32* %2, align 4
  %241 = load i32, i32* @RANK_TIED_FLAG, align 4
  %242 = or i32 %240, %241
  %243 = load %struct.TYPE_13__*, %struct.TYPE_13__** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @level, i32 0, i32 8), align 8
  %244 = load i32*, i32** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @level, i32 0, i32 5), align 8
  %245 = load i32, i32* %1, align 4
  %246 = sub nsw i32 %245, 1
  %247 = sext i32 %246 to i64
  %248 = getelementptr inbounds i32, i32* %244, i64 %247
  %249 = load i32, i32* %248, align 4
  %250 = sext i32 %249 to i64
  %251 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %243, i64 %250
  %252 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %251, i32 0, i32 0
  %253 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %252, i32 0, i32 0
  %254 = load i32*, i32** %253, align 8
  %255 = load i64, i64* @PERS_RANK, align 8
  %256 = getelementptr inbounds i32, i32* %254, i64 %255
  store i32 %242, i32* %256, align 4
  %257 = load i32, i32* %2, align 4
  %258 = load i32, i32* @RANK_TIED_FLAG, align 4
  %259 = or i32 %257, %258
  %260 = load %struct.TYPE_13__*, %struct.TYPE_13__** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @level, i32 0, i32 8), align 8
  %261 = load i32*, i32** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @level, i32 0, i32 5), align 8
  %262 = load i32, i32* %1, align 4
  %263 = sext i32 %262 to i64
  %264 = getelementptr inbounds i32, i32* %261, i64 %263
  %265 = load i32, i32* %264, align 4
  %266 = sext i32 %265 to i64
  %267 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %260, i64 %266
  %268 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %267, i32 0, i32 0
  %269 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %268, i32 0, i32 0
  %270 = load i32*, i32** %269, align 8
  %271 = load i64, i64* @PERS_RANK, align 8
  %272 = getelementptr inbounds i32, i32* %270, i64 %271
  store i32 %259, i32* %272, align 4
  br label %273

273:                                              ; preds = %239, %223
  %274 = load i32, i32* %4, align 4
  store i32 %274, i32* %3, align 4
  %275 = load i64, i64* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @g_gametype, i32 0, i32 0), align 8
  %276 = load i64, i64* @GT_SINGLE_PLAYER, align 8
  %277 = icmp eq i64 %275, %276
  br i1 %277, label %278, label %298

278:                                              ; preds = %273
  %279 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @level, i32 0, i32 3), align 8
  %280 = icmp eq i32 %279, 1
  br i1 %280, label %281, label %298

281:                                              ; preds = %278
  %282 = load i32, i32* %2, align 4
  %283 = load i32, i32* @RANK_TIED_FLAG, align 4
  %284 = or i32 %282, %283
  %285 = load %struct.TYPE_13__*, %struct.TYPE_13__** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @level, i32 0, i32 8), align 8
  %286 = load i32*, i32** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @level, i32 0, i32 5), align 8
  %287 = load i32, i32* %1, align 4
  %288 = sext i32 %287 to i64
  %289 = getelementptr inbounds i32, i32* %286, i64 %288
  %290 = load i32, i32* %289, align 4
  %291 = sext i32 %290 to i64
  %292 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %285, i64 %291
  %293 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %292, i32 0, i32 0
  %294 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %293, i32 0, i32 0
  %295 = load i32*, i32** %294, align 8
  %296 = load i64, i64* @PERS_RANK, align 8
  %297 = getelementptr inbounds i32, i32* %295, i64 %296
  store i32 %284, i32* %297, align 4
  br label %298

298:                                              ; preds = %281, %278, %273
  br label %299

299:                                              ; preds = %298
  %300 = load i32, i32* %1, align 4
  %301 = add nsw i32 %300, 1
  store i32 %301, i32* %1, align 4
  br label %197

302:                                              ; preds = %197
  br label %303

303:                                              ; preds = %302, %195
  %304 = load i64, i64* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @g_gametype, i32 0, i32 0), align 8
  %305 = load i64, i64* @GT_TEAM, align 8
  %306 = icmp sge i64 %304, %305
  br i1 %306, label %307, label %322

307:                                              ; preds = %303
  %308 = load i32, i32* @CS_SCORES1, align 4
  %309 = load i64*, i64** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @level, i32 0, i32 6), align 8
  %310 = load i64, i64* @TEAM_RED, align 8
  %311 = getelementptr inbounds i64, i64* %309, i64 %310
  %312 = load i64, i64* %311, align 8
  %313 = call i32 @va(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i64 %312)
  %314 = call i32 @trap_SetConfigstring(i32 %308, i32 %313)
  %315 = load i32, i32* @CS_SCORES2, align 4
  %316 = load i64*, i64** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @level, i32 0, i32 6), align 8
  %317 = load i64, i64* @TEAM_BLUE, align 8
  %318 = getelementptr inbounds i64, i64* %316, i64 %317
  %319 = load i64, i64* %318, align 8
  %320 = call i32 @va(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i64 %319)
  %321 = call i32 @trap_SetConfigstring(i32 %315, i32 %320)
  br label %393

322:                                              ; preds = %303
  %323 = load i64, i64* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @level, i32 0, i32 2), align 8
  %324 = icmp eq i64 %323, 0
  br i1 %324, label %325, label %334

325:                                              ; preds = %322
  %326 = load i32, i32* @CS_SCORES1, align 4
  %327 = load i64, i64* @SCORE_NOT_PRESENT, align 8
  %328 = call i32 @va(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i64 %327)
  %329 = call i32 @trap_SetConfigstring(i32 %326, i32 %328)
  %330 = load i32, i32* @CS_SCORES2, align 4
  %331 = load i64, i64* @SCORE_NOT_PRESENT, align 8
  %332 = call i32 @va(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i64 %331)
  %333 = call i32 @trap_SetConfigstring(i32 %330, i32 %332)
  br label %392

334:                                              ; preds = %322
  %335 = load i64, i64* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @level, i32 0, i32 2), align 8
  %336 = icmp eq i64 %335, 1
  br i1 %336, label %337, label %358

337:                                              ; preds = %334
  %338 = load i32, i32* @CS_SCORES1, align 4
  %339 = load %struct.TYPE_13__*, %struct.TYPE_13__** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @level, i32 0, i32 8), align 8
  %340 = load i32*, i32** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @level, i32 0, i32 5), align 8
  %341 = getelementptr inbounds i32, i32* %340, i64 0
  %342 = load i32, i32* %341, align 4
  %343 = sext i32 %342 to i64
  %344 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %339, i64 %343
  %345 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %344, i32 0, i32 0
  %346 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %345, i32 0, i32 0
  %347 = load i32*, i32** %346, align 8
  %348 = load i64, i64* @PERS_SCORE, align 8
  %349 = getelementptr inbounds i32, i32* %347, i64 %348
  %350 = load i32, i32* %349, align 4
  %351 = sext i32 %350 to i64
  %352 = call i32 @va(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i64 %351)
  %353 = call i32 @trap_SetConfigstring(i32 %338, i32 %352)
  %354 = load i32, i32* @CS_SCORES2, align 4
  %355 = load i64, i64* @SCORE_NOT_PRESENT, align 8
  %356 = call i32 @va(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i64 %355)
  %357 = call i32 @trap_SetConfigstring(i32 %354, i32 %356)
  br label %391

358:                                              ; preds = %334
  %359 = load i32, i32* @CS_SCORES1, align 4
  %360 = load %struct.TYPE_13__*, %struct.TYPE_13__** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @level, i32 0, i32 8), align 8
  %361 = load i32*, i32** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @level, i32 0, i32 5), align 8
  %362 = getelementptr inbounds i32, i32* %361, i64 0
  %363 = load i32, i32* %362, align 4
  %364 = sext i32 %363 to i64
  %365 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %360, i64 %364
  %366 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %365, i32 0, i32 0
  %367 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %366, i32 0, i32 0
  %368 = load i32*, i32** %367, align 8
  %369 = load i64, i64* @PERS_SCORE, align 8
  %370 = getelementptr inbounds i32, i32* %368, i64 %369
  %371 = load i32, i32* %370, align 4
  %372 = sext i32 %371 to i64
  %373 = call i32 @va(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i64 %372)
  %374 = call i32 @trap_SetConfigstring(i32 %359, i32 %373)
  %375 = load i32, i32* @CS_SCORES2, align 4
  %376 = load %struct.TYPE_13__*, %struct.TYPE_13__** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @level, i32 0, i32 8), align 8
  %377 = load i32*, i32** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @level, i32 0, i32 5), align 8
  %378 = getelementptr inbounds i32, i32* %377, i64 1
  %379 = load i32, i32* %378, align 4
  %380 = sext i32 %379 to i64
  %381 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %376, i64 %380
  %382 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %381, i32 0, i32 0
  %383 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %382, i32 0, i32 0
  %384 = load i32*, i32** %383, align 8
  %385 = load i64, i64* @PERS_SCORE, align 8
  %386 = getelementptr inbounds i32, i32* %384, i64 %385
  %387 = load i32, i32* %386, align 4
  %388 = sext i32 %387 to i64
  %389 = call i32 @va(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i64 %388)
  %390 = call i32 @trap_SetConfigstring(i32 %375, i32 %389)
  br label %391

391:                                              ; preds = %358, %337
  br label %392

392:                                              ; preds = %391, %325
  br label %393

393:                                              ; preds = %392, %307
  %394 = call i32 (...) @CheckExitRules()
  %395 = load i64, i64* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @level, i32 0, i32 7), align 8
  %396 = icmp ne i64 %395, 0
  br i1 %396, label %397, label %399

397:                                              ; preds = %393
  %398 = call i32 (...) @SendScoreboardMessageToAllClients()
  br label %399

399:                                              ; preds = %397, %393
  ret void
}

declare dso_local i32 @ARRAY_LEN(i64*) #1

declare dso_local i32 @qsort(i32*, i64, i32, i32) #1

declare dso_local i32 @trap_SetConfigstring(i32, i32) #1

declare dso_local i32 @va(i8*, i64) #1

declare dso_local i32 @CheckExitRules(...) #1

declare dso_local i32 @SendScoreboardMessageToAllClients(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
