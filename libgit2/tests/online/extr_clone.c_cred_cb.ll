; ModuleID = '/home/carl/AnghaBench/libgit2/tests/online/extr_clone.c_cred_cb.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/online/extr_clone.c_cred_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GIT_CREDTYPE_USERNAME = common dso_local global i32 0, align 4
@_remote_user = common dso_local global i32 0, align 4
@GIT_CREDTYPE_SSH_KEY = common dso_local global i32 0, align 4
@_remote_ssh_pubkey = common dso_local global i32 0, align 4
@_remote_ssh_privkey = common dso_local global i32 0, align 4
@_remote_ssh_passphrase = common dso_local global i32 0, align 4
@GIT_ERROR_NET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"unexpected cred type\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32**, i8*, i8*, i32, i8*)* @cred_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cred_cb(i32** %0, i8* %1, i8* %2, i32 %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32**, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  store i32** %0, i32*** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i8* %4, i8** %11, align 8
  %12 = load i8*, i8** %8, align 8
  %13 = call i32 @GIT_UNUSED(i8* %12)
  %14 = load i8*, i8** %9, align 8
  %15 = call i32 @GIT_UNUSED(i8* %14)
  %16 = load i8*, i8** %11, align 8
  %17 = call i32 @GIT_UNUSED(i8* %16)
  %18 = load i32, i32* %10, align 4
  %19 = load i32, i32* @GIT_CREDTYPE_USERNAME, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %5
  %23 = load i32**, i32*** %7, align 8
  %24 = load i32, i32* @_remote_user, align 4
  %25 = call i32 @git_cred_username_new(i32** %23, i32 %24)
  store i32 %25, i32* %6, align 4
  br label %41

26:                                               ; preds = %5
  %27 = load i32, i32* %10, align 4
  %28 = load i32, i32* @GIT_CREDTYPE_SSH_KEY, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %38

31:                                               ; preds = %26
  %32 = load i32**, i32*** %7, align 8
  %33 = load i32, i32* @_remote_user, align 4
  %34 = load i32, i32* @_remote_ssh_pubkey, align 4
  %35 = load i32, i32* @_remote_ssh_privkey, align 4
  %36 = load i32, i32* @_remote_ssh_passphrase, align 4
  %37 = call i32 @git_cred_ssh_key_new(i32** %32, i32 %33, i32 %34, i32 %35, i32 %36)
  store i32 %37, i32* %6, align 4
  br label %41

38:                                               ; preds = %26
  %39 = load i32, i32* @GIT_ERROR_NET, align 4
  %40 = call i32 @git_error_set(i32 %39, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %6, align 4
  br label %41

41:                                               ; preds = %38, %31, %22
  %42 = load i32, i32* %6, align 4
  ret i32 %42
}

declare dso_local i32 @GIT_UNUSED(i8*) #1

declare dso_local i32 @git_cred_username_new(i32**, i32) #1

declare dso_local i32 @git_cred_ssh_key_new(i32**, i32, i32, i32, i32) #1

declare dso_local i32 @git_error_set(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
