; ModuleID = '/home/carl/AnghaBench/libuv/src/win/extr_fs.c_fs__unlink.c'
source_filename = "/home/carl/AnghaBench/libuv/src/win/extr_fs.c_fs__unlink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32* }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_13__ = type { i32, i32, i32 }

@FILE_READ_ATTRIBUTES = common dso_local global i32 0, align 4
@FILE_WRITE_ATTRIBUTES = common dso_local global i32 0, align 4
@DELETE = common dso_local global i32 0, align 4
@FILE_SHARE_READ = common dso_local global i32 0, align 4
@FILE_SHARE_WRITE = common dso_local global i32 0, align 4
@FILE_SHARE_DELETE = common dso_local global i32 0, align 4
@OPEN_EXISTING = common dso_local global i32 0, align 4
@FILE_FLAG_OPEN_REPARSE_POINT = common dso_local global i32 0, align 4
@FILE_FLAG_BACKUP_SEMANTICS = common dso_local global i32 0, align 4
@INVALID_HANDLE_VALUE = common dso_local global i64 0, align 8
@FILE_ATTRIBUTE_DIRECTORY = common dso_local global i32 0, align 4
@FILE_ATTRIBUTE_REPARSE_POINT = common dso_local global i32 0, align 4
@ERROR_ACCESS_DENIED = common dso_local global i64 0, align 8
@ERROR_SYMLINK_NOT_SUPPORTED = common dso_local global i64 0, align 8
@FILE_ATTRIBUTE_READONLY = common dso_local global i32 0, align 4
@FILE_ATTRIBUTE_ARCHIVE = common dso_local global i32 0, align 4
@FileBasicInformation = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@FileDispositionInformation = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fs__unlink(%struct.TYPE_12__* %0) #0 {
  %2 = alloca %struct.TYPE_12__*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_14__, align 4
  %6 = alloca %struct.TYPE_13__, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_13__, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %2, align 8
  %11 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  store i32* %14, i32** %3, align 8
  %15 = load i32*, i32** %3, align 8
  %16 = load i32, i32* @FILE_READ_ATTRIBUTES, align 4
  %17 = load i32, i32* @FILE_WRITE_ATTRIBUTES, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* @DELETE, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* @FILE_SHARE_READ, align 4
  %22 = load i32, i32* @FILE_SHARE_WRITE, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* @FILE_SHARE_DELETE, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* @OPEN_EXISTING, align 4
  %27 = load i32, i32* @FILE_FLAG_OPEN_REPARSE_POINT, align 4
  %28 = load i32, i32* @FILE_FLAG_BACKUP_SEMANTICS, align 4
  %29 = or i32 %27, %28
  %30 = call i64 @CreateFileW(i32* %15, i32 %20, i32 %25, i32* null, i32 %26, i32 %29, i32* null)
  store i64 %30, i64* %4, align 8
  %31 = load i64, i64* %4, align 8
  %32 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %38

34:                                               ; preds = %1
  %35 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %36 = call i64 (...) @GetLastError()
  %37 = call i32 @SET_REQ_WIN32_ERROR(%struct.TYPE_12__* %35, i64 %36)
  br label %134

38:                                               ; preds = %1
  %39 = load i64, i64* %4, align 8
  %40 = call i32 @GetFileInformationByHandle(i64 %39, %struct.TYPE_14__* %5)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %48, label %42

42:                                               ; preds = %38
  %43 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %44 = call i64 (...) @GetLastError()
  %45 = call i32 @SET_REQ_WIN32_ERROR(%struct.TYPE_12__* %43, i64 %44)
  %46 = load i64, i64* %4, align 8
  %47 = call i32 @CloseHandle(i64 %46)
  br label %134

48:                                               ; preds = %38
  %49 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %5, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @FILE_ATTRIBUTE_DIRECTORY, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %84

54:                                               ; preds = %48
  %55 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %5, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @FILE_ATTRIBUTE_REPARSE_POINT, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %66, label %60

60:                                               ; preds = %54
  %61 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %62 = load i64, i64* @ERROR_ACCESS_DENIED, align 8
  %63 = call i32 @SET_REQ_WIN32_ERROR(%struct.TYPE_12__* %61, i64 %62)
  %64 = load i64, i64* %4, align 8
  %65 = call i32 @CloseHandle(i64 %64)
  br label %134

66:                                               ; preds = %54
  %67 = load i64, i64* %4, align 8
  %68 = call i64 @fs__readlink_handle(i64 %67, i32* null, i32* null)
  %69 = icmp slt i64 %68, 0
  br i1 %69, label %70, label %83

70:                                               ; preds = %66
  %71 = call i64 (...) @GetLastError()
  store i64 %71, i64* %9, align 8
  %72 = load i64, i64* %9, align 8
  %73 = load i64, i64* @ERROR_SYMLINK_NOT_SUPPORTED, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %75, label %77

75:                                               ; preds = %70
  %76 = load i64, i64* @ERROR_ACCESS_DENIED, align 8
  store i64 %76, i64* %9, align 8
  br label %77

77:                                               ; preds = %75, %70
  %78 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %79 = load i64, i64* %9, align 8
  %80 = call i32 @SET_REQ_WIN32_ERROR(%struct.TYPE_12__* %78, i64 %79)
  %81 = load i64, i64* %4, align 8
  %82 = call i32 @CloseHandle(i64 %81)
  br label %134

83:                                               ; preds = %66
  br label %84

84:                                               ; preds = %83, %48
  %85 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %5, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* @FILE_ATTRIBUTE_READONLY, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %114

90:                                               ; preds = %84
  %91 = bitcast %struct.TYPE_13__* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %91, i8 0, i64 12, i1 false)
  %92 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %5, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* @FILE_ATTRIBUTE_READONLY, align 4
  %95 = xor i32 %94, -1
  %96 = and i32 %93, %95
  %97 = load i32, i32* @FILE_ATTRIBUTE_ARCHIVE, align 4
  %98 = or i32 %96, %97
  %99 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %10, i32 0, i32 0
  store i32 %98, i32* %99, align 4
  %100 = load i64, i64* %4, align 8
  %101 = load i32, i32* @FileBasicInformation, align 4
  %102 = call i32 @pNtSetInformationFile(i64 %100, i32* %7, %struct.TYPE_13__* %10, i32 12, i32 %101)
  store i32 %102, i32* %8, align 4
  %103 = load i32, i32* %8, align 4
  %104 = call i64 @NT_SUCCESS(i32 %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %113, label %106

106:                                              ; preds = %90
  %107 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %108 = load i32, i32* %8, align 4
  %109 = call i64 @pRtlNtStatusToDosError(i32 %108)
  %110 = call i32 @SET_REQ_WIN32_ERROR(%struct.TYPE_12__* %107, i64 %109)
  %111 = load i64, i64* %4, align 8
  %112 = call i32 @CloseHandle(i64 %111)
  br label %134

113:                                              ; preds = %90
  br label %114

114:                                              ; preds = %113, %84
  %115 = load i32, i32* @TRUE, align 4
  %116 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %6, i32 0, i32 1
  store i32 %115, i32* %116, align 4
  %117 = load i64, i64* %4, align 8
  %118 = load i32, i32* @FileDispositionInformation, align 4
  %119 = call i32 @pNtSetInformationFile(i64 %117, i32* %7, %struct.TYPE_13__* %6, i32 12, i32 %118)
  store i32 %119, i32* %8, align 4
  %120 = load i32, i32* %8, align 4
  %121 = call i64 @NT_SUCCESS(i32 %120)
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %126

123:                                              ; preds = %114
  %124 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %125 = call i32 @SET_REQ_SUCCESS(%struct.TYPE_12__* %124)
  br label %131

126:                                              ; preds = %114
  %127 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %128 = load i32, i32* %8, align 4
  %129 = call i64 @pRtlNtStatusToDosError(i32 %128)
  %130 = call i32 @SET_REQ_WIN32_ERROR(%struct.TYPE_12__* %127, i64 %129)
  br label %131

131:                                              ; preds = %126, %123
  %132 = load i64, i64* %4, align 8
  %133 = call i32 @CloseHandle(i64 %132)
  br label %134

134:                                              ; preds = %131, %106, %77, %60, %42, %34
  ret void
}

declare dso_local i64 @CreateFileW(i32*, i32, i32, i32*, i32, i32, i32*) #1

declare dso_local i32 @SET_REQ_WIN32_ERROR(%struct.TYPE_12__*, i64) #1

declare dso_local i64 @GetLastError(...) #1

declare dso_local i32 @GetFileInformationByHandle(i64, %struct.TYPE_14__*) #1

declare dso_local i32 @CloseHandle(i64) #1

declare dso_local i64 @fs__readlink_handle(i64, i32*, i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @pNtSetInformationFile(i64, i32*, %struct.TYPE_13__*, i32, i32) #1

declare dso_local i64 @NT_SUCCESS(i32) #1

declare dso_local i64 @pRtlNtStatusToDosError(i32) #1

declare dso_local i32 @SET_REQ_SUCCESS(%struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
