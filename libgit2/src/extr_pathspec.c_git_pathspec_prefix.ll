; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_pathspec.c_git_pathspec_prefix.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_pathspec.c_git_pathspec_prefix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i8*, i64 }
%struct.TYPE_11__ = type { i32 }

@GIT_BUF_INIT = common dso_local global %struct.TYPE_12__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @git_pathspec_prefix(%struct.TYPE_11__* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca %struct.TYPE_12__, align 8
  %5 = alloca i8*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %3, align 8
  %6 = bitcast %struct.TYPE_12__* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %6, i8* align 8 bitcast (%struct.TYPE_12__* @GIT_BUF_INIT to i8*), i64 16, i1 false)
  %7 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %8 = icmp ne %struct.TYPE_11__* %7, null
  br i1 %8, label %9, label %18

9:                                                ; preds = %1
  %10 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %9
  %15 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %16 = call i64 @git_buf_text_common_prefix(%struct.TYPE_12__* %4, %struct.TYPE_11__* %15)
  %17 = icmp slt i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %14, %9, %1
  store i8* null, i8** %2, align 8
  br label %64

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %4, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8
  store i8* %21, i8** %5, align 8
  br label %22

22:                                               ; preds = %44, %19
  %23 = load i8*, i8** %5, align 8
  %24 = load i8, i8* %23, align 1
  %25 = icmp ne i8 %24, 0
  br i1 %25, label %26, label %47

26:                                               ; preds = %22
  %27 = load i8*, i8** %5, align 8
  %28 = load i8, i8* %27, align 1
  %29 = call i64 @git__iswildcard(i8 signext %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %43

31:                                               ; preds = %26
  %32 = load i8*, i8** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %4, i32 0, i32 0
  %34 = load i8*, i8** %33, align 8
  %35 = icmp eq i8* %32, %34
  br i1 %35, label %42, label %36

36:                                               ; preds = %31
  %37 = load i8*, i8** %5, align 8
  %38 = getelementptr inbounds i8, i8* %37, i64 -1
  %39 = load i8, i8* %38, align 1
  %40 = sext i8 %39 to i32
  %41 = icmp ne i32 %40, 92
  br i1 %41, label %42, label %43

42:                                               ; preds = %36, %31
  br label %47

43:                                               ; preds = %36, %26
  br label %44

44:                                               ; preds = %43
  %45 = load i8*, i8** %5, align 8
  %46 = getelementptr inbounds i8, i8* %45, i32 1
  store i8* %46, i8** %5, align 8
  br label %22

47:                                               ; preds = %42, %22
  %48 = load i8*, i8** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %4, i32 0, i32 0
  %50 = load i8*, i8** %49, align 8
  %51 = ptrtoint i8* %48 to i64
  %52 = ptrtoint i8* %50 to i64
  %53 = sub i64 %51, %52
  %54 = trunc i64 %53 to i32
  %55 = call i32 @git_buf_truncate(%struct.TYPE_12__* %4, i32 %54)
  %56 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %4, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = icmp sle i64 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %47
  %60 = call i32 @git_buf_dispose(%struct.TYPE_12__* %4)
  store i8* null, i8** %2, align 8
  br label %64

61:                                               ; preds = %47
  %62 = call i32 @git_buf_text_unescape(%struct.TYPE_12__* %4)
  %63 = call i8* @git_buf_detach(%struct.TYPE_12__* %4)
  store i8* %63, i8** %2, align 8
  br label %64

64:                                               ; preds = %61, %59, %18
  %65 = load i8*, i8** %2, align 8
  ret i8* %65
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @git_buf_text_common_prefix(%struct.TYPE_12__*, %struct.TYPE_11__*) #2

declare dso_local i64 @git__iswildcard(i8 signext) #2

declare dso_local i32 @git_buf_truncate(%struct.TYPE_12__*, i32) #2

declare dso_local i32 @git_buf_dispose(%struct.TYPE_12__*) #2

declare dso_local i32 @git_buf_text_unescape(%struct.TYPE_12__*) #2

declare dso_local i8* @git_buf_detach(%struct.TYPE_12__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
