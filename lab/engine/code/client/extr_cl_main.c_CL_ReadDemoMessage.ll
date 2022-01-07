; ModuleID = '/home/carl/AnghaBench/lab/engine/code/client/extr_cl_main.c_CL_ReadDemoMessage.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/client/extr_cl_main.c_CL_ReadDemoMessage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, i8* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32, i32, i32*, i64 }

@MAX_MSGLEN = common dso_local global i32 0, align 4
@clc = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@ERR_DROP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"CL_ReadDemoMessage: demoMsglen > MAX_MSGLEN\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"Demo file was truncated.\0A\00", align 1
@cls = common dso_local global %struct.TYPE_7__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CL_ReadDemoMessage() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.TYPE_6__, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = load i32, i32* @MAX_MSGLEN, align 4
  %8 = zext i32 %7 to i64
  %9 = call i8* @llvm.stacksave()
  store i8* %9, i8** %3, align 8
  %10 = alloca i32, i64 %8, align 16
  store i64 %8, i64* %4, align 8
  %11 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @clc, i32 0, i32 1), align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %0
  %14 = call i32 (...) @CL_DemoCompleted()
  store i32 1, i32* %6, align 4
  br label %73

15:                                               ; preds = %0
  %16 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @clc, i32 0, i32 1), align 4
  %17 = call i32 @FS_Read(i32* %5, i32 4, i32 %16)
  store i32 %17, i32* %1, align 4
  %18 = load i32, i32* %1, align 4
  %19 = icmp ne i32 %18, 4
  br i1 %19, label %20, label %22

20:                                               ; preds = %15
  %21 = call i32 (...) @CL_DemoCompleted()
  store i32 1, i32* %6, align 4
  br label %73

22:                                               ; preds = %15
  %23 = load i32, i32* %5, align 4
  %24 = call i8* @LittleLong(i32 %23)
  store i8* %24, i8** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @clc, i32 0, i32 2), align 8
  %25 = mul nuw i64 4, %8
  %26 = trunc i64 %25 to i32
  %27 = call i32 @MSG_Init(%struct.TYPE_6__* %2, i32* %10, i32 %26)
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %2, i32 0, i32 0
  %29 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @clc, i32 0, i32 1), align 4
  %30 = call i32 @FS_Read(i32* %28, i32 4, i32 %29)
  store i32 %30, i32* %1, align 4
  %31 = load i32, i32* %1, align 4
  %32 = icmp ne i32 %31, 4
  br i1 %32, label %33, label %35

33:                                               ; preds = %22
  %34 = call i32 (...) @CL_DemoCompleted()
  store i32 1, i32* %6, align 4
  br label %73

35:                                               ; preds = %22
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %2, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = call i8* @LittleLong(i32 %37)
  %39 = ptrtoint i8* %38 to i32
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %2, i32 0, i32 0
  store i32 %39, i32* %40, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %2, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = icmp eq i32 %42, -1
  br i1 %43, label %44, label %46

44:                                               ; preds = %35
  %45 = call i32 (...) @CL_DemoCompleted()
  store i32 1, i32* %6, align 4
  br label %73

46:                                               ; preds = %35
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %2, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %2, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = icmp sgt i32 %48, %50
  br i1 %51, label %52, label %55

52:                                               ; preds = %46
  %53 = load i32, i32* @ERR_DROP, align 4
  %54 = call i32 @Com_Error(i32 %53, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  br label %55

55:                                               ; preds = %52, %46
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %2, i32 0, i32 2
  %57 = load i32*, i32** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %2, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @clc, i32 0, i32 1), align 4
  %61 = call i32 @FS_Read(i32* %57, i32 %59, i32 %60)
  store i32 %61, i32* %1, align 4
  %62 = load i32, i32* %1, align 4
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %2, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = icmp ne i32 %62, %64
  br i1 %65, label %66, label %69

66:                                               ; preds = %55
  %67 = call i32 @Com_Printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %68 = call i32 (...) @CL_DemoCompleted()
  store i32 1, i32* %6, align 4
  br label %73

69:                                               ; preds = %55
  %70 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @cls, i32 0, i32 0), align 4
  store i32 %70, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @clc, i32 0, i32 0), align 8
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %2, i32 0, i32 3
  store i64 0, i64* %71, align 8
  %72 = call i32 @CL_ParseServerMessage(%struct.TYPE_6__* %2)
  store i32 0, i32* %6, align 4
  br label %73

73:                                               ; preds = %69, %66, %44, %33, %20, %13
  %74 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %74)
  %75 = load i32, i32* %6, align 4
  switch i32 %75, label %77 [
    i32 0, label %76
    i32 1, label %76
  ]

76:                                               ; preds = %73, %73
  ret void

77:                                               ; preds = %73
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @CL_DemoCompleted(...) #2

declare dso_local i32 @FS_Read(i32*, i32, i32) #2

declare dso_local i8* @LittleLong(i32) #2

declare dso_local i32 @MSG_Init(%struct.TYPE_6__*, i32*, i32) #2

declare dso_local i32 @Com_Error(i32, i8*) #2

declare dso_local i32 @Com_Printf(i8*) #2

declare dso_local i32 @CL_ParseServerMessage(%struct.TYPE_6__*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
