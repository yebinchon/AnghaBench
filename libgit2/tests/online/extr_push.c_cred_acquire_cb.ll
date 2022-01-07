; ModuleID = '/home/carl/AnghaBench/libgit2/tests/online/extr_push.c_cred_acquire_cb.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/online/extr_push.c_cred_acquire_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GIT_CREDTYPE_USERNAME = common dso_local global i32 0, align 4
@_remote_user = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"GITTEST_REMOTE_USER must be set\0A\00", align 1
@GIT_CREDTYPE_DEFAULT = common dso_local global i32 0, align 4
@_remote_default = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [70 x i8] c"GITTEST_REMOTE_DEFAULT must be set to use NTLM/Negotiate credentials\0A\00", align 1
@GIT_CREDTYPE_SSH_KEY = common dso_local global i32 0, align 4
@_remote_ssh_pubkey = common dso_local global i32 0, align 4
@_remote_ssh_key = common dso_local global i32 0, align 4
@_remote_ssh_passphrase = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [118 x i8] c"GITTEST_REMOTE_USER, GITTEST_REMOTE_SSH_PUBKEY, GITTEST_REMOTE_SSH_KEY and GITTEST_REMOTE_SSH_PASSPHRASE must be set\0A\00", align 1
@GIT_CREDTYPE_USERPASS_PLAINTEXT = common dso_local global i32 0, align 4
@_remote_pass = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [57 x i8] c"GITTEST_REMOTE_USER and GITTEST_REMOTE_PASS must be set\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32**, i8*, i8*, i32, i8*)* @cred_acquire_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cred_acquire_cb(i32** %0, i8* %1, i8* %2, i32 %3, i8* %4) #0 {
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
  %18 = load i32, i32* @GIT_CREDTYPE_USERNAME, align 4
  %19 = load i32, i32* %10, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %31

22:                                               ; preds = %5
  %23 = load i32, i32* @_remote_user, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %22
  %26 = call i32 @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %6, align 4
  br label %89

27:                                               ; preds = %22
  %28 = load i32**, i32*** %7, align 8
  %29 = load i32, i32* @_remote_user, align 4
  %30 = call i32 @git_cred_username_new(i32** %28, i32 %29)
  store i32 %30, i32* %6, align 4
  br label %89

31:                                               ; preds = %5
  %32 = load i32, i32* @GIT_CREDTYPE_DEFAULT, align 4
  %33 = load i32, i32* %10, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %44

36:                                               ; preds = %31
  %37 = load i32, i32* @_remote_default, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %41, label %39

39:                                               ; preds = %36
  %40 = call i32 @printf(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %6, align 4
  br label %89

41:                                               ; preds = %36
  %42 = load i32**, i32*** %7, align 8
  %43 = call i32 @git_cred_default_new(i32** %42)
  store i32 %43, i32* %6, align 4
  br label %89

44:                                               ; preds = %31
  %45 = load i32, i32* @GIT_CREDTYPE_SSH_KEY, align 4
  %46 = load i32, i32* %10, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %70

49:                                               ; preds = %44
  %50 = load i32, i32* @_remote_user, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %61

52:                                               ; preds = %49
  %53 = load i32, i32* @_remote_ssh_pubkey, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %61

55:                                               ; preds = %52
  %56 = load i32, i32* @_remote_ssh_key, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %55
  %59 = load i32, i32* @_remote_ssh_passphrase, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %63, label %61

61:                                               ; preds = %58, %55, %52, %49
  %62 = call i32 @printf(i8* getelementptr inbounds ([118 x i8], [118 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %6, align 4
  br label %89

63:                                               ; preds = %58
  %64 = load i32**, i32*** %7, align 8
  %65 = load i32, i32* @_remote_user, align 4
  %66 = load i32, i32* @_remote_ssh_pubkey, align 4
  %67 = load i32, i32* @_remote_ssh_key, align 4
  %68 = load i32, i32* @_remote_ssh_passphrase, align 4
  %69 = call i32 @git_cred_ssh_key_new(i32** %64, i32 %65, i32 %66, i32 %67, i32 %68)
  store i32 %69, i32* %6, align 4
  br label %89

70:                                               ; preds = %44
  %71 = load i32, i32* @GIT_CREDTYPE_USERPASS_PLAINTEXT, align 4
  %72 = load i32, i32* %10, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %88

75:                                               ; preds = %70
  %76 = load i32, i32* @_remote_user, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %75
  %79 = load i32, i32* @_remote_pass, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %83, label %81

81:                                               ; preds = %78, %75
  %82 = call i32 @printf(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.3, i64 0, i64 0))
  store i32 -1, i32* %6, align 4
  br label %89

83:                                               ; preds = %78
  %84 = load i32**, i32*** %7, align 8
  %85 = load i32, i32* @_remote_user, align 4
  %86 = load i32, i32* @_remote_pass, align 4
  %87 = call i32 @git_cred_userpass_plaintext_new(i32** %84, i32 %85, i32 %86)
  store i32 %87, i32* %6, align 4
  br label %89

88:                                               ; preds = %70
  store i32 -1, i32* %6, align 4
  br label %89

89:                                               ; preds = %88, %83, %81, %63, %61, %41, %39, %27, %25
  %90 = load i32, i32* %6, align 4
  ret i32 %90
}

declare dso_local i32 @GIT_UNUSED(i8*) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @git_cred_username_new(i32**, i32) #1

declare dso_local i32 @git_cred_default_new(i32**) #1

declare dso_local i32 @git_cred_ssh_key_new(i32**, i32, i32, i32, i32) #1

declare dso_local i32 @git_cred_userpass_plaintext_new(i32**, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
