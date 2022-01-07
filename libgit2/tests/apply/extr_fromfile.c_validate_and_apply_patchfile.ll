; ModuleID = '/home/carl/AnghaBench/libgit2/tests/apply/extr_fromfile.c_validate_and_apply_patchfile.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/apply/extr_fromfile.c_validate_and_apply_patchfile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

@GIT_BUF_INIT = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@.str = private unnamed_addr constant [9 x i8] c"file.txt\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64, i8*, i64, i8*, i32*, i8*, i32)* @validate_and_apply_patchfile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @validate_and_apply_patchfile(i8* %0, i64 %1, i8* %2, i64 %3, i8* %4, i32* %5, i8* %6, i32 %7) #0 {
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca %struct.TYPE_5__, align 4
  %19 = alloca i32, align 4
  store i8* %0, i8** %9, align 8
  store i64 %1, i64* %10, align 8
  store i8* %2, i8** %11, align 8
  store i64 %3, i64* %12, align 8
  store i8* %4, i8** %13, align 8
  store i32* %5, i32** %14, align 8
  store i8* %6, i8** %15, align 8
  store i32 %7, i32* %16, align 4
  %20 = bitcast %struct.TYPE_5__* %18 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %20, i8* align 4 bitcast (%struct.TYPE_5__* @GIT_BUF_INIT to i8*), i64 4, i1 false)
  %21 = load i8*, i8** %9, align 8
  %22 = load i64, i64* %10, align 8
  %23 = load i8*, i8** %11, align 8
  %24 = load i64, i64* %12, align 8
  %25 = load i32*, i32** %14, align 8
  %26 = call i32 @git_patch_from_buffers(i32** %17, i8* %21, i64 %22, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* %23, i64 %24, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32* %25)
  %27 = call i32 @cl_git_pass(i32 %26)
  %28 = load i32*, i32** %17, align 8
  %29 = call i32 @git_patch_to_buf(%struct.TYPE_5__* %18, i32* %28)
  %30 = call i32 @cl_git_pass(i32 %29)
  %31 = load i8*, i8** %13, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @cl_assert_equal_s(i8* %31, i32 %33)
  %35 = load i8*, i8** %9, align 8
  %36 = load i64, i64* %10, align 8
  %37 = load i8*, i8** %11, align 8
  %38 = load i64, i64* %12, align 8
  %39 = load i8*, i8** %13, align 8
  %40 = load i8*, i8** %15, align 8
  %41 = load i32, i32* %16, align 4
  %42 = call i32 @apply_patchfile(i8* %35, i64 %36, i8* %37, i64 %38, i8* %39, i8* %40, i32 %41)
  store i32 %42, i32* %19, align 4
  %43 = call i32 @git_buf_dispose(%struct.TYPE_5__* %18)
  %44 = load i32*, i32** %17, align 8
  %45 = call i32 @git_patch_free(i32* %44)
  %46 = load i32, i32* %19, align 4
  ret i32 %46
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @cl_git_pass(i32) #2

declare dso_local i32 @git_patch_from_buffers(i32**, i8*, i64, i8*, i8*, i64, i8*, i32*) #2

declare dso_local i32 @git_patch_to_buf(%struct.TYPE_5__*, i32*) #2

declare dso_local i32 @cl_assert_equal_s(i8*, i32) #2

declare dso_local i32 @apply_patchfile(i8*, i64, i8*, i64, i8*, i8*, i32) #2

declare dso_local i32 @git_buf_dispose(%struct.TYPE_5__*) #2

declare dso_local i32 @git_patch_free(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
