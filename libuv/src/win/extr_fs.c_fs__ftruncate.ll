; ModuleID = '/home/carl/AnghaBench/libuv/src/win/extr_fs.c_fs__ftruncate.c'
source_filename = "/home/carl/AnghaBench/libuv/src/win/extr_fs.c_fs__ftruncate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { %struct.TYPE_15__, %struct.TYPE_13__ }
%struct.TYPE_15__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i64 }
%struct.TYPE_13__ = type { i32 }
%struct.uv__fd_info_s = type { i8*, i32, %struct.TYPE_17__, %struct.TYPE_16__, i64, i32 }
%struct.TYPE_17__ = type { i64 }
%struct.TYPE_16__ = type { i64, i32, i32 }
%struct.TYPE_19__ = type { %struct.TYPE_16__ }

@ERROR_ACCESS_DENIED = common dso_local global i32 0, align 4
@INVALID_HANDLE_VALUE = common dso_local global i8* null, align 8
@FileEndOfFileInformation = common dso_local global i32 0, align 4
@UV_FS_O_RDONLY = common dso_local global i32 0, align 4
@UV_FS_O_WRONLY = common dso_local global i32 0, align 4
@UV_FS_O_RDWR = common dso_local global i32 0, align 4
@PAGE_READONLY = common dso_local global i32 0, align 4
@PAGE_READWRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_18__*)* @fs__ftruncate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fs__ftruncate(%struct.TYPE_18__* %0) #0 {
  %2 = alloca %struct.TYPE_18__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.uv__fd_info_s, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_19__, align 8
  %9 = alloca i32, align 4
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %2, align 8
  %10 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  store i32 %13, i32* %3, align 4
  %14 = bitcast %struct.uv__fd_info_s* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %14, i8 0, i64 56, i1 false)
  %15 = load i32, i32* %3, align 4
  %16 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %17 = call i32 @VERIFY_FD(i32 %15, %struct.TYPE_18__* %16)
  %18 = load i32, i32* %3, align 4
  %19 = call i8* @uv__get_osfhandle(i32 %18)
  store i8* %19, i8** %4, align 8
  %20 = load i32, i32* %3, align 4
  %21 = call i64 @uv__fd_hash_get(i32 %20, %struct.uv__fd_info_s* %5)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %41

23:                                               ; preds = %1
  %24 = getelementptr inbounds %struct.uv__fd_info_s, %struct.uv__fd_info_s* %5, i32 0, i32 4
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %23
  %28 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %29 = load i32, i32* @ERROR_ACCESS_DENIED, align 4
  %30 = call i32 @SET_REQ_WIN32_ERROR(%struct.TYPE_18__* %28, i32 %29)
  br label %142

31:                                               ; preds = %23
  %32 = getelementptr inbounds %struct.uv__fd_info_s, %struct.uv__fd_info_s* %5, i32 0, i32 0
  %33 = load i8*, i8** %32, align 8
  %34 = load i8*, i8** @INVALID_HANDLE_VALUE, align 8
  %35 = icmp ne i8* %33, %34
  br i1 %35, label %36, label %40

36:                                               ; preds = %31
  %37 = getelementptr inbounds %struct.uv__fd_info_s, %struct.uv__fd_info_s* %5, i32 0, i32 0
  %38 = load i8*, i8** %37, align 8
  %39 = call i32 @CloseHandle(i8* %38)
  br label %40

40:                                               ; preds = %36, %31
  br label %41

41:                                               ; preds = %40, %1
  %42 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %43 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %8, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %47, i32 0, i32 0
  store i64 %46, i64* %48, align 8
  %49 = load i8*, i8** %4, align 8
  %50 = load i32, i32* @FileEndOfFileInformation, align 4
  %51 = call i32 @pNtSetInformationFile(i8* %49, i32* %7, %struct.TYPE_19__* %8, i32 16, i32 %50)
  store i32 %51, i32* %6, align 4
  %52 = load i32, i32* %6, align 4
  %53 = call i64 @NT_SUCCESS(i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %41
  %56 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %57 = call i32 @SET_REQ_RESULT(%struct.TYPE_18__* %56, i32 0)
  br label %78

58:                                               ; preds = %41
  %59 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %60 = load i32, i32* %6, align 4
  %61 = call i32 @pRtlNtStatusToDosError(i32 %60)
  %62 = call i32 @SET_REQ_WIN32_ERROR(%struct.TYPE_18__* %59, i32 %61)
  %63 = getelementptr inbounds %struct.uv__fd_info_s, %struct.uv__fd_info_s* %5, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %77

66:                                               ; preds = %58
  %67 = load i8*, i8** %4, align 8
  %68 = call i32 @CloseHandle(i8* %67)
  %69 = load i8*, i8** @INVALID_HANDLE_VALUE, align 8
  %70 = getelementptr inbounds %struct.uv__fd_info_s, %struct.uv__fd_info_s* %5, i32 0, i32 0
  store i8* %69, i8** %70, align 8
  %71 = getelementptr inbounds %struct.uv__fd_info_s, %struct.uv__fd_info_s* %5, i32 0, i32 3
  %72 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %71, i32 0, i32 0
  store i64 0, i64* %72, align 8
  %73 = getelementptr inbounds %struct.uv__fd_info_s, %struct.uv__fd_info_s* %5, i32 0, i32 2
  %74 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %73, i32 0, i32 0
  store i64 0, i64* %74, align 8
  %75 = load i32, i32* %3, align 4
  %76 = call i32 @uv__fd_hash_add(i32 %75, %struct.uv__fd_info_s* %5)
  br label %142

77:                                               ; preds = %58
  br label %78

78:                                               ; preds = %77, %55
  %79 = getelementptr inbounds %struct.uv__fd_info_s, %struct.uv__fd_info_s* %5, i32 0, i32 1
  %80 = load i32, i32* %79, align 8
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %142

82:                                               ; preds = %78
  %83 = getelementptr inbounds %struct.uv__fd_info_s, %struct.uv__fd_info_s* %5, i32 0, i32 3
  %84 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %8, i32 0, i32 0
  %85 = bitcast %struct.TYPE_16__* %83 to i8*
  %86 = bitcast %struct.TYPE_16__* %84 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %85, i8* align 8 %86, i64 16, i1 false)
  %87 = getelementptr inbounds %struct.uv__fd_info_s, %struct.uv__fd_info_s* %5, i32 0, i32 3
  %88 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = icmp eq i64 %89, 0
  br i1 %90, label %91, label %94

91:                                               ; preds = %82
  %92 = load i8*, i8** @INVALID_HANDLE_VALUE, align 8
  %93 = getelementptr inbounds %struct.uv__fd_info_s, %struct.uv__fd_info_s* %5, i32 0, i32 0
  store i8* %92, i8** %93, align 8
  br label %139

94:                                               ; preds = %82
  %95 = getelementptr inbounds %struct.uv__fd_info_s, %struct.uv__fd_info_s* %5, i32 0, i32 1
  %96 = load i32, i32* %95, align 8
  %97 = load i32, i32* @UV_FS_O_RDONLY, align 4
  %98 = load i32, i32* @UV_FS_O_WRONLY, align 4
  %99 = or i32 %97, %98
  %100 = load i32, i32* @UV_FS_O_RDWR, align 4
  %101 = or i32 %99, %100
  %102 = and i32 %96, %101
  %103 = load i32, i32* @UV_FS_O_RDONLY, align 4
  %104 = icmp eq i32 %102, %103
  br i1 %104, label %105, label %107

105:                                              ; preds = %94
  %106 = load i32, i32* @PAGE_READONLY, align 4
  br label %109

107:                                              ; preds = %94
  %108 = load i32, i32* @PAGE_READWRITE, align 4
  br label %109

109:                                              ; preds = %107, %105
  %110 = phi i32 [ %106, %105 ], [ %108, %107 ]
  store i32 %110, i32* %9, align 4
  %111 = load i8*, i8** %4, align 8
  %112 = load i32, i32* %9, align 4
  %113 = getelementptr inbounds %struct.uv__fd_info_s, %struct.uv__fd_info_s* %5, i32 0, i32 3
  %114 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 4
  %116 = getelementptr inbounds %struct.uv__fd_info_s, %struct.uv__fd_info_s* %5, i32 0, i32 3
  %117 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 8
  %119 = call i8* @CreateFileMapping(i8* %111, i32* null, i32 %112, i32 %115, i32 %118, i32* null)
  %120 = getelementptr inbounds %struct.uv__fd_info_s, %struct.uv__fd_info_s* %5, i32 0, i32 0
  store i8* %119, i8** %120, align 8
  %121 = getelementptr inbounds %struct.uv__fd_info_s, %struct.uv__fd_info_s* %5, i32 0, i32 0
  %122 = load i8*, i8** %121, align 8
  %123 = icmp eq i8* %122, null
  br i1 %123, label %124, label %138

124:                                              ; preds = %109
  %125 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %126 = call i32 (...) @GetLastError()
  %127 = call i32 @SET_REQ_WIN32_ERROR(%struct.TYPE_18__* %125, i32 %126)
  %128 = load i8*, i8** %4, align 8
  %129 = call i32 @CloseHandle(i8* %128)
  %130 = load i8*, i8** @INVALID_HANDLE_VALUE, align 8
  %131 = getelementptr inbounds %struct.uv__fd_info_s, %struct.uv__fd_info_s* %5, i32 0, i32 0
  store i8* %130, i8** %131, align 8
  %132 = getelementptr inbounds %struct.uv__fd_info_s, %struct.uv__fd_info_s* %5, i32 0, i32 3
  %133 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %132, i32 0, i32 0
  store i64 0, i64* %133, align 8
  %134 = getelementptr inbounds %struct.uv__fd_info_s, %struct.uv__fd_info_s* %5, i32 0, i32 2
  %135 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %134, i32 0, i32 0
  store i64 0, i64* %135, align 8
  %136 = load i32, i32* %3, align 4
  %137 = call i32 @uv__fd_hash_add(i32 %136, %struct.uv__fd_info_s* %5)
  br label %142

138:                                              ; preds = %109
  br label %139

139:                                              ; preds = %138, %91
  %140 = load i32, i32* %3, align 4
  %141 = call i32 @uv__fd_hash_add(i32 %140, %struct.uv__fd_info_s* %5)
  br label %142

142:                                              ; preds = %27, %66, %124, %139, %78
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @VERIFY_FD(i32, %struct.TYPE_18__*) #2

declare dso_local i8* @uv__get_osfhandle(i32) #2

declare dso_local i64 @uv__fd_hash_get(i32, %struct.uv__fd_info_s*) #2

declare dso_local i32 @SET_REQ_WIN32_ERROR(%struct.TYPE_18__*, i32) #2

declare dso_local i32 @CloseHandle(i8*) #2

declare dso_local i32 @pNtSetInformationFile(i8*, i32*, %struct.TYPE_19__*, i32, i32) #2

declare dso_local i64 @NT_SUCCESS(i32) #2

declare dso_local i32 @SET_REQ_RESULT(%struct.TYPE_18__*, i32) #2

declare dso_local i32 @pRtlNtStatusToDosError(i32) #2

declare dso_local i32 @uv__fd_hash_add(i32, %struct.uv__fd_info_s*) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i8* @CreateFileMapping(i8*, i32*, i32, i32, i32, i32*) #2

declare dso_local i32 @GetLastError(...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
