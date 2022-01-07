; ModuleID = '/home/carl/AnghaBench/git/extr_gpg-interface.c_git_gpg_config.c'
source_filename = "/home/carl/AnghaBench/git/extr_gpg-interface.c_git_gpg_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpg_format = type { i32 }

@.str = private unnamed_addr constant [16 x i8] c"user.signingkey\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"gpg.format\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"unsupported value for %s: %s\00", align 1
@use_format = common dso_local global %struct.gpg_format* null, align 8
@.str.3 = private unnamed_addr constant [12 x i8] c"gpg.program\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"gpg.openpgp.program\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"openpgp\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"gpg.x509.program\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"x509\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @git_gpg_config(i8* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.gpg_format*, align 8
  %9 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store %struct.gpg_format* null, %struct.gpg_format** %8, align 8
  store i8* null, i8** %9, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = call i32 @strcmp(i8* %10, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %22, label %13

13:                                               ; preds = %3
  %14 = load i8*, i8** %6, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %13
  %17 = load i8*, i8** %5, align 8
  %18 = call i32 @config_error_nonbool(i8* %17)
  store i32 %18, i32* %4, align 4
  br label %69

19:                                               ; preds = %13
  %20 = load i8*, i8** %6, align 8
  %21 = call i32 @set_signing_key(i8* %20)
  store i32 0, i32* %4, align 4
  br label %69

22:                                               ; preds = %3
  %23 = load i8*, i8** %5, align 8
  %24 = call i32 @strcmp(i8* %23, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %43, label %26

26:                                               ; preds = %22
  %27 = load i8*, i8** %6, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %26
  %30 = load i8*, i8** %5, align 8
  %31 = call i32 @config_error_nonbool(i8* %30)
  store i32 %31, i32* %4, align 4
  br label %69

32:                                               ; preds = %26
  %33 = load i8*, i8** %6, align 8
  %34 = call %struct.gpg_format* @get_format_by_name(i8* %33)
  store %struct.gpg_format* %34, %struct.gpg_format** %8, align 8
  %35 = load %struct.gpg_format*, %struct.gpg_format** %8, align 8
  %36 = icmp ne %struct.gpg_format* %35, null
  br i1 %36, label %41, label %37

37:                                               ; preds = %32
  %38 = load i8*, i8** %5, align 8
  %39 = load i8*, i8** %6, align 8
  %40 = call i32 @error(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i8* %38, i8* %39)
  store i32 %40, i32* %4, align 4
  br label %69

41:                                               ; preds = %32
  %42 = load %struct.gpg_format*, %struct.gpg_format** %8, align 8
  store %struct.gpg_format* %42, %struct.gpg_format** @use_format, align 8
  store i32 0, i32* %4, align 4
  br label %69

43:                                               ; preds = %22
  %44 = load i8*, i8** %5, align 8
  %45 = call i32 @strcmp(i8* %44, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %43
  %48 = load i8*, i8** %5, align 8
  %49 = call i32 @strcmp(i8* %48, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0))
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %52, label %51

51:                                               ; preds = %47, %43
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i8** %9, align 8
  br label %52

52:                                               ; preds = %51, %47
  %53 = load i8*, i8** %5, align 8
  %54 = call i32 @strcmp(i8* %53, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0))
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %57, label %56

56:                                               ; preds = %52
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i8** %9, align 8
  br label %57

57:                                               ; preds = %56, %52
  %58 = load i8*, i8** %9, align 8
  %59 = icmp ne i8* %58, null
  br i1 %59, label %60, label %68

60:                                               ; preds = %57
  %61 = load i8*, i8** %9, align 8
  %62 = call %struct.gpg_format* @get_format_by_name(i8* %61)
  store %struct.gpg_format* %62, %struct.gpg_format** %8, align 8
  %63 = load %struct.gpg_format*, %struct.gpg_format** %8, align 8
  %64 = getelementptr inbounds %struct.gpg_format, %struct.gpg_format* %63, i32 0, i32 0
  %65 = load i8*, i8** %5, align 8
  %66 = load i8*, i8** %6, align 8
  %67 = call i32 @git_config_string(i32* %64, i8* %65, i8* %66)
  store i32 %67, i32* %4, align 4
  br label %69

68:                                               ; preds = %57
  store i32 0, i32* %4, align 4
  br label %69

69:                                               ; preds = %68, %60, %41, %37, %29, %19, %16
  %70 = load i32, i32* %4, align 4
  ret i32 %70
}

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @config_error_nonbool(i8*) #1

declare dso_local i32 @set_signing_key(i8*) #1

declare dso_local %struct.gpg_format* @get_format_by_name(i8*) #1

declare dso_local i32 @error(i8*, i8*, i8*) #1

declare dso_local i32 @git_config_string(i32*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
