; ModuleID = '/home/carl/AnghaBench/libuv/src/win/extr_pipe.c_uv_set_pipe_handle.c'
source_filename = "/home/carl/AnghaBench/libuv/src/win/extr_pipe.c_uv_set_pipe_handle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32, i64, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_11__ = type { i32 }

@PIPE_READMODE_BYTE = common dso_local global i64 0, align 8
@PIPE_WAIT = common dso_local global i64 0, align 8
@UV_HANDLE_PIPESERVER = common dso_local global i32 0, align 4
@INVALID_HANDLE_VALUE = common dso_local global i64 0, align 8
@UV_EBUSY = common dso_local global i32 0, align 4
@ERROR_ACCESS_DENIED = common dso_local global i64 0, align 8
@PIPE_NOWAIT = common dso_local global i64 0, align 8
@ERROR_INVALID_PARAMETER = common dso_local global i64 0, align 8
@WSAENOTSOCK = common dso_local global i64 0, align 8
@FileModeInformation = common dso_local global i32 0, align 4
@STATUS_SUCCESS = common dso_local global i64 0, align 8
@FILE_SYNCHRONOUS_IO_ALERT = common dso_local global i32 0, align 4
@FILE_SYNCHRONOUS_IO_NONALERT = common dso_local global i32 0, align 4
@UV_HANDLE_NON_OVERLAPPED_PIPE = common dso_local global i32 0, align 4
@UV_HANDLE_EMULATE_IOCP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*, %struct.TYPE_9__*, i64, i32, i64)* @uv_set_pipe_handle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uv_set_pipe_handle(%struct.TYPE_10__* %0, %struct.TYPE_9__* %1, i64 %2, i32 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca %struct.TYPE_9__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_11__, align 4
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %7, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %8, align 8
  store i64 %2, i64* %9, align 8
  store i32 %3, i32* %10, align 4
  store i64 %4, i64* %11, align 8
  %18 = load i64, i64* @PIPE_READMODE_BYTE, align 8
  %19 = load i64, i64* @PIPE_WAIT, align 8
  %20 = or i64 %18, %19
  store i64 %20, i64* %15, align 8
  store i64 0, i64* %16, align 8
  store i64 0, i64* %17, align 8
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @UV_HANDLE_PIPESERVER, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %35, label %27

27:                                               ; preds = %5
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %27
  %34 = load i32, i32* @UV_EBUSY, align 4
  store i32 %34, i32* %6, align 4
  br label %125

35:                                               ; preds = %27, %5
  %36 = load i64, i64* %9, align 8
  %37 = call i32 @SetNamedPipeHandleState(i64 %36, i64* %15, i32* null, i32* null)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %68, label %39

39:                                               ; preds = %35
  %40 = call i64 (...) @GetLastError()
  store i64 %40, i64* %17, align 8
  %41 = load i64, i64* %17, align 8
  %42 = load i64, i64* @ERROR_ACCESS_DENIED, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %59

44:                                               ; preds = %39
  %45 = load i64, i64* %9, align 8
  %46 = call i32 @GetNamedPipeHandleState(i64 %45, i64* %16, i32* null, i32* null, i32* null, i32* null, i32 0)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %44
  store i32 -1, i32* %6, align 4
  br label %125

49:                                               ; preds = %44
  %50 = load i64, i64* %16, align 8
  %51 = load i64, i64* @PIPE_NOWAIT, align 8
  %52 = and i64 %50, %51
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %49
  %55 = load i64, i64* @ERROR_ACCESS_DENIED, align 8
  %56 = call i32 @SetLastError(i64 %55)
  store i32 -1, i32* %6, align 4
  br label %125

57:                                               ; preds = %49
  br label %58

58:                                               ; preds = %57
  br label %67

59:                                               ; preds = %39
  %60 = load i64, i64* %17, align 8
  %61 = load i64, i64* @ERROR_INVALID_PARAMETER, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %66

63:                                               ; preds = %59
  %64 = load i64, i64* @WSAENOTSOCK, align 8
  %65 = call i32 @SetLastError(i64 %64)
  br label %66

66:                                               ; preds = %63, %59
  store i32 -1, i32* %6, align 4
  br label %125

67:                                               ; preds = %58
  br label %68

68:                                               ; preds = %67, %35
  %69 = load i64, i64* %9, align 8
  %70 = load i32, i32* @FileModeInformation, align 4
  %71 = call i64 @pNtQueryInformationFile(i64 %69, i32* %13, %struct.TYPE_11__* %14, i32 4, i32 %70)
  store i64 %71, i64* %12, align 8
  %72 = load i64, i64* %12, align 8
  %73 = load i64, i64* @STATUS_SUCCESS, align 8
  %74 = icmp ne i64 %72, %73
  br i1 %74, label %75, label %76

75:                                               ; preds = %68
  store i32 -1, i32* %6, align 4
  br label %125

76:                                               ; preds = %68
  %77 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %14, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @FILE_SYNCHRONOUS_IO_ALERT, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %88, label %82

82:                                               ; preds = %76
  %83 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %14, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* @FILE_SYNCHRONOUS_IO_NONALERT, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %94

88:                                               ; preds = %82, %76
  %89 = load i32, i32* @UV_HANDLE_NON_OVERLAPPED_PIPE, align 4
  %90 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %91 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = or i32 %92, %89
  store i32 %93, i32* %91, align 8
  br label %110

94:                                               ; preds = %82
  %95 = load i64, i64* %9, align 8
  %96 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %97 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %100 = ptrtoint %struct.TYPE_9__* %99 to i32
  %101 = call i32* @CreateIoCompletionPort(i64 %95, i32 %98, i32 %100, i32 0)
  %102 = icmp eq i32* %101, null
  br i1 %102, label %103, label %109

103:                                              ; preds = %94
  %104 = load i32, i32* @UV_HANDLE_EMULATE_IOCP, align 4
  %105 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %106 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = or i32 %107, %104
  store i32 %108, i32* %106, align 8
  br label %109

109:                                              ; preds = %103, %94
  br label %110

110:                                              ; preds = %109, %88
  %111 = load i64, i64* %9, align 8
  %112 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %113 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %112, i32 0, i32 1
  store i64 %111, i64* %113, align 8
  %114 = load i32, i32* %10, align 4
  %115 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %116 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %115, i32 0, i32 2
  %117 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %116, i32 0, i32 0
  store i32 %114, i32* %117, align 8
  %118 = load i64, i64* %11, align 8
  %119 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %120 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = sext i32 %121 to i64
  %123 = or i64 %122, %118
  %124 = trunc i64 %123 to i32
  store i32 %124, i32* %120, align 8
  store i32 0, i32* %6, align 4
  br label %125

125:                                              ; preds = %110, %75, %66, %54, %48, %33
  %126 = load i32, i32* %6, align 4
  ret i32 %126
}

declare dso_local i32 @SetNamedPipeHandleState(i64, i64*, i32*, i32*) #1

declare dso_local i64 @GetLastError(...) #1

declare dso_local i32 @GetNamedPipeHandleState(i64, i64*, i32*, i32*, i32*, i32*, i32) #1

declare dso_local i32 @SetLastError(i64) #1

declare dso_local i64 @pNtQueryInformationFile(i64, i32*, %struct.TYPE_11__*, i32, i32) #1

declare dso_local i32* @CreateIoCompletionPort(i64, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
