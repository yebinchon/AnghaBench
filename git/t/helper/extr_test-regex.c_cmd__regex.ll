; ModuleID = '/home/carl/AnghaBench/git/t/helper/extr_test-regex.c_cmd__regex.c'
source_filename = "/home/carl/AnghaBench/git/t/helper/extr_test-regex.c_cmd__regex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.reg_flag = type { i8*, i32 }

@.str = private unnamed_addr constant [6 x i8] c"--bug\00", align 1
@.str.1 = private unnamed_addr constant [69 x i8] c"test-tool regex --bug\0Atest-tool regex <pattern> <string> [<options>]\00", align 1
@reg_flags = common dso_local global %struct.reg_flag* null, align 8
@.str.2 = private unnamed_addr constant [20 x i8] c"do not recognize %s\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"failed regcomp() for pattern '%s'\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cmd__regex(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [1 x i32], align 4
  %11 = alloca %struct.reg_flag*, align 8
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 0, i32* %8, align 4
  %12 = load i32, i32* %4, align 4
  %13 = icmp eq i32 %12, 2
  br i1 %13, label %14, label %22

14:                                               ; preds = %2
  %15 = load i8**, i8*** %5, align 8
  %16 = getelementptr inbounds i8*, i8** %15, i64 1
  %17 = load i8*, i8** %16, align 8
  %18 = call i32 @strcmp(i8* %17, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %14
  %21 = call i32 (...) @test_regex_bug()
  store i32 %21, i32* %3, align 4
  br label %94

22:                                               ; preds = %14, %2
  %23 = load i32, i32* %4, align 4
  %24 = icmp slt i32 %23, 3
  br i1 %24, label %25, label %27

25:                                               ; preds = %22
  %26 = call i32 @usage(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.1, i64 0, i64 0))
  br label %27

27:                                               ; preds = %25, %22
  br label %28

28:                                               ; preds = %27
  %29 = load i8**, i8*** %5, align 8
  %30 = getelementptr inbounds i8*, i8** %29, i32 1
  store i8** %30, i8*** %5, align 8
  %31 = load i8**, i8*** %5, align 8
  %32 = getelementptr inbounds i8*, i8** %31, i32 1
  store i8** %32, i8*** %5, align 8
  %33 = load i8*, i8** %31, align 8
  store i8* %33, i8** %6, align 8
  %34 = load i8**, i8*** %5, align 8
  %35 = getelementptr inbounds i8*, i8** %34, i32 1
  store i8** %35, i8*** %5, align 8
  %36 = load i8*, i8** %34, align 8
  store i8* %36, i8** %7, align 8
  br label %37

37:                                               ; preds = %75, %28
  %38 = load i8**, i8*** %5, align 8
  %39 = load i8*, i8** %38, align 8
  %40 = icmp ne i8* %39, null
  br i1 %40, label %41, label %78

41:                                               ; preds = %37
  %42 = load %struct.reg_flag*, %struct.reg_flag** @reg_flags, align 8
  store %struct.reg_flag* %42, %struct.reg_flag** %11, align 8
  br label %43

43:                                               ; preds = %63, %41
  %44 = load %struct.reg_flag*, %struct.reg_flag** %11, align 8
  %45 = getelementptr inbounds %struct.reg_flag, %struct.reg_flag* %44, i32 0, i32 0
  %46 = load i8*, i8** %45, align 8
  %47 = icmp ne i8* %46, null
  br i1 %47, label %48, label %66

48:                                               ; preds = %43
  %49 = load i8**, i8*** %5, align 8
  %50 = load i8*, i8** %49, align 8
  %51 = load %struct.reg_flag*, %struct.reg_flag** %11, align 8
  %52 = getelementptr inbounds %struct.reg_flag, %struct.reg_flag* %51, i32 0, i32 0
  %53 = load i8*, i8** %52, align 8
  %54 = call i32 @strcmp(i8* %50, i8* %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %62, label %56

56:                                               ; preds = %48
  %57 = load %struct.reg_flag*, %struct.reg_flag** %11, align 8
  %58 = getelementptr inbounds %struct.reg_flag, %struct.reg_flag* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* %8, align 4
  %61 = or i32 %60, %59
  store i32 %61, i32* %8, align 4
  br label %66

62:                                               ; preds = %48
  br label %63

63:                                               ; preds = %62
  %64 = load %struct.reg_flag*, %struct.reg_flag** %11, align 8
  %65 = getelementptr inbounds %struct.reg_flag, %struct.reg_flag* %64, i32 1
  store %struct.reg_flag* %65, %struct.reg_flag** %11, align 8
  br label %43

66:                                               ; preds = %56, %43
  %67 = load %struct.reg_flag*, %struct.reg_flag** %11, align 8
  %68 = getelementptr inbounds %struct.reg_flag, %struct.reg_flag* %67, i32 0, i32 0
  %69 = load i8*, i8** %68, align 8
  %70 = icmp ne i8* %69, null
  br i1 %70, label %75, label %71

71:                                               ; preds = %66
  %72 = load i8**, i8*** %5, align 8
  %73 = load i8*, i8** %72, align 8
  %74 = call i32 @die(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i8* %73)
  br label %75

75:                                               ; preds = %71, %66
  %76 = load i8**, i8*** %5, align 8
  %77 = getelementptr inbounds i8*, i8** %76, i32 1
  store i8** %77, i8*** %5, align 8
  br label %37

78:                                               ; preds = %37
  %79 = call i32 (...) @git_setup_gettext()
  %80 = load i8*, i8** %6, align 8
  %81 = load i32, i32* %8, align 4
  %82 = call i64 @regcomp(i32* %9, i8* %80, i32 %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %87

84:                                               ; preds = %78
  %85 = load i8*, i8** %6, align 8
  %86 = call i32 @die(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i8* %85)
  br label %87

87:                                               ; preds = %84, %78
  %88 = load i8*, i8** %7, align 8
  %89 = getelementptr inbounds [1 x i32], [1 x i32]* %10, i64 0, i64 0
  %90 = call i64 @regexec(i32* %9, i8* %88, i32 1, i32* %89, i32 0)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %87
  store i32 1, i32* %3, align 4
  br label %94

93:                                               ; preds = %87
  store i32 0, i32* %3, align 4
  br label %94

94:                                               ; preds = %93, %92, %20
  %95 = load i32, i32* %3, align 4
  ret i32 %95
}

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @test_regex_bug(...) #1

declare dso_local i32 @usage(i8*) #1

declare dso_local i32 @die(i8*, i8*) #1

declare dso_local i32 @git_setup_gettext(...) #1

declare dso_local i64 @regcomp(i32*, i8*, i32) #1

declare dso_local i64 @regexec(i32*, i8*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
