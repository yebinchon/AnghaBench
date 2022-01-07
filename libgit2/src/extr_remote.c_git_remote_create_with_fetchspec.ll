; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_remote.c_git_remote_create_with_fetchspec.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_remote.c_git_remote_create_with_fetchspec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8*, i8*, i32, i32* }

@GIT_REMOTE_CREATE_OPTIONS_INIT = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@GIT_REMOTE_CREATE_SKIP_DEFAULT_FETCHSPEC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @git_remote_create_with_fetchspec(i32** %0, i32* %1, i8* %2, i8* %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32**, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_4__, align 8
  store i32** %0, i32*** %7, align 8
  store i32* %1, i32** %8, align 8
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store i8* %4, i8** %11, align 8
  %14 = bitcast %struct.TYPE_4__* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %14, i8* align 8 bitcast (%struct.TYPE_4__* @GIT_REMOTE_CREATE_OPTIONS_INIT to i8*), i64 32, i1 false)
  %15 = load i8*, i8** %9, align 8
  %16 = call i32 @ensure_remote_name_is_valid(i8* %15)
  store i32 %16, i32* %12, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %5
  %19 = load i32, i32* %12, align 4
  store i32 %19, i32* %6, align 4
  br label %32

20:                                               ; preds = %5
  %21 = load i32*, i32** %8, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 3
  store i32* %21, i32** %22, align 8
  %23 = load i8*, i8** %9, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  store i8* %23, i8** %24, align 8
  %25 = load i8*, i8** %11, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 1
  store i8* %25, i8** %26, align 8
  %27 = load i32, i32* @GIT_REMOTE_CREATE_SKIP_DEFAULT_FETCHSPEC, align 4
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 2
  store i32 %27, i32* %28, align 8
  %29 = load i32**, i32*** %7, align 8
  %30 = load i8*, i8** %10, align 8
  %31 = call i32 @git_remote_create_with_opts(i32** %29, i8* %30, %struct.TYPE_4__* %13)
  store i32 %31, i32* %6, align 4
  br label %32

32:                                               ; preds = %20, %18
  %33 = load i32, i32* %6, align 4
  ret i32 %33
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @ensure_remote_name_is_valid(i8*) #2

declare dso_local i32 @git_remote_create_with_opts(i32**, i8*, %struct.TYPE_4__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
