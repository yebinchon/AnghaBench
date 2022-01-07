; ModuleID = '/home/carl/AnghaBench/lab/engine/code/server/extr_sv_main.c_SVC_RemoteCommand.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/server/extr_sv_main.c_SVC_RemoteCommand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [66 x i8] c"SVC_RemoteCommand: rate limit from %s exceeded, dropping request\0A\00", align 1
@sv_rconPassword = common dso_local global %struct.TYPE_4__* null, align 8
@SVC_RemoteCommand.bucket = internal global i32 0, align 4
@.str.1 = private unnamed_addr constant [58 x i8] c"SVC_RemoteCommand: rate limit exceeded, dropping request\0A\00", align 1
@qfalse = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"Bad rcon from %s: %s\0A\00", align 1
@qtrue = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [18 x i8] c"Rcon from %s: %s\0A\00", align 1
@svs = common dso_local global %struct.TYPE_3__ zeroinitializer, align 4
@SV_FlushRedirect = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [36 x i8] c"No rconpassword set on the server.\0A\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"Bad rconpassword.\0A\00", align 1
@SV_OUTPUTBUF_LENGTH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32*)* @SVC_RemoteCommand to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @SVC_RemoteCommand(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca [1024 x i8], align 16
  %7 = alloca [1008 x i8], align 16
  %8 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  store i32* %1, i32** %4, align 8
  %9 = load i32, i32* %3, align 4
  %10 = call i64 @SVC_RateLimitAddress(i32 %9, i32 10, i32 1000)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %2
  %13 = load i32, i32* %3, align 4
  %14 = call i32 @NET_AdrToString(i32 %13)
  %15 = call i32 (i8*, ...) @Com_DPrintf(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str, i64 0, i64 0), i32 %14)
  br label %114

16:                                               ; preds = %2
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** @sv_rconPassword, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @strlen(i32 %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %29

22:                                               ; preds = %16
  %23 = call i32 @Cmd_Argv(i32 1)
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** @sv_rconPassword, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i64 @strcmp(i32 %23, i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %40

29:                                               ; preds = %22, %16
  %30 = call i64 @SVC_RateLimit(i32* @SVC_RemoteCommand.bucket, i32 10, i32 1000)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %29
  %33 = call i32 (i8*, ...) @Com_DPrintf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.1, i64 0, i64 0))
  br label %114

34:                                               ; preds = %29
  %35 = load i32, i32* @qfalse, align 4
  store i32 %35, i32* %5, align 4
  %36 = load i32, i32* %3, align 4
  %37 = call i32 @NET_AdrToString(i32 %36)
  %38 = call i32 @Cmd_ArgsFrom(i32 2)
  %39 = call i32 (i8*, ...) @Com_Printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i32 %37, i32 %38)
  br label %46

40:                                               ; preds = %22
  %41 = load i32, i32* @qtrue, align 4
  store i32 %41, i32* %5, align 4
  %42 = load i32, i32* %3, align 4
  %43 = call i32 @NET_AdrToString(i32 %42)
  %44 = call i32 @Cmd_ArgsFrom(i32 2)
  %45 = call i32 (i8*, ...) @Com_Printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i32 %43, i32 %44)
  br label %46

46:                                               ; preds = %40, %34
  %47 = load i32, i32* %3, align 4
  store i32 %47, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @svs, i32 0, i32 0), align 4
  %48 = getelementptr inbounds [1008 x i8], [1008 x i8]* %7, i64 0, i64 0
  %49 = load i32, i32* @SV_FlushRedirect, align 4
  %50 = call i32 @Com_BeginRedirect(i8* %48, i32 1008, i32 %49)
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** @sv_rconPassword, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @strlen(i32 %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %58, label %56

56:                                               ; preds = %46
  %57 = call i32 (i8*, ...) @Com_Printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0))
  br label %112

58:                                               ; preds = %46
  %59 = load i32, i32* %5, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %63, label %61

61:                                               ; preds = %58
  %62 = call i32 (i8*, ...) @Com_Printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0))
  br label %111

63:                                               ; preds = %58
  %64 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i64 0, i64 0
  store i8 0, i8* %64, align 16
  %65 = call i8* (...) @Cmd_Cmd()
  store i8* %65, i8** %8, align 8
  %66 = load i8*, i8** %8, align 8
  %67 = getelementptr inbounds i8, i8* %66, i64 4
  store i8* %67, i8** %8, align 8
  br label %68

68:                                               ; preds = %74, %63
  %69 = load i8*, i8** %8, align 8
  %70 = getelementptr inbounds i8, i8* %69, i64 0
  %71 = load i8, i8* %70, align 1
  %72 = sext i8 %71 to i32
  %73 = icmp eq i32 %72, 32
  br i1 %73, label %74, label %77

74:                                               ; preds = %68
  %75 = load i8*, i8** %8, align 8
  %76 = getelementptr inbounds i8, i8* %75, i32 1
  store i8* %76, i8** %8, align 8
  br label %68

77:                                               ; preds = %68
  br label %78

78:                                               ; preds = %92, %77
  %79 = load i8*, i8** %8, align 8
  %80 = getelementptr inbounds i8, i8* %79, i64 0
  %81 = load i8, i8* %80, align 1
  %82 = sext i8 %81 to i32
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %90

84:                                               ; preds = %78
  %85 = load i8*, i8** %8, align 8
  %86 = getelementptr inbounds i8, i8* %85, i64 0
  %87 = load i8, i8* %86, align 1
  %88 = sext i8 %87 to i32
  %89 = icmp ne i32 %88, 32
  br label %90

90:                                               ; preds = %84, %78
  %91 = phi i1 [ false, %78 ], [ %89, %84 ]
  br i1 %91, label %92, label %95

92:                                               ; preds = %90
  %93 = load i8*, i8** %8, align 8
  %94 = getelementptr inbounds i8, i8* %93, i32 1
  store i8* %94, i8** %8, align 8
  br label %78

95:                                               ; preds = %90
  br label %96

96:                                               ; preds = %102, %95
  %97 = load i8*, i8** %8, align 8
  %98 = getelementptr inbounds i8, i8* %97, i64 0
  %99 = load i8, i8* %98, align 1
  %100 = sext i8 %99 to i32
  %101 = icmp eq i32 %100, 32
  br i1 %101, label %102, label %105

102:                                              ; preds = %96
  %103 = load i8*, i8** %8, align 8
  %104 = getelementptr inbounds i8, i8* %103, i32 1
  store i8* %104, i8** %8, align 8
  br label %96

105:                                              ; preds = %96
  %106 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i64 0, i64 0
  %107 = load i8*, i8** %8, align 8
  %108 = call i32 @Q_strcat(i8* %106, i32 1024, i8* %107)
  %109 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i64 0, i64 0
  %110 = call i32 @Cmd_ExecuteString(i8* %109)
  br label %111

111:                                              ; preds = %105, %61
  br label %112

112:                                              ; preds = %111, %56
  %113 = call i32 (...) @Com_EndRedirect()
  br label %114

114:                                              ; preds = %112, %32, %12
  ret void
}

declare dso_local i64 @SVC_RateLimitAddress(i32, i32, i32) #1

declare dso_local i32 @Com_DPrintf(i8*, ...) #1

declare dso_local i32 @NET_AdrToString(i32) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local i64 @strcmp(i32, i32) #1

declare dso_local i32 @Cmd_Argv(i32) #1

declare dso_local i64 @SVC_RateLimit(i32*, i32, i32) #1

declare dso_local i32 @Com_Printf(i8*, ...) #1

declare dso_local i32 @Cmd_ArgsFrom(i32) #1

declare dso_local i32 @Com_BeginRedirect(i8*, i32, i32) #1

declare dso_local i8* @Cmd_Cmd(...) #1

declare dso_local i32 @Q_strcat(i8*, i32, i8*) #1

declare dso_local i32 @Cmd_ExecuteString(i8*) #1

declare dso_local i32 @Com_EndRedirect(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
