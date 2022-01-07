; ModuleID = '/home/carl/AnghaBench/libuv/src/win/extr_winapi.c_uv_winapi_init.c'
source_filename = "/home/carl/AnghaBench/libuv/src/win/extr_winapi.c_uv_winapi_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [10 x i8] c"ntdll.dll\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"GetModuleHandleA\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"RtlGetVersion\00", align 1
@pRtlGetVersion = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [22 x i8] c"RtlNtStatusToDosError\00", align 1
@pRtlNtStatusToDosError = common dso_local global i32* null, align 8
@.str.4 = private unnamed_addr constant [15 x i8] c"GetProcAddress\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"NtDeviceIoControlFile\00", align 1
@pNtDeviceIoControlFile = common dso_local global i32* null, align 8
@.str.6 = private unnamed_addr constant [23 x i8] c"NtQueryInformationFile\00", align 1
@pNtQueryInformationFile = common dso_local global i32* null, align 8
@.str.7 = private unnamed_addr constant [21 x i8] c"NtSetInformationFile\00", align 1
@pNtSetInformationFile = common dso_local global i32* null, align 8
@.str.8 = private unnamed_addr constant [29 x i8] c"NtQueryVolumeInformationFile\00", align 1
@pNtQueryVolumeInformationFile = common dso_local global i32* null, align 8
@.str.9 = private unnamed_addr constant [21 x i8] c"NtQueryDirectoryFile\00", align 1
@pNtQueryDirectoryFile = common dso_local global i64 0, align 8
@.str.10 = private unnamed_addr constant [25 x i8] c"NtQuerySystemInformation\00", align 1
@pNtQuerySystemInformation = common dso_local global i32* null, align 8
@.str.11 = private unnamed_addr constant [26 x i8] c"NtQueryInformationProcess\00", align 1
@pNtQueryInformationProcess = common dso_local global i32* null, align 8
@.str.12 = private unnamed_addr constant [13 x i8] c"kernel32.dll\00", align 1
@.str.13 = private unnamed_addr constant [28 x i8] c"GetQueuedCompletionStatusEx\00", align 1
@pGetQueuedCompletionStatusEx = common dso_local global i64 0, align 8
@.str.14 = private unnamed_addr constant [13 x i8] c"powrprof.dll\00", align 1
@.str.15 = private unnamed_addr constant [39 x i8] c"PowerRegisterSuspendResumeNotification\00", align 1
@pPowerRegisterSuspendResumeNotification = common dso_local global i64 0, align 8
@.str.16 = private unnamed_addr constant [11 x i8] c"user32.dll\00", align 1
@.str.17 = private unnamed_addr constant [16 x i8] c"SetWinEventHook\00", align 1
@pSetWinEventHook = common dso_local global i64 0, align 8
@.str.18 = private unnamed_addr constant [13 x i8] c"advapi32.dll\00", align 1
@.str.19 = private unnamed_addr constant [18 x i8] c"SystemFunction036\00", align 1
@pRtlGenRandom = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @uv_winapi_init() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = call i32* @GetModuleHandleA(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  store i32* %6, i32** %1, align 8
  %7 = load i32*, i32** %1, align 8
  %8 = icmp eq i32* %7, null
  br i1 %8, label %9, label %12

9:                                                ; preds = %0
  %10 = call i32 (...) @GetLastError()
  %11 = call i32 @uv_fatal_error(i32 %10, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  br label %12

12:                                               ; preds = %9, %0
  %13 = load i32*, i32** %1, align 8
  %14 = call i64 @GetProcAddress(i32* %13, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  store i64 %14, i64* @pRtlGetVersion, align 8
  %15 = load i32*, i32** %1, align 8
  %16 = call i64 @GetProcAddress(i32* %15, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  %17 = inttoptr i64 %16 to i32*
  store i32* %17, i32** @pRtlNtStatusToDosError, align 8
  %18 = load i32*, i32** @pRtlNtStatusToDosError, align 8
  %19 = icmp eq i32* %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %12
  %21 = call i32 (...) @GetLastError()
  %22 = call i32 @uv_fatal_error(i32 %21, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0))
  br label %23

23:                                               ; preds = %20, %12
  %24 = load i32*, i32** %1, align 8
  %25 = call i64 @GetProcAddress(i32* %24, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0))
  %26 = inttoptr i64 %25 to i32*
  store i32* %26, i32** @pNtDeviceIoControlFile, align 8
  %27 = load i32*, i32** @pNtDeviceIoControlFile, align 8
  %28 = icmp eq i32* %27, null
  br i1 %28, label %29, label %32

29:                                               ; preds = %23
  %30 = call i32 (...) @GetLastError()
  %31 = call i32 @uv_fatal_error(i32 %30, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0))
  br label %32

32:                                               ; preds = %29, %23
  %33 = load i32*, i32** %1, align 8
  %34 = call i64 @GetProcAddress(i32* %33, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0))
  %35 = inttoptr i64 %34 to i32*
  store i32* %35, i32** @pNtQueryInformationFile, align 8
  %36 = load i32*, i32** @pNtQueryInformationFile, align 8
  %37 = icmp eq i32* %36, null
  br i1 %37, label %38, label %41

38:                                               ; preds = %32
  %39 = call i32 (...) @GetLastError()
  %40 = call i32 @uv_fatal_error(i32 %39, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0))
  br label %41

41:                                               ; preds = %38, %32
  %42 = load i32*, i32** %1, align 8
  %43 = call i64 @GetProcAddress(i32* %42, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0))
  %44 = inttoptr i64 %43 to i32*
  store i32* %44, i32** @pNtSetInformationFile, align 8
  %45 = load i32*, i32** @pNtSetInformationFile, align 8
  %46 = icmp eq i32* %45, null
  br i1 %46, label %47, label %50

47:                                               ; preds = %41
  %48 = call i32 (...) @GetLastError()
  %49 = call i32 @uv_fatal_error(i32 %48, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0))
  br label %50

50:                                               ; preds = %47, %41
  %51 = load i32*, i32** %1, align 8
  %52 = call i64 @GetProcAddress(i32* %51, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.8, i64 0, i64 0))
  %53 = inttoptr i64 %52 to i32*
  store i32* %53, i32** @pNtQueryVolumeInformationFile, align 8
  %54 = load i32*, i32** @pNtQueryVolumeInformationFile, align 8
  %55 = icmp eq i32* %54, null
  br i1 %55, label %56, label %59

56:                                               ; preds = %50
  %57 = call i32 (...) @GetLastError()
  %58 = call i32 @uv_fatal_error(i32 %57, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0))
  br label %59

59:                                               ; preds = %56, %50
  %60 = load i32*, i32** %1, align 8
  %61 = call i64 @GetProcAddress(i32* %60, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.9, i64 0, i64 0))
  store i64 %61, i64* @pNtQueryDirectoryFile, align 8
  %62 = load i32*, i32** @pNtQueryVolumeInformationFile, align 8
  %63 = icmp eq i32* %62, null
  br i1 %63, label %64, label %67

64:                                               ; preds = %59
  %65 = call i32 (...) @GetLastError()
  %66 = call i32 @uv_fatal_error(i32 %65, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0))
  br label %67

67:                                               ; preds = %64, %59
  %68 = load i32*, i32** %1, align 8
  %69 = call i64 @GetProcAddress(i32* %68, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.10, i64 0, i64 0))
  %70 = inttoptr i64 %69 to i32*
  store i32* %70, i32** @pNtQuerySystemInformation, align 8
  %71 = load i32*, i32** @pNtQuerySystemInformation, align 8
  %72 = icmp eq i32* %71, null
  br i1 %72, label %73, label %76

73:                                               ; preds = %67
  %74 = call i32 (...) @GetLastError()
  %75 = call i32 @uv_fatal_error(i32 %74, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0))
  br label %76

76:                                               ; preds = %73, %67
  %77 = load i32*, i32** %1, align 8
  %78 = call i64 @GetProcAddress(i32* %77, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.11, i64 0, i64 0))
  %79 = inttoptr i64 %78 to i32*
  store i32* %79, i32** @pNtQueryInformationProcess, align 8
  %80 = load i32*, i32** @pNtQueryInformationProcess, align 8
  %81 = icmp eq i32* %80, null
  br i1 %81, label %82, label %85

82:                                               ; preds = %76
  %83 = call i32 (...) @GetLastError()
  %84 = call i32 @uv_fatal_error(i32 %83, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0))
  br label %85

85:                                               ; preds = %82, %76
  %86 = call i32* @GetModuleHandleA(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i64 0, i64 0))
  store i32* %86, i32** %4, align 8
  %87 = load i32*, i32** %4, align 8
  %88 = icmp eq i32* %87, null
  br i1 %88, label %89, label %92

89:                                               ; preds = %85
  %90 = call i32 (...) @GetLastError()
  %91 = call i32 @uv_fatal_error(i32 %90, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  br label %92

92:                                               ; preds = %89, %85
  %93 = load i32*, i32** %4, align 8
  %94 = call i64 @GetProcAddress(i32* %93, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.13, i64 0, i64 0))
  store i64 %94, i64* @pGetQueuedCompletionStatusEx, align 8
  %95 = call i32* @LoadLibraryA(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.14, i64 0, i64 0))
  store i32* %95, i32** %2, align 8
  %96 = load i32*, i32** %2, align 8
  %97 = icmp ne i32* %96, null
  br i1 %97, label %98, label %101

98:                                               ; preds = %92
  %99 = load i32*, i32** %2, align 8
  %100 = call i64 @GetProcAddress(i32* %99, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.15, i64 0, i64 0))
  store i64 %100, i64* @pPowerRegisterSuspendResumeNotification, align 8
  br label %101

101:                                              ; preds = %98, %92
  %102 = call i32* @LoadLibraryA(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.16, i64 0, i64 0))
  store i32* %102, i32** %3, align 8
  %103 = load i32*, i32** %3, align 8
  %104 = icmp ne i32* %103, null
  br i1 %104, label %105, label %108

105:                                              ; preds = %101
  %106 = load i32*, i32** %3, align 8
  %107 = call i64 @GetProcAddress(i32* %106, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.17, i64 0, i64 0))
  store i64 %107, i64* @pSetWinEventHook, align 8
  br label %108

108:                                              ; preds = %105, %101
  %109 = call i32* @GetModuleHandleA(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.18, i64 0, i64 0))
  store i32* %109, i32** %5, align 8
  %110 = load i32*, i32** %5, align 8
  %111 = icmp eq i32* %110, null
  br i1 %111, label %112, label %115

112:                                              ; preds = %108
  %113 = call i32 (...) @GetLastError()
  %114 = call i32 @uv_fatal_error(i32 %113, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  br label %115

115:                                              ; preds = %112, %108
  %116 = load i32*, i32** %5, align 8
  %117 = call i64 @GetProcAddress(i32* %116, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.19, i64 0, i64 0))
  store i64 %117, i64* @pRtlGenRandom, align 8
  ret void
}

declare dso_local i32* @GetModuleHandleA(i8*) #1

declare dso_local i32 @uv_fatal_error(i32, i8*) #1

declare dso_local i32 @GetLastError(...) #1

declare dso_local i64 @GetProcAddress(i32*, i8*) #1

declare dso_local i32* @LoadLibraryA(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
