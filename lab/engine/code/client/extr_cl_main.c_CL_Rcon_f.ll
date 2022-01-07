; ModuleID = '/home/carl/AnghaBench/lab/engine/code/client/extr_cl_main.c_CL_Rcon_f.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/client/extr_cl_main.c_CL_Rcon_f.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i8* }
%struct.TYPE_14__ = type { i64, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_12__ = type { i8* }
%struct.TYPE_13__ = type { %struct.TYPE_10__ }

@MAX_RCON_MESSAGE = common dso_local global i32 0, align 4
@rcon_client_password = common dso_local global %struct.TYPE_11__* null, align 8
@.str = private unnamed_addr constant [61 x i8] c"You must set 'rconpassword' before\0Aissuing an rcon command.\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"rcon \00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c" \00", align 1
@clc = common dso_local global %struct.TYPE_14__ zeroinitializer, align 8
@CA_CONNECTED = common dso_local global i64 0, align 8
@rconAddress = common dso_local global %struct.TYPE_12__* null, align 8
@.str.3 = private unnamed_addr constant [84 x i8] c"You must either be connected,\0Aor set the 'rconAddress' cvar\0Ato issue rcon commands\0A\00", align 1
@NA_UNSPEC = common dso_local global i32 0, align 4
@PORT_SERVER = common dso_local global i32 0, align 4
@NS_CLIENT = common dso_local global i32 0, align 4
@cls = common dso_local global %struct.TYPE_13__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CL_Rcon_f() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_10__, align 8
  %4 = alloca i32, align 4
  %5 = load i32, i32* @MAX_RCON_MESSAGE, align 4
  %6 = zext i32 %5 to i64
  %7 = call i8* @llvm.stacksave()
  store i8* %7, i8** %1, align 8
  %8 = alloca i8, i64 %6, align 16
  store i64 %6, i64* %2, align 8
  %9 = load %struct.TYPE_11__*, %struct.TYPE_11__** @rcon_client_password, align 8
  %10 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %9, i32 0, i32 0
  %11 = load i8*, i8** %10, align 8
  %12 = getelementptr inbounds i8, i8* %11, i64 0
  %13 = load i8, i8* %12, align 1
  %14 = icmp ne i8 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %0
  %16 = call i32 @Com_Printf(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %4, align 4
  br label %71

17:                                               ; preds = %0
  %18 = getelementptr inbounds i8, i8* %8, i64 0
  store i8 -1, i8* %18, align 16
  %19 = getelementptr inbounds i8, i8* %8, i64 1
  store i8 -1, i8* %19, align 1
  %20 = getelementptr inbounds i8, i8* %8, i64 2
  store i8 -1, i8* %20, align 2
  %21 = getelementptr inbounds i8, i8* %8, i64 3
  store i8 -1, i8* %21, align 1
  %22 = getelementptr inbounds i8, i8* %8, i64 4
  store i8 0, i8* %22, align 4
  %23 = load i32, i32* @MAX_RCON_MESSAGE, align 4
  %24 = call i32 @Q_strcat(i8* %8, i32 %23, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %25 = load i32, i32* @MAX_RCON_MESSAGE, align 4
  %26 = load %struct.TYPE_11__*, %struct.TYPE_11__** @rcon_client_password, align 8
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %26, i32 0, i32 0
  %28 = load i8*, i8** %27, align 8
  %29 = call i32 @Q_strcat(i8* %8, i32 %25, i8* %28)
  %30 = load i32, i32* @MAX_RCON_MESSAGE, align 4
  %31 = call i32 @Q_strcat(i8* %8, i32 %30, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %32 = load i32, i32* @MAX_RCON_MESSAGE, align 4
  %33 = call i8* (...) @Cmd_Cmd()
  %34 = getelementptr inbounds i8, i8* %33, i64 5
  %35 = call i32 @Q_strcat(i8* %8, i32 %32, i8* %34)
  %36 = load i64, i64* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @clc, i32 0, i32 0), align 8
  %37 = load i64, i64* @CA_CONNECTED, align 8
  %38 = icmp sge i64 %36, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %17
  %40 = bitcast %struct.TYPE_10__* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %40, i8* align 8 bitcast (%struct.TYPE_10__* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @clc, i32 0, i32 1, i32 0) to i8*), i64 8, i1 false)
  br label %63

41:                                               ; preds = %17
  %42 = load %struct.TYPE_12__*, %struct.TYPE_12__** @rconAddress, align 8
  %43 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %42, i32 0, i32 0
  %44 = load i8*, i8** %43, align 8
  %45 = call i64 @strlen(i8* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %49, label %47

47:                                               ; preds = %41
  %48 = call i32 @Com_Printf(i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.3, i64 0, i64 0))
  store i32 1, i32* %4, align 4
  br label %71

49:                                               ; preds = %41
  %50 = load %struct.TYPE_12__*, %struct.TYPE_12__** @rconAddress, align 8
  %51 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %50, i32 0, i32 0
  %52 = load i8*, i8** %51, align 8
  %53 = load i32, i32* @NA_UNSPEC, align 4
  %54 = call i32 @NET_StringToAdr(i8* %52, %struct.TYPE_10__* %3, i32 %53)
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %3, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = icmp eq i64 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %49
  %59 = load i32, i32* @PORT_SERVER, align 4
  %60 = call i64 @BigShort(i32 %59)
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %3, i32 0, i32 0
  store i64 %60, i64* %61, align 8
  br label %62

62:                                               ; preds = %58, %49
  br label %63

63:                                               ; preds = %62, %39
  %64 = load i32, i32* @NS_CLIENT, align 4
  %65 = call i64 @strlen(i8* %8)
  %66 = add nsw i64 %65, 1
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %3, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = call i32 @NET_SendPacket(i32 %64, i64 %66, i8* %8, i64 %68)
  %70 = bitcast %struct.TYPE_10__* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 bitcast (%struct.TYPE_13__* @cls to i8*), i8* align 8 %70, i64 8, i1 false)
  store i32 0, i32* %4, align 4
  br label %71

71:                                               ; preds = %63, %47, %15
  %72 = load i8*, i8** %1, align 8
  call void @llvm.stackrestore(i8* %72)
  %73 = load i32, i32* %4, align 4
  switch i32 %73, label %75 [
    i32 0, label %74
    i32 1, label %74
  ]

74:                                               ; preds = %71, %71
  ret void

75:                                               ; preds = %71
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @Com_Printf(i8*) #2

declare dso_local i32 @Q_strcat(i8*, i32, i8*) #2

declare dso_local i8* @Cmd_Cmd(...) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

declare dso_local i64 @strlen(i8*) #2

declare dso_local i32 @NET_StringToAdr(i8*, %struct.TYPE_10__*, i32) #2

declare dso_local i64 @BigShort(i32) #2

declare dso_local i32 @NET_SendPacket(i32, i64, i8*, i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
