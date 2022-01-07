; ModuleID = '/home/carl/AnghaBench/lab/engine/code/server/extr_sv_main.c_SVC_Status.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/server/extr_sv_main.c_SVC_Status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64, i32, i32 }
%struct.TYPE_6__ = type { i32* }

@MAX_MSGLEN = common dso_local global i32 0, align 4
@MAX_INFO_STRING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"g_gametype\00", align 1
@GT_SINGLE_PLAYER = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [22 x i8] c"ui_singlePlayerActive\00", align 1
@.str.2 = private unnamed_addr constant [59 x i8] c"SVC_Status: rate limit from %s exceeded, dropping request\0A\00", align 1
@outboundLeakyBucket = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [51 x i8] c"SVC_Status: rate limit exceeded, dropping request\0A\00", align 1
@CVAR_SERVERINFO = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [10 x i8] c"challenge\00", align 1
@sv_maxclients = common dso_local global %struct.TYPE_9__* null, align 8
@svs = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@CS_CONNECTED = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [12 x i8] c"%i %i \22%s\22\0A\00", align 1
@PERS_SCORE = common dso_local global i64 0, align 8
@NS_SERVER = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [21 x i8] c"statusResponse\0A%s\0A%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @SVC_Status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @SVC_Status(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca [1024 x i8], align 16
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca %struct.TYPE_6__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %13 = load i32, i32* @MAX_MSGLEN, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %4, align 8
  %16 = alloca i8, i64 %14, align 16
  store i64 %14, i64* %5, align 8
  %17 = load i32, i32* @MAX_INFO_STRING, align 4
  %18 = zext i32 %17 to i64
  %19 = alloca i8, i64 %18, align 16
  store i64 %18, i64* %11, align 8
  %20 = call i64 @Cvar_VariableValue(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %21 = load i64, i64* @GT_SINGLE_PLAYER, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %26, label %23

23:                                               ; preds = %1
  %24 = call i64 @Cvar_VariableValue(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %23, %1
  store i32 1, i32* %12, align 4
  br label %110

27:                                               ; preds = %23
  %28 = load i32, i32* %2, align 4
  %29 = call i64 @SVC_RateLimitAddress(i32 %28, i32 10, i32 1000)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %27
  %32 = load i32, i32* %2, align 4
  %33 = call i32 @NET_AdrToString(i32 %32)
  %34 = call i32 (i8*, ...) @Com_DPrintf(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.2, i64 0, i64 0), i32 %33)
  store i32 1, i32* %12, align 4
  br label %110

35:                                               ; preds = %27
  %36 = call i64 @SVC_RateLimit(i32* @outboundLeakyBucket, i32 10, i32 100)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %35
  %39 = call i32 (i8*, ...) @Com_DPrintf(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.3, i64 0, i64 0))
  store i32 1, i32* %12, align 4
  br label %110

40:                                               ; preds = %35
  %41 = call i8* @Cmd_Argv(i32 1)
  %42 = call i32 @strlen(i8* %41)
  %43 = icmp sgt i32 %42, 128
  br i1 %43, label %44, label %45

44:                                               ; preds = %40
  store i32 1, i32* %12, align 4
  br label %110

45:                                               ; preds = %40
  %46 = load i32, i32* @CVAR_SERVERINFO, align 4
  %47 = call i8* @Cvar_InfoString(i32 %46)
  %48 = call i32 @strcpy(i8* %19, i8* %47)
  %49 = call i8* @Cmd_Argv(i32 1)
  %50 = call i32 @Info_SetValueForKey(i8* %19, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i8* %49)
  %51 = getelementptr inbounds i8, i8* %16, i64 0
  store i8 0, i8* %51, align 16
  store i32 0, i32* %9, align 4
  store i32 0, i32* %6, align 4
  br label %52

52:                                               ; preds = %103, %45
  %53 = load i32, i32* %6, align 4
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** @sv_maxclients, align 8
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = icmp slt i32 %53, %56
  br i1 %57, label %58, label %106

58:                                               ; preds = %52
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @svs, i32 0, i32 0), align 8
  %60 = load i32, i32* %6, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i64 %61
  store %struct.TYPE_7__* %62, %struct.TYPE_7__** %7, align 8
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @CS_CONNECTED, align 8
  %67 = icmp sge i64 %65, %66
  br i1 %67, label %68, label %102

68:                                               ; preds = %58
  %69 = load i32, i32* %6, align 4
  %70 = call %struct.TYPE_6__* @SV_GameClientNum(i32 %69)
  store %struct.TYPE_6__* %70, %struct.TYPE_6__** %8, align 8
  %71 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 0
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 0
  %74 = load i32*, i32** %73, align 8
  %75 = load i64, i64* @PERS_SCORE, align 8
  %76 = getelementptr inbounds i32, i32* %74, i64 %75
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 8
  %84 = call i32 @Com_sprintf(i8* %71, i32 1024, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i32 %77, i32 %80, i32 %83)
  %85 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 0
  %86 = call i32 @strlen(i8* %85)
  store i32 %86, i32* %10, align 4
  %87 = load i32, i32* %9, align 4
  %88 = load i32, i32* %10, align 4
  %89 = add nsw i32 %87, %88
  %90 = sext i32 %89 to i64
  %91 = icmp uge i64 %90, %14
  br i1 %91, label %92, label %93

92:                                               ; preds = %68
  br label %106

93:                                               ; preds = %68
  %94 = load i32, i32* %9, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i8, i8* %16, i64 %95
  %97 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 0
  %98 = call i32 @strcpy(i8* %96, i8* %97)
  %99 = load i32, i32* %10, align 4
  %100 = load i32, i32* %9, align 4
  %101 = add nsw i32 %100, %99
  store i32 %101, i32* %9, align 4
  br label %102

102:                                              ; preds = %93, %58
  br label %103

103:                                              ; preds = %102
  %104 = load i32, i32* %6, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %6, align 4
  br label %52

106:                                              ; preds = %92, %52
  %107 = load i32, i32* @NS_SERVER, align 4
  %108 = load i32, i32* %2, align 4
  %109 = call i32 @NET_OutOfBandPrint(i32 %107, i32 %108, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0), i8* %19, i8* %16)
  store i32 0, i32* %12, align 4
  br label %110

110:                                              ; preds = %106, %44, %38, %31, %26
  %111 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %111)
  %112 = load i32, i32* %12, align 4
  switch i32 %112, label %114 [
    i32 0, label %113
    i32 1, label %113
  ]

113:                                              ; preds = %110, %110
  ret void

114:                                              ; preds = %110
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @Cvar_VariableValue(i8*) #2

declare dso_local i64 @SVC_RateLimitAddress(i32, i32, i32) #2

declare dso_local i32 @Com_DPrintf(i8*, ...) #2

declare dso_local i32 @NET_AdrToString(i32) #2

declare dso_local i64 @SVC_RateLimit(i32*, i32, i32) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i8* @Cmd_Argv(i32) #2

declare dso_local i32 @strcpy(i8*, i8*) #2

declare dso_local i8* @Cvar_InfoString(i32) #2

declare dso_local i32 @Info_SetValueForKey(i8*, i8*, i8*) #2

declare dso_local %struct.TYPE_6__* @SV_GameClientNum(i32) #2

declare dso_local i32 @Com_sprintf(i8*, i32, i8*, i32, i32, i32) #2

declare dso_local i32 @NET_OutOfBandPrint(i32, i32, i8*, i8*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
