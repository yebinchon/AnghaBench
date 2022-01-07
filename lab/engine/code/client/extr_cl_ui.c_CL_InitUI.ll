; ModuleID = '/home/carl/AnghaBench/lab/engine/code/client/extr_cl_ui.c_CL_InitUI.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/client/extr_cl_ui.c_CL_InitUI.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"vm_ui\00", align 1
@cl_connectedToPureServer = common dso_local global i64 0, align 8
@VMI_COMPILED = common dso_local global i64 0, align 8
@VMI_BYTECODE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [3 x i8] c"ui\00", align 1
@CL_UISystemCalls = common dso_local global i32 0, align 4
@uivm = common dso_local global i32* null, align 8
@ERR_FATAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"VM_Create on UI failed\00", align 1
@UI_GETAPIVERSION = common dso_local global i32 0, align 4
@UI_OLD_API_VERSION = common dso_local global i32 0, align 4
@UI_INIT = common dso_local global i32 0, align 4
@clc = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@CA_AUTHORIZING = common dso_local global i64 0, align 8
@CA_ACTIVE = common dso_local global i64 0, align 8
@UI_API_VERSION = common dso_local global i32 0, align 4
@ERR_DROP = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [42 x i8] c"User Interface is version %d, expected %d\00", align 1
@qfalse = common dso_local global i32 0, align 4
@cls = common dso_local global %struct.TYPE_3__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CL_InitUI() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  %3 = call i64 @Cvar_VariableValue(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  store i64 %3, i64* %2, align 8
  %4 = load i64, i64* @cl_connectedToPureServer, align 8
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %17

6:                                                ; preds = %0
  %7 = load i64, i64* %2, align 8
  %8 = load i64, i64* @VMI_COMPILED, align 8
  %9 = icmp ne i64 %7, %8
  br i1 %9, label %10, label %16

10:                                               ; preds = %6
  %11 = load i64, i64* %2, align 8
  %12 = load i64, i64* @VMI_BYTECODE, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %14, label %16

14:                                               ; preds = %10
  %15 = load i64, i64* @VMI_COMPILED, align 8
  store i64 %15, i64* %2, align 8
  br label %16

16:                                               ; preds = %14, %10, %6
  br label %17

17:                                               ; preds = %16, %0
  %18 = load i32, i32* @CL_UISystemCalls, align 4
  %19 = load i64, i64* %2, align 8
  %20 = call i32* @VM_Create(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %18, i64 %19)
  store i32* %20, i32** @uivm, align 8
  %21 = load i32*, i32** @uivm, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %17
  %24 = load i32, i32* @ERR_FATAL, align 4
  %25 = call i32 (i32, i8*, ...) @Com_Error(i32 %24, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  br label %26

26:                                               ; preds = %23, %17
  %27 = load i32*, i32** @uivm, align 8
  %28 = load i32, i32* @UI_GETAPIVERSION, align 4
  %29 = call i32 (i32*, i32, ...) @VM_Call(i32* %27, i32 %28)
  store i32 %29, i32* %1, align 4
  %30 = load i32, i32* %1, align 4
  %31 = load i32, i32* @UI_OLD_API_VERSION, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %47

33:                                               ; preds = %26
  %34 = load i32*, i32** @uivm, align 8
  %35 = load i32, i32* @UI_INIT, align 4
  %36 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @clc, i32 0, i32 0), align 8
  %37 = load i64, i64* @CA_AUTHORIZING, align 8
  %38 = icmp sge i64 %36, %37
  br i1 %38, label %39, label %43

39:                                               ; preds = %33
  %40 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @clc, i32 0, i32 0), align 8
  %41 = load i64, i64* @CA_ACTIVE, align 8
  %42 = icmp slt i64 %40, %41
  br label %43

43:                                               ; preds = %39, %33
  %44 = phi i1 [ false, %33 ], [ %42, %39 ]
  %45 = zext i1 %44 to i32
  %46 = call i32 (i32*, i32, ...) @VM_Call(i32* %34, i32 %35, i32 %45)
  br label %74

47:                                               ; preds = %26
  %48 = load i32, i32* %1, align 4
  %49 = load i32, i32* @UI_API_VERSION, align 4
  %50 = icmp ne i32 %48, %49
  br i1 %50, label %51, label %59

51:                                               ; preds = %47
  %52 = load i32*, i32** @uivm, align 8
  %53 = call i32 @VM_Free(i32* %52)
  store i32* null, i32** @uivm, align 8
  %54 = load i32, i32* @ERR_DROP, align 4
  %55 = load i32, i32* %1, align 4
  %56 = load i32, i32* @UI_API_VERSION, align 4
  %57 = call i32 (i32, i8*, ...) @Com_Error(i32 %54, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0), i32 %55, i32 %56)
  %58 = load i32, i32* @qfalse, align 4
  store i32 %58, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @cls, i32 0, i32 0), align 4
  br label %73

59:                                               ; preds = %47
  %60 = load i32*, i32** @uivm, align 8
  %61 = load i32, i32* @UI_INIT, align 4
  %62 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @clc, i32 0, i32 0), align 8
  %63 = load i64, i64* @CA_AUTHORIZING, align 8
  %64 = icmp sge i64 %62, %63
  br i1 %64, label %65, label %69

65:                                               ; preds = %59
  %66 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @clc, i32 0, i32 0), align 8
  %67 = load i64, i64* @CA_ACTIVE, align 8
  %68 = icmp slt i64 %66, %67
  br label %69

69:                                               ; preds = %65, %59
  %70 = phi i1 [ false, %59 ], [ %68, %65 ]
  %71 = zext i1 %70 to i32
  %72 = call i32 (i32*, i32, ...) @VM_Call(i32* %60, i32 %61, i32 %71)
  br label %73

73:                                               ; preds = %69, %51
  br label %74

74:                                               ; preds = %73, %43
  ret void
}

declare dso_local i64 @Cvar_VariableValue(i8*) #1

declare dso_local i32* @VM_Create(i8*, i32, i64) #1

declare dso_local i32 @Com_Error(i32, i8*, ...) #1

declare dso_local i32 @VM_Call(i32*, i32, ...) #1

declare dso_local i32 @VM_Free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
