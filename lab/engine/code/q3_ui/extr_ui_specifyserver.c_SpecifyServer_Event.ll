; ModuleID = '/home/carl/AnghaBench/lab/engine/code/q3_ui/extr_ui_specifyserver.c_SpecifyServer_Event.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/q3_ui/extr_ui_specifyserver.c_SpecifyServer_Event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_8__, %struct.TYPE_10__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32* }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32* }
%struct.TYPE_11__ = type { i32 }

@QM_ACTIVATED = common dso_local global i32 0, align 4
@s_specifyserver = common dso_local global %struct.TYPE_12__ zeroinitializer, align 8
@.str = private unnamed_addr constant [4 x i8] c":%s\00", align 1
@EXEC_APPEND = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"connect %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @SpecifyServer_Event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @SpecifyServer_Event(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca [256 x i8], align 16
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i8*, i8** %3, align 8
  %7 = bitcast i8* %6 to %struct.TYPE_11__*
  %8 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  switch i32 %9, label %49 [
    i32 128, label %10
    i32 129, label %42
  ]

10:                                               ; preds = %2
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* @QM_ACTIVATED, align 4
  %13 = icmp ne i32 %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %10
  br label %49

15:                                               ; preds = %10
  %16 = load i32*, i32** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @s_specifyserver, i32 0, i32 1, i32 0, i32 0), align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %41

20:                                               ; preds = %15
  %21 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0
  %22 = load i32*, i32** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @s_specifyserver, i32 0, i32 1, i32 0, i32 0), align 8
  %23 = call i32 @strcpy(i8* %21, i32* %22)
  %24 = load i32*, i32** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @s_specifyserver, i32 0, i32 0, i32 0, i32 0), align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %36

28:                                               ; preds = %20
  %29 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0
  %30 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0
  %31 = call i32 @strlen(i8* %30)
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i8, i8* %29, i64 %32
  %34 = load i32*, i32** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @s_specifyserver, i32 0, i32 0, i32 0, i32 0), align 8
  %35 = call i32 @Com_sprintf(i8* %33, i32 128, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32* %34)
  br label %36

36:                                               ; preds = %28, %20
  %37 = load i32, i32* @EXEC_APPEND, align 4
  %38 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0
  %39 = call i32 @va(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8* %38)
  %40 = call i32 @trap_Cmd_ExecuteText(i32 %37, i32 %39)
  br label %41

41:                                               ; preds = %36, %15
  br label %49

42:                                               ; preds = %2
  %43 = load i32, i32* %4, align 4
  %44 = load i32, i32* @QM_ACTIVATED, align 4
  %45 = icmp ne i32 %43, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %42
  br label %49

47:                                               ; preds = %42
  %48 = call i32 (...) @UI_PopMenu()
  br label %49

49:                                               ; preds = %2, %47, %46, %41, %14
  ret void
}

declare dso_local i32 @strcpy(i8*, i32*) #1

declare dso_local i32 @Com_sprintf(i8*, i32, i8*, i32*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @trap_Cmd_ExecuteText(i32, i32) #1

declare dso_local i32 @va(i8*, i8*) #1

declare dso_local i32 @UI_PopMenu(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
