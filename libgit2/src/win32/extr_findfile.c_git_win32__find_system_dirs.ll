; ModuleID = '/home/carl/AnghaBench/libgit2/src/win32/extr_findfile.c_git_win32__find_system_dirs.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/win32/extr_findfile.c_git_win32__find_system_dirs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i64 }

@GIT_BUF_INIT = common dso_local global %struct.TYPE_11__ zeroinitializer, align 8
@.str = private unnamed_addr constant [8 x i32] [i32 103, i32 105, i32 116, i32 46, i32 101, i32 120, i32 101, i32 0], align 4
@.str.1 = private unnamed_addr constant [8 x i32] [i32 103, i32 105, i32 116, i32 46, i32 99, i32 109, i32 100, i32 0], align 4
@GIT_PATH_LIST_SEPARATOR = common dso_local global i32 0, align 4
@HKEY_CURRENT_USER = common dso_local global i32 0, align 4
@REG_MSYSGIT_INSTALL_LOCAL = common dso_local global i32 0, align 4
@HKEY_LOCAL_MACHINE = common dso_local global i32 0, align 4
@REG_MSYSGIT_INSTALL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @git_win32__find_system_dirs(%struct.TYPE_11__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_11__, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %3, align 8
  store i32* %1, i32** %4, align 8
  %6 = bitcast %struct.TYPE_11__* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %6, i8* align 8 bitcast (%struct.TYPE_11__* @GIT_BUF_INIT to i8*), i64 16, i1 false)
  %7 = load i32*, i32** %4, align 8
  %8 = call i32 @win32_find_git_in_path(%struct.TYPE_11__* %5, i8* bitcast ([8 x i32]* @.str to i8*), i32* %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %21, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %5, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %21

14:                                               ; preds = %10
  %15 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %5, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %5, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = call i32 @git_buf_set(%struct.TYPE_11__* %15, i32 %17, i64 %19)
  br label %24

21:                                               ; preds = %10, %2
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %23 = call i32 @git_buf_clear(%struct.TYPE_11__* %22)
  br label %24

24:                                               ; preds = %21, %14
  %25 = load i32*, i32** %4, align 8
  %26 = call i32 @win32_find_git_in_path(%struct.TYPE_11__* %5, i8* bitcast ([8 x i32]* @.str.1 to i8*), i32* %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %41, label %28

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %5, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %41

32:                                               ; preds = %28
  %33 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %34 = load i32, i32* @GIT_PATH_LIST_SEPARATOR, align 4
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %5, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @git_buf_join(%struct.TYPE_11__* %33, i32 %34, i32 %37, i32 %39)
  br label %41

41:                                               ; preds = %32, %28, %24
  %42 = load i32, i32* @HKEY_CURRENT_USER, align 4
  %43 = load i32, i32* @REG_MSYSGIT_INSTALL_LOCAL, align 4
  %44 = load i32*, i32** %4, align 8
  %45 = call i32 @win32_find_git_in_registry(%struct.TYPE_11__* %5, i32 %42, i32 %43, i32* %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %60, label %47

47:                                               ; preds = %41
  %48 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %5, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %60

51:                                               ; preds = %47
  %52 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %53 = load i32, i32* @GIT_PATH_LIST_SEPARATOR, align 4
  %54 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %5, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @git_buf_join(%struct.TYPE_11__* %52, i32 %53, i32 %56, i32 %58)
  br label %60

60:                                               ; preds = %51, %47, %41
  %61 = load i32, i32* @HKEY_LOCAL_MACHINE, align 4
  %62 = load i32, i32* @REG_MSYSGIT_INSTALL, align 4
  %63 = load i32*, i32** %4, align 8
  %64 = call i32 @win32_find_git_in_registry(%struct.TYPE_11__* %5, i32 %61, i32 %62, i32* %63)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %79, label %66

66:                                               ; preds = %60
  %67 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %5, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %79

70:                                               ; preds = %66
  %71 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %72 = load i32, i32* @GIT_PATH_LIST_SEPARATOR, align 4
  %73 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %74 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %5, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @git_buf_join(%struct.TYPE_11__* %71, i32 %72, i32 %75, i32 %77)
  br label %79

79:                                               ; preds = %70, %66, %60
  %80 = call i32 @git_buf_dispose(%struct.TYPE_11__* %5)
  %81 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %82 = call i64 @git_buf_oom(%struct.TYPE_11__* %81)
  %83 = icmp ne i64 %82, 0
  %84 = zext i1 %83 to i64
  %85 = select i1 %83, i32 -1, i32 0
  ret i32 %85
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @win32_find_git_in_path(%struct.TYPE_11__*, i8*, i32*) #2

declare dso_local i32 @git_buf_set(%struct.TYPE_11__*, i32, i64) #2

declare dso_local i32 @git_buf_clear(%struct.TYPE_11__*) #2

declare dso_local i32 @git_buf_join(%struct.TYPE_11__*, i32, i32, i32) #2

declare dso_local i32 @win32_find_git_in_registry(%struct.TYPE_11__*, i32, i32, i32*) #2

declare dso_local i32 @git_buf_dispose(%struct.TYPE_11__*) #2

declare dso_local i64 @git_buf_oom(%struct.TYPE_11__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
