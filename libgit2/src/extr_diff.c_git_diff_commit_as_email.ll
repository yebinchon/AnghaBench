; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_diff.c_git_diff_commit_as_email.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_diff.c_git_diff_commit_as_email.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i64, i32, i32, i32, i32, i32 }

@GIT_DIFF_FORMAT_EMAIL_OPTIONS_INIT = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @git_diff_commit_as_email(i32* %0, i32* %1, i32* %2, i64 %3, i64 %4, i32 %5, i32* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca %struct.TYPE_4__, align 8
  %18 = alloca i32, align 4
  store i32* %0, i32** %9, align 8
  store i32* %1, i32** %10, align 8
  store i32* %2, i32** %11, align 8
  store i64 %3, i64* %12, align 8
  store i64 %4, i64* %13, align 8
  store i32 %5, i32* %14, align 4
  store i32* %6, i32** %15, align 8
  store i32* null, i32** %16, align 8
  %19 = bitcast %struct.TYPE_4__* %17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %19, i8* align 8 bitcast (%struct.TYPE_4__* @GIT_DIFF_FORMAT_EMAIL_OPTIONS_INIT to i8*), i64 40, i1 false)
  %20 = load i32*, i32** %9, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %22, label %28

22:                                               ; preds = %7
  %23 = load i32*, i32** %10, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %25, label %28

25:                                               ; preds = %22
  %26 = load i32*, i32** %11, align 8
  %27 = icmp ne i32* %26, null
  br label %28

28:                                               ; preds = %25, %22, %7
  %29 = phi i1 [ false, %22 ], [ false, %7 ], [ %27, %25 ]
  %30 = zext i1 %29 to i32
  %31 = call i32 @assert(i32 %30)
  %32 = load i32, i32* %14, align 4
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 6
  store i32 %32, i32* %33, align 8
  %34 = load i64, i64* %12, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  store i64 %34, i64* %35, align 8
  %36 = load i64, i64* %13, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 1
  store i64 %36, i64* %37, align 8
  %38 = load i32*, i32** %11, align 8
  %39 = call i32 @git_commit_id(i32* %38)
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 5
  store i32 %39, i32* %40, align 4
  %41 = load i32*, i32** %11, align 8
  %42 = call i32 @git_commit_summary(i32* %41)
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 4
  store i32 %42, i32* %43, align 8
  %44 = load i32*, i32** %11, align 8
  %45 = call i32 @git_commit_body(i32* %44)
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 3
  store i32 %45, i32* %46, align 4
  %47 = load i32*, i32** %11, align 8
  %48 = call i32 @git_commit_author(i32* %47)
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 2
  store i32 %48, i32* %49, align 8
  %50 = load i32*, i32** %10, align 8
  %51 = load i32*, i32** %11, align 8
  %52 = load i32*, i32** %15, align 8
  %53 = call i32 @git_diff__commit(i32** %16, i32* %50, i32* %51, i32* %52)
  store i32 %53, i32* %18, align 4
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %28
  %56 = load i32, i32* %18, align 4
  store i32 %56, i32* %8, align 4
  br label %64

57:                                               ; preds = %28
  %58 = load i32*, i32** %9, align 8
  %59 = load i32*, i32** %16, align 8
  %60 = call i32 @git_diff_format_email(i32* %58, i32* %59, %struct.TYPE_4__* %17)
  store i32 %60, i32* %18, align 4
  %61 = load i32*, i32** %16, align 8
  %62 = call i32 @git_diff_free(i32* %61)
  %63 = load i32, i32* %18, align 4
  store i32 %63, i32* %8, align 4
  br label %64

64:                                               ; preds = %57, %55
  %65 = load i32, i32* %8, align 4
  ret i32 %65
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @assert(i32) #2

declare dso_local i32 @git_commit_id(i32*) #2

declare dso_local i32 @git_commit_summary(i32*) #2

declare dso_local i32 @git_commit_body(i32*) #2

declare dso_local i32 @git_commit_author(i32*) #2

declare dso_local i32 @git_diff__commit(i32**, i32*, i32*, i32*) #2

declare dso_local i32 @git_diff_format_email(i32*, i32*, %struct.TYPE_4__*) #2

declare dso_local i32 @git_diff_free(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
