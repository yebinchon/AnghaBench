; ModuleID = '/home/carl/AnghaBench/lab/engine/code/client/extr_cl_main.c_CL_CheckForResend.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/client/extr_cl_main.c_CL_CheckForResend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, i64, i32, %struct.TYPE_16__, i32, i32, i64 }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_14__ = type { i64 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_12__ = type { i32 }

@MAX_INFO_STRING = common dso_local global i32 0, align 4
@clc = common dso_local global %struct.TYPE_15__ zeroinitializer, align 8
@cls = common dso_local global %struct.TYPE_14__ zeroinitializer, align 8
@RETRANSMIT_TIMEOUT = common dso_local global i64 0, align 8
@com_standalone = common dso_local global %struct.TYPE_10__* null, align 8
@NA_IP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"getchallenge %d %s\00", align 1
@com_gamename = common dso_local global %struct.TYPE_13__* null, align 8
@NS_CLIENT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"net_qport\00", align 1
@CVAR_USERINFO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [9 x i8] c"protocol\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"%i\00", align 1
@com_protocol = common dso_local global %struct.TYPE_11__* null, align 8
@.str.5 = private unnamed_addr constant [6 x i8] c"qport\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"challenge\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"connect \22%s\22\00", align 1
@cvar_modifiedFlags = common dso_local global i32 0, align 4
@ERR_FATAL = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [33 x i8] c"CL_CheckForResend: bad clc.state\00", align 1
@com_legacyprotocol = common dso_local global %struct.TYPE_12__* null, align 8
@qtrue = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CL_CheckForResend() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = load i32, i32* @MAX_INFO_STRING, align 4
  %7 = zext i32 %6 to i64
  %8 = call i8* @llvm.stacksave()
  store i8* %8, i8** %2, align 8
  %9 = alloca i8, i64 %7, align 16
  store i64 %7, i64* %3, align 8
  %10 = load i32, i32* @MAX_INFO_STRING, align 4
  %11 = add nsw i32 %10, 10
  %12 = zext i32 %11 to i64
  %13 = alloca i8, i64 %12, align 16
  store i64 %12, i64* %4, align 8
  %14 = load i64, i64* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @clc, i32 0, i32 6), align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %0
  store i32 1, i32* %5, align 4
  br label %93

17:                                               ; preds = %0
  %18 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @clc, i32 0, i32 0), align 8
  %19 = icmp ne i32 %18, 128
  br i1 %19, label %20, label %24

20:                                               ; preds = %17
  %21 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @clc, i32 0, i32 0), align 8
  %22 = icmp ne i32 %21, 129
  br i1 %22, label %23, label %24

23:                                               ; preds = %20
  store i32 1, i32* %5, align 4
  br label %93

24:                                               ; preds = %20, %17
  %25 = load i64, i64* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @cls, i32 0, i32 0), align 8
  %26 = load i64, i64* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @clc, i32 0, i32 1), align 8
  %27 = sub nsw i64 %25, %26
  %28 = load i64, i64* @RETRANSMIT_TIMEOUT, align 8
  %29 = icmp slt i64 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %24
  store i32 1, i32* %5, align 4
  br label %93

31:                                               ; preds = %24
  %32 = load i64, i64* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @cls, i32 0, i32 0), align 8
  store i64 %32, i64* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @clc, i32 0, i32 1), align 8
  %33 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @clc, i32 0, i32 5), align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @clc, i32 0, i32 5), align 4
  %35 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @clc, i32 0, i32 0), align 8
  switch i32 %35, label %89 [
    i32 128, label %36
    i32 129, label %61
  ]

36:                                               ; preds = %31
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** @com_standalone, align 8
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %51, label %41

41:                                               ; preds = %36
  %42 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @clc, i32 0, i32 3, i32 0), align 4
  %43 = load i32, i32* @NA_IP, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %51

45:                                               ; preds = %41
  %46 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @clc, i32 0, i32 3, i32 0), align 4
  %47 = call i32 @Sys_IsLANAddress(i32 %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %51, label %49

49:                                               ; preds = %45
  %50 = call i32 (...) @CL_RequestAuthorization()
  br label %51

51:                                               ; preds = %49, %45, %41, %36
  %52 = trunc i64 %12 to i32
  %53 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @clc, i32 0, i32 2), align 8
  %54 = load %struct.TYPE_13__*, %struct.TYPE_13__** @com_gamename, align 8
  %55 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 (i8*, i32, i8*, ...) @Com_sprintf(i8* %13, i32 %52, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %53, i32 %56)
  %58 = load i32, i32* @NS_CLIENT, align 4
  %59 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @clc, i32 0, i32 3, i32 0), align 4
  %60 = call i32 @NET_OutOfBandPrint(i32 %58, i32 %59, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %13)
  br label %92

61:                                               ; preds = %31
  %62 = call i32 @Cvar_VariableValue(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  store i32 %62, i32* %1, align 4
  %63 = load i32, i32* @CVAR_USERINFO, align 4
  %64 = call i32 @Cvar_InfoString(i32 %63)
  %65 = trunc i64 %7 to i32
  %66 = call i32 @Q_strncpyz(i8* %9, i32 %64, i32 %65)
  %67 = load %struct.TYPE_11__*, %struct.TYPE_11__** @com_protocol, align 8
  %68 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @va(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i32 %69)
  %71 = call i32 @Info_SetValueForKey(i8* %9, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i32 %70)
  %72 = load i32, i32* %1, align 4
  %73 = call i32 @va(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i32 %72)
  %74 = call i32 @Info_SetValueForKey(i8* %9, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i32 %73)
  %75 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @clc, i32 0, i32 2), align 8
  %76 = call i32 @va(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i32 %75)
  %77 = call i32 @Info_SetValueForKey(i8* %9, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0), i32 %76)
  %78 = trunc i64 %12 to i32
  %79 = call i32 (i8*, i32, i8*, ...) @Com_sprintf(i8* %13, i32 %78, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0), i8* %9)
  %80 = load i32, i32* @NS_CLIENT, align 4
  %81 = bitcast i8* %13 to i32*
  %82 = call i32 @strlen(i8* %13)
  %83 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @clc, i32 0, i32 3, i32 0), align 4
  %84 = call i32 @NET_OutOfBandData(i32 %80, i32 %83, i32* %81, i32 %82)
  %85 = load i32, i32* @CVAR_USERINFO, align 4
  %86 = xor i32 %85, -1
  %87 = load i32, i32* @cvar_modifiedFlags, align 4
  %88 = and i32 %87, %86
  store i32 %88, i32* @cvar_modifiedFlags, align 4
  br label %92

89:                                               ; preds = %31
  %90 = load i32, i32* @ERR_FATAL, align 4
  %91 = call i32 @Com_Error(i32 %90, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.8, i64 0, i64 0))
  br label %92

92:                                               ; preds = %89, %61, %51
  store i32 0, i32* %5, align 4
  br label %93

93:                                               ; preds = %92, %30, %23, %16
  %94 = load i8*, i8** %2, align 8
  call void @llvm.stackrestore(i8* %94)
  %95 = load i32, i32* %5, align 4
  switch i32 %95, label %97 [
    i32 0, label %96
    i32 1, label %96
  ]

96:                                               ; preds = %93, %93
  ret void

97:                                               ; preds = %93
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @Sys_IsLANAddress(i32) #2

declare dso_local i32 @CL_RequestAuthorization(...) #2

declare dso_local i32 @Com_sprintf(i8*, i32, i8*, ...) #2

declare dso_local i32 @NET_OutOfBandPrint(i32, i32, i8*, i8*) #2

declare dso_local i32 @Cvar_VariableValue(i8*) #2

declare dso_local i32 @Q_strncpyz(i8*, i32, i32) #2

declare dso_local i32 @Cvar_InfoString(i32) #2

declare dso_local i32 @Info_SetValueForKey(i8*, i8*, i32) #2

declare dso_local i32 @va(i8*, i32) #2

declare dso_local i32 @NET_OutOfBandData(i32, i32, i32*, i32) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @Com_Error(i32, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
