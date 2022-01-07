; ModuleID = '/home/carl/AnghaBench/lab/engine/code/server/extr_sv_ccmds.c_SV_ConSayto_f.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/server/extr_sv_ccmds.c_SV_ConSayto_f.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32 }

@MAX_NAME_LENGTH = common dso_local global i32 0, align 4
@com_sv_running = common dso_local global %struct.TYPE_9__* null, align 8
@.str = private unnamed_addr constant [24 x i8] c"Server is not running.\0A\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"Usage: sayto <player name> <text>\0A\00", align 1
@svs = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@sv_maxclients = common dso_local global %struct.TYPE_8__* null, align 8
@.str.2 = private unnamed_addr constant [26 x i8] c"No such player name: %s.\0A\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"console_sayto: \00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"chat \22%s\22\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @SV_ConSayto_f to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @SV_ConSayto_f() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca [1024 x i8], align 16
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_6__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = load i32, i32* @MAX_NAME_LENGTH, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %5, align 8
  %14 = alloca i8, i64 %12, align 16
  store i64 %12, i64* %6, align 8
  %15 = load i32, i32* @MAX_NAME_LENGTH, align 4
  %16 = zext i32 %15 to i64
  %17 = alloca i8, i64 %16, align 16
  store i64 %16, i64* %7, align 8
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** @com_sv_running, align 8
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %0
  %23 = call i32 (i8*, ...) @Com_Printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %10, align 4
  br label %95

24:                                               ; preds = %0
  %25 = call i32 (...) @Cmd_Argc()
  %26 = icmp slt i32 %25, 3
  br i1 %26, label %27, label %29

27:                                               ; preds = %24
  %28 = call i32 (i8*, ...) @Com_Printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %10, align 4
  br label %95

29:                                               ; preds = %24
  %30 = call i8* @Cmd_Argv(i32 1)
  store i8* %30, i8** %4, align 8
  %31 = load i32, i32* @MAX_NAME_LENGTH, align 4
  %32 = load i8*, i8** %4, align 8
  %33 = call i32 @Com_FieldStringToPlayerName(i8* %14, i32 %31, i8* %32)
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %8, align 8
  store i32 0, i32* %9, align 4
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @svs, i32 0, i32 0), align 8
  store %struct.TYPE_6__* %34, %struct.TYPE_6__** %3, align 8
  br label %35

35:                                               ; preds = %59, %29
  %36 = load i32, i32* %9, align 4
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** @sv_maxclients, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = icmp slt i32 %36, %39
  br i1 %40, label %41, label %64

41:                                               ; preds = %35
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %41
  br label %59

47:                                               ; preds = %41
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = trunc i64 %16 to i32
  %52 = call i32 @Q_strncpyz(i8* %17, i32 %50, i32 %51)
  %53 = call i32 @Q_CleanStr(i8* %17)
  %54 = call i32 @Q_stricmp(i8* %17, i8* %14)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %58, label %56

56:                                               ; preds = %47
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  store %struct.TYPE_6__* %57, %struct.TYPE_6__** %8, align 8
  br label %64

58:                                               ; preds = %47
  br label %59

59:                                               ; preds = %58, %46
  %60 = load i32, i32* %9, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %9, align 4
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 1
  store %struct.TYPE_6__* %63, %struct.TYPE_6__** %3, align 8
  br label %35

64:                                               ; preds = %56, %35
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %66 = icmp ne %struct.TYPE_6__* %65, null
  br i1 %66, label %69, label %67

67:                                               ; preds = %64
  %68 = call i32 (i8*, ...) @Com_Printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i8* %14)
  store i32 1, i32* %10, align 4
  br label %95

69:                                               ; preds = %64
  %70 = getelementptr inbounds [1024 x i8], [1024 x i8]* %2, i64 0, i64 0
  %71 = call i32 @strcpy(i8* %70, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  %72 = call i8* @Cmd_ArgsFrom(i32 2)
  store i8* %72, i8** %1, align 8
  %73 = load i8*, i8** %1, align 8
  %74 = load i8, i8* %73, align 1
  %75 = sext i8 %74 to i32
  %76 = icmp eq i32 %75, 34
  br i1 %76, label %77, label %86

77:                                               ; preds = %69
  %78 = load i8*, i8** %1, align 8
  %79 = getelementptr inbounds i8, i8* %78, i32 1
  store i8* %79, i8** %1, align 8
  %80 = load i8*, i8** %1, align 8
  %81 = load i8*, i8** %1, align 8
  %82 = call i32 @strlen(i8* %81)
  %83 = sub nsw i32 %82, 1
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i8, i8* %80, i64 %84
  store i8 0, i8* %85, align 1
  br label %86

86:                                               ; preds = %77, %69
  %87 = getelementptr inbounds [1024 x i8], [1024 x i8]* %2, i64 0, i64 0
  %88 = load i8*, i8** %1, align 8
  %89 = call i32 @strcat(i8* %87, i8* %88)
  %90 = getelementptr inbounds [1024 x i8], [1024 x i8]* %2, i64 0, i64 0
  %91 = call i32 (i8*, ...) @Com_Printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8* %90)
  %92 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %93 = getelementptr inbounds [1024 x i8], [1024 x i8]* %2, i64 0, i64 0
  %94 = call i32 @SV_SendServerCommand(%struct.TYPE_6__* %92, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i8* %93)
  store i32 0, i32* %10, align 4
  br label %95

95:                                               ; preds = %86, %67, %27, %22
  %96 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %96)
  %97 = load i32, i32* %10, align 4
  switch i32 %97, label %99 [
    i32 0, label %98
    i32 1, label %98
  ]

98:                                               ; preds = %95, %95
  ret void

99:                                               ; preds = %95
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @Com_Printf(i8*, ...) #2

declare dso_local i32 @Cmd_Argc(...) #2

declare dso_local i8* @Cmd_Argv(i32) #2

declare dso_local i32 @Com_FieldStringToPlayerName(i8*, i32, i8*) #2

declare dso_local i32 @Q_strncpyz(i8*, i32, i32) #2

declare dso_local i32 @Q_CleanStr(i8*) #2

declare dso_local i32 @Q_stricmp(i8*, i8*) #2

declare dso_local i32 @strcpy(i8*, i8*) #2

declare dso_local i8* @Cmd_ArgsFrom(i32) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @strcat(i8*, i8*) #2

declare dso_local i32 @SV_SendServerCommand(%struct.TYPE_6__*, i8*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
