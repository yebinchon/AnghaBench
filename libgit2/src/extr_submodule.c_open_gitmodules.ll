; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_submodule.c_open_gitmodules.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_submodule.c_open_gitmodules.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

@GIT_BUF_INIT = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@GIT_MODULES_FILE = common dso_local global i32 0, align 4
@GIT_CONFIG_LEVEL_LOCAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32)* @open_gitmodules to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @open_gitmodules(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_5__, align 4
  %8 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load i32*, i32** %4, align 8
  %10 = call i8* @git_repository_workdir(i32* %9)
  store i8* %10, i8** %6, align 8
  %11 = bitcast %struct.TYPE_5__* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %11, i8* align 4 bitcast (%struct.TYPE_5__* @GIT_BUF_INIT to i8*), i64 4, i1 false)
  store i32* null, i32** %8, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = icmp ne i8* %12, null
  br i1 %13, label %14, label %46

14:                                               ; preds = %2
  %15 = load i8*, i8** %6, align 8
  %16 = load i32, i32* @GIT_MODULES_FILE, align 4
  %17 = call i64 @git_buf_joinpath(%struct.TYPE_5__* %7, i8* %15, i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %14
  store i32* null, i32** %3, align 8
  br label %49

20:                                               ; preds = %14
  %21 = load i32, i32* %5, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %28, label %23

23:                                               ; preds = %20
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i64 @git_path_isfile(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %45

28:                                               ; preds = %23, %20
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i64 @git_config_backend_from_file(i32** %8, i32 %30)
  %32 = icmp slt i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %28
  store i32* null, i32** %8, align 8
  br label %44

34:                                               ; preds = %28
  %35 = load i32*, i32** %8, align 8
  %36 = load i32, i32* @GIT_CONFIG_LEVEL_LOCAL, align 4
  %37 = load i32*, i32** %4, align 8
  %38 = call i64 @git_config_backend_open(i32* %35, i32 %36, i32* %37)
  %39 = icmp slt i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %34
  %41 = load i32*, i32** %8, align 8
  %42 = call i32 @git_config_backend_free(i32* %41)
  store i32* null, i32** %8, align 8
  br label %43

43:                                               ; preds = %40, %34
  br label %44

44:                                               ; preds = %43, %33
  br label %45

45:                                               ; preds = %44, %23
  br label %46

46:                                               ; preds = %45, %2
  %47 = call i32 @git_buf_dispose(%struct.TYPE_5__* %7)
  %48 = load i32*, i32** %8, align 8
  store i32* %48, i32** %3, align 8
  br label %49

49:                                               ; preds = %46, %19
  %50 = load i32*, i32** %3, align 8
  ret i32* %50
}

declare dso_local i8* @git_repository_workdir(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @git_buf_joinpath(%struct.TYPE_5__*, i8*, i32) #1

declare dso_local i64 @git_path_isfile(i32) #1

declare dso_local i64 @git_config_backend_from_file(i32**, i32) #1

declare dso_local i64 @git_config_backend_open(i32*, i32, i32*) #1

declare dso_local i32 @git_config_backend_free(i32*) #1

declare dso_local i32 @git_buf_dispose(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
