; ModuleID = '/home/carl/AnghaBench/libuv/src/unix/extr_stream.c_uv_write2.c'
source_filename = "/home/carl/AnghaBench/libuv/src/unix/extr_stream.c_uv_write2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32, i64, i32*, i32*, %struct.TYPE_12__*, i64, %struct.TYPE_12__*, i32 }
%struct.TYPE_12__ = type { i64, i32, i64, i32, i32, i64, i32 }
%struct.TYPE_13__ = type { i32 }

@UV_TCP = common dso_local global i64 0, align 8
@UV_NAMED_PIPE = common dso_local global i64 0, align 8
@UV_TTY = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [60 x i8] c"uv_write (unix) does not yet support other types of streams\00", align 1
@UV_EBADF = common dso_local global i32 0, align 4
@UV_HANDLE_WRITABLE = common dso_local global i32 0, align 4
@UV_EPIPE = common dso_local global i32 0, align 4
@UV_EINVAL = common dso_local global i32 0, align 4
@UV_WRITE = common dso_local global i32 0, align 4
@UV_ENOMEM = common dso_local global i32 0, align 4
@UV_HANDLE_BLOCKING_WRITES = common dso_local global i32 0, align 4
@POLLOUT = common dso_local global i32 0, align 4
@UV_ENOSYS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @uv_write2(%struct.TYPE_11__* %0, %struct.TYPE_12__* %1, i32* %2, i32 %3, %struct.TYPE_12__* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_11__*, align 8
  %9 = alloca %struct.TYPE_12__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_12__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %8, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %9, align 8
  store i32* %2, i32** %10, align 8
  store i32 %3, i32* %11, align 4
  store %struct.TYPE_12__* %4, %struct.TYPE_12__** %12, align 8
  store i32 %5, i32* %13, align 4
  %15 = load i32, i32* %11, align 4
  %16 = icmp ugt i32 %15, 0
  %17 = zext i1 %16 to i32
  %18 = call i32 @assert(i32 %17)
  %19 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %20 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @UV_TCP, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %36, label %24

24:                                               ; preds = %6
  %25 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %26 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @UV_NAMED_PIPE, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %36, label %30

30:                                               ; preds = %24
  %31 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %32 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @UV_TTY, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %30, %24, %6
  br label %37

37:                                               ; preds = %36, %30
  %38 = phi i1 [ false, %30 ], [ true, %36 ]
  %39 = zext i1 %38 to i32
  %40 = call i32 @assert(i32 %39)
  %41 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %42 = call i64 @uv__stream_fd(%struct.TYPE_12__* %41)
  %43 = icmp slt i64 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %37
  %45 = load i32, i32* @UV_EBADF, align 4
  store i32 %45, i32* %7, align 4
  br label %191

46:                                               ; preds = %37
  %47 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %48 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @UV_HANDLE_WRITABLE, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %55, label %53

53:                                               ; preds = %46
  %54 = load i32, i32* @UV_EPIPE, align 4
  store i32 %54, i32* %7, align 4
  br label %191

55:                                               ; preds = %46
  %56 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %57 = icmp ne %struct.TYPE_12__* %56, null
  br i1 %57, label %58, label %80

58:                                               ; preds = %55
  %59 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %60 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @UV_NAMED_PIPE, align 8
  %63 = icmp ne i64 %61, %62
  br i1 %63, label %70, label %64

64:                                               ; preds = %58
  %65 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %66 = bitcast %struct.TYPE_12__* %65 to %struct.TYPE_13__*
  %67 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %72, label %70

70:                                               ; preds = %64, %58
  %71 = load i32, i32* @UV_EINVAL, align 4
  store i32 %71, i32* %7, align 4
  br label %191

72:                                               ; preds = %64
  %73 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %74 = bitcast %struct.TYPE_12__* %73 to i32*
  %75 = call i64 @uv__handle_fd(i32* %74)
  %76 = icmp slt i64 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %72
  %78 = load i32, i32* @UV_EBADF, align 4
  store i32 %78, i32* %7, align 4
  br label %191

79:                                               ; preds = %72
  br label %80

80:                                               ; preds = %79, %55
  %81 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %82 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %81, i32 0, i32 2
  %83 = load i64, i64* %82, align 8
  %84 = icmp eq i64 %83, 0
  %85 = zext i1 %84 to i32
  store i32 %85, i32* %14, align 4
  %86 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %87 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %86, i32 0, i32 4
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %90 = load i32, i32* @UV_WRITE, align 4
  %91 = call i32 @uv__req_init(i32 %88, %struct.TYPE_11__* %89, i32 %90)
  %92 = load i32, i32* %13, align 4
  %93 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %94 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %93, i32 0, i32 8
  store i32 %92, i32* %94, align 8
  %95 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %96 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %97 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %96, i32 0, i32 7
  store %struct.TYPE_12__* %95, %struct.TYPE_12__** %97, align 8
  %98 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %99 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %98, i32 0, i32 6
  store i64 0, i64* %99, align 8
  %100 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %101 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %102 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %101, i32 0, i32 5
  store %struct.TYPE_12__* %100, %struct.TYPE_12__** %102, align 8
  %103 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %104 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %103, i32 0, i32 1
  %105 = call i32 @QUEUE_INIT(i32* %104)
  %106 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %107 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %106, i32 0, i32 4
  %108 = load i32*, i32** %107, align 8
  %109 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %110 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %109, i32 0, i32 3
  store i32* %108, i32** %110, align 8
  %111 = load i32, i32* %11, align 4
  %112 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %113 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %112, i32 0, i32 4
  %114 = load i32*, i32** %113, align 8
  %115 = call i32 @ARRAY_SIZE(i32* %114)
  %116 = icmp ugt i32 %111, %115
  br i1 %116, label %117, label %125

117:                                              ; preds = %80
  %118 = load i32, i32* %11, align 4
  %119 = zext i32 %118 to i64
  %120 = mul i64 %119, 4
  %121 = trunc i64 %120 to i32
  %122 = call i32* @uv__malloc(i32 %121)
  %123 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %124 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %123, i32 0, i32 3
  store i32* %122, i32** %124, align 8
  br label %125

125:                                              ; preds = %117, %80
  %126 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %127 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %126, i32 0, i32 3
  %128 = load i32*, i32** %127, align 8
  %129 = icmp eq i32* %128, null
  br i1 %129, label %130, label %132

130:                                              ; preds = %125
  %131 = load i32, i32* @UV_ENOMEM, align 4
  store i32 %131, i32* %7, align 4
  br label %191

132:                                              ; preds = %125
  %133 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %134 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %133, i32 0, i32 3
  %135 = load i32*, i32** %134, align 8
  %136 = load i32*, i32** %10, align 8
  %137 = load i32, i32* %11, align 4
  %138 = zext i32 %137 to i64
  %139 = mul i64 %138, 4
  %140 = trunc i64 %139 to i32
  %141 = call i32 @memcpy(i32* %135, i32* %136, i32 %140)
  %142 = load i32, i32* %11, align 4
  %143 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %144 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %143, i32 0, i32 0
  store i32 %142, i32* %144, align 8
  %145 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %146 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %145, i32 0, i32 2
  store i64 0, i64* %146, align 8
  %147 = load i32*, i32** %10, align 8
  %148 = load i32, i32* %11, align 4
  %149 = call i64 @uv__count_bufs(i32* %147, i32 %148)
  %150 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %151 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %150, i32 0, i32 2
  %152 = load i64, i64* %151, align 8
  %153 = add nsw i64 %152, %149
  store i64 %153, i64* %151, align 8
  %154 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %155 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %154, i32 0, i32 6
  %156 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %157 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %156, i32 0, i32 1
  %158 = call i32 @QUEUE_INSERT_TAIL(i32* %155, i32* %157)
  %159 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %160 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %159, i32 0, i32 5
  %161 = load i64, i64* %160, align 8
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %163, label %164

163:                                              ; preds = %132
  br label %190

164:                                              ; preds = %132
  %165 = load i32, i32* %14, align 4
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %170

167:                                              ; preds = %164
  %168 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %169 = call i32 @uv__write(%struct.TYPE_12__* %168)
  br label %189

170:                                              ; preds = %164
  %171 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %172 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %171, i32 0, i32 1
  %173 = load i32, i32* %172, align 8
  %174 = load i32, i32* @UV_HANDLE_BLOCKING_WRITES, align 4
  %175 = and i32 %173, %174
  %176 = icmp ne i32 %175, 0
  %177 = xor i1 %176, true
  %178 = zext i1 %177 to i32
  %179 = call i32 @assert(i32 %178)
  %180 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %181 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %180, i32 0, i32 4
  %182 = load i32, i32* %181, align 4
  %183 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %184 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %183, i32 0, i32 3
  %185 = load i32, i32* @POLLOUT, align 4
  %186 = call i32 @uv__io_start(i32 %182, i32* %184, i32 %185)
  %187 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %188 = call i32 @uv__stream_osx_interrupt_select(%struct.TYPE_12__* %187)
  br label %189

189:                                              ; preds = %170, %167
  br label %190

190:                                              ; preds = %189, %163
  store i32 0, i32* %7, align 4
  br label %191

191:                                              ; preds = %190, %130, %77, %70, %53, %44
  %192 = load i32, i32* %7, align 4
  ret i32 %192
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @uv__stream_fd(%struct.TYPE_12__*) #1

declare dso_local i64 @uv__handle_fd(i32*) #1

declare dso_local i32 @uv__req_init(i32, %struct.TYPE_11__*, i32) #1

declare dso_local i32 @QUEUE_INIT(i32*) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32* @uv__malloc(i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i64 @uv__count_bufs(i32*, i32) #1

declare dso_local i32 @QUEUE_INSERT_TAIL(i32*, i32*) #1

declare dso_local i32 @uv__write(%struct.TYPE_12__*) #1

declare dso_local i32 @uv__io_start(i32, i32*, i32) #1

declare dso_local i32 @uv__stream_osx_interrupt_select(%struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
