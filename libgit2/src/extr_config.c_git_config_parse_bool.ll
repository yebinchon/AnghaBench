; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_config.c_git_config_parse_bool.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_config.c_git_config_parse_bool.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GIT_ERROR_CONFIG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"failed to parse '%s' as a boolean value\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @git_config_parse_bool(i32* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  %6 = load i32*, i32** %4, align 8
  %7 = load i8*, i8** %5, align 8
  %8 = call i64 @git__parse_bool(i32* %6, i8* %7)
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %28

11:                                               ; preds = %2
  %12 = load i32*, i32** %4, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = call i64 @git_config_parse_int32(i32* %12, i8* %13)
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %24

16:                                               ; preds = %11
  %17 = load i32*, i32** %4, align 8
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  %20 = xor i1 %19, true
  %21 = xor i1 %20, true
  %22 = zext i1 %21 to i32
  %23 = load i32*, i32** %4, align 8
  store i32 %22, i32* %23, align 4
  store i32 0, i32* %3, align 4
  br label %28

24:                                               ; preds = %11
  %25 = load i32, i32* @GIT_ERROR_CONFIG, align 4
  %26 = load i8*, i8** %5, align 8
  %27 = call i32 @git_error_set(i32 %25, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i8* %26)
  store i32 -1, i32* %3, align 4
  br label %28

28:                                               ; preds = %24, %16, %10
  %29 = load i32, i32* %3, align 4
  ret i32 %29
}

declare dso_local i64 @git__parse_bool(i32*, i8*) #1

declare dso_local i64 @git_config_parse_int32(i32*, i8*) #1

declare dso_local i32 @git_error_set(i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
