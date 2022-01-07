; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_repository.c_repo_write_template.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_repository.c_repo_write_template.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }

@GIT_BUF_INIT = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@O_WRONLY = common dso_local global i32 0, align 4
@O_CREAT = common dso_local global i32 0, align 4
@O_TRUNC = common dso_local global i32 0, align 4
@O_EXCL = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@EEXIST = common dso_local global i64 0, align 8
@GIT_ERROR_OS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"failed to initialize repository with template '%s'\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i8*, i32, i32, i8*)* @repo_write_template to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @repo_write_template(i8* %0, i32 %1, i8* %2, i32 %3, i32 %4, i8* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca %struct.TYPE_6__, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i8* %0, i8** %8, align 8
  store i32 %1, i32* %9, align 4
  store i8* %2, i8** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i8* %5, i8** %13, align 8
  %18 = bitcast %struct.TYPE_6__* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %18, i8* align 4 bitcast (%struct.TYPE_6__* @GIT_BUF_INIT to i8*), i64 4, i1 false)
  store i32 0, i32* %16, align 4
  %19 = load i8*, i8** %8, align 8
  %20 = load i8*, i8** %10, align 8
  %21 = call i64 @git_buf_joinpath(%struct.TYPE_6__* %14, i8* %19, i8* %20)
  %22 = icmp slt i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %6
  store i32 -1, i32* %7, align 4
  br label %73

24:                                               ; preds = %6
  %25 = load i32, i32* %9, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %24
  %28 = load i32, i32* @O_WRONLY, align 4
  %29 = load i32, i32* @O_CREAT, align 4
  %30 = or i32 %28, %29
  %31 = load i32, i32* @O_TRUNC, align 4
  %32 = or i32 %30, %31
  store i32 %32, i32* %17, align 4
  br label %39

33:                                               ; preds = %24
  %34 = load i32, i32* @O_WRONLY, align 4
  %35 = load i32, i32* @O_CREAT, align 4
  %36 = or i32 %34, %35
  %37 = load i32, i32* @O_EXCL, align 4
  %38 = or i32 %36, %37
  store i32 %38, i32* %17, align 4
  br label %39

39:                                               ; preds = %33, %27
  %40 = call i32 @git_buf_cstr(%struct.TYPE_6__* %14)
  %41 = load i32, i32* %17, align 4
  %42 = load i32, i32* %11, align 4
  %43 = call i32 @p_open(i32 %40, i32 %41, i32 %42)
  store i32 %43, i32* %15, align 4
  %44 = load i32, i32* %15, align 4
  %45 = icmp sge i32 %44, 0
  br i1 %45, label %46, label %54

46:                                               ; preds = %39
  %47 = load i32, i32* %15, align 4
  %48 = load i8*, i8** %13, align 8
  %49 = load i8*, i8** %13, align 8
  %50 = call i32 @strlen(i8* %49)
  %51 = call i32 @p_write(i32 %47, i8* %48, i32 %50)
  store i32 %51, i32* %16, align 4
  %52 = load i32, i32* %15, align 4
  %53 = call i32 @p_close(i32 %52)
  br label %61

54:                                               ; preds = %39
  %55 = load i64, i64* @errno, align 8
  %56 = load i64, i64* @EEXIST, align 8
  %57 = icmp ne i64 %55, %56
  br i1 %57, label %58, label %60

58:                                               ; preds = %54
  %59 = load i32, i32* %15, align 4
  store i32 %59, i32* %16, align 4
  br label %60

60:                                               ; preds = %58, %54
  br label %61

61:                                               ; preds = %60, %46
  %62 = load i32, i32* %12, align 4
  %63 = call i32 @GIT_UNUSED(i32 %62)
  %64 = call i32 @git_buf_dispose(%struct.TYPE_6__* %14)
  %65 = load i32, i32* %16, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %61
  %68 = load i32, i32* @GIT_ERROR_OS, align 4
  %69 = load i8*, i8** %10, align 8
  %70 = call i32 @git_error_set(i32 %68, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i8* %69)
  br label %71

71:                                               ; preds = %67, %61
  %72 = load i32, i32* %16, align 4
  store i32 %72, i32* %7, align 4
  br label %73

73:                                               ; preds = %71, %23
  %74 = load i32, i32* %7, align 4
  ret i32 %74
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @git_buf_joinpath(%struct.TYPE_6__*, i8*, i8*) #2

declare dso_local i32 @p_open(i32, i32, i32) #2

declare dso_local i32 @git_buf_cstr(%struct.TYPE_6__*) #2

declare dso_local i32 @p_write(i32, i8*, i32) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @p_close(i32) #2

declare dso_local i32 @GIT_UNUSED(i32) #2

declare dso_local i32 @git_buf_dispose(%struct.TYPE_6__*) #2

declare dso_local i32 @git_error_set(i32, i8*, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
