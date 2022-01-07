; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_sysdir.c_git_sysdir_guess_xdg_dirs.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_sysdir.c_git_sysdir_guess_xdg_dirs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }

@GIT_BUF_INIT = common dso_local global %struct.TYPE_9__ zeroinitializer, align 4
@.str = private unnamed_addr constant [16 x i8] c"XDG_CONFIG_HOME\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"git\00", align 1
@GIT_ENOTFOUND = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"HOME\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c".config/git\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*)* @git_sysdir_guess_xdg_dirs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @git_sysdir_guess_xdg_dirs(%struct.TYPE_9__* %0) #0 {
  %2 = alloca %struct.TYPE_9__*, align 8
  %3 = alloca %struct.TYPE_9__, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %2, align 8
  %7 = bitcast %struct.TYPE_9__* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %7, i8* align 4 bitcast (%struct.TYPE_9__* @GIT_BUF_INIT to i8*), i64 4, i1 false)
  %8 = call i64 (...) @getuid()
  store i64 %8, i64* %5, align 8
  %9 = call i64 (...) @geteuid()
  store i64 %9, i64* %6, align 8
  %10 = load i64, i64* %5, align 8
  %11 = load i64, i64* %6, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %34

13:                                               ; preds = %1
  %14 = call i32 @git__getenv(%struct.TYPE_9__* %3, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  store i32 %14, i32* %4, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %13
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %3, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @git_buf_joinpath(%struct.TYPE_9__* %17, i32 %19, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  store i32 %20, i32* %4, align 4
  br label %21

21:                                               ; preds = %16, %13
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* @GIT_ENOTFOUND, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %33

25:                                               ; preds = %21
  %26 = call i32 @git__getenv(%struct.TYPE_9__* %3, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  store i32 %26, i32* %4, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %25
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %3, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @git_buf_joinpath(%struct.TYPE_9__* %29, i32 %31, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  store i32 %32, i32* %4, align 4
  br label %33

33:                                               ; preds = %28, %25, %21
  br label %44

34:                                               ; preds = %1
  %35 = load i64, i64* %6, align 8
  %36 = call i32 @get_passwd_home(%struct.TYPE_9__* %3, i64 %35)
  store i32 %36, i32* %4, align 4
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %34
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %3, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @git_buf_joinpath(%struct.TYPE_9__* %39, i32 %41, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  store i32 %42, i32* %4, align 4
  br label %43

43:                                               ; preds = %38, %34
  br label %44

44:                                               ; preds = %43, %33
  %45 = load i32, i32* %4, align 4
  %46 = load i32, i32* @GIT_ENOTFOUND, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %48, label %50

48:                                               ; preds = %44
  %49 = call i32 (...) @git_error_clear()
  store i32 0, i32* %4, align 4
  br label %50

50:                                               ; preds = %48, %44
  %51 = call i32 @git_buf_dispose(%struct.TYPE_9__* %3)
  %52 = load i32, i32* %4, align 4
  ret i32 %52
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @getuid(...) #2

declare dso_local i64 @geteuid(...) #2

declare dso_local i32 @git__getenv(%struct.TYPE_9__*, i8*) #2

declare dso_local i32 @git_buf_joinpath(%struct.TYPE_9__*, i32, i8*) #2

declare dso_local i32 @get_passwd_home(%struct.TYPE_9__*, i64) #2

declare dso_local i32 @git_error_clear(...) #2

declare dso_local i32 @git_buf_dispose(%struct.TYPE_9__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
