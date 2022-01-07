; ModuleID = '/home/carl/AnghaBench/lab/engine/code/client/extr_cl_cgame.c_CL_InitCGame.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/client/extr_cl_cgame.c_CL_InitCGame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i8*, i32* }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i32 (...)* }

@cl = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@CS_SERVERINFO = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [8 x i8] c"mapname\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"maps/%s.bsp\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"vm_cgame\00", align 1
@cl_connectedToPureServer = common dso_local global i64 0, align 8
@VMI_COMPILED = common dso_local global i64 0, align 8
@VMI_BYTECODE = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [6 x i8] c"cgame\00", align 1
@CL_CgameSystemCalls = common dso_local global i32 0, align 4
@cgvm = common dso_local global i32 0, align 4
@ERR_DROP = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [26 x i8] c"VM_Create on cgame failed\00", align 1
@CA_LOADING = common dso_local global i32 0, align 4
@clc = common dso_local global %struct.TYPE_7__ zeroinitializer, align 4
@CG_INIT = common dso_local global i32 0, align 4
@cl_connectedToCheatServer = common dso_local global i32 0, align 4
@CA_PRIMED = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [29 x i8] c"CL_InitCGame: %5.2f seconds\0A\00", align 1
@re = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CL_InitCGame() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = call i32 (...) @Sys_Milliseconds()
  store i32 %6, i32* %3, align 4
  %7 = call i32 (...) @Con_Close()
  %8 = load i8*, i8** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @cl, i32 0, i32 1, i32 0), align 8
  %9 = load i32*, i32** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @cl, i32 0, i32 1, i32 1), align 8
  %10 = load i64, i64* @CS_SERVERINFO, align 8
  %11 = getelementptr inbounds i32, i32* %9, i64 %10
  %12 = load i32, i32* %11, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds i8, i8* %8, i64 %13
  store i8* %14, i8** %1, align 8
  %15 = load i8*, i8** %1, align 8
  %16 = call i8* @Info_ValueForKey(i8* %15, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  store i8* %16, i8** %2, align 8
  %17 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @cl, i32 0, i32 0), align 8
  %18 = load i8*, i8** %2, align 8
  %19 = call i32 @Com_sprintf(i32 %17, i32 4, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8* %18)
  %20 = call i64 @Cvar_VariableValue(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  store i64 %20, i64* %5, align 8
  %21 = load i64, i64* @cl_connectedToPureServer, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %34

23:                                               ; preds = %0
  %24 = load i64, i64* %5, align 8
  %25 = load i64, i64* @VMI_COMPILED, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %33

27:                                               ; preds = %23
  %28 = load i64, i64* %5, align 8
  %29 = load i64, i64* @VMI_BYTECODE, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %27
  %32 = load i64, i64* @VMI_COMPILED, align 8
  store i64 %32, i64* %5, align 8
  br label %33

33:                                               ; preds = %31, %27, %23
  br label %34

34:                                               ; preds = %33, %0
  %35 = load i32, i32* @CL_CgameSystemCalls, align 4
  %36 = load i64, i64* %5, align 8
  %37 = call i32 @VM_Create(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32 %35, i64 %36)
  store i32 %37, i32* @cgvm, align 4
  %38 = load i32, i32* @cgvm, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %43, label %40

40:                                               ; preds = %34
  %41 = load i32, i32* @ERR_DROP, align 4
  %42 = call i32 @Com_Error(i32 %41, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0))
  br label %43

43:                                               ; preds = %40, %34
  %44 = load i32, i32* @CA_LOADING, align 4
  store i32 %44, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @clc, i32 0, i32 0), align 4
  %45 = load i32, i32* @cgvm, align 4
  %46 = load i32, i32* @CG_INIT, align 4
  %47 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @clc, i32 0, i32 4), align 4
  %48 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @clc, i32 0, i32 3), align 4
  %49 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @clc, i32 0, i32 2), align 4
  %50 = call i32 @VM_Call(i32 %45, i32 %46, i32 %47, i32 %48, i32 %49)
  %51 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @clc, i32 0, i32 1), align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %58, label %53

53:                                               ; preds = %43
  %54 = load i32, i32* @cl_connectedToCheatServer, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %58, label %56

56:                                               ; preds = %53
  %57 = call i32 (...) @Cvar_SetCheatState()
  br label %58

58:                                               ; preds = %56, %53, %43
  %59 = load i32, i32* @CA_PRIMED, align 4
  store i32 %59, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @clc, i32 0, i32 0), align 4
  %60 = call i32 (...) @Sys_Milliseconds()
  store i32 %60, i32* %4, align 4
  %61 = load i32, i32* %4, align 4
  %62 = load i32, i32* %3, align 4
  %63 = sub nsw i32 %61, %62
  %64 = sitofp i32 %63 to double
  %65 = fdiv double %64, 1.000000e+03
  %66 = fptosi double %65 to i32
  %67 = call i32 @Com_Printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0), i32 %66)
  %68 = load i32 (...)*, i32 (...)** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @re, i32 0, i32 0), align 8
  %69 = call i32 (...) %68()
  %70 = call i32 (...) @Sys_LowPhysicalMemory()
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %74, label %72

72:                                               ; preds = %58
  %73 = call i32 (...) @Com_TouchMemory()
  br label %74

74:                                               ; preds = %72, %58
  %75 = call i32 (...) @Con_ClearNotify()
  ret void
}

declare dso_local i32 @Sys_Milliseconds(...) #1

declare dso_local i32 @Con_Close(...) #1

declare dso_local i8* @Info_ValueForKey(i8*, i8*) #1

declare dso_local i32 @Com_sprintf(i32, i32, i8*, i8*) #1

declare dso_local i64 @Cvar_VariableValue(i8*) #1

declare dso_local i32 @VM_Create(i8*, i32, i64) #1

declare dso_local i32 @Com_Error(i32, i8*) #1

declare dso_local i32 @VM_Call(i32, i32, i32, i32, i32) #1

declare dso_local i32 @Cvar_SetCheatState(...) #1

declare dso_local i32 @Com_Printf(i8*, i32) #1

declare dso_local i32 @Sys_LowPhysicalMemory(...) #1

declare dso_local i32 @Com_TouchMemory(...) #1

declare dso_local i32 @Con_ClearNotify(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
