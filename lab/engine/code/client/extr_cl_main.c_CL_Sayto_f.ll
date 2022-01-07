; ModuleID = '/home/carl/AnghaBench/lab/engine/code/client/extr_cl_main.c_CL_Sayto_f.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/client/extr_cl_main.c_CL_Sayto_f.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i8*, i32* }

@MAX_NAME_LENGTH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"sayto <player name> <text>\0A\00", align 1
@cl = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@CS_SERVERINFO = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [14 x i8] c"sv_maxclients\00", align 1
@CS_PLAYERS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [2 x i8] c"n\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"No such player name: %s.\0A\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"tell %i \22%s\22\00", align 1
@qfalse = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CL_Sayto_f() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = load i32, i32* @MAX_NAME_LENGTH, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %2, align 8
  %14 = alloca i8, i64 %12, align 16
  store i64 %12, i64* %3, align 8
  %15 = load i32, i32* @MAX_NAME_LENGTH, align 4
  %16 = zext i32 %15 to i64
  %17 = alloca i8, i64 %16, align 16
  store i64 %16, i64* %4, align 8
  %18 = call i32 (...) @Cmd_Argc()
  %19 = icmp slt i32 %18, 3
  br i1 %19, label %20, label %22

20:                                               ; preds = %0
  %21 = call i32 (i8*, ...) @Com_Printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %10, align 4
  br label %91

22:                                               ; preds = %0
  %23 = call i8* @Cmd_Argv(i32 1)
  store i8* %23, i8** %1, align 8
  %24 = load i32, i32* @MAX_NAME_LENGTH, align 4
  %25 = load i8*, i8** %1, align 8
  %26 = call i32 @Com_FieldStringToPlayerName(i8* %14, i32 %24, i8* %25)
  %27 = load i8*, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cl, i32 0, i32 0, i32 0), align 8
  %28 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cl, i32 0, i32 0, i32 1), align 8
  %29 = load i64, i64* @CS_SERVERINFO, align 8
  %30 = getelementptr inbounds i32, i32* %28, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i8, i8* %27, i64 %32
  store i8* %33, i8** %5, align 8
  %34 = load i8*, i8** %5, align 8
  %35 = call i32 @Info_ValueForKey(i8* %34, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %36 = call i32 @atoi(i32 %35)
  store i32 %36, i32* %6, align 4
  store i32 -1, i32* %8, align 4
  store i32 0, i32* %7, align 4
  br label %37

37:                                               ; preds = %62, %22
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* %6, align 4
  %40 = icmp slt i32 %38, %39
  br i1 %40, label %41, label %65

41:                                               ; preds = %37
  %42 = load i8*, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cl, i32 0, i32 0, i32 0), align 8
  %43 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cl, i32 0, i32 0, i32 1), align 8
  %44 = load i32, i32* @CS_PLAYERS, align 4
  %45 = load i32, i32* %7, align 4
  %46 = add nsw i32 %44, %45
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %43, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i8, i8* %42, i64 %50
  store i8* %51, i8** %5, align 8
  %52 = load i8*, i8** %5, align 8
  %53 = call i32 @Info_ValueForKey(i8* %52, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %54 = trunc i64 %16 to i32
  %55 = call i32 @Q_strncpyz(i8* %17, i32 %53, i32 %54)
  %56 = call i32 @Q_CleanStr(i8* %17)
  %57 = call i32 @Q_stricmp(i8* %17, i8* %14)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %61, label %59

59:                                               ; preds = %41
  %60 = load i32, i32* %7, align 4
  store i32 %60, i32* %8, align 4
  br label %65

61:                                               ; preds = %41
  br label %62

62:                                               ; preds = %61
  %63 = load i32, i32* %7, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %7, align 4
  br label %37

65:                                               ; preds = %59, %37
  %66 = load i32, i32* %8, align 4
  %67 = icmp sle i32 %66, -1
  br i1 %67, label %68, label %70

68:                                               ; preds = %65
  %69 = call i32 (i8*, ...) @Com_Printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i8* %14)
  store i32 1, i32* %10, align 4
  br label %91

70:                                               ; preds = %65
  %71 = call i8* @Cmd_ArgsFrom(i32 2)
  store i8* %71, i8** %9, align 8
  %72 = load i8*, i8** %9, align 8
  %73 = load i8, i8* %72, align 1
  %74 = sext i8 %73 to i32
  %75 = icmp eq i32 %74, 34
  br i1 %75, label %76, label %85

76:                                               ; preds = %70
  %77 = load i8*, i8** %9, align 8
  %78 = getelementptr inbounds i8, i8* %77, i32 1
  store i8* %78, i8** %9, align 8
  %79 = load i8*, i8** %9, align 8
  %80 = load i8*, i8** %9, align 8
  %81 = call i32 @strlen(i8* %80)
  %82 = sub nsw i32 %81, 1
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i8, i8* %79, i64 %83
  store i8 0, i8* %84, align 1
  br label %85

85:                                               ; preds = %76, %70
  %86 = load i32, i32* %8, align 4
  %87 = load i8*, i8** %9, align 8
  %88 = call i32 @va(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i32 %86, i8* %87)
  %89 = load i32, i32* @qfalse, align 4
  %90 = call i32 @CL_AddReliableCommand(i32 %88, i32 %89)
  store i32 0, i32* %10, align 4
  br label %91

91:                                               ; preds = %85, %68, %20
  %92 = load i8*, i8** %2, align 8
  call void @llvm.stackrestore(i8* %92)
  %93 = load i32, i32* %10, align 4
  switch i32 %93, label %95 [
    i32 0, label %94
    i32 1, label %94
  ]

94:                                               ; preds = %91, %91
  ret void

95:                                               ; preds = %91
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @Cmd_Argc(...) #2

declare dso_local i32 @Com_Printf(i8*, ...) #2

declare dso_local i8* @Cmd_Argv(i32) #2

declare dso_local i32 @Com_FieldStringToPlayerName(i8*, i32, i8*) #2

declare dso_local i32 @atoi(i32) #2

declare dso_local i32 @Info_ValueForKey(i8*, i8*) #2

declare dso_local i32 @Q_strncpyz(i8*, i32, i32) #2

declare dso_local i32 @Q_CleanStr(i8*) #2

declare dso_local i32 @Q_stricmp(i8*, i8*) #2

declare dso_local i8* @Cmd_ArgsFrom(i32) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @CL_AddReliableCommand(i32, i32) #2

declare dso_local i32 @va(i8*, i32, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
