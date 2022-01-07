; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_repository.c_valid_repository_path.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_repository.c_valid_repository_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i64, i32 }

@GIT_COMMONDIR_FILE = common dso_local global i32 0, align 4
@GIT_BUF_INIT = common dso_local global %struct.TYPE_16__ zeroinitializer, align 8
@GIT_HEAD_FILE = common dso_local global i32 0, align 4
@GIT_OBJECTS_DIR = common dso_local global i32 0, align 4
@GIT_REFS_DIR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_16__*, %struct.TYPE_16__*)* @valid_repository_path to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @valid_repository_path(%struct.TYPE_16__* %0, %struct.TYPE_16__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_16__*, align 8
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca %struct.TYPE_16__, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %4, align 8
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %5, align 8
  %7 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %8 = load i32, i32* @GIT_COMMONDIR_FILE, align 4
  %9 = call i32 @git_path_contains_file(%struct.TYPE_16__* %7, i32 %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %39

11:                                               ; preds = %2
  %12 = bitcast %struct.TYPE_16__* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %12, i8* align 8 bitcast (%struct.TYPE_16__* @GIT_BUF_INIT to i8*), i64 16, i1 false)
  %13 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @GIT_COMMONDIR_FILE, align 4
  %17 = call i32 @git_buf_joinpath(%struct.TYPE_16__* %6, i32 %15, i32 %16)
  %18 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %6, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @git_futils_readbuffer(%struct.TYPE_16__* %6, i32 %19)
  %21 = call i32 @git_buf_rtrim(%struct.TYPE_16__* %6)
  %22 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %6, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = call i64 @git_path_is_relative(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %34

26:                                               ; preds = %11
  %27 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %28 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %6, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @git_buf_joinpath(%struct.TYPE_16__* %27, i32 %30, i32 %32)
  br label %37

34:                                               ; preds = %11
  %35 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %36 = call i32 @git_buf_swap(%struct.TYPE_16__* %35, %struct.TYPE_16__* %6)
  br label %37

37:                                               ; preds = %34, %26
  %38 = call i32 @git_buf_dispose(%struct.TYPE_16__* %6)
  br label %48

39:                                               ; preds = %2
  %40 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %41 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = call i32 @git_buf_set(%struct.TYPE_16__* %40, i32 %43, i64 %46)
  br label %48

48:                                               ; preds = %39, %37
  %49 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %50 = call i64 @git_buf_rfind(%struct.TYPE_16__* %49, i8 signext 47)
  %51 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = sub nsw i64 %53, 1
  %55 = icmp ne i64 %50, %54
  br i1 %55, label %56, label %59

56:                                               ; preds = %48
  %57 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %58 = call i32 @git_buf_putc(%struct.TYPE_16__* %57, i8 signext 47)
  br label %59

59:                                               ; preds = %56, %48
  %60 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %61 = load i32, i32* @GIT_HEAD_FILE, align 4
  %62 = call i32 @git_path_contains_file(%struct.TYPE_16__* %60, i32 %61)
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %59
  store i32 0, i32* %3, align 4
  br label %78

65:                                               ; preds = %59
  %66 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %67 = load i32, i32* @GIT_OBJECTS_DIR, align 4
  %68 = call i32 @git_path_contains_dir(%struct.TYPE_16__* %66, i32 %67)
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %65
  store i32 0, i32* %3, align 4
  br label %78

71:                                               ; preds = %65
  %72 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %73 = load i32, i32* @GIT_REFS_DIR, align 4
  %74 = call i32 @git_path_contains_dir(%struct.TYPE_16__* %72, i32 %73)
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %71
  store i32 0, i32* %3, align 4
  br label %78

77:                                               ; preds = %71
  store i32 1, i32* %3, align 4
  br label %78

78:                                               ; preds = %77, %76, %70, %64
  %79 = load i32, i32* %3, align 4
  ret i32 %79
}

declare dso_local i32 @git_path_contains_file(%struct.TYPE_16__*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @git_buf_joinpath(%struct.TYPE_16__*, i32, i32) #1

declare dso_local i32 @git_futils_readbuffer(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @git_buf_rtrim(%struct.TYPE_16__*) #1

declare dso_local i64 @git_path_is_relative(i32) #1

declare dso_local i32 @git_buf_swap(%struct.TYPE_16__*, %struct.TYPE_16__*) #1

declare dso_local i32 @git_buf_dispose(%struct.TYPE_16__*) #1

declare dso_local i32 @git_buf_set(%struct.TYPE_16__*, i32, i64) #1

declare dso_local i64 @git_buf_rfind(%struct.TYPE_16__*, i8 signext) #1

declare dso_local i32 @git_buf_putc(%struct.TYPE_16__*, i8 signext) #1

declare dso_local i32 @git_path_contains_dir(%struct.TYPE_16__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
