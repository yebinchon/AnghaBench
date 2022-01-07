; ModuleID = '/home/carl/AnghaBench/libuv/src/win/extr_fs.c_fs__write.c'
source_filename = "/home/carl/AnghaBench/libuv/src/win/extr_fs.c_fs__write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { %struct.TYPE_20__, %struct.TYPE_17__ }
%struct.TYPE_20__ = type { %struct.TYPE_19__ }
%struct.TYPE_19__ = type { i32, i32, %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i32, i32 }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_22__ = type { i32, i32 }
%struct.TYPE_23__ = type { i32, i32, i64 }
%struct.uv__fd_info_s = type { i32 }

@INVALID_HANDLE_VALUE = common dso_local global i64 0, align 8
@ERROR_INVALID_HANDLE = common dso_local global i32 0, align 4
@FILE_CURRENT = common dso_local global i32 0, align 4
@FILE_BEGIN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fs__write(%struct.TYPE_21__* %0) #0 {
  %2 = alloca %struct.TYPE_21__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_22__, align 4
  %7 = alloca %struct.TYPE_22__*, align 8
  %8 = alloca %struct.TYPE_23__, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_23__, align 8
  %13 = alloca %struct.TYPE_23__, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.uv__fd_info_s, align 4
  %16 = alloca i64, align 8
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %2, align 8
  %17 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %18 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* %3, align 4
  %21 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  store i32 %25, i32* %4, align 4
  %26 = load i32, i32* %3, align 4
  %27 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %28 = call i32 @VERIFY_FD(i32 %26, %struct.TYPE_21__* %27)
  %29 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %13, i32 0, i32 2
  store i64 0, i64* %29, align 8
  store i32 0, i32* %14, align 4
  %30 = load i32, i32* %3, align 4
  %31 = call i64 @uv__get_osfhandle(i32 %30)
  store i64 %31, i64* %5, align 8
  %32 = load i64, i64* %5, align 8
  %33 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %39

35:                                               ; preds = %1
  %36 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %37 = load i32, i32* @ERROR_INVALID_HANDLE, align 4
  %38 = call i32 @SET_REQ_WIN32_ERROR(%struct.TYPE_21__* %36, i32 %37)
  br label %148

39:                                               ; preds = %1
  %40 = load i32, i32* %3, align 4
  %41 = call i64 @uv__fd_hash_get(i32 %40, %struct.uv__fd_info_s* %15)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %39
  %44 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %45 = load i64, i64* %5, align 8
  %46 = call i32 @fs__write_filemap(%struct.TYPE_21__* %44, i64 %45, %struct.uv__fd_info_s* %15)
  br label %148

47:                                               ; preds = %39
  %48 = load i32, i32* %4, align 4
  %49 = icmp ne i32 %48, -1
  br i1 %49, label %50, label %63

50:                                               ; preds = %47
  %51 = call i32 @memset(%struct.TYPE_22__* %6, i32 0, i32 8)
  store %struct.TYPE_22__* %6, %struct.TYPE_22__** %7, align 8
  %52 = load i64, i64* %5, align 8
  %53 = load i32, i32* @FILE_CURRENT, align 4
  %54 = bitcast %struct.TYPE_23__* %13 to { i64, i64 }*
  %55 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %54, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = call i64 @SetFilePointerEx(i64 %52, i64 %56, i64 %58, %struct.TYPE_23__* %12, i32 %53)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %50
  store i32 1, i32* %14, align 4
  br label %62

62:                                               ; preds = %61, %50
  br label %64

63:                                               ; preds = %47
  store %struct.TYPE_22__* null, %struct.TYPE_22__** %7, align 8
  br label %64

64:                                               ; preds = %63, %62
  store i32 0, i32* %11, align 4
  store i64 0, i64* %9, align 8
  br label %65

65:                                               ; preds = %120, %64
  %66 = load i32, i32* %4, align 4
  %67 = icmp ne i32 %66, -1
  br i1 %67, label %68, label %80

68:                                               ; preds = %65
  %69 = load i32, i32* %4, align 4
  %70 = sext i32 %69 to i64
  %71 = load i64, i64* %9, align 8
  %72 = add nsw i64 %70, %71
  %73 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %8, i32 0, i32 2
  store i64 %72, i64* %73, align 8
  %74 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %8, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %6, i32 0, i32 1
  store i32 %75, i32* %76, align 4
  %77 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %8, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %6, i32 0, i32 0
  store i32 %78, i32* %79, align 4
  br label %80

80:                                               ; preds = %68, %65
  %81 = load i64, i64* %5, align 8
  %82 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %83 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %84, i32 0, i32 2
  %86 = load %struct.TYPE_18__*, %struct.TYPE_18__** %85, align 8
  %87 = load i32, i32* %11, align 4
  %88 = zext i32 %87 to i64
  %89 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %86, i64 %88
  %90 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %93 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %94, i32 0, i32 2
  %96 = load %struct.TYPE_18__*, %struct.TYPE_18__** %95, align 8
  %97 = load i32, i32* %11, align 4
  %98 = zext i32 %97 to i64
  %99 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %96, i64 %98
  %100 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %103 = call i32 @WriteFile(i64 %81, i32 %91, i32 %101, i64* %16, %struct.TYPE_22__* %102)
  store i32 %103, i32* %10, align 4
  %104 = load i64, i64* %16, align 8
  %105 = load i64, i64* %9, align 8
  %106 = add nsw i64 %105, %104
  store i64 %106, i64* %9, align 8
  %107 = load i32, i32* %11, align 4
  %108 = add i32 %107, 1
  store i32 %108, i32* %11, align 4
  br label %109

109:                                              ; preds = %80
  %110 = load i32, i32* %10, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %120

112:                                              ; preds = %109
  %113 = load i32, i32* %11, align 4
  %114 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %115 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = icmp ult i32 %113, %118
  br label %120

120:                                              ; preds = %112, %109
  %121 = phi i1 [ false, %109 ], [ %119, %112 ]
  br i1 %121, label %65, label %122

122:                                              ; preds = %120
  %123 = load i32, i32* %14, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %134

125:                                              ; preds = %122
  %126 = load i64, i64* %5, align 8
  %127 = load i32, i32* @FILE_BEGIN, align 4
  %128 = bitcast %struct.TYPE_23__* %12 to { i64, i64 }*
  %129 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %128, i32 0, i32 1
  %132 = load i64, i64* %131, align 8
  %133 = call i64 @SetFilePointerEx(i64 %126, i64 %130, i64 %132, %struct.TYPE_23__* null, i32 %127)
  br label %134

134:                                              ; preds = %125, %122
  %135 = load i32, i32* %10, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %140, label %137

137:                                              ; preds = %134
  %138 = load i64, i64* %9, align 8
  %139 = icmp sgt i64 %138, 0
  br i1 %139, label %140, label %144

140:                                              ; preds = %137, %134
  %141 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %142 = load i64, i64* %9, align 8
  %143 = call i32 @SET_REQ_RESULT(%struct.TYPE_21__* %141, i64 %142)
  br label %148

144:                                              ; preds = %137
  %145 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %146 = call i32 (...) @GetLastError()
  %147 = call i32 @SET_REQ_WIN32_ERROR(%struct.TYPE_21__* %145, i32 %146)
  br label %148

148:                                              ; preds = %35, %43, %144, %140
  ret void
}

declare dso_local i32 @VERIFY_FD(i32, %struct.TYPE_21__*) #1

declare dso_local i64 @uv__get_osfhandle(i32) #1

declare dso_local i32 @SET_REQ_WIN32_ERROR(%struct.TYPE_21__*, i32) #1

declare dso_local i64 @uv__fd_hash_get(i32, %struct.uv__fd_info_s*) #1

declare dso_local i32 @fs__write_filemap(%struct.TYPE_21__*, i64, %struct.uv__fd_info_s*) #1

declare dso_local i32 @memset(%struct.TYPE_22__*, i32, i32) #1

declare dso_local i64 @SetFilePointerEx(i64, i64, i64, %struct.TYPE_23__*, i32) #1

declare dso_local i32 @WriteFile(i64, i32, i32, i64*, %struct.TYPE_22__*) #1

declare dso_local i32 @SET_REQ_RESULT(%struct.TYPE_21__*, i64) #1

declare dso_local i32 @GetLastError(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
