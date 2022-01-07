; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_remote.c_git_remote_create.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_remote.c_git_remote_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8*, i32* }

@GIT_BUF_INIT = common dso_local global i32 0, align 4
@GIT_REMOTE_CREATE_OPTIONS_INIT = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@GIT_ERROR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @git_remote_create(i32** %0, i32* %1, i8* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32**, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_4__, align 8
  store i32** %0, i32*** %6, align 8
  store i32* %1, i32** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  %13 = load i32, i32* @GIT_BUF_INIT, align 4
  store i32 %13, i32* %10, align 4
  %14 = bitcast %struct.TYPE_4__* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %14, i8* align 8 bitcast (%struct.TYPE_4__* @GIT_REMOTE_CREATE_OPTIONS_INIT to i8*), i64 16, i1 false)
  %15 = load i8*, i8** %8, align 8
  %16 = call i32 @ensure_remote_name_is_valid(i8* %15)
  store i32 %16, i32* %11, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %4
  %19 = load i32, i32* %11, align 4
  store i32 %19, i32* %5, align 4
  br label %37

20:                                               ; preds = %4
  %21 = load i8*, i8** %9, align 8
  %22 = call i64 @canonicalize_url(i32* %10, i8* %21)
  %23 = icmp slt i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %20
  %25 = load i32, i32* @GIT_ERROR, align 4
  store i32 %25, i32* %5, align 4
  br label %37

26:                                               ; preds = %20
  %27 = call i32 @git_buf_clear(i32* %10)
  %28 = load i32*, i32** %7, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 1
  store i32* %28, i32** %29, align 8
  %30 = load i8*, i8** %8, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  store i8* %30, i8** %31, align 8
  %32 = load i32**, i32*** %6, align 8
  %33 = load i8*, i8** %9, align 8
  %34 = call i32 @git_remote_create_with_opts(i32** %32, i8* %33, %struct.TYPE_4__* %12)
  store i32 %34, i32* %11, align 4
  %35 = call i32 @git_buf_dispose(i32* %10)
  %36 = load i32, i32* %11, align 4
  store i32 %36, i32* %5, align 4
  br label %37

37:                                               ; preds = %26, %24, %18
  %38 = load i32, i32* %5, align 4
  ret i32 %38
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @ensure_remote_name_is_valid(i8*) #2

declare dso_local i64 @canonicalize_url(i32*, i8*) #2

declare dso_local i32 @git_buf_clear(i32*) #2

declare dso_local i32 @git_remote_create_with_opts(i32**, i8*, %struct.TYPE_4__*) #2

declare dso_local i32 @git_buf_dispose(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
