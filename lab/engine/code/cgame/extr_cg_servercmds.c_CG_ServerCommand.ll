; ModuleID = '/home/carl/AnghaBench/lab/engine/code/cgame/extr_cg_servercmds.c_CG_ServerCommand.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/cgame/extr_cg_servercmds.c_CG_ServerCommand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, i32 }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_8__ = type { i32 }

@MAX_SAY_TEXT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"cp\00", align 1
@SCREEN_HEIGHT = common dso_local global double 0.000000e+00, align 8
@BIGCHAR_WIDTH = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"cs\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"print\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"chat\00", align 1
@cgs = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@GT_TEAM = common dso_local global i64 0, align 8
@cg_teamChatsOnly = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@CHAN_LOCAL_SOUND = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"tchat\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"scores\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"tinfo\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"map_restart\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c"remapShader\00", align 1
@MAX_QPATH = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [12 x i8] c"loaddefered\00", align 1
@.str.12 = private unnamed_addr constant [16 x i8] c"clientLevelShot\00", align 1
@qtrue = common dso_local global i32 0, align 4
@cg = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@.str.13 = private unnamed_addr constant [33 x i8] c"Unknown client game command: %s\0A\00", align 1
@CHAN_ANNOUNCER = common dso_local global i32 0, align 4
@SAY_ALL = common dso_local global i32 0, align 4
@SAY_TEAM = common dso_local global i32 0, align 4
@SAY_TELL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @CG_ServerCommand to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @CG_ServerCommand() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = load i32, i32* @MAX_SAY_TEXT, align 4
  %10 = zext i32 %9 to i64
  %11 = call i8* @llvm.stacksave()
  store i8* %11, i8** %2, align 8
  %12 = alloca i8, i64 %10, align 16
  store i64 %10, i64* %3, align 8
  %13 = call i8* @CG_Argv(i32 0)
  store i8* %13, i8** %1, align 8
  %14 = load i8*, i8** %1, align 8
  %15 = getelementptr inbounds i8, i8* %14, i64 0
  %16 = load i8, i8* %15, align 1
  %17 = icmp ne i8 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %0
  store i32 1, i32* %4, align 4
  br label %140

19:                                               ; preds = %0
  %20 = load i8*, i8** %1, align 8
  %21 = call i32 @strcmp(i8* %20, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %29, label %23

23:                                               ; preds = %19
  %24 = call i8* @CG_Argv(i32 1)
  %25 = load double, double* @SCREEN_HEIGHT, align 8
  %26 = fmul double %25, 3.000000e-01
  %27 = load i32, i32* @BIGCHAR_WIDTH, align 4
  %28 = call i32 @CG_CenterPrint(i8* %24, double %26, i32 %27)
  store i32 1, i32* %4, align 4
  br label %140

29:                                               ; preds = %19
  %30 = load i8*, i8** %1, align 8
  %31 = call i32 @strcmp(i8* %30, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %35, label %33

33:                                               ; preds = %29
  %34 = call i32 (...) @CG_ConfigStringModified()
  store i32 1, i32* %4, align 4
  br label %140

35:                                               ; preds = %29
  %36 = load i8*, i8** %1, align 8
  %37 = call i32 @strcmp(i8* %36, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %42, label %39

39:                                               ; preds = %35
  %40 = call i8* @CG_Argv(i32 1)
  %41 = call i32 @CG_Printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* %40)
  store i32 1, i32* %4, align 4
  br label %140

42:                                               ; preds = %35
  %43 = load i8*, i8** %1, align 8
  %44 = call i32 @strcmp(i8* %43, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %63, label %46

46:                                               ; preds = %42
  %47 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cgs, i32 0, i32 0), align 8
  %48 = load i64, i64* @GT_TEAM, align 8
  %49 = icmp sge i64 %47, %48
  br i1 %49, label %50, label %54

50:                                               ; preds = %46
  %51 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @cg_teamChatsOnly, i32 0, i32 0), align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %50
  store i32 1, i32* %4, align 4
  br label %140

54:                                               ; preds = %50, %46
  %55 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cgs, i32 0, i32 1, i32 0), align 8
  %56 = load i32, i32* @CHAN_LOCAL_SOUND, align 4
  %57 = call i32 @trap_S_StartLocalSound(i32 %55, i32 %56)
  %58 = call i8* @CG_Argv(i32 1)
  %59 = load i32, i32* @MAX_SAY_TEXT, align 4
  %60 = call i32 @Q_strncpyz(i8* %12, i8* %58, i32 %59)
  %61 = call i32 @CG_RemoveChatEscapeChar(i8* %12)
  %62 = call i32 @CG_Printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i8* %12)
  store i32 1, i32* %4, align 4
  br label %140

63:                                               ; preds = %42
  %64 = load i8*, i8** %1, align 8
  %65 = call i32 @strcmp(i8* %64, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %77, label %67

67:                                               ; preds = %63
  %68 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cgs, i32 0, i32 1, i32 0), align 8
  %69 = load i32, i32* @CHAN_LOCAL_SOUND, align 4
  %70 = call i32 @trap_S_StartLocalSound(i32 %68, i32 %69)
  %71 = call i8* @CG_Argv(i32 1)
  %72 = load i32, i32* @MAX_SAY_TEXT, align 4
  %73 = call i32 @Q_strncpyz(i8* %12, i8* %71, i32 %72)
  %74 = call i32 @CG_RemoveChatEscapeChar(i8* %12)
  %75 = call i32 @CG_AddToTeamChat(i8* %12)
  %76 = call i32 @CG_Printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i8* %12)
  store i32 1, i32* %4, align 4
  br label %140

77:                                               ; preds = %63
  %78 = load i8*, i8** %1, align 8
  %79 = call i32 @strcmp(i8* %78, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0))
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %83, label %81

81:                                               ; preds = %77
  %82 = call i32 (...) @CG_ParseScores()
  store i32 1, i32* %4, align 4
  br label %140

83:                                               ; preds = %77
  %84 = load i8*, i8** %1, align 8
  %85 = call i32 @strcmp(i8* %84, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0))
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %89, label %87

87:                                               ; preds = %83
  %88 = call i32 (...) @CG_ParseTeamInfo()
  store i32 1, i32* %4, align 4
  br label %140

89:                                               ; preds = %83
  %90 = load i8*, i8** %1, align 8
  %91 = call i32 @strcmp(i8* %90, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i64 0, i64 0))
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %95, label %93

93:                                               ; preds = %89
  %94 = call i32 (...) @CG_MapRestart()
  store i32 1, i32* %4, align 4
  br label %140

95:                                               ; preds = %89
  %96 = load i8*, i8** %1, align 8
  %97 = call i64 @Q_stricmp(i8* %96, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i64 0, i64 0))
  %98 = icmp eq i64 %97, 0
  br i1 %98, label %99, label %125

99:                                               ; preds = %95
  %100 = call i32 (...) @trap_Argc()
  %101 = icmp eq i32 %100, 4
  br i1 %101, label %102, label %124

102:                                              ; preds = %99
  %103 = load i32, i32* @MAX_QPATH, align 4
  %104 = zext i32 %103 to i64
  %105 = call i8* @llvm.stacksave()
  store i8* %105, i8** %5, align 8
  %106 = alloca i8, i64 %104, align 16
  store i64 %104, i64* %6, align 8
  %107 = load i32, i32* @MAX_QPATH, align 4
  %108 = zext i32 %107 to i64
  %109 = alloca i8, i64 %108, align 16
  store i64 %108, i64* %7, align 8
  %110 = load i32, i32* @MAX_QPATH, align 4
  %111 = zext i32 %110 to i64
  %112 = alloca i8, i64 %111, align 16
  store i64 %111, i64* %8, align 8
  %113 = call i8* @CG_Argv(i32 1)
  %114 = trunc i64 %104 to i32
  %115 = call i32 @Q_strncpyz(i8* %106, i8* %113, i32 %114)
  %116 = call i8* @CG_Argv(i32 2)
  %117 = trunc i64 %108 to i32
  %118 = call i32 @Q_strncpyz(i8* %109, i8* %116, i32 %117)
  %119 = call i8* @CG_Argv(i32 3)
  %120 = trunc i64 %111 to i32
  %121 = call i32 @Q_strncpyz(i8* %112, i8* %119, i32 %120)
  %122 = call i32 @trap_R_RemapShader(i8* %106, i8* %109, i8* %112)
  %123 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %123)
  br label %124

124:                                              ; preds = %102, %99
  store i32 1, i32* %4, align 4
  br label %140

125:                                              ; preds = %95
  %126 = load i8*, i8** %1, align 8
  %127 = call i32 @strcmp(i8* %126, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i64 0, i64 0))
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %131, label %129

129:                                              ; preds = %125
  %130 = call i32 (...) @CG_LoadDeferredPlayers()
  store i32 1, i32* %4, align 4
  br label %140

131:                                              ; preds = %125
  %132 = load i8*, i8** %1, align 8
  %133 = call i32 @strcmp(i8* %132, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.12, i64 0, i64 0))
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %137, label %135

135:                                              ; preds = %131
  %136 = load i32, i32* @qtrue, align 4
  store i32 %136, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @cg, i32 0, i32 0), align 4
  store i32 1, i32* %4, align 4
  br label %140

137:                                              ; preds = %131
  %138 = load i8*, i8** %1, align 8
  %139 = call i32 @CG_Printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.13, i64 0, i64 0), i8* %138)
  store i32 0, i32* %4, align 4
  br label %140

140:                                              ; preds = %137, %135, %129, %124, %93, %87, %81, %67, %54, %53, %39, %33, %23, %18
  %141 = load i8*, i8** %2, align 8
  call void @llvm.stackrestore(i8* %141)
  %142 = load i32, i32* %4, align 4
  switch i32 %142, label %144 [
    i32 0, label %143
    i32 1, label %143
  ]

143:                                              ; preds = %140, %140
  ret void

144:                                              ; preds = %140
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i8* @CG_Argv(i32) #2

declare dso_local i32 @strcmp(i8*, i8*) #2

declare dso_local i32 @CG_CenterPrint(i8*, double, i32) #2

declare dso_local i32 @CG_ConfigStringModified(...) #2

declare dso_local i32 @CG_Printf(i8*, i8*) #2

declare dso_local i32 @trap_S_StartLocalSound(i32, i32) #2

declare dso_local i32 @Q_strncpyz(i8*, i8*, i32) #2

declare dso_local i32 @CG_RemoveChatEscapeChar(i8*) #2

declare dso_local i32 @CG_AddToTeamChat(i8*) #2

declare dso_local i32 @CG_ParseScores(...) #2

declare dso_local i32 @CG_ParseTeamInfo(...) #2

declare dso_local i32 @CG_MapRestart(...) #2

declare dso_local i64 @Q_stricmp(i8*, i8*) #2

declare dso_local i32 @trap_Argc(...) #2

declare dso_local i32 @trap_R_RemapShader(i8*, i8*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

declare dso_local i32 @CG_LoadDeferredPlayers(...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
