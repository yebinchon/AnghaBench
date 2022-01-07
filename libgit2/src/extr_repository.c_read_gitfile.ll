; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_repository.c_read_gitfile.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_repository.c_read_gitfile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32 }

@GIT_BUF_INIT = common dso_local global %struct.TYPE_11__ zeroinitializer, align 4
@GIT_FILE_CONTENT_PREFIX = common dso_local global i32 0, align 4
@GIT_ERROR_REPOSITORY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"the `.git` file at '%s' is malformed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*, i8*)* @read_gitfile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_gitfile(%struct.TYPE_11__* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_11__, align 4
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 0, i32* %6, align 4
  %10 = bitcast %struct.TYPE_11__* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %10, i8* align 4 bitcast (%struct.TYPE_11__* @GIT_BUF_INIT to i8*), i64 4, i1 false)
  %11 = load i32, i32* @GIT_FILE_CONTENT_PREFIX, align 4
  %12 = call i64 @strlen(i32 %11)
  store i64 %12, i64* %8, align 8
  %13 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %14 = icmp ne %struct.TYPE_11__* %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = load i8*, i8** %5, align 8
  %17 = icmp ne i8* %16, null
  br label %18

18:                                               ; preds = %15, %2
  %19 = phi i1 [ false, %2 ], [ %17, %15 ]
  %20 = zext i1 %19 to i32
  %21 = call i32 @assert(i32 %20)
  %22 = load i8*, i8** %5, align 8
  %23 = call i64 @git_futils_readbuffer(%struct.TYPE_11__* %7, i8* %22)
  %24 = icmp slt i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %18
  store i32 -1, i32* %3, align 4
  br label %78

26:                                               ; preds = %18
  %27 = call i32 @git_buf_rtrim(%struct.TYPE_11__* %7)
  %28 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @git_path_mkposix(i32 %29)
  %31 = call i64 @git_buf_len(%struct.TYPE_11__* %7)
  %32 = load i64, i64* %8, align 8
  %33 = icmp ule i64 %31, %32
  br i1 %33, label %40, label %34

34:                                               ; preds = %26
  %35 = call i8* @git_buf_cstr(%struct.TYPE_11__* %7)
  %36 = load i32, i32* @GIT_FILE_CONTENT_PREFIX, align 4
  %37 = load i64, i64* %8, align 8
  %38 = call i64 @memcmp(i8* %35, i32 %36, i64 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %34, %26
  %41 = load i32, i32* @GIT_ERROR_REPOSITORY, align 4
  %42 = load i8*, i8** %5, align 8
  %43 = call i32 @git_error_set(i32 %41, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i8* %42)
  store i32 -1, i32* %6, align 4
  br label %75

44:                                               ; preds = %34
  %45 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %46 = load i8*, i8** %5, align 8
  %47 = call i32 @git_path_dirname_r(%struct.TYPE_11__* %45, i8* %46)
  store i32 %47, i32* %6, align 4
  %48 = icmp sge i32 %47, 0
  br i1 %48, label %49, label %74

49:                                               ; preds = %44
  %50 = call i8* @git_buf_cstr(%struct.TYPE_11__* %7)
  %51 = load i64, i64* %8, align 8
  %52 = getelementptr inbounds i8, i8* %50, i64 %51
  store i8* %52, i8** %9, align 8
  br label %53

53:                                               ; preds = %65, %49
  %54 = load i8*, i8** %9, align 8
  %55 = load i8, i8* %54, align 1
  %56 = sext i8 %55 to i32
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %63

58:                                               ; preds = %53
  %59 = load i8*, i8** %9, align 8
  %60 = load i8, i8* %59, align 1
  %61 = call i64 @git__isspace(i8 signext %60)
  %62 = icmp ne i64 %61, 0
  br label %63

63:                                               ; preds = %58, %53
  %64 = phi i1 [ false, %53 ], [ %62, %58 ]
  br i1 %64, label %65, label %68

65:                                               ; preds = %63
  %66 = load i8*, i8** %9, align 8
  %67 = getelementptr inbounds i8, i8* %66, i32 1
  store i8* %67, i8** %9, align 8
  br label %53

68:                                               ; preds = %63
  %69 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %70 = load i8*, i8** %9, align 8
  %71 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %72 = call i8* @git_buf_cstr(%struct.TYPE_11__* %71)
  %73 = call i32 @git_path_prettify_dir(%struct.TYPE_11__* %69, i8* %70, i8* %72)
  store i32 %73, i32* %6, align 4
  br label %74

74:                                               ; preds = %68, %44
  br label %75

75:                                               ; preds = %74, %40
  %76 = call i32 @git_buf_dispose(%struct.TYPE_11__* %7)
  %77 = load i32, i32* %6, align 4
  store i32 %77, i32* %3, align 4
  br label %78

78:                                               ; preds = %75, %25
  %79 = load i32, i32* %3, align 4
  ret i32 %79
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @strlen(i32) #2

declare dso_local i32 @assert(i32) #2

declare dso_local i64 @git_futils_readbuffer(%struct.TYPE_11__*, i8*) #2

declare dso_local i32 @git_buf_rtrim(%struct.TYPE_11__*) #2

declare dso_local i32 @git_path_mkposix(i32) #2

declare dso_local i64 @git_buf_len(%struct.TYPE_11__*) #2

declare dso_local i64 @memcmp(i8*, i32, i64) #2

declare dso_local i8* @git_buf_cstr(%struct.TYPE_11__*) #2

declare dso_local i32 @git_error_set(i32, i8*, i8*) #2

declare dso_local i32 @git_path_dirname_r(%struct.TYPE_11__*, i8*) #2

declare dso_local i64 @git__isspace(i8 signext) #2

declare dso_local i32 @git_path_prettify_dir(%struct.TYPE_11__*, i8*, i8*) #2

declare dso_local i32 @git_buf_dispose(%struct.TYPE_11__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
