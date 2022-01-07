; ModuleID = '/home/carl/AnghaBench/libgit2/examples/extr_common.c_cred_acquire_cb.c'
source_filename = "/home/carl/AnghaBench/libgit2/examples/extr_common.c_cred_acquire_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [10 x i8] c"Username:\00", align 1
@GIT_CREDTYPE_SSH_KEY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"SSH Key:\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"Password:\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"%s.pub\00", align 1
@GIT_CREDTYPE_USERPASS_PLAINTEXT = common dso_local global i32 0, align 4
@GIT_CREDTYPE_USERNAME = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cred_acquire_cb(i32** %0, i8* %1, i8* %2, i32 %3, i8* %4) #0 {
  %6 = alloca i32**, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32** %0, i32*** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  store i8* %4, i8** %10, align 8
  store i8* null, i8** %11, align 8
  store i8* null, i8** %12, align 8
  store i8* null, i8** %13, align 8
  store i8* null, i8** %14, align 8
  store i32 1, i32* %15, align 4
  %17 = load i8*, i8** %7, align 8
  %18 = call i32 @UNUSED(i8* %17)
  %19 = load i8*, i8** %10, align 8
  %20 = call i32 @UNUSED(i8* %19)
  %21 = load i8*, i8** %8, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %23, label %29

23:                                               ; preds = %5
  %24 = load i8*, i8** %8, align 8
  %25 = call i8* @strdup(i8* %24)
  store i8* %25, i8** %11, align 8
  %26 = icmp eq i8* %25, null
  br i1 %26, label %27, label %28

27:                                               ; preds = %23
  br label %96

28:                                               ; preds = %23
  br label %34

29:                                               ; preds = %5
  %30 = call i32 @ask(i8** %11, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 0)
  store i32 %30, i32* %15, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %29
  br label %96

33:                                               ; preds = %29
  br label %34

34:                                               ; preds = %33, %28
  %35 = load i32, i32* %9, align 4
  %36 = load i32, i32* @GIT_CREDTYPE_SSH_KEY, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %70

39:                                               ; preds = %34
  %40 = call i32 @ask(i8** %13, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 0)
  store i32 %40, i32* %15, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %45, label %42

42:                                               ; preds = %39
  %43 = call i32 @ask(i8** %12, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 1)
  store i32 %43, i32* %15, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %42, %39
  br label %96

46:                                               ; preds = %42
  %47 = load i8*, i8** %13, align 8
  %48 = call i32 @snprintf(i8* null, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8* %47)
  store i32 %48, i32* %16, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %62, label %50

50:                                               ; preds = %46
  %51 = load i32, i32* %16, align 4
  %52 = add nsw i32 %51, 1
  %53 = call i8* @malloc(i32 %52)
  store i8* %53, i8** %14, align 8
  %54 = icmp eq i8* %53, null
  br i1 %54, label %62, label %55

55:                                               ; preds = %50
  %56 = load i8*, i8** %14, align 8
  %57 = load i32, i32* %16, align 4
  %58 = add nsw i32 %57, 1
  %59 = load i8*, i8** %13, align 8
  %60 = call i32 @snprintf(i8* %56, i32 %58, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8* %59)
  store i32 %60, i32* %16, align 4
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %55, %50, %46
  br label %96

63:                                               ; preds = %55
  %64 = load i32**, i32*** %6, align 8
  %65 = load i8*, i8** %11, align 8
  %66 = load i8*, i8** %14, align 8
  %67 = load i8*, i8** %13, align 8
  %68 = load i8*, i8** %12, align 8
  %69 = call i32 @git_cred_ssh_key_new(i32** %64, i8* %65, i8* %66, i8* %67, i8* %68)
  store i32 %69, i32* %15, align 4
  br label %95

70:                                               ; preds = %34
  %71 = load i32, i32* %9, align 4
  %72 = load i32, i32* @GIT_CREDTYPE_USERPASS_PLAINTEXT, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %84

75:                                               ; preds = %70
  %76 = call i32 @ask(i8** %12, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 1)
  store i32 %76, i32* %15, align 4
  %77 = icmp slt i32 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %75
  br label %96

79:                                               ; preds = %75
  %80 = load i32**, i32*** %6, align 8
  %81 = load i8*, i8** %11, align 8
  %82 = load i8*, i8** %12, align 8
  %83 = call i32 @git_cred_userpass_plaintext_new(i32** %80, i8* %81, i8* %82)
  store i32 %83, i32* %15, align 4
  br label %94

84:                                               ; preds = %70
  %85 = load i32, i32* %9, align 4
  %86 = load i32, i32* @GIT_CREDTYPE_USERNAME, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %93

89:                                               ; preds = %84
  %90 = load i32**, i32*** %6, align 8
  %91 = load i8*, i8** %11, align 8
  %92 = call i32 @git_cred_username_new(i32** %90, i8* %91)
  store i32 %92, i32* %15, align 4
  br label %93

93:                                               ; preds = %89, %84
  br label %94

94:                                               ; preds = %93, %79
  br label %95

95:                                               ; preds = %94, %63
  br label %96

96:                                               ; preds = %95, %78, %62, %45, %32, %27
  %97 = load i8*, i8** %11, align 8
  %98 = call i32 @free(i8* %97)
  %99 = load i8*, i8** %12, align 8
  %100 = call i32 @free(i8* %99)
  %101 = load i8*, i8** %13, align 8
  %102 = call i32 @free(i8* %101)
  %103 = load i8*, i8** %14, align 8
  %104 = call i32 @free(i8* %103)
  %105 = load i32, i32* %15, align 4
  ret i32 %105
}

declare dso_local i32 @UNUSED(i8*) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i32 @ask(i8**, i8*, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #1

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @git_cred_ssh_key_new(i32**, i8*, i8*, i8*, i8*) #1

declare dso_local i32 @git_cred_userpass_plaintext_new(i32**, i8*, i8*) #1

declare dso_local i32 @git_cred_username_new(i32**, i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
