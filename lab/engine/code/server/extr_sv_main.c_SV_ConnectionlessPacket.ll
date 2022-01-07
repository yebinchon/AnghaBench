; ModuleID = '/home/carl/AnghaBench/lab/engine/code/server/extr_sv_main.c_SV_ConnectionlessPacket.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/server/extr_sv_main.c_SV_ConnectionlessPacket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32* }

@.str = private unnamed_addr constant [8 x i8] c"connect\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"SV packet %s : %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"getstatus\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"getinfo\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"getchallenge\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"ipAuthorize\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"rcon\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"disconnect\00", align 1
@.str.8 = private unnamed_addr constant [39 x i8] c"bad connectionless packet from %s:\0A%s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.TYPE_8__*)* @SV_ConnectionlessPacket to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @SV_ConnectionlessPacket(i32 %0, %struct.TYPE_8__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %4, align 8
  %7 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %8 = call i32 @MSG_BeginReadingOOB(%struct.TYPE_8__* %7)
  %9 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %10 = call i32 @MSG_ReadLong(%struct.TYPE_8__* %9)
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  %14 = getelementptr inbounds i32, i32* %13, i64 4
  %15 = bitcast i32* %14 to i8*
  %16 = call i32 @Q_strncmp(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* %15, i32 7)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %2
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %20 = call i32 @Huff_Decompress(%struct.TYPE_8__* %19, i32 12)
  br label %21

21:                                               ; preds = %18, %2
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %23 = call i8* @MSG_ReadStringLine(%struct.TYPE_8__* %22)
  store i8* %23, i8** %5, align 8
  %24 = load i8*, i8** %5, align 8
  %25 = call i32 @Cmd_TokenizeString(i8* %24)
  %26 = call i8* @Cmd_Argv(i32 0)
  store i8* %26, i8** %6, align 8
  %27 = load i32, i32* %3, align 4
  %28 = call i32 @NET_AdrToString(i32 %27)
  %29 = load i8*, i8** %6, align 8
  %30 = call i32 @Com_DPrintf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %28, i8* %29)
  %31 = load i8*, i8** %6, align 8
  %32 = call i32 @Q_stricmp(i8* %31, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %21
  %35 = load i32, i32* %3, align 4
  %36 = call i32 @SVC_Status(i32 %35)
  br label %89

37:                                               ; preds = %21
  %38 = load i8*, i8** %6, align 8
  %39 = call i32 @Q_stricmp(i8* %38, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %37
  %42 = load i32, i32* %3, align 4
  %43 = call i32 @SVC_Info(i32 %42)
  br label %88

44:                                               ; preds = %37
  %45 = load i8*, i8** %6, align 8
  %46 = call i32 @Q_stricmp(i8* %45, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0))
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %51, label %48

48:                                               ; preds = %44
  %49 = load i32, i32* %3, align 4
  %50 = call i32 @SV_GetChallenge(i32 %49)
  br label %87

51:                                               ; preds = %44
  %52 = load i8*, i8** %6, align 8
  %53 = call i32 @Q_stricmp(i8* %52, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %58, label %55

55:                                               ; preds = %51
  %56 = load i32, i32* %3, align 4
  %57 = call i32 @SV_DirectConnect(i32 %56)
  br label %86

58:                                               ; preds = %51
  %59 = load i8*, i8** %6, align 8
  %60 = call i32 @Q_stricmp(i8* %59, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0))
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %65, label %62

62:                                               ; preds = %58
  %63 = load i32, i32* %3, align 4
  %64 = call i32 @SV_AuthorizeIpPacket(i32 %63)
  br label %85

65:                                               ; preds = %58
  %66 = load i8*, i8** %6, align 8
  %67 = call i32 @Q_stricmp(i8* %66, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %73, label %69

69:                                               ; preds = %65
  %70 = load i32, i32* %3, align 4
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %72 = call i32 @SVC_RemoteCommand(i32 %70, %struct.TYPE_8__* %71)
  br label %84

73:                                               ; preds = %65
  %74 = load i8*, i8** %6, align 8
  %75 = call i32 @Q_stricmp(i8* %74, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0))
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %78, label %77

77:                                               ; preds = %73
  br label %83

78:                                               ; preds = %73
  %79 = load i32, i32* %3, align 4
  %80 = call i32 @NET_AdrToString(i32 %79)
  %81 = load i8*, i8** %5, align 8
  %82 = call i32 @Com_DPrintf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.8, i64 0, i64 0), i32 %80, i8* %81)
  br label %83

83:                                               ; preds = %78, %77
  br label %84

84:                                               ; preds = %83, %69
  br label %85

85:                                               ; preds = %84, %62
  br label %86

86:                                               ; preds = %85, %55
  br label %87

87:                                               ; preds = %86, %48
  br label %88

88:                                               ; preds = %87, %41
  br label %89

89:                                               ; preds = %88, %34
  ret void
}

declare dso_local i32 @MSG_BeginReadingOOB(%struct.TYPE_8__*) #1

declare dso_local i32 @MSG_ReadLong(%struct.TYPE_8__*) #1

declare dso_local i32 @Q_strncmp(i8*, i8*, i32) #1

declare dso_local i32 @Huff_Decompress(%struct.TYPE_8__*, i32) #1

declare dso_local i8* @MSG_ReadStringLine(%struct.TYPE_8__*) #1

declare dso_local i32 @Cmd_TokenizeString(i8*) #1

declare dso_local i8* @Cmd_Argv(i32) #1

declare dso_local i32 @Com_DPrintf(i8*, i32, i8*) #1

declare dso_local i32 @NET_AdrToString(i32) #1

declare dso_local i32 @Q_stricmp(i8*, i8*) #1

declare dso_local i32 @SVC_Status(i32) #1

declare dso_local i32 @SVC_Info(i32) #1

declare dso_local i32 @SV_GetChallenge(i32) #1

declare dso_local i32 @SV_DirectConnect(i32) #1

declare dso_local i32 @SV_AuthorizeIpPacket(i32) #1

declare dso_local i32 @SVC_RemoteCommand(i32, %struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
