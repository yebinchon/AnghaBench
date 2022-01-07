; ModuleID = '/home/carl/AnghaBench/libgit2/tests/apply/extr_fromfile.c_apply_patchfile.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/apply/extr_fromfile.c_apply_patchfile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 }

@GIT_BUF_INIT = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64, i8*, i64, i8*, i8*, i32)* @apply_patchfile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @apply_patchfile(i8* %0, i64 %1, i8* %2, i64 %3, i8* %4, i8* %5, i32 %6) #0 {
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca %struct.TYPE_5__, align 4
  %17 = alloca %struct.TYPE_5__, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store i8* %0, i8** %8, align 8
  store i64 %1, i64* %9, align 8
  store i8* %2, i8** %10, align 8
  store i64 %3, i64* %11, align 8
  store i8* %4, i8** %12, align 8
  store i8* %5, i8** %13, align 8
  store i32 %6, i32* %14, align 4
  %21 = bitcast %struct.TYPE_5__* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %21, i8* align 4 bitcast (%struct.TYPE_5__* @GIT_BUF_INIT to i8*), i64 8, i1 false)
  %22 = bitcast %struct.TYPE_5__* %17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %22, i8* align 4 bitcast (%struct.TYPE_5__* @GIT_BUF_INIT to i8*), i64 8, i1 false)
  %23 = load i8*, i8** %12, align 8
  %24 = load i8*, i8** %12, align 8
  %25 = call i32 @strlen(i8* %24)
  %26 = call i32 @git_patch_from_buffer(i32** %15, i8* %23, i32 %25, i32* null)
  %27 = call i32 @cl_git_pass(i32 %26)
  %28 = load i8*, i8** %8, align 8
  %29 = load i64, i64* %9, align 8
  %30 = load i32*, i32** %15, align 8
  %31 = call i32 @git_apply__patch(%struct.TYPE_5__* %16, i8** %18, i32* %19, i8* %28, i64 %29, i32* %30, i32* null)
  store i32 %31, i32* %20, align 4
  %32 = load i32, i32* %20, align 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %58

34:                                               ; preds = %7
  %35 = load i64, i64* %11, align 8
  %36 = trunc i64 %35 to i32
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @cl_assert_equal_i(i32 %36, i32 %38)
  %40 = load i64, i64* %11, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %51

42:                                               ; preds = %34
  %43 = load i8*, i8** %10, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load i64, i64* %11, align 8
  %47 = call i64 @memcmp(i8* %43, i32 %45, i64 %46)
  %48 = icmp eq i64 %47, 0
  %49 = zext i1 %48 to i32
  %50 = call i32 @cl_assert(i32 %49)
  br label %51

51:                                               ; preds = %42, %34
  %52 = load i8*, i8** %13, align 8
  %53 = load i8*, i8** %18, align 8
  %54 = call i32 @cl_assert_equal_s(i8* %52, i8* %53)
  %55 = load i32, i32* %14, align 4
  %56 = load i32, i32* %19, align 4
  %57 = call i32 @cl_assert_equal_i(i32 %55, i32 %56)
  br label %58

58:                                               ; preds = %51, %7
  %59 = load i8*, i8** %18, align 8
  %60 = call i32 @git__free(i8* %59)
  %61 = call i32 @git_buf_dispose(%struct.TYPE_5__* %16)
  %62 = call i32 @git_buf_dispose(%struct.TYPE_5__* %17)
  %63 = load i32*, i32** %15, align 8
  %64 = call i32 @git_patch_free(i32* %63)
  %65 = load i32, i32* %20, align 4
  ret i32 %65
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @cl_git_pass(i32) #2

declare dso_local i32 @git_patch_from_buffer(i32**, i8*, i32, i32*) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @git_apply__patch(%struct.TYPE_5__*, i8**, i32*, i8*, i64, i32*, i32*) #2

declare dso_local i32 @cl_assert_equal_i(i32, i32) #2

declare dso_local i32 @cl_assert(i32) #2

declare dso_local i64 @memcmp(i8*, i32, i64) #2

declare dso_local i32 @cl_assert_equal_s(i8*, i8*) #2

declare dso_local i32 @git__free(i8*) #2

declare dso_local i32 @git_buf_dispose(%struct.TYPE_5__*) #2

declare dso_local i32 @git_patch_free(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
