; ModuleID = '/home/carl/AnghaBench/lab/engine/code/q3_ui/extr_ui_startserver.c_GametypeBits.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/q3_ui/extr_ui_startserver.c_GametypeBits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@qfalse = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"ffa\00", align 1
@GT_FFA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"tourney\00", align 1
@GT_TOURNAMENT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"single\00", align 1
@GT_SINGLE_PLAYER = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"team\00", align 1
@GT_TEAM = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [4 x i8] c"ctf\00", align 1
@GT_CTF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @GametypeBits to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @GametypeBits(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  store i32 0, i32* %3, align 4
  %6 = load i8*, i8** %2, align 8
  store i8* %6, i8** %4, align 8
  br label %7

7:                                                ; preds = %1, %19, %28, %37, %46, %55, %60
  %8 = load i32, i32* @qfalse, align 4
  %9 = call i8* @COM_ParseExt(i8** %4, i32 %8)
  store i8* %9, i8** %5, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = getelementptr inbounds i8, i8* %10, i64 0
  %12 = load i8, i8* %11, align 1
  %13 = icmp ne i8 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %7
  br label %61

15:                                               ; preds = %7
  %16 = load i8*, i8** %5, align 8
  %17 = call i64 @Q_stricmp(i8* %16, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %15
  %20 = load i32, i32* @GT_FFA, align 4
  %21 = shl i32 1, %20
  %22 = load i32, i32* %3, align 4
  %23 = or i32 %22, %21
  store i32 %23, i32* %3, align 4
  br label %7

24:                                               ; preds = %15
  %25 = load i8*, i8** %5, align 8
  %26 = call i64 @Q_stricmp(i8* %25, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %24
  %29 = load i32, i32* @GT_TOURNAMENT, align 4
  %30 = shl i32 1, %29
  %31 = load i32, i32* %3, align 4
  %32 = or i32 %31, %30
  store i32 %32, i32* %3, align 4
  br label %7

33:                                               ; preds = %24
  %34 = load i8*, i8** %5, align 8
  %35 = call i64 @Q_stricmp(i8* %34, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %33
  %38 = load i32, i32* @GT_SINGLE_PLAYER, align 4
  %39 = shl i32 1, %38
  %40 = load i32, i32* %3, align 4
  %41 = or i32 %40, %39
  store i32 %41, i32* %3, align 4
  br label %7

42:                                               ; preds = %33
  %43 = load i8*, i8** %5, align 8
  %44 = call i64 @Q_stricmp(i8* %43, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %42
  %47 = load i32, i32* @GT_TEAM, align 4
  %48 = shl i32 1, %47
  %49 = load i32, i32* %3, align 4
  %50 = or i32 %49, %48
  store i32 %50, i32* %3, align 4
  br label %7

51:                                               ; preds = %42
  %52 = load i8*, i8** %5, align 8
  %53 = call i64 @Q_stricmp(i8* %52, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %51
  %56 = load i32, i32* @GT_CTF, align 4
  %57 = shl i32 1, %56
  %58 = load i32, i32* %3, align 4
  %59 = or i32 %58, %57
  store i32 %59, i32* %3, align 4
  br label %7

60:                                               ; preds = %51
  br label %7

61:                                               ; preds = %14
  %62 = load i32, i32* %3, align 4
  ret i32 %62
}

declare dso_local i8* @COM_ParseExt(i8**, i32) #1

declare dso_local i64 @Q_stricmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
