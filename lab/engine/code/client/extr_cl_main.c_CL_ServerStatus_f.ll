; ModuleID = '/home/carl/AnghaBench/lab/engine/code/client/extr_cl_main.c_CL_ServerStatus_f.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/client/extr_cl_main.c_CL_ServerStatus_f.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i32, i64 }
%struct.TYPE_4__ = type { i8*, i8*, i32 }

@NA_UNSPEC = common dso_local global i32 0, align 4
@clc = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@CA_ACTIVE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [28 x i8] c"Not connected to a server.\0A\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"usage: serverstatus [-4|-6] server\0A\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"-4\00", align 1
@NA_IP = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [3 x i8] c"-6\00", align 1
@NA_IP6 = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [52 x i8] c"warning: only -4 or -6 as address type understood.\0A\00", align 1
@NS_CLIENT = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [10 x i8] c"getstatus\00", align 1
@qtrue = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CL_ServerStatus_f() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32* null, i32** %2, align 8
  %7 = load i32, i32* @NA_UNSPEC, align 4
  store i32 %7, i32* %6, align 4
  %8 = call i32 (...) @Cmd_Argc()
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = icmp ne i32 %9, 2
  br i1 %10, label %11, label %25

11:                                               ; preds = %0
  %12 = load i32, i32* %5, align 4
  %13 = icmp ne i32 %12, 3
  br i1 %13, label %14, label %25

14:                                               ; preds = %11
  %15 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @clc, i32 0, i32 0), align 8
  %16 = load i64, i64* @CA_ACTIVE, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %21, label %18

18:                                               ; preds = %14
  %19 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @clc, i32 0, i32 2), align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %18, %14
  %22 = call i32 @Com_Printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %23 = call i32 @Com_Printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  br label %77

24:                                               ; preds = %18
  store i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @clc, i32 0, i32 1), i32** %2, align 8
  br label %25

25:                                               ; preds = %24, %11, %0
  %26 = load i32*, i32** %2, align 8
  %27 = icmp ne i32* %26, null
  br i1 %27, label %59, label %28

28:                                               ; preds = %25
  %29 = call i32 @Com_Memset(i32* %1, i32 0, i32 4)
  %30 = load i32, i32* %5, align 4
  %31 = icmp eq i32 %30, 2
  br i1 %31, label %32, label %34

32:                                               ; preds = %28
  %33 = call i8* @Cmd_Argv(i32 1)
  store i8* %33, i8** %3, align 8
  br label %51

34:                                               ; preds = %28
  %35 = call i8* @Cmd_Argv(i32 1)
  %36 = call i32 @strcmp(i8* %35, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %40, label %38

38:                                               ; preds = %34
  %39 = load i32, i32* @NA_IP, align 4
  store i32 %39, i32* %6, align 4
  br label %49

40:                                               ; preds = %34
  %41 = call i8* @Cmd_Argv(i32 1)
  %42 = call i32 @strcmp(i8* %41, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %46, label %44

44:                                               ; preds = %40
  %45 = load i32, i32* @NA_IP6, align 4
  store i32 %45, i32* %6, align 4
  br label %48

46:                                               ; preds = %40
  %47 = call i32 @Com_Printf(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.4, i64 0, i64 0))
  br label %48

48:                                               ; preds = %46, %44
  br label %49

49:                                               ; preds = %48, %38
  %50 = call i8* @Cmd_Argv(i32 2)
  store i8* %50, i8** %3, align 8
  br label %51

51:                                               ; preds = %49, %32
  store i32* %1, i32** %2, align 8
  %52 = load i8*, i8** %3, align 8
  %53 = load i32*, i32** %2, align 8
  %54 = load i32, i32* %6, align 4
  %55 = call i32 @NET_StringToAdr(i8* %52, i32* %53, i32 %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %58, label %57

57:                                               ; preds = %51
  br label %77

58:                                               ; preds = %51
  br label %59

59:                                               ; preds = %58, %25
  %60 = load i32, i32* @NS_CLIENT, align 4
  %61 = load i32*, i32** %2, align 8
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @NET_OutOfBandPrint(i32 %60, i32 %62, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0))
  %64 = load i32*, i32** %2, align 8
  %65 = load i32, i32* %64, align 4
  %66 = call %struct.TYPE_4__* @CL_GetServerStatus(i32 %65)
  store %struct.TYPE_4__* %66, %struct.TYPE_4__** %4, align 8
  %67 = load i32*, i32** %2, align 8
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 2
  store i32 %68, i32* %70, align 8
  %71 = load i8*, i8** @qtrue, align 8
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 1
  store i8* %71, i8** %73, align 8
  %74 = load i8*, i8** @qtrue, align 8
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 0
  store i8* %74, i8** %76, align 8
  br label %77

77:                                               ; preds = %59, %57, %21
  ret void
}

declare dso_local i32 @Cmd_Argc(...) #1

declare dso_local i32 @Com_Printf(i8*) #1

declare dso_local i32 @Com_Memset(i32*, i32, i32) #1

declare dso_local i8* @Cmd_Argv(i32) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @NET_StringToAdr(i8*, i32*, i32) #1

declare dso_local i32 @NET_OutOfBandPrint(i32, i32, i8*) #1

declare dso_local %struct.TYPE_4__* @CL_GetServerStatus(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
