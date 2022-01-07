; ModuleID = '/home/carl/AnghaBench/lab/engine/code/game/extr_ai_main.c_BotInitLibrary.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/game/extr_ai_main.c_BotInitLibrary.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i8* }

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@level = common dso_local global %struct.TYPE_3__ zeroinitializer, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"maxclients\00", align 1
@MAX_GENTITIES = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [12 x i8] c"maxentities\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"sv_mapChecksum\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"max_aaslinks\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"max_levelitems\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"g_gametype\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"bot_developer\00", align 1
@bot_developer = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@.str.9 = private unnamed_addr constant [8 x i8] c"logfile\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"log\00", align 1
@.str.11 = private unnamed_addr constant [11 x i8] c"bot_nochat\00", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c"nochat\00", align 1
@.str.13 = private unnamed_addr constant [22 x i8] c"bot_visualizejumppads\00", align 1
@.str.14 = private unnamed_addr constant [20 x i8] c"bot_forceclustering\00", align 1
@.str.15 = private unnamed_addr constant [16 x i8] c"forceclustering\00", align 1
@.str.16 = private unnamed_addr constant [22 x i8] c"bot_forcereachability\00", align 1
@.str.17 = private unnamed_addr constant [18 x i8] c"forcereachability\00", align 1
@.str.18 = private unnamed_addr constant [15 x i8] c"bot_forcewrite\00", align 1
@.str.19 = private unnamed_addr constant [11 x i8] c"forcewrite\00", align 1
@.str.20 = private unnamed_addr constant [16 x i8] c"bot_aasoptimize\00", align 1
@.str.21 = private unnamed_addr constant [12 x i8] c"aasoptimize\00", align 1
@.str.22 = private unnamed_addr constant [21 x i8] c"bot_saveroutingcache\00", align 1
@.str.23 = private unnamed_addr constant [17 x i8] c"saveroutingcache\00", align 1
@.str.24 = private unnamed_addr constant [21 x i8] c"bot_reloadcharacters\00", align 1
@.str.25 = private unnamed_addr constant [12 x i8] c"fs_basepath\00", align 1
@.str.26 = private unnamed_addr constant [8 x i8] c"basedir\00", align 1
@.str.27 = private unnamed_addr constant [8 x i8] c"fs_game\00", align 1
@.str.28 = private unnamed_addr constant [8 x i8] c"gamedir\00", align 1
@.str.29 = private unnamed_addr constant [12 x i8] c"fs_homepath\00", align 1
@.str.30 = private unnamed_addr constant [8 x i8] c"homedir\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @BotInitLibrary() #0 {
  %1 = alloca [144 x i8], align 16
  %2 = getelementptr inbounds [144 x i8], [144 x i8]* %1, i64 0, i64 0
  %3 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @level, i32 0, i32 0), align 4
  %4 = call i32 @Com_sprintf(i8* %2, i32 144, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %3)
  %5 = getelementptr inbounds [144 x i8], [144 x i8]* %1, i64 0, i64 0
  %6 = call i32 @trap_BotLibVarSet(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8* %5)
  %7 = getelementptr inbounds [144 x i8], [144 x i8]* %1, i64 0, i64 0
  %8 = load i32, i32* @MAX_GENTITIES, align 4
  %9 = call i32 @Com_sprintf(i8* %7, i32 144, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %8)
  %10 = getelementptr inbounds [144 x i8], [144 x i8]* %1, i64 0, i64 0
  %11 = call i32 @trap_BotLibVarSet(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i8* %10)
  %12 = getelementptr inbounds [144 x i8], [144 x i8]* %1, i64 0, i64 0
  %13 = call i32 @trap_Cvar_VariableStringBuffer(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i8* %12, i32 144)
  %14 = getelementptr inbounds [144 x i8], [144 x i8]* %1, i64 0, i64 0
  %15 = call i64 @strlen(i8* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %0
  %18 = getelementptr inbounds [144 x i8], [144 x i8]* %1, i64 0, i64 0
  %19 = call i32 @trap_BotLibVarSet(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i8* %18)
  br label %20

20:                                               ; preds = %17, %0
  %21 = getelementptr inbounds [144 x i8], [144 x i8]* %1, i64 0, i64 0
  %22 = call i32 @trap_Cvar_VariableStringBuffer(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i8* %21, i32 144)
  %23 = getelementptr inbounds [144 x i8], [144 x i8]* %1, i64 0, i64 0
  %24 = call i64 @strlen(i8* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %20
  %27 = getelementptr inbounds [144 x i8], [144 x i8]* %1, i64 0, i64 0
  %28 = call i32 @trap_BotLibVarSet(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i8* %27)
  br label %29

29:                                               ; preds = %26, %20
  %30 = getelementptr inbounds [144 x i8], [144 x i8]* %1, i64 0, i64 0
  %31 = call i32 @trap_Cvar_VariableStringBuffer(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0), i8* %30, i32 144)
  %32 = getelementptr inbounds [144 x i8], [144 x i8]* %1, i64 0, i64 0
  %33 = call i64 @strlen(i8* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %29
  %36 = getelementptr inbounds [144 x i8], [144 x i8]* %1, i64 0, i64 0
  %37 = call i32 @trap_BotLibVarSet(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0), i8* %36)
  br label %38

38:                                               ; preds = %35, %29
  %39 = getelementptr inbounds [144 x i8], [144 x i8]* %1, i64 0, i64 0
  %40 = call i32 @trap_Cvar_VariableStringBuffer(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0), i8* %39, i32 144)
  %41 = getelementptr inbounds [144 x i8], [144 x i8]* %1, i64 0, i64 0
  %42 = call i64 @strlen(i8* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %47, label %44

44:                                               ; preds = %38
  %45 = getelementptr inbounds [144 x i8], [144 x i8]* %1, i64 0, i64 0
  %46 = call i32 @strcpy(i8* %45, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  br label %47

47:                                               ; preds = %44, %38
  %48 = getelementptr inbounds [144 x i8], [144 x i8]* %1, i64 0, i64 0
  %49 = call i32 @trap_BotLibVarSet(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0), i8* %48)
  %50 = load i8*, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @bot_developer, i32 0, i32 0), align 8
  %51 = call i32 @trap_BotLibVarSet(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0), i8* %50)
  %52 = getelementptr inbounds [144 x i8], [144 x i8]* %1, i64 0, i64 0
  %53 = call i32 @trap_Cvar_VariableStringBuffer(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0), i8* %52, i32 144)
  %54 = getelementptr inbounds [144 x i8], [144 x i8]* %1, i64 0, i64 0
  %55 = call i32 @trap_BotLibVarSet(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0), i8* %54)
  %56 = getelementptr inbounds [144 x i8], [144 x i8]* %1, i64 0, i64 0
  %57 = call i32 @trap_Cvar_VariableStringBuffer(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i64 0, i64 0), i8* %56, i32 144)
  %58 = getelementptr inbounds [144 x i8], [144 x i8]* %1, i64 0, i64 0
  %59 = call i64 @strlen(i8* %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %47
  %62 = getelementptr inbounds [144 x i8], [144 x i8]* %1, i64 0, i64 0
  %63 = call i32 @trap_BotLibVarSet(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i64 0, i64 0), i8* %62)
  br label %64

64:                                               ; preds = %61, %47
  %65 = getelementptr inbounds [144 x i8], [144 x i8]* %1, i64 0, i64 0
  %66 = call i32 @trap_Cvar_VariableStringBuffer(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.13, i64 0, i64 0), i8* %65, i32 144)
  %67 = getelementptr inbounds [144 x i8], [144 x i8]* %1, i64 0, i64 0
  %68 = call i64 @strlen(i8* %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %64
  %71 = getelementptr inbounds [144 x i8], [144 x i8]* %1, i64 0, i64 0
  %72 = call i32 @trap_BotLibVarSet(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.13, i64 0, i64 0), i8* %71)
  br label %73

73:                                               ; preds = %70, %64
  %74 = getelementptr inbounds [144 x i8], [144 x i8]* %1, i64 0, i64 0
  %75 = call i32 @trap_Cvar_VariableStringBuffer(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i64 0, i64 0), i8* %74, i32 144)
  %76 = getelementptr inbounds [144 x i8], [144 x i8]* %1, i64 0, i64 0
  %77 = call i64 @strlen(i8* %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %73
  %80 = getelementptr inbounds [144 x i8], [144 x i8]* %1, i64 0, i64 0
  %81 = call i32 @trap_BotLibVarSet(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.15, i64 0, i64 0), i8* %80)
  br label %82

82:                                               ; preds = %79, %73
  %83 = getelementptr inbounds [144 x i8], [144 x i8]* %1, i64 0, i64 0
  %84 = call i32 @trap_Cvar_VariableStringBuffer(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i8* %83, i32 144)
  %85 = getelementptr inbounds [144 x i8], [144 x i8]* %1, i64 0, i64 0
  %86 = call i64 @strlen(i8* %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %91

88:                                               ; preds = %82
  %89 = getelementptr inbounds [144 x i8], [144 x i8]* %1, i64 0, i64 0
  %90 = call i32 @trap_BotLibVarSet(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.17, i64 0, i64 0), i8* %89)
  br label %91

91:                                               ; preds = %88, %82
  %92 = getelementptr inbounds [144 x i8], [144 x i8]* %1, i64 0, i64 0
  %93 = call i32 @trap_Cvar_VariableStringBuffer(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.18, i64 0, i64 0), i8* %92, i32 144)
  %94 = getelementptr inbounds [144 x i8], [144 x i8]* %1, i64 0, i64 0
  %95 = call i64 @strlen(i8* %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %100

97:                                               ; preds = %91
  %98 = getelementptr inbounds [144 x i8], [144 x i8]* %1, i64 0, i64 0
  %99 = call i32 @trap_BotLibVarSet(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.19, i64 0, i64 0), i8* %98)
  br label %100

100:                                              ; preds = %97, %91
  %101 = getelementptr inbounds [144 x i8], [144 x i8]* %1, i64 0, i64 0
  %102 = call i32 @trap_Cvar_VariableStringBuffer(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.20, i64 0, i64 0), i8* %101, i32 144)
  %103 = getelementptr inbounds [144 x i8], [144 x i8]* %1, i64 0, i64 0
  %104 = call i64 @strlen(i8* %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %109

106:                                              ; preds = %100
  %107 = getelementptr inbounds [144 x i8], [144 x i8]* %1, i64 0, i64 0
  %108 = call i32 @trap_BotLibVarSet(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.21, i64 0, i64 0), i8* %107)
  br label %109

109:                                              ; preds = %106, %100
  %110 = getelementptr inbounds [144 x i8], [144 x i8]* %1, i64 0, i64 0
  %111 = call i32 @trap_Cvar_VariableStringBuffer(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.22, i64 0, i64 0), i8* %110, i32 144)
  %112 = getelementptr inbounds [144 x i8], [144 x i8]* %1, i64 0, i64 0
  %113 = call i64 @strlen(i8* %112)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %118

115:                                              ; preds = %109
  %116 = getelementptr inbounds [144 x i8], [144 x i8]* %1, i64 0, i64 0
  %117 = call i32 @trap_BotLibVarSet(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.23, i64 0, i64 0), i8* %116)
  br label %118

118:                                              ; preds = %115, %109
  %119 = getelementptr inbounds [144 x i8], [144 x i8]* %1, i64 0, i64 0
  %120 = call i32 @trap_Cvar_VariableStringBuffer(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.24, i64 0, i64 0), i8* %119, i32 144)
  %121 = getelementptr inbounds [144 x i8], [144 x i8]* %1, i64 0, i64 0
  %122 = call i64 @strlen(i8* %121)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %127, label %124

124:                                              ; preds = %118
  %125 = getelementptr inbounds [144 x i8], [144 x i8]* %1, i64 0, i64 0
  %126 = call i32 @strcpy(i8* %125, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  br label %127

127:                                              ; preds = %124, %118
  %128 = getelementptr inbounds [144 x i8], [144 x i8]* %1, i64 0, i64 0
  %129 = call i32 @trap_BotLibVarSet(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.24, i64 0, i64 0), i8* %128)
  %130 = getelementptr inbounds [144 x i8], [144 x i8]* %1, i64 0, i64 0
  %131 = call i32 @trap_Cvar_VariableStringBuffer(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.25, i64 0, i64 0), i8* %130, i32 144)
  %132 = getelementptr inbounds [144 x i8], [144 x i8]* %1, i64 0, i64 0
  %133 = call i64 @strlen(i8* %132)
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %138

135:                                              ; preds = %127
  %136 = getelementptr inbounds [144 x i8], [144 x i8]* %1, i64 0, i64 0
  %137 = call i32 @trap_BotLibVarSet(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.26, i64 0, i64 0), i8* %136)
  br label %138

138:                                              ; preds = %135, %127
  %139 = getelementptr inbounds [144 x i8], [144 x i8]* %1, i64 0, i64 0
  %140 = call i32 @trap_Cvar_VariableStringBuffer(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.27, i64 0, i64 0), i8* %139, i32 144)
  %141 = getelementptr inbounds [144 x i8], [144 x i8]* %1, i64 0, i64 0
  %142 = call i64 @strlen(i8* %141)
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %147

144:                                              ; preds = %138
  %145 = getelementptr inbounds [144 x i8], [144 x i8]* %1, i64 0, i64 0
  %146 = call i32 @trap_BotLibVarSet(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.28, i64 0, i64 0), i8* %145)
  br label %147

147:                                              ; preds = %144, %138
  %148 = getelementptr inbounds [144 x i8], [144 x i8]* %1, i64 0, i64 0
  %149 = call i32 @trap_Cvar_VariableStringBuffer(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.29, i64 0, i64 0), i8* %148, i32 144)
  %150 = getelementptr inbounds [144 x i8], [144 x i8]* %1, i64 0, i64 0
  %151 = call i64 @strlen(i8* %150)
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %156

153:                                              ; preds = %147
  %154 = getelementptr inbounds [144 x i8], [144 x i8]* %1, i64 0, i64 0
  %155 = call i32 @trap_BotLibVarSet(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.30, i64 0, i64 0), i8* %154)
  br label %156

156:                                              ; preds = %153, %147
  %157 = call i32 (...) @trap_BotLibSetup()
  ret i32 %157
}

declare dso_local i32 @Com_sprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @trap_BotLibVarSet(i8*, i8*) #1

declare dso_local i32 @trap_Cvar_VariableStringBuffer(i8*, i8*, i32) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @trap_BotLibSetup(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
