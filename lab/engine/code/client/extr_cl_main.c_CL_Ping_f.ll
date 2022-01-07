; ModuleID = '/home/carl/AnghaBench/lab/engine/code/client/extr_cl_main.c_CL_Ping_f.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/client/extr_cl_main.c_CL_Ping_f.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i64, i32 }

@NA_UNSPEC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"usage: ping [-4|-6] server\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"-4\00", align 1
@NA_IP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [3 x i8] c"-6\00", align 1
@NA_IP6 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [52 x i8] c"warning: only -4 or -6 as address type understood.\0A\00", align 1
@NS_CLIENT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [12 x i8] c"getinfo xxx\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CL_Ping_f() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = load i32, i32* @NA_UNSPEC, align 4
  store i32 %6, i32* %5, align 4
  %7 = call i32 (...) @Cmd_Argc()
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = icmp ne i32 %8, 2
  br i1 %9, label %10, label %15

10:                                               ; preds = %0
  %11 = load i32, i32* %4, align 4
  %12 = icmp ne i32 %11, 3
  br i1 %12, label %13, label %15

13:                                               ; preds = %10
  %14 = call i32 @Com_Printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %61

15:                                               ; preds = %10, %0
  %16 = load i32, i32* %4, align 4
  %17 = icmp eq i32 %16, 2
  br i1 %17, label %18, label %20

18:                                               ; preds = %15
  %19 = call i8* @Cmd_Argv(i32 1)
  store i8* %19, i8** %3, align 8
  br label %37

20:                                               ; preds = %15
  %21 = call i8* @Cmd_Argv(i32 1)
  %22 = call i32 @strcmp(i8* %21, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %20
  %25 = load i32, i32* @NA_IP, align 4
  store i32 %25, i32* %5, align 4
  br label %35

26:                                               ; preds = %20
  %27 = call i8* @Cmd_Argv(i32 1)
  %28 = call i32 @strcmp(i8* %27, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %32, label %30

30:                                               ; preds = %26
  %31 = load i32, i32* @NA_IP6, align 4
  store i32 %31, i32* %5, align 4
  br label %34

32:                                               ; preds = %26
  %33 = call i32 @Com_Printf(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.3, i64 0, i64 0))
  br label %34

34:                                               ; preds = %32, %30
  br label %35

35:                                               ; preds = %34, %24
  %36 = call i8* @Cmd_Argv(i32 2)
  store i8* %36, i8** %3, align 8
  br label %37

37:                                               ; preds = %35, %18
  %38 = call i32 @Com_Memset(i32* %1, i32 0, i32 4)
  %39 = load i8*, i8** %3, align 8
  %40 = load i32, i32* %5, align 4
  %41 = call i32 @NET_StringToAdr(i8* %39, i32* %1, i32 %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %37
  br label %61

44:                                               ; preds = %37
  %45 = call %struct.TYPE_3__* (...) @CL_GetFreePing()
  store %struct.TYPE_3__* %45, %struct.TYPE_3__** %2, align 8
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = call i32 @memcpy(i32* %47, i32* %1, i32 4)
  %49 = call i32 (...) @Sys_Milliseconds()
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 2
  store i32 %49, i32* %51, align 8
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 1
  store i64 0, i64* %53, align 8
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @CL_SetServerInfoByAddress(i32 %56, i32* null, i32 0)
  %58 = load i32, i32* @NS_CLIENT, align 4
  %59 = load i32, i32* %1, align 4
  %60 = call i32 @NET_OutOfBandPrint(i32 %58, i32 %59, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0))
  br label %61

61:                                               ; preds = %44, %43, %13
  ret void
}

declare dso_local i32 @Cmd_Argc(...) #1

declare dso_local i32 @Com_Printf(i8*) #1

declare dso_local i8* @Cmd_Argv(i32) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @Com_Memset(i32*, i32, i32) #1

declare dso_local i32 @NET_StringToAdr(i8*, i32*, i32) #1

declare dso_local %struct.TYPE_3__* @CL_GetFreePing(...) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @Sys_Milliseconds(...) #1

declare dso_local i32 @CL_SetServerInfoByAddress(i32, i32*, i32) #1

declare dso_local i32 @NET_OutOfBandPrint(i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
