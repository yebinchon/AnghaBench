; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_submodule.c_git_submodule_parse_recurse.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_submodule.c_git_submodule_parse_recurse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@_sm_recurse_map = common dso_local global i32 0, align 4
@GIT_SUBMODULE_RECURSE_YES = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [8 x i8] c"recurse\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @git_submodule_parse_recurse(i64* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store i64* %0, i64** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load i32, i32* @_sm_recurse_map, align 4
  %8 = load i32, i32* @_sm_recurse_map, align 4
  %9 = call i32 @ARRAY_SIZE(i32 %8)
  %10 = load i8*, i8** %5, align 8
  %11 = call i64 @git_config_lookup_map_value(i32* %6, i32 %7, i32 %9, i8* %10)
  %12 = icmp slt i64 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %2
  %14 = load i64, i64* @GIT_SUBMODULE_RECURSE_YES, align 8
  %15 = load i64*, i64** %4, align 8
  store i64 %14, i64* %15, align 8
  %16 = load i8*, i8** %5, align 8
  %17 = call i32 @submodule_config_error(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* %16)
  store i32 %17, i32* %3, align 4
  br label %22

18:                                               ; preds = %2
  %19 = load i32, i32* %6, align 4
  %20 = sext i32 %19 to i64
  %21 = load i64*, i64** %4, align 8
  store i64 %20, i64* %21, align 8
  store i32 0, i32* %3, align 4
  br label %22

22:                                               ; preds = %18, %13
  %23 = load i32, i32* %3, align 4
  ret i32 %23
}

declare dso_local i64 @git_config_lookup_map_value(i32*, i32, i32, i8*) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @submodule_config_error(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
