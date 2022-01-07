; ModuleID = '/home/carl/AnghaBench/git/extr_setup.c_git_config_perm.c'
source_filename = "/home/carl/AnghaBench/git/extr_setup.c_git_config_perm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PERM_GROUP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"umask\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"group\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"all\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"world\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"everybody\00", align 1
@PERM_EVERYBODY = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [123 x i8] c"problem with core.sharedRepository filemode value (0%.3o).\0AThe owner of files must always have read and write permissions.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @git_config_perm(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = icmp eq i8* %8, null
  br i1 %9, label %10, label %12

10:                                               ; preds = %2
  %11 = load i32, i32* @PERM_GROUP, align 4
  store i32 %11, i32* %3, align 4
  br label %73

12:                                               ; preds = %2
  %13 = load i8*, i8** %5, align 8
  %14 = call i32 @strcmp(i8* %13, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %12
  store i32 128, i32* %3, align 4
  br label %73

17:                                               ; preds = %12
  %18 = load i8*, i8** %5, align 8
  %19 = call i32 @strcmp(i8* %18, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %17
  %22 = load i32, i32* @PERM_GROUP, align 4
  store i32 %22, i32* %3, align 4
  br label %73

23:                                               ; preds = %17
  %24 = load i8*, i8** %5, align 8
  %25 = call i32 @strcmp(i8* %24, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %35

27:                                               ; preds = %23
  %28 = load i8*, i8** %5, align 8
  %29 = call i32 @strcmp(i8* %28, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %27
  %32 = load i8*, i8** %5, align 8
  %33 = call i32 @strcmp(i8* %32, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0))
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %37, label %35

35:                                               ; preds = %31, %27, %23
  %36 = load i32, i32* @PERM_EVERYBODY, align 4
  store i32 %36, i32* %3, align 4
  br label %73

37:                                               ; preds = %31
  %38 = load i8*, i8** %5, align 8
  %39 = call i32 @strtol(i8* %38, i8** %7, i32 8)
  store i32 %39, i32* %6, align 4
  %40 = load i8*, i8** %7, align 8
  %41 = load i8, i8* %40, align 1
  %42 = sext i8 %41 to i32
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %54

44:                                               ; preds = %37
  %45 = load i8*, i8** %4, align 8
  %46 = load i8*, i8** %5, align 8
  %47 = call i64 @git_config_bool(i8* %45, i8* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %44
  %50 = load i32, i32* @PERM_GROUP, align 4
  br label %52

51:                                               ; preds = %44
  br label %52

52:                                               ; preds = %51, %49
  %53 = phi i32 [ %50, %49 ], [ 128, %51 ]
  store i32 %53, i32* %3, align 4
  br label %73

54:                                               ; preds = %37
  %55 = load i32, i32* %6, align 4
  switch i32 %55, label %61 [
    i32 128, label %56
    i32 129, label %57
    i32 130, label %59
  ]

56:                                               ; preds = %54
  store i32 128, i32* %3, align 4
  br label %73

57:                                               ; preds = %54
  %58 = load i32, i32* @PERM_GROUP, align 4
  store i32 %58, i32* %3, align 4
  br label %73

59:                                               ; preds = %54
  %60 = load i32, i32* @PERM_EVERYBODY, align 4
  store i32 %60, i32* %3, align 4
  br label %73

61:                                               ; preds = %54
  %62 = load i32, i32* %6, align 4
  %63 = and i32 %62, 384
  %64 = icmp ne i32 %63, 384
  br i1 %64, label %65, label %69

65:                                               ; preds = %61
  %66 = call i32 @_(i8* getelementptr inbounds ([123 x i8], [123 x i8]* @.str.5, i64 0, i64 0))
  %67 = load i32, i32* %6, align 4
  %68 = call i32 @die(i32 %66, i32 %67)
  br label %69

69:                                               ; preds = %65, %61
  %70 = load i32, i32* %6, align 4
  %71 = and i32 %70, 438
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %3, align 4
  br label %73

73:                                               ; preds = %69, %59, %57, %56, %52, %35, %21, %16, %10
  %74 = load i32, i32* %3, align 4
  ret i32 %74
}

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @strtol(i8*, i8**, i32) #1

declare dso_local i64 @git_config_bool(i8*, i8*) #1

declare dso_local i32 @die(i32, i32) #1

declare dso_local i32 @_(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
