; ModuleID = '/home/carl/AnghaBench/libgit2/src/win32/extr_path_w32.c_git_win32_path_readlink_w.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/win32/extr_path_w32.c_git_win32_path_readlink_w.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.TYPE_5__ = type { i32, i32, i32 }

@MAXIMUM_REPARSE_DATA_BUFFER_SIZE = common dso_local global i32 0, align 4
@GENERIC_READ = common dso_local global i32 0, align 4
@FILE_SHARE_READ = common dso_local global i32 0, align 4
@FILE_SHARE_DELETE = common dso_local global i32 0, align 4
@OPEN_EXISTING = common dso_local global i32 0, align 4
@FILE_FLAG_OPEN_REPARSE_POINT = common dso_local global i32 0, align 4
@FILE_FLAG_BACKUP_SEMANTICS = common dso_local global i32 0, align 4
@INVALID_HANDLE_VALUE = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@FSCTL_GET_REPARSE_POINT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@GIT_WIN_PATH_UTF16 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @git_win32_path_readlink_w(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %15 = load i32, i32* @MAXIMUM_REPARSE_DATA_BUFFER_SIZE, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %6, align 8
  %18 = alloca i32, i64 %16, align 16
  store i64 %16, i64* %7, align 8
  %19 = bitcast i32* %18 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %19, %struct.TYPE_7__** %8, align 8
  store i64 0, i64* %9, align 8
  store i32 -1, i32* %13, align 4
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* @GENERIC_READ, align 4
  %22 = load i32, i32* @FILE_SHARE_READ, align 4
  %23 = load i32, i32* @FILE_SHARE_DELETE, align 4
  %24 = or i32 %22, %23
  %25 = load i32, i32* @OPEN_EXISTING, align 4
  %26 = load i32, i32* @FILE_FLAG_OPEN_REPARSE_POINT, align 4
  %27 = load i32, i32* @FILE_FLAG_BACKUP_SEMANTICS, align 4
  %28 = or i32 %26, %27
  %29 = call i64 @CreateFileW(i32 %20, i32 %21, i32 %24, i32* null, i32 %25, i32 %28, i32* null)
  store i64 %29, i64* %9, align 8
  %30 = load i64, i64* %9, align 8
  %31 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %2
  %34 = load i32, i32* @ENOENT, align 4
  store i32 %34, i32* @errno, align 4
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %121

35:                                               ; preds = %2
  %36 = load i64, i64* %9, align 8
  %37 = load i32, i32* @FSCTL_GET_REPARSE_POINT, align 4
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %39 = mul nuw i64 4, %16
  %40 = trunc i64 %39 to i32
  %41 = call i32 @DeviceIoControl(i64 %36, i32 %37, i32* null, i32 0, %struct.TYPE_7__* %38, i32 %40, i32* %10, i32* null)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %45, label %43

43:                                               ; preds = %35
  %44 = load i32, i32* @EINVAL, align 4
  store i32 %44, i32* @errno, align 4
  br label %117

45:                                               ; preds = %35
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  switch i32 %48, label %89 [
    i32 128, label %49
    i32 129, label %69
  ]

49:                                               ; preds = %45
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 2
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = sext i32 %53 to i64
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 2
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = sext i32 %58 to i64
  %60 = udiv i64 %59, 4
  %61 = add i64 %54, %60
  %62 = inttoptr i64 %61 to i32*
  store i32* %62, i32** %11, align 8
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 2
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = sext i32 %66 to i64
  %68 = udiv i64 %67, 4
  store i64 %68, i64* %12, align 8
  br label %91

69:                                               ; preds = %45
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 4
  %74 = sext i32 %73 to i64
  %75 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = sext i32 %78 to i64
  %80 = udiv i64 %79, 4
  %81 = add i64 %74, %80
  %82 = inttoptr i64 %81 to i32*
  store i32* %82, i32** %11, align 8
  %83 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = sext i32 %86 to i64
  %88 = udiv i64 %87, 4
  store i64 %88, i64* %12, align 8
  br label %91

89:                                               ; preds = %45
  %90 = load i32, i32* @EINVAL, align 4
  store i32 %90, i32* @errno, align 4
  br label %117

91:                                               ; preds = %69, %49
  %92 = load i32*, i32** %11, align 8
  %93 = load i64, i64* %12, align 8
  %94 = call i64 @path_is_volume(i32* %92, i64 %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %98

96:                                               ; preds = %91
  %97 = load i32, i32* @EINVAL, align 4
  store i32 %97, i32* @errno, align 4
  store i32 -1, i32* %13, align 4
  br label %116

98:                                               ; preds = %91
  %99 = load i64, i64* %12, align 8
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %115

101:                                              ; preds = %98
  %102 = load i32*, i32** %11, align 8
  %103 = load i64, i64* %12, align 8
  %104 = call i64 @git_win32_path_remove_namespace(i32* %102, i64 %103)
  store i64 %104, i64* %12, align 8
  %105 = load i64, i64* @GIT_WIN_PATH_UTF16, align 8
  %106 = load i64, i64* %12, align 8
  %107 = icmp ugt i64 %105, %106
  br i1 %107, label %108, label %114

108:                                              ; preds = %101
  %109 = load i32, i32* %4, align 4
  %110 = load i32*, i32** %11, align 8
  %111 = call i32 @wcscpy(i32 %109, i32* %110)
  %112 = load i64, i64* %12, align 8
  %113 = trunc i64 %112 to i32
  store i32 %113, i32* %13, align 4
  br label %114

114:                                              ; preds = %108, %101
  br label %115

115:                                              ; preds = %114, %98
  br label %116

116:                                              ; preds = %115, %96
  br label %117

117:                                              ; preds = %116, %89, %43
  %118 = load i64, i64* %9, align 8
  %119 = call i32 @CloseHandle(i64 %118)
  %120 = load i32, i32* %13, align 4
  store i32 %120, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %121

121:                                              ; preds = %117, %33
  %122 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %122)
  %123 = load i32, i32* %3, align 4
  ret i32 %123
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @CreateFileW(i32, i32, i32, i32*, i32, i32, i32*) #2

declare dso_local i32 @DeviceIoControl(i64, i32, i32*, i32, %struct.TYPE_7__*, i32, i32*, i32*) #2

declare dso_local i64 @path_is_volume(i32*, i64) #2

declare dso_local i64 @git_win32_path_remove_namespace(i32*, i64) #2

declare dso_local i32 @wcscpy(i32, i32*) #2

declare dso_local i32 @CloseHandle(i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
