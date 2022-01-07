; ModuleID = '/home/carl/AnghaBench/libuv/src/win/extr_process-stdio.c_uv__create_stdio_pipe_pair.c'
source_filename = "/home/carl/AnghaBench/libuv/src/win/extr_process-stdio.c_uv__create_stdio_pipe_pair.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i32, i64 }
%struct.TYPE_8__ = type { i32, i64, i32* }

@INVALID_HANDLE_VALUE = common dso_local global i64 0, align 8
@UV_READABLE_PIPE = common dso_local global i32 0, align 4
@PIPE_ACCESS_OUTBOUND = common dso_local global i32 0, align 4
@PIPE_ACCESS_INBOUND = common dso_local global i32 0, align 4
@GENERIC_READ = common dso_local global i32 0, align 4
@FILE_WRITE_ATTRIBUTES = common dso_local global i32 0, align 4
@UV_WRITABLE_PIPE = common dso_local global i32 0, align 4
@GENERIC_WRITE = common dso_local global i32 0, align 4
@FILE_READ_ATTRIBUTES = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8
@UV_OVERLAPPED_PIPE = common dso_local global i32 0, align 4
@OPEN_EXISTING = common dso_local global i32 0, align 4
@FILE_FLAG_OVERLAPPED = common dso_local global i32 0, align 4
@PIPE_READMODE_BYTE = common dso_local global i32 0, align 4
@PIPE_WAIT = common dso_local global i32 0, align 4
@ERROR_PIPE_CONNECTED = common dso_local global i32 0, align 4
@UV_HANDLE_WRITABLE = common dso_local global i32 0, align 4
@UV_HANDLE_READABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_7__*, i64*, i32)* @uv__create_stdio_pipe_pair to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uv__create_stdio_pipe_pair(i32* %0, %struct.TYPE_7__* %1, i64* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i32, align 4
  %10 = alloca [64 x i8], align 16
  %11 = alloca %struct.TYPE_8__, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  store i32* %0, i32** %6, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %7, align 8
  store i64* %2, i64** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %19 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  store i64 %19, i64* %14, align 8
  %20 = load i32, i32* %9, align 4
  %21 = load i32, i32* @UV_READABLE_PIPE, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %35

24:                                               ; preds = %4
  %25 = load i32, i32* @PIPE_ACCESS_OUTBOUND, align 4
  %26 = load i32, i32* @PIPE_ACCESS_INBOUND, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* %12, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %12, align 4
  %30 = load i32, i32* @GENERIC_READ, align 4
  %31 = load i32, i32* @FILE_WRITE_ATTRIBUTES, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* %13, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %13, align 4
  br label %35

35:                                               ; preds = %24, %4
  %36 = load i32, i32* %9, align 4
  %37 = load i32, i32* @UV_WRITABLE_PIPE, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %49

40:                                               ; preds = %35
  %41 = load i32, i32* @PIPE_ACCESS_INBOUND, align 4
  %42 = load i32, i32* %12, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %12, align 4
  %44 = load i32, i32* @GENERIC_WRITE, align 4
  %45 = load i32, i32* @FILE_READ_ATTRIBUTES, align 4
  %46 = or i32 %44, %45
  %47 = load i32, i32* %13, align 4
  %48 = or i32 %47, %46
  store i32 %48, i32* %13, align 4
  br label %49

49:                                               ; preds = %40, %35
  %50 = load i32*, i32** %6, align 8
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %52 = load i32, i32* %12, align 4
  %53 = getelementptr inbounds [64 x i8], [64 x i8]* %10, i64 0, i64 0
  %54 = call i32 @uv_stdio_pipe_server(i32* %50, %struct.TYPE_7__* %51, i32 %52, i8* %53, i32 64)
  store i32 %54, i32* %15, align 4
  %55 = load i32, i32* %15, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %49
  br label %143

58:                                               ; preds = %49
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 0
  store i32 24, i32* %59, align 8
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 2
  store i32* null, i32** %60, align 8
  %61 = load i64, i64* @TRUE, align 8
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 1
  store i64 %61, i64* %62, align 8
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 2
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %72, label %67

67:                                               ; preds = %58
  %68 = load i32, i32* %9, align 4
  %69 = load i32, i32* @UV_OVERLAPPED_PIPE, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br label %72

72:                                               ; preds = %67, %58
  %73 = phi i1 [ true, %58 ], [ %71, %67 ]
  %74 = zext i1 %73 to i32
  store i32 %74, i32* %16, align 4
  %75 = getelementptr inbounds [64 x i8], [64 x i8]* %10, i64 0, i64 0
  %76 = load i32, i32* %13, align 4
  %77 = load i32, i32* @OPEN_EXISTING, align 4
  %78 = load i32, i32* %16, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %72
  %81 = load i32, i32* @FILE_FLAG_OVERLAPPED, align 4
  br label %83

82:                                               ; preds = %72
  br label %83

83:                                               ; preds = %82, %80
  %84 = phi i32 [ %81, %80 ], [ 0, %82 ]
  %85 = call i64 @CreateFileA(i8* %75, i32 %76, i32 0, %struct.TYPE_8__* %11, i32 %77, i32 %84, i32* null)
  store i64 %85, i64* %14, align 8
  %86 = load i64, i64* %14, align 8
  %87 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  %88 = icmp eq i64 %86, %87
  br i1 %88, label %89, label %91

89:                                               ; preds = %83
  %90 = call i32 (...) @GetLastError()
  store i32 %90, i32* %15, align 4
  br label %143

91:                                               ; preds = %83
  %92 = load i64, i64* %14, align 8
  %93 = call i64 @GetNamedPipeHandleState(i64 %92, i32* %17, i32* null, i32* null, i32* null, i32* null, i32 0)
  store i64 %93, i64* %18, align 8
  %94 = load i64, i64* %18, align 8
  %95 = load i64, i64* @TRUE, align 8
  %96 = icmp eq i64 %94, %95
  %97 = zext i1 %96 to i32
  %98 = call i32 @assert(i32 %97)
  %99 = load i32, i32* %17, align 4
  %100 = load i32, i32* @PIPE_READMODE_BYTE, align 4
  %101 = load i32, i32* @PIPE_WAIT, align 4
  %102 = or i32 %100, %101
  %103 = icmp eq i32 %99, %102
  %104 = zext i1 %103 to i32
  %105 = call i32 @assert(i32 %104)
  %106 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %107 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = call i32 @ConnectNamedPipe(i64 %108, i32* null)
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %118, label %111

111:                                              ; preds = %91
  %112 = call i32 (...) @GetLastError()
  %113 = load i32, i32* @ERROR_PIPE_CONNECTED, align 4
  %114 = icmp ne i32 %112, %113
  br i1 %114, label %115, label %117

115:                                              ; preds = %111
  %116 = call i32 (...) @GetLastError()
  store i32 %116, i32* %15, align 4
  br label %143

117:                                              ; preds = %111
  br label %118

118:                                              ; preds = %117, %91
  %119 = load i32, i32* %9, align 4
  %120 = load i32, i32* @UV_READABLE_PIPE, align 4
  %121 = and i32 %119, %120
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %129

123:                                              ; preds = %118
  %124 = load i32, i32* @UV_HANDLE_WRITABLE, align 4
  %125 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %126 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 8
  %128 = or i32 %127, %124
  store i32 %128, i32* %126, align 8
  br label %129

129:                                              ; preds = %123, %118
  %130 = load i32, i32* %9, align 4
  %131 = load i32, i32* @UV_WRITABLE_PIPE, align 4
  %132 = and i32 %130, %131
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %140

134:                                              ; preds = %129
  %135 = load i32, i32* @UV_HANDLE_READABLE, align 4
  %136 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %137 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 8
  %139 = or i32 %138, %135
  store i32 %139, i32* %137, align 8
  br label %140

140:                                              ; preds = %134, %129
  %141 = load i64, i64* %14, align 8
  %142 = load i64*, i64** %8, align 8
  store i64 %141, i64* %142, align 8
  store i32 0, i32* %5, align 4
  br label %162

143:                                              ; preds = %115, %89, %57
  %144 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %145 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %144, i32 0, i32 0
  %146 = load i64, i64* %145, align 8
  %147 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  %148 = icmp ne i64 %146, %147
  br i1 %148, label %149, label %153

149:                                              ; preds = %143
  %150 = load i32*, i32** %6, align 8
  %151 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %152 = call i32 @uv_pipe_cleanup(i32* %150, %struct.TYPE_7__* %151)
  br label %153

153:                                              ; preds = %149, %143
  %154 = load i64, i64* %14, align 8
  %155 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  %156 = icmp ne i64 %154, %155
  br i1 %156, label %157, label %160

157:                                              ; preds = %153
  %158 = load i64, i64* %14, align 8
  %159 = call i32 @CloseHandle(i64 %158)
  br label %160

160:                                              ; preds = %157, %153
  %161 = load i32, i32* %15, align 4
  store i32 %161, i32* %5, align 4
  br label %162

162:                                              ; preds = %160, %140
  %163 = load i32, i32* %5, align 4
  ret i32 %163
}

declare dso_local i32 @uv_stdio_pipe_server(i32*, %struct.TYPE_7__*, i32, i8*, i32) #1

declare dso_local i64 @CreateFileA(i8*, i32, i32, %struct.TYPE_8__*, i32, i32, i32*) #1

declare dso_local i32 @GetLastError(...) #1

declare dso_local i64 @GetNamedPipeHandleState(i64, i32*, i32*, i32*, i32*, i32*, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @ConnectNamedPipe(i64, i32*) #1

declare dso_local i32 @uv_pipe_cleanup(i32*, %struct.TYPE_7__*) #1

declare dso_local i32 @CloseHandle(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
