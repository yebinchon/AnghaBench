; ModuleID = '/home/carl/AnghaBench/lab/engine/code/client/extr_cl_keys.c_Message_Key.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/client/extr_cl_keys.c_Message_Key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64* }
%struct.TYPE_5__ = type { i64 }

@MAX_STRING_CHARS = common dso_local global i32 0, align 4
@K_ESCAPE = common dso_local global i32 0, align 4
@KEYCATCH_MESSAGE = common dso_local global i32 0, align 4
@chatField = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@K_ENTER = common dso_local global i32 0, align 4
@K_KP_ENTER = common dso_local global i32 0, align 4
@clc = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@CA_ACTIVE = common dso_local global i64 0, align 8
@chat_playerNum = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"tell %i \22%s\22\0A\00", align 1
@chat_team = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [15 x i8] c"say_team \22%s\22\0A\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"say \22%s\22\0A\00", align 1
@qfalse = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Message_Key(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %6 = load i32, i32* @MAX_STRING_CHARS, align 4
  %7 = zext i32 %6 to i64
  %8 = call i8* @llvm.stacksave()
  store i8* %8, i8** %3, align 8
  %9 = alloca i8, i64 %7, align 16
  store i64 %7, i64* %4, align 8
  %10 = load i32, i32* %2, align 4
  %11 = load i32, i32* @K_ESCAPE, align 4
  %12 = icmp eq i32 %10, %11
  br i1 %12, label %13, label %20

13:                                               ; preds = %1
  %14 = call i32 (...) @Key_GetCatcher()
  %15 = load i32, i32* @KEYCATCH_MESSAGE, align 4
  %16 = xor i32 %15, -1
  %17 = and i32 %14, %16
  %18 = call i32 @Key_SetCatcher(i32 %17)
  %19 = call i32 @Field_Clear(%struct.TYPE_6__* @chatField)
  store i32 1, i32* %5, align 4
  br label %72

20:                                               ; preds = %1
  %21 = load i32, i32* %2, align 4
  %22 = load i32, i32* @K_ENTER, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %28, label %24

24:                                               ; preds = %20
  %25 = load i32, i32* %2, align 4
  %26 = load i32, i32* @K_KP_ENTER, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %69

28:                                               ; preds = %24, %20
  %29 = load i64*, i64** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @chatField, i32 0, i32 0), align 8
  %30 = getelementptr inbounds i64, i64* %29, i64 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %62

33:                                               ; preds = %28
  %34 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @clc, i32 0, i32 0), align 8
  %35 = load i64, i64* @CA_ACTIVE, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %62

37:                                               ; preds = %33
  %38 = load i32, i32* @chat_playerNum, align 4
  %39 = icmp ne i32 %38, -1
  br i1 %39, label %40, label %45

40:                                               ; preds = %37
  %41 = trunc i64 %7 to i32
  %42 = load i32, i32* @chat_playerNum, align 4
  %43 = load i64*, i64** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @chatField, i32 0, i32 0), align 8
  %44 = call i32 (i8*, i32, i8*, i32, ...) @Com_sprintf(i8* %9, i32 %41, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %42, i64* %43)
  br label %59

45:                                               ; preds = %37
  %46 = load i64, i64* @chat_team, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %45
  %49 = trunc i64 %7 to i32
  %50 = load i64*, i64** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @chatField, i32 0, i32 0), align 8
  %51 = ptrtoint i64* %50 to i32
  %52 = call i32 (i8*, i32, i8*, i32, ...) @Com_sprintf(i8* %9, i32 %49, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 %51)
  br label %58

53:                                               ; preds = %45
  %54 = trunc i64 %7 to i32
  %55 = load i64*, i64** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @chatField, i32 0, i32 0), align 8
  %56 = ptrtoint i64* %55 to i32
  %57 = call i32 (i8*, i32, i8*, i32, ...) @Com_sprintf(i8* %9, i32 %54, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 %56)
  br label %58

58:                                               ; preds = %53, %48
  br label %59

59:                                               ; preds = %58, %40
  %60 = load i32, i32* @qfalse, align 4
  %61 = call i32 @CL_AddReliableCommand(i8* %9, i32 %60)
  br label %62

62:                                               ; preds = %59, %33, %28
  %63 = call i32 (...) @Key_GetCatcher()
  %64 = load i32, i32* @KEYCATCH_MESSAGE, align 4
  %65 = xor i32 %64, -1
  %66 = and i32 %63, %65
  %67 = call i32 @Key_SetCatcher(i32 %66)
  %68 = call i32 @Field_Clear(%struct.TYPE_6__* @chatField)
  store i32 1, i32* %5, align 4
  br label %72

69:                                               ; preds = %24
  %70 = load i32, i32* %2, align 4
  %71 = call i32 @Field_KeyDownEvent(%struct.TYPE_6__* @chatField, i32 %70)
  store i32 0, i32* %5, align 4
  br label %72

72:                                               ; preds = %69, %62, %13
  %73 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %73)
  %74 = load i32, i32* %5, align 4
  switch i32 %74, label %76 [
    i32 0, label %75
    i32 1, label %75
  ]

75:                                               ; preds = %72, %72
  ret void

76:                                               ; preds = %72
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @Key_SetCatcher(i32) #2

declare dso_local i32 @Key_GetCatcher(...) #2

declare dso_local i32 @Field_Clear(%struct.TYPE_6__*) #2

declare dso_local i32 @Com_sprintf(i8*, i32, i8*, i32, ...) #2

declare dso_local i32 @CL_AddReliableCommand(i8*, i32) #2

declare dso_local i32 @Field_KeyDownEvent(%struct.TYPE_6__*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
