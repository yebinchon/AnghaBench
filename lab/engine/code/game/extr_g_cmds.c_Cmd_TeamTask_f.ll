; ModuleID = '/home/carl/AnghaBench/lab/engine/code/game/extr_g_cmds.c_Cmd_TeamTask_f.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/game/extr_g_cmds.c_Cmd_TeamTask_f.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@MAX_INFO_STRING = common dso_local global i32 0, align 4
@MAX_TOKEN_CHARS = common dso_local global i32 0, align 4
@level = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@.str = private unnamed_addr constant [9 x i8] c"teamtask\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Cmd_TeamTask_f(%struct.TYPE_4__* %0) #0 {
  %2 = alloca %struct.TYPE_4__*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %2, align 8
  %9 = load i32, i32* @MAX_INFO_STRING, align 4
  %10 = zext i32 %9 to i64
  %11 = call i8* @llvm.stacksave()
  store i8* %11, i8** %3, align 8
  %12 = alloca i8, i64 %10, align 16
  store i64 %10, i64* %4, align 8
  %13 = load i32, i32* @MAX_TOKEN_CHARS, align 4
  %14 = zext i32 %13 to i64
  %15 = alloca i8, i64 %14, align 16
  store i64 %14, i64* %5, align 8
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @level, i32 0, i32 0), align 4
  %20 = sub nsw i32 %18, %19
  store i32 %20, i32* %7, align 4
  %21 = call i32 (...) @trap_Argc()
  %22 = icmp ne i32 %21, 2
  br i1 %22, label %23, label %24

23:                                               ; preds = %1
  store i32 1, i32* %8, align 4
  br label %38

24:                                               ; preds = %1
  %25 = trunc i64 %14 to i32
  %26 = call i32 @trap_Argv(i32 1, i8* %15, i32 %25)
  %27 = call i32 @atoi(i8* %15)
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* %7, align 4
  %29 = trunc i64 %10 to i32
  %30 = call i32 @trap_GetUserinfo(i32 %28, i8* %12, i32 %29)
  %31 = load i32, i32* %6, align 4
  %32 = call i32 @va(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %31)
  %33 = call i32 @Info_SetValueForKey(i8* %12, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %32)
  %34 = load i32, i32* %7, align 4
  %35 = call i32 @trap_SetUserinfo(i32 %34, i8* %12)
  %36 = load i32, i32* %7, align 4
  %37 = call i32 @ClientUserinfoChanged(i32 %36)
  store i32 0, i32* %8, align 4
  br label %38

38:                                               ; preds = %24, %23
  %39 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %39)
  %40 = load i32, i32* %8, align 4
  switch i32 %40, label %42 [
    i32 0, label %41
    i32 1, label %41
  ]

41:                                               ; preds = %38, %38
  ret void

42:                                               ; preds = %38
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @trap_Argc(...) #2

declare dso_local i32 @trap_Argv(i32, i8*, i32) #2

declare dso_local i32 @atoi(i8*) #2

declare dso_local i32 @trap_GetUserinfo(i32, i8*, i32) #2

declare dso_local i32 @Info_SetValueForKey(i8*, i8*, i32) #2

declare dso_local i32 @va(i8*, i32) #2

declare dso_local i32 @trap_SetUserinfo(i32, i8*) #2

declare dso_local i32 @ClientUserinfoChanged(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
