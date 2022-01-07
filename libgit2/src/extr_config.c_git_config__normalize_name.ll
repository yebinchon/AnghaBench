; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_config.c_git_config__normalize_name.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_config.c_git_config__normalize_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GIT_ERROR_CONFIG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"invalid config item name '%s'\00", align 1
@GIT_EINVALIDSPEC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @git_config__normalize_name(i8* %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i8** %1, i8*** %5, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = icmp ne i8* %9, null
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = load i8**, i8*** %5, align 8
  %13 = icmp ne i8** %12, null
  br label %14

14:                                               ; preds = %11, %2
  %15 = phi i1 [ false, %2 ], [ %13, %11 ]
  %16 = zext i1 %15 to i32
  %17 = call i32 @assert(i32 %16)
  %18 = load i8*, i8** %4, align 8
  %19 = call i8* @git__strdup(i8* %18)
  store i8* %19, i8** %6, align 8
  %20 = load i8*, i8** %6, align 8
  %21 = call i32 @GIT_ERROR_CHECK_ALLOC(i8* %20)
  %22 = load i8*, i8** %6, align 8
  %23 = call i8* @strchr(i8* %22, i8 signext 46)
  store i8* %23, i8** %7, align 8
  %24 = load i8*, i8** %6, align 8
  %25 = call i8* @strrchr(i8* %24, i8 signext 46)
  store i8* %25, i8** %8, align 8
  %26 = load i8*, i8** %7, align 8
  %27 = icmp eq i8* %26, null
  br i1 %27, label %40, label %28

28:                                               ; preds = %14
  %29 = load i8*, i8** %7, align 8
  %30 = load i8*, i8** %6, align 8
  %31 = icmp eq i8* %29, %30
  br i1 %31, label %40, label %32

32:                                               ; preds = %28
  %33 = load i8*, i8** %8, align 8
  %34 = icmp eq i8* %33, null
  br i1 %34, label %40, label %35

35:                                               ; preds = %32
  %36 = load i8*, i8** %8, align 8
  %37 = getelementptr inbounds i8, i8* %36, i64 1
  %38 = load i8, i8* %37, align 1
  %39 = icmp ne i8 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %35, %32, %28, %14
  br label %68

41:                                               ; preds = %35
  %42 = load i8*, i8** %6, align 8
  %43 = load i8*, i8** %7, align 8
  %44 = call i64 @normalize_section(i8* %42, i8* %43)
  %45 = icmp slt i64 %44, 0
  br i1 %45, label %51, label %46

46:                                               ; preds = %41
  %47 = load i8*, i8** %8, align 8
  %48 = getelementptr inbounds i8, i8* %47, i64 1
  %49 = call i64 @normalize_section(i8* %48, i8* null)
  %50 = icmp slt i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %46, %41
  br label %68

52:                                               ; preds = %46
  br label %53

53:                                               ; preds = %64, %52
  %54 = load i8*, i8** %7, align 8
  %55 = load i8*, i8** %8, align 8
  %56 = icmp ult i8* %54, %55
  br i1 %56, label %57, label %65

57:                                               ; preds = %53
  %58 = load i8*, i8** %7, align 8
  %59 = getelementptr inbounds i8, i8* %58, i32 1
  store i8* %59, i8** %7, align 8
  %60 = load i8, i8* %58, align 1
  %61 = sext i8 %60 to i32
  %62 = icmp eq i32 %61, 10
  br i1 %62, label %63, label %64

63:                                               ; preds = %57
  br label %68

64:                                               ; preds = %57
  br label %53

65:                                               ; preds = %53
  %66 = load i8*, i8** %6, align 8
  %67 = load i8**, i8*** %5, align 8
  store i8* %66, i8** %67, align 8
  store i32 0, i32* %3, align 4
  br label %75

68:                                               ; preds = %63, %51, %40
  %69 = load i8*, i8** %6, align 8
  %70 = call i32 @git__free(i8* %69)
  %71 = load i32, i32* @GIT_ERROR_CONFIG, align 4
  %72 = load i8*, i8** %4, align 8
  %73 = call i32 @git_error_set(i32 %71, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i8* %72)
  %74 = load i32, i32* @GIT_EINVALIDSPEC, align 4
  store i32 %74, i32* %3, align 4
  br label %75

75:                                               ; preds = %68, %65
  %76 = load i32, i32* %3, align 4
  ret i32 %76
}

declare dso_local i32 @assert(i32) #1

declare dso_local i8* @git__strdup(i8*) #1

declare dso_local i32 @GIT_ERROR_CHECK_ALLOC(i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i8* @strrchr(i8*, i8 signext) #1

declare dso_local i64 @normalize_section(i8*, i8*) #1

declare dso_local i32 @git__free(i8*) #1

declare dso_local i32 @git_error_set(i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
