; ModuleID = '/home/carl/AnghaBench/libgit2/tests/config/extr_validkeyname.c_assert_invalid_config_key_name.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/config/extr_validkeyname.c_assert_invalid_config_key_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GIT_BUF_INIT = common dso_local global i32 0, align 4
@cfg = common dso_local global i32 0, align 4
@GIT_EINVALIDSPEC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"42\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @assert_invalid_config_key_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @assert_invalid_config_key_name(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %4 = load i32, i32* @GIT_BUF_INIT, align 4
  store i32 %4, i32* %3, align 4
  %5 = load i32, i32* @cfg, align 4
  %6 = load i8*, i8** %2, align 8
  %7 = call i32 @git_config_get_string_buf(i32* %3, i32 %5, i8* %6)
  %8 = load i32, i32* @GIT_EINVALIDSPEC, align 4
  %9 = call i32 @cl_git_fail_with(i32 %7, i32 %8)
  %10 = load i32, i32* @cfg, align 4
  %11 = load i8*, i8** %2, align 8
  %12 = call i32 @git_config_set_string(i32 %10, i8* %11, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %13 = load i32, i32* @GIT_EINVALIDSPEC, align 4
  %14 = call i32 @cl_git_fail_with(i32 %12, i32 %13)
  %15 = load i32, i32* @cfg, align 4
  %16 = load i8*, i8** %2, align 8
  %17 = call i32 @git_config_delete_entry(i32 %15, i8* %16)
  %18 = load i32, i32* @GIT_EINVALIDSPEC, align 4
  %19 = call i32 @cl_git_fail_with(i32 %17, i32 %18)
  %20 = load i32, i32* @cfg, align 4
  %21 = load i8*, i8** %2, align 8
  %22 = call i32 @git_config_get_multivar_foreach(i32 %20, i8* %21, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32* null, i32* null)
  %23 = load i32, i32* @GIT_EINVALIDSPEC, align 4
  %24 = call i32 @cl_git_fail_with(i32 %22, i32 %23)
  %25 = load i32, i32* @cfg, align 4
  %26 = load i8*, i8** %2, align 8
  %27 = call i32 @git_config_set_multivar(i32 %25, i8* %26, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %28 = load i32, i32* @GIT_EINVALIDSPEC, align 4
  %29 = call i32 @cl_git_fail_with(i32 %27, i32 %28)
  ret void
}

declare dso_local i32 @cl_git_fail_with(i32, i32) #1

declare dso_local i32 @git_config_get_string_buf(i32*, i32, i8*) #1

declare dso_local i32 @git_config_set_string(i32, i8*, i8*) #1

declare dso_local i32 @git_config_delete_entry(i32, i8*) #1

declare dso_local i32 @git_config_get_multivar_foreach(i32, i8*, i8*, i32*, i32*) #1

declare dso_local i32 @git_config_set_multivar(i32, i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
