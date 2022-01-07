; ModuleID = '/home/carl/AnghaBench/libuv/src/win/extr_fs.c_fs__fchmod.c'
source_filename = "/home/carl/AnghaBench/libuv/src/win/extr_fs.c_fs__fchmod.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { %struct.TYPE_14__, %struct.TYPE_12__ }
%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_16__ = type { i32 }

@FILE_WRITE_ATTRIBUTES = common dso_local global i32 0, align 4
@INVALID_HANDLE_VALUE = common dso_local global i64 0, align 8
@FileBasicInformation = common dso_local global i32 0, align 4
@FILE_ATTRIBUTE_ARCHIVE = common dso_local global i32 0, align 4
@_S_IWRITE = common dso_local global i32 0, align 4
@FILE_ATTRIBUTE_READONLY = common dso_local global i32 0, align 4
@FILE_ATTRIBUTE_NORMAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_15__*)* @fs__fchmod to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fs__fchmod(%struct.TYPE_15__* %0) #0 {
  %2 = alloca %struct.TYPE_15__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_16__, align 4
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %2, align 8
  %9 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %3, align 4
  %13 = load i32, i32* %3, align 4
  %14 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %15 = call i32 @VERIFY_FD(i32 %13, %struct.TYPE_15__* %14)
  %16 = load i32, i32* %3, align 4
  %17 = call i32 @uv__get_osfhandle(i32 %16)
  %18 = load i32, i32* @FILE_WRITE_ATTRIBUTES, align 4
  %19 = call i64 @ReOpenFile(i32 %17, i32 %18, i32 0, i32 0)
  store i64 %19, i64* %5, align 8
  %20 = load i64, i64* %5, align 8
  %21 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %27

23:                                               ; preds = %1
  %24 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %25 = call i32 (...) @GetLastError()
  %26 = call i32 @SET_REQ_WIN32_ERROR(%struct.TYPE_15__* %24, i32 %25)
  br label %129

27:                                               ; preds = %1
  %28 = load i64, i64* %5, align 8
  %29 = load i32, i32* @FileBasicInformation, align 4
  %30 = call i32 @pNtQueryInformationFile(i64 %28, i32* %7, %struct.TYPE_16__* %8, i32 4, i32 %29)
  store i32 %30, i32* %6, align 4
  %31 = load i32, i32* %6, align 4
  %32 = call i32 @NT_SUCCESS(i32 %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %39, label %34

34:                                               ; preds = %27
  %35 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %36 = load i32, i32* %6, align 4
  %37 = call i32 @pRtlNtStatusToDosError(i32 %36)
  %38 = call i32 @SET_REQ_WIN32_ERROR(%struct.TYPE_15__* %35, i32 %37)
  br label %126

39:                                               ; preds = %27
  %40 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %8, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @FILE_ATTRIBUTE_ARCHIVE, align 4
  %43 = and i32 %41, %42
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %62

45:                                               ; preds = %39
  %46 = load i32, i32* @FILE_ATTRIBUTE_ARCHIVE, align 4
  %47 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %8, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = or i32 %48, %46
  store i32 %49, i32* %47, align 4
  %50 = load i64, i64* %5, align 8
  %51 = load i32, i32* @FileBasicInformation, align 4
  %52 = call i32 @pNtSetInformationFile(i64 %50, i32* %7, %struct.TYPE_16__* %8, i32 4, i32 %51)
  store i32 %52, i32* %6, align 4
  %53 = load i32, i32* %6, align 4
  %54 = call i32 @NT_SUCCESS(i32 %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %61, label %56

56:                                               ; preds = %45
  %57 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %58 = load i32, i32* %6, align 4
  %59 = call i32 @pRtlNtStatusToDosError(i32 %58)
  %60 = call i32 @SET_REQ_WIN32_ERROR(%struct.TYPE_15__* %57, i32 %59)
  br label %126

61:                                               ; preds = %45
  store i32 1, i32* %4, align 4
  br label %63

62:                                               ; preds = %39
  store i32 0, i32* %4, align 4
  br label %63

63:                                               ; preds = %62, %61
  %64 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %65 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @_S_IWRITE, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %78

72:                                               ; preds = %63
  %73 = load i32, i32* @FILE_ATTRIBUTE_READONLY, align 4
  %74 = xor i32 %73, -1
  %75 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %8, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = and i32 %76, %74
  store i32 %77, i32* %75, align 4
  br label %83

78:                                               ; preds = %63
  %79 = load i32, i32* @FILE_ATTRIBUTE_READONLY, align 4
  %80 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %8, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = or i32 %81, %79
  store i32 %82, i32* %80, align 4
  br label %83

83:                                               ; preds = %78, %72
  %84 = load i64, i64* %5, align 8
  %85 = load i32, i32* @FileBasicInformation, align 4
  %86 = call i32 @pNtSetInformationFile(i64 %84, i32* %7, %struct.TYPE_16__* %8, i32 4, i32 %85)
  store i32 %86, i32* %6, align 4
  %87 = load i32, i32* %6, align 4
  %88 = call i32 @NT_SUCCESS(i32 %87)
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %95, label %90

90:                                               ; preds = %83
  %91 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %92 = load i32, i32* %6, align 4
  %93 = call i32 @pRtlNtStatusToDosError(i32 %92)
  %94 = call i32 @SET_REQ_WIN32_ERROR(%struct.TYPE_15__* %91, i32 %93)
  br label %126

95:                                               ; preds = %83
  %96 = load i32, i32* %4, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %123

98:                                               ; preds = %95
  %99 = load i32, i32* @FILE_ATTRIBUTE_ARCHIVE, align 4
  %100 = xor i32 %99, -1
  %101 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %8, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = and i32 %102, %100
  store i32 %103, i32* %101, align 4
  %104 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %8, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %107, label %110

107:                                              ; preds = %98
  %108 = load i32, i32* @FILE_ATTRIBUTE_NORMAL, align 4
  %109 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %8, i32 0, i32 0
  store i32 %108, i32* %109, align 4
  br label %110

110:                                              ; preds = %107, %98
  %111 = load i64, i64* %5, align 8
  %112 = load i32, i32* @FileBasicInformation, align 4
  %113 = call i32 @pNtSetInformationFile(i64 %111, i32* %7, %struct.TYPE_16__* %8, i32 4, i32 %112)
  store i32 %113, i32* %6, align 4
  %114 = load i32, i32* %6, align 4
  %115 = call i32 @NT_SUCCESS(i32 %114)
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %122, label %117

117:                                              ; preds = %110
  %118 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %119 = load i32, i32* %6, align 4
  %120 = call i32 @pRtlNtStatusToDosError(i32 %119)
  %121 = call i32 @SET_REQ_WIN32_ERROR(%struct.TYPE_15__* %118, i32 %120)
  br label %126

122:                                              ; preds = %110
  br label %123

123:                                              ; preds = %122, %95
  %124 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %125 = call i32 @SET_REQ_SUCCESS(%struct.TYPE_15__* %124)
  br label %126

126:                                              ; preds = %123, %117, %90, %56, %34
  %127 = load i64, i64* %5, align 8
  %128 = call i32 @CloseHandle(i64 %127)
  br label %129

129:                                              ; preds = %126, %23
  ret void
}

declare dso_local i32 @VERIFY_FD(i32, %struct.TYPE_15__*) #1

declare dso_local i64 @ReOpenFile(i32, i32, i32, i32) #1

declare dso_local i32 @uv__get_osfhandle(i32) #1

declare dso_local i32 @SET_REQ_WIN32_ERROR(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @GetLastError(...) #1

declare dso_local i32 @pNtQueryInformationFile(i64, i32*, %struct.TYPE_16__*, i32, i32) #1

declare dso_local i32 @NT_SUCCESS(i32) #1

declare dso_local i32 @pRtlNtStatusToDosError(i32) #1

declare dso_local i32 @pNtSetInformationFile(i64, i32*, %struct.TYPE_16__*, i32, i32) #1

declare dso_local i32 @SET_REQ_SUCCESS(%struct.TYPE_15__*) #1

declare dso_local i32 @CloseHandle(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
