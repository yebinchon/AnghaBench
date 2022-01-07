; ModuleID = '/home/carl/AnghaBench/lab/engine/code/ui/extr_ui_shared.c_PC_Script_Parse.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/ui/extr_ui_shared.c_PC_Script_Parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8* }

@qfalse = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"{\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"}\00", align 1
@qtrue = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"\22%s\22\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c" \00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @PC_Script_Parse(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca [1024 x i8], align 16
  %7 = alloca %struct.TYPE_3__, align 8
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %8 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i64 0, i64 0
  %9 = call i32 @memset(i8* %8, i32 0, i32 1024)
  %10 = load i32, i32* %4, align 4
  %11 = call i32 @trap_PC_ReadToken(i32 %10, %struct.TYPE_3__* %7)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* @qfalse, align 4
  store i32 %14, i32* %3, align 4
  br label %60

15:                                               ; preds = %2
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %17 = load i8*, i8** %16, align 8
  %18 = call i64 @Q_stricmp(i8* %17, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %15
  %21 = load i32, i32* @qfalse, align 4
  store i32 %21, i32* %3, align 4
  br label %60

22:                                               ; preds = %15
  br label %23

23:                                               ; preds = %22, %57
  %24 = load i32, i32* %4, align 4
  %25 = call i32 @trap_PC_ReadToken(i32 %24, %struct.TYPE_3__* %7)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %23
  %28 = load i32, i32* @qfalse, align 4
  store i32 %28, i32* %3, align 4
  br label %60

29:                                               ; preds = %23
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %31 = load i8*, i8** %30, align 8
  %32 = call i64 @Q_stricmp(i8* %31, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %29
  %35 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i64 0, i64 0
  %36 = call i8* @String_Alloc(i8* %35)
  %37 = load i8**, i8*** %5, align 8
  store i8* %36, i8** %37, align 8
  %38 = load i32, i32* @qtrue, align 4
  store i32 %38, i32* %3, align 4
  br label %60

39:                                               ; preds = %29
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %41 = load i8*, i8** %40, align 8
  %42 = getelementptr inbounds i8, i8* %41, i64 1
  %43 = load i8, i8* %42, align 1
  %44 = sext i8 %43 to i32
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %39
  %47 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i64 0, i64 0
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %49 = load i8*, i8** %48, align 8
  %50 = call i8* @va(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* %49)
  %51 = call i32 @Q_strcat(i8* %47, i32 1024, i8* %50)
  br label %57

52:                                               ; preds = %39
  %53 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i64 0, i64 0
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %55 = load i8*, i8** %54, align 8
  %56 = call i32 @Q_strcat(i8* %53, i32 1024, i8* %55)
  br label %57

57:                                               ; preds = %52, %46
  %58 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i64 0, i64 0
  %59 = call i32 @Q_strcat(i8* %58, i32 1024, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  br label %23

60:                                               ; preds = %34, %27, %20, %13
  %61 = load i32, i32* %3, align 4
  ret i32 %61
}

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @trap_PC_ReadToken(i32, %struct.TYPE_3__*) #1

declare dso_local i64 @Q_stricmp(i8*, i8*) #1

declare dso_local i8* @String_Alloc(i8*) #1

declare dso_local i32 @Q_strcat(i8*, i32, i8*) #1

declare dso_local i8* @va(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
