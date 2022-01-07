; ModuleID = '/home/carl/AnghaBench/libgit2/tests/online/extr_clone.c_ssh_memory_cred_cb.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/online/extr_clone.c_ssh_memory_cred_cb.c"
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
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32**, i8*, i8*, i32, i8*)* @ssh_memory_cred_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ssh_memory_cred_cb(i32** %0, i8* %1, i8* %2, i32 %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32**, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  store i32** %0, i32*** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i8* %4, i8** %11, align 8
  %15 = load i8*, i8** %8, align 8
  %16 = call i32 @GIT_UNUSED(i8* %15)
  %17 = load i8*, i8** %9, align 8
  %18 = call i32 @GIT_UNUSED(i8* %17)
  %19 = load i8*, i8** %11, align 8
  %20 = call i32 @GIT_UNUSED(i8* %19)
  %21 = load i32, i32* %10, align 4
  %22 = load i32, i32* @GIT_CREDTYPE_USERNAME, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %5
  %26 = load i32**, i32*** %7, align 8
  %27 = load i32, i32* @_remote_user, align 4
  %28 = call i32 @git_cred_username_new(i32** %26, i32 %27)
  store i32 %28, i32* %6, align 4
  br label %61

29:                                               ; preds = %5
  %30 = load i32, i32* %10, align 4
  %31 = load i32, i32* @GIT_CREDTYPE_SSH_KEY, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %58

34:                                               ; preds = %29
  %35 = load i32, i32* @_remote_ssh_pubkey, align 4
  %36 = call i8* @read_key_file(i32 %35)
  store i8* %36, i8** %12, align 8
  %37 = load i32, i32* @_remote_ssh_privkey, align 4
  %38 = call i8* @read_key_file(i32 %37)
  store i8* %38, i8** %13, align 8
  %39 = load i32**, i32*** %7, align 8
  %40 = load i32, i32* @_remote_user, align 4
  %41 = load i8*, i8** %12, align 8
  %42 = load i8*, i8** %13, align 8
  %43 = load i32, i32* @_remote_ssh_passphrase, align 4
  %44 = call i32 @git_cred_ssh_key_memory_new(i32** %39, i32 %40, i8* %41, i8* %42, i32 %43)
  store i32 %44, i32* %14, align 4
  %45 = load i8*, i8** %13, align 8
  %46 = icmp ne i8* %45, null
  br i1 %46, label %47, label %50

47:                                               ; preds = %34
  %48 = load i8*, i8** %13, align 8
  %49 = call i32 @free(i8* %48)
  br label %50

50:                                               ; preds = %47, %34
  %51 = load i8*, i8** %12, align 8
  %52 = icmp ne i8* %51, null
  br i1 %52, label %53, label %56

53:                                               ; preds = %50
  %54 = load i8*, i8** %12, align 8
  %55 = call i32 @free(i8* %54)
  br label %56

56:                                               ; preds = %53, %50
  %57 = load i32, i32* %14, align 4
  store i32 %57, i32* %6, align 4
  br label %61

58:                                               ; preds = %29
  %59 = load i32, i32* @GIT_ERROR_NET, align 4
  %60 = call i32 @git_error_set(i32 %59, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %6, align 4
  br label %61

61:                                               ; preds = %58, %56, %25
  %62 = load i32, i32* %6, align 4
  ret i32 %62
}

declare dso_local i32 @GIT_UNUSED(i8*) #1

declare dso_local i32 @git_cred_username_new(i32**, i32) #1

declare dso_local i8* @read_key_file(i32) #1

declare dso_local i32 @git_cred_ssh_key_memory_new(i32**, i32, i8*, i8*, i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @git_error_set(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
