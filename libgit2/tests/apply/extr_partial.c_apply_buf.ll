; ModuleID = '/home/carl/AnghaBench/libgit2/tests/apply/extr_partial.c_apply_buf.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/apply/extr_partial.c_apply_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i8* }
%struct.TYPE_9__ = type { i8*, i32 }

@GIT_BUF_INIT = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@GIT_APPLY_OPTIONS_INIT = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i8*, i8*, i8*, i32*, i32, i8*)* @apply_buf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @apply_buf(i8* %0, i8* %1, i8* %2, i8* %3, i8* %4, i32* %5, i32 %6, i8* %7) #0 {
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca %struct.TYPE_8__, align 8
  %19 = alloca %struct.TYPE_8__, align 8
  %20 = alloca %struct.TYPE_9__, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  store i8* %0, i8** %9, align 8
  store i8* %1, i8** %10, align 8
  store i8* %2, i8** %11, align 8
  store i8* %3, i8** %12, align 8
  store i8* %4, i8** %13, align 8
  store i32* %5, i32** %14, align 8
  store i32 %6, i32* %15, align 4
  store i8* %7, i8** %16, align 8
  %26 = bitcast %struct.TYPE_8__* %18 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %26, i8* align 8 bitcast (%struct.TYPE_8__* @GIT_BUF_INIT to i8*), i64 8, i1 false)
  %27 = bitcast %struct.TYPE_8__* %19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %27, i8* align 8 bitcast (%struct.TYPE_8__* @GIT_BUF_INIT to i8*), i64 8, i1 false)
  %28 = bitcast %struct.TYPE_9__* %20 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %28, i8* align 8 bitcast (%struct.TYPE_9__* @GIT_APPLY_OPTIONS_INIT to i8*), i64 16, i1 false)
  %29 = load i8*, i8** %9, align 8
  %30 = call i64 @strlen(i8* %29)
  store i64 %30, i64* %24, align 8
  %31 = load i8*, i8** %11, align 8
  %32 = call i64 @strlen(i8* %31)
  store i64 %32, i64* %25, align 8
  %33 = load i32, i32* %15, align 4
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 1
  store i32 %33, i32* %34, align 8
  %35 = load i8*, i8** %16, align 8
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 0
  store i8* %35, i8** %36, align 8
  %37 = load i8*, i8** %9, align 8
  %38 = load i64, i64* %24, align 8
  %39 = load i8*, i8** %10, align 8
  %40 = load i8*, i8** %11, align 8
  %41 = load i64, i64* %25, align 8
  %42 = load i8*, i8** %12, align 8
  %43 = load i32*, i32** %14, align 8
  %44 = call i32 @git_patch_from_buffers(i32** %17, i8* %37, i64 %38, i8* %39, i8* %40, i64 %41, i8* %42, i32* %43)
  %45 = call i32 @cl_git_pass(i32 %44)
  %46 = load i8*, i8** %9, align 8
  %47 = load i64, i64* %24, align 8
  %48 = load i32*, i32** %17, align 8
  %49 = call i32 @git_apply__patch(%struct.TYPE_8__* %18, i8** %21, i32* %22, i8* %46, i64 %47, i32* %48, %struct.TYPE_9__* %20)
  store i32 %49, i32* %23, align 4
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %61

51:                                               ; preds = %8
  %52 = load i8*, i8** %13, align 8
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 0
  %54 = load i8*, i8** %53, align 8
  %55 = call i32 @cl_assert_equal_s(i8* %52, i8* %54)
  %56 = load i8*, i8** %12, align 8
  %57 = load i8*, i8** %21, align 8
  %58 = call i32 @cl_assert_equal_s(i8* %56, i8* %57)
  %59 = load i32, i32* %22, align 4
  %60 = call i32 @cl_assert_equal_i(i32 33188, i32 %59)
  br label %61

61:                                               ; preds = %51, %8
  %62 = load i8*, i8** %21, align 8
  %63 = call i32 @git__free(i8* %62)
  %64 = call i32 @git_buf_dispose(%struct.TYPE_8__* %18)
  %65 = call i32 @git_buf_dispose(%struct.TYPE_8__* %19)
  %66 = load i32*, i32** %17, align 8
  %67 = call i32 @git_patch_free(i32* %66)
  %68 = load i32, i32* %23, align 4
  ret i32 %68
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @strlen(i8*) #2

declare dso_local i32 @cl_git_pass(i32) #2

declare dso_local i32 @git_patch_from_buffers(i32**, i8*, i64, i8*, i8*, i64, i8*, i32*) #2

declare dso_local i32 @git_apply__patch(%struct.TYPE_8__*, i8**, i32*, i8*, i64, i32*, %struct.TYPE_9__*) #2

declare dso_local i32 @cl_assert_equal_s(i8*, i8*) #2

declare dso_local i32 @cl_assert_equal_i(i32, i32) #2

declare dso_local i32 @git__free(i8*) #2

declare dso_local i32 @git_buf_dispose(%struct.TYPE_8__*) #2

declare dso_local i32 @git_patch_free(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
