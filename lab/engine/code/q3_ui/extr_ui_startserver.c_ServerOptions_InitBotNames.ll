; ModuleID = '/home/carl/AnghaBench/lab/engine/code/q3_ui/extr_ui_startserver.c_ServerOptions_InitBotNames.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/q3_ui/extr_ui_startserver.c_ServerOptions_InitBotNames.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i8**, %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32 }

@MAX_INFO_STRING = common dso_local global i32 0, align 4
@s_serveroptions = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@GT_TEAM = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [6 x i8] c"grunt\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"major\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"visor\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"sarge\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"bots\00", align 1
@PLAYER_SLOTS = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"--------\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @ServerOptions_InitBotNames to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ServerOptions_InitBotNames() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = load i32, i32* @MAX_INFO_STRING, align 4
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %7, align 8
  %13 = alloca i8, i64 %11, align 16
  store i64 %11, i64* %8, align 8
  %14 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @s_serveroptions, i32 0, i32 0), align 8
  %15 = load i64, i64* @GT_TEAM, align 8
  %16 = icmp sge i64 %14, %15
  br i1 %16, label %17, label %76

17:                                               ; preds = %0
  %18 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @s_serveroptions, i32 0, i32 1), align 8
  %19 = getelementptr inbounds i8*, i8** %18, i64 1
  %20 = load i8*, i8** %19, align 8
  %21 = call i32 @Q_strncpyz(i8* %20, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 16)
  %22 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @s_serveroptions, i32 0, i32 1), align 8
  %23 = getelementptr inbounds i8*, i8** %22, i64 2
  %24 = load i8*, i8** %23, align 8
  %25 = call i32 @Q_strncpyz(i8* %24, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 16)
  %26 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @s_serveroptions, i32 0, i32 0), align 8
  %27 = load i64, i64* @GT_TEAM, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %34

29:                                               ; preds = %17
  %30 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @s_serveroptions, i32 0, i32 1), align 8
  %31 = getelementptr inbounds i8*, i8** %30, i64 3
  %32 = load i8*, i8** %31, align 8
  %33 = call i32 @Q_strncpyz(i8* %32, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 16)
  br label %38

34:                                               ; preds = %17
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @s_serveroptions, i32 0, i32 2), align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i64 3
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  store i32 2, i32* %37, align 4
  br label %38

38:                                               ; preds = %34, %29
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @s_serveroptions, i32 0, i32 2), align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i64 4
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  store i32 2, i32* %41, align 4
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @s_serveroptions, i32 0, i32 2), align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i64 5
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  store i32 2, i32* %44, align 4
  %45 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @s_serveroptions, i32 0, i32 1), align 8
  %46 = getelementptr inbounds i8*, i8** %45, i64 6
  %47 = load i8*, i8** %46, align 8
  %48 = call i32 @Q_strncpyz(i8* %47, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32 16)
  %49 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @s_serveroptions, i32 0, i32 1), align 8
  %50 = getelementptr inbounds i8*, i8** %49, i64 7
  %51 = load i8*, i8** %50, align 8
  %52 = call i32 @Q_strncpyz(i8* %51, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 16)
  %53 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @s_serveroptions, i32 0, i32 1), align 8
  %54 = getelementptr inbounds i8*, i8** %53, i64 8
  %55 = load i8*, i8** %54, align 8
  %56 = call i32 @Q_strncpyz(i8* %55, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 16)
  %57 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @s_serveroptions, i32 0, i32 0), align 8
  %58 = load i64, i64* @GT_TEAM, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %65

60:                                               ; preds = %38
  %61 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @s_serveroptions, i32 0, i32 1), align 8
  %62 = getelementptr inbounds i8*, i8** %61, i64 9
  %63 = load i8*, i8** %62, align 8
  %64 = call i32 @Q_strncpyz(i8* %63, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 16)
  br label %69

65:                                               ; preds = %38
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @s_serveroptions, i32 0, i32 2), align 8
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i64 9
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 0
  store i32 2, i32* %68, align 4
  br label %69

69:                                               ; preds = %65, %60
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @s_serveroptions, i32 0, i32 2), align 8
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i64 10
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 0
  store i32 2, i32* %72, align 4
  %73 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @s_serveroptions, i32 0, i32 2), align 8
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i64 11
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 0
  store i32 2, i32* %75, align 4
  store i32 1, i32* %9, align 4
  br label %213

76:                                               ; preds = %0
  store i32 1, i32* %1, align 4
  %77 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @s_serveroptions, i32 0, i32 3), align 8
  %78 = call i8* @UI_GetArenaInfoByMap(i32 %77)
  store i8* %78, i8** %3, align 8
  %79 = load i8*, i8** %3, align 8
  %80 = call i8* @Info_ValueForKey(i8* %79, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %81 = trunc i64 %11 to i32
  %82 = call i32 @Q_strncpyz(i8* %13, i8* %80, i32 %81)
  %83 = getelementptr inbounds i8, i8* %13, i64 0
  store i8* %83, i8** %5, align 8
  br label %84

84:                                               ; preds = %148, %76
  %85 = load i8*, i8** %5, align 8
  %86 = load i8, i8* %85, align 1
  %87 = sext i8 %86 to i32
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %93

89:                                               ; preds = %84
  %90 = load i32, i32* %1, align 4
  %91 = load i32, i32* @PLAYER_SLOTS, align 4
  %92 = icmp slt i32 %90, %91
  br label %93

93:                                               ; preds = %89, %84
  %94 = phi i1 [ false, %84 ], [ %92, %89 ]
  br i1 %94, label %95, label %160

95:                                               ; preds = %93
  br label %96

96:                                               ; preds = %108, %95
  %97 = load i8*, i8** %5, align 8
  %98 = load i8, i8* %97, align 1
  %99 = sext i8 %98 to i32
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %106

101:                                              ; preds = %96
  %102 = load i8*, i8** %5, align 8
  %103 = load i8, i8* %102, align 1
  %104 = sext i8 %103 to i32
  %105 = icmp eq i32 %104, 32
  br label %106

106:                                              ; preds = %101, %96
  %107 = phi i1 [ false, %96 ], [ %105, %101 ]
  br i1 %107, label %108, label %111

108:                                              ; preds = %106
  %109 = load i8*, i8** %5, align 8
  %110 = getelementptr inbounds i8, i8* %109, i32 1
  store i8* %110, i8** %5, align 8
  br label %96

111:                                              ; preds = %106
  %112 = load i8*, i8** %5, align 8
  %113 = load i8, i8* %112, align 1
  %114 = icmp ne i8 %113, 0
  br i1 %114, label %116, label %115

115:                                              ; preds = %111
  br label %160

116:                                              ; preds = %111
  %117 = load i8*, i8** %5, align 8
  store i8* %117, i8** %6, align 8
  br label %118

118:                                              ; preds = %130, %116
  %119 = load i8*, i8** %5, align 8
  %120 = load i8, i8* %119, align 1
  %121 = sext i8 %120 to i32
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %128

123:                                              ; preds = %118
  %124 = load i8*, i8** %5, align 8
  %125 = load i8, i8* %124, align 1
  %126 = sext i8 %125 to i32
  %127 = icmp ne i32 %126, 32
  br label %128

128:                                              ; preds = %123, %118
  %129 = phi i1 [ false, %118 ], [ %127, %123 ]
  br i1 %129, label %130, label %133

130:                                              ; preds = %128
  %131 = load i8*, i8** %5, align 8
  %132 = getelementptr inbounds i8, i8* %131, i32 1
  store i8* %132, i8** %5, align 8
  br label %118

133:                                              ; preds = %128
  %134 = load i8*, i8** %5, align 8
  %135 = load i8, i8* %134, align 1
  %136 = icmp ne i8 %135, 0
  br i1 %136, label %137, label %140

137:                                              ; preds = %133
  %138 = load i8*, i8** %5, align 8
  %139 = getelementptr inbounds i8, i8* %138, i32 1
  store i8* %139, i8** %5, align 8
  store i8 0, i8* %138, align 1
  br label %140

140:                                              ; preds = %137, %133
  %141 = load i8*, i8** %6, align 8
  %142 = call i8* @UI_GetBotInfoByName(i8* %141)
  store i8* %142, i8** %4, align 8
  %143 = load i8*, i8** %4, align 8
  %144 = icmp ne i8* %143, null
  br i1 %144, label %148, label %145

145:                                              ; preds = %140
  %146 = load i32, i32* %1, align 4
  %147 = call i8* @UI_GetBotInfoByNumber(i32 %146)
  store i8* %147, i8** %4, align 8
  br label %148

148:                                              ; preds = %145, %140
  %149 = load i8*, i8** %4, align 8
  %150 = call i8* @Info_ValueForKey(i8* %149, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  store i8* %150, i8** %6, align 8
  %151 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @s_serveroptions, i32 0, i32 1), align 8
  %152 = load i32, i32* %1, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds i8*, i8** %151, i64 %153
  %155 = load i8*, i8** %154, align 8
  %156 = load i8*, i8** %6, align 8
  %157 = call i32 @Q_strncpyz(i8* %155, i8* %156, i32 8)
  %158 = load i32, i32* %1, align 4
  %159 = add nsw i32 %158, 1
  store i32 %159, i32* %1, align 4
  br label %84

160:                                              ; preds = %115, %93
  %161 = load i32, i32* %1, align 4
  store i32 %161, i32* %2, align 4
  br label %162

162:                                              ; preds = %173, %160
  %163 = load i32, i32* %2, align 4
  %164 = load i32, i32* @PLAYER_SLOTS, align 4
  %165 = icmp slt i32 %163, %164
  br i1 %165, label %166, label %176

166:                                              ; preds = %162
  %167 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @s_serveroptions, i32 0, i32 1), align 8
  %168 = load i32, i32* %2, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds i8*, i8** %167, i64 %169
  %171 = load i8*, i8** %170, align 8
  %172 = call i32 @strcpy(i8* %171, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0))
  br label %173

173:                                              ; preds = %166
  %174 = load i32, i32* %2, align 4
  %175 = add nsw i32 %174, 1
  store i32 %175, i32* %2, align 4
  br label %162

176:                                              ; preds = %162
  br label %177

177:                                              ; preds = %186, %176
  %178 = load i32, i32* %1, align 4
  %179 = icmp slt i32 %178, 8
  br i1 %179, label %180, label %189

180:                                              ; preds = %177
  %181 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @s_serveroptions, i32 0, i32 2), align 8
  %182 = load i32, i32* %1, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %181, i64 %183
  %185 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %184, i32 0, i32 0
  store i32 0, i32* %185, align 4
  br label %186

186:                                              ; preds = %180
  %187 = load i32, i32* %1, align 4
  %188 = add nsw i32 %187, 1
  store i32 %188, i32* %1, align 4
  br label %177

189:                                              ; preds = %177
  br label %190

190:                                              ; preds = %209, %189
  %191 = load i32, i32* %1, align 4
  %192 = load i32, i32* @PLAYER_SLOTS, align 4
  %193 = icmp slt i32 %191, %192
  br i1 %193, label %194, label %212

194:                                              ; preds = %190
  %195 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @s_serveroptions, i32 0, i32 2), align 8
  %196 = load i32, i32* %1, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %195, i64 %197
  %199 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 4
  %201 = icmp eq i32 %200, 1
  br i1 %201, label %202, label %208

202:                                              ; preds = %194
  %203 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @s_serveroptions, i32 0, i32 2), align 8
  %204 = load i32, i32* %1, align 4
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %203, i64 %205
  %207 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %206, i32 0, i32 0
  store i32 2, i32* %207, align 4
  br label %208

208:                                              ; preds = %202, %194
  br label %209

209:                                              ; preds = %208
  %210 = load i32, i32* %1, align 4
  %211 = add nsw i32 %210, 1
  store i32 %211, i32* %1, align 4
  br label %190

212:                                              ; preds = %190
  store i32 0, i32* %9, align 4
  br label %213

213:                                              ; preds = %212, %69
  %214 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %214)
  %215 = load i32, i32* %9, align 4
  switch i32 %215, label %217 [
    i32 0, label %216
    i32 1, label %216
  ]

216:                                              ; preds = %213, %213
  ret void

217:                                              ; preds = %213
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @Q_strncpyz(i8*, i8*, i32) #2

declare dso_local i8* @UI_GetArenaInfoByMap(i32) #2

declare dso_local i8* @Info_ValueForKey(i8*, i8*) #2

declare dso_local i8* @UI_GetBotInfoByName(i8*) #2

declare dso_local i8* @UI_GetBotInfoByNumber(i32) #2

declare dso_local i32 @strcpy(i8*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
