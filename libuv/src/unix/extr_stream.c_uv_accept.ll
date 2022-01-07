; ModuleID = '/home/carl/AnghaBench/libuv/src/unix/extr_stream.c_uv_accept.c'
source_filename = "/home/carl/AnghaBench/libuv/src/unix/extr_stream.c_uv_accept.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i32, i32, i32, %struct.TYPE_8__*, i32 }
%struct.TYPE_8__ = type { i32*, i64 }

@UV_EAGAIN = common dso_local global i32 0, align 4
@UV_HANDLE_READABLE = common dso_local global i32 0, align 4
@UV_HANDLE_WRITABLE = common dso_local global i32 0, align 4
@UV_EINVAL = common dso_local global i32 0, align 4
@UV_HANDLE_BOUND = common dso_local global i32 0, align 4
@POLLIN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @uv_accept(%struct.TYPE_7__* %0, %struct.TYPE_7__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_8__*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %5, align 8
  %8 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp eq i64 %10, %13
  %15 = zext i1 %14 to i32
  %16 = call i32 @assert(i32 %15)
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = icmp eq i32 %19, -1
  br i1 %20, label %21, label %23

21:                                               ; preds = %2
  %22 = load i32, i32* @UV_EAGAIN, align 4
  store i32 %22, i32* %3, align 4
  br label %130

23:                                               ; preds = %2
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  switch i32 %26, label %59 [
    i32 130, label %27
    i32 129, label %27
    i32 128, label %44
  ]

27:                                               ; preds = %23, %23
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @UV_HANDLE_READABLE, align 4
  %33 = load i32, i32* @UV_HANDLE_WRITABLE, align 4
  %34 = or i32 %32, %33
  %35 = call i32 @uv__stream_open(%struct.TYPE_7__* %28, i32 %31, i32 %34)
  store i32 %35, i32* %6, align 4
  %36 = load i32, i32* %6, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %27
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @uv__close(i32 %41)
  br label %67

43:                                               ; preds = %27
  br label %61

44:                                               ; preds = %23
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %46 = bitcast %struct.TYPE_7__* %45 to i32*
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @uv_udp_open(i32* %46, i32 %49)
  store i32 %50, i32* %6, align 4
  %51 = load i32, i32* %6, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %44
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @uv__close(i32 %56)
  br label %67

58:                                               ; preds = %44
  br label %61

59:                                               ; preds = %23
  %60 = load i32, i32* @UV_EINVAL, align 4
  store i32 %60, i32* %3, align 4
  br label %130

61:                                               ; preds = %58, %43
  %62 = load i32, i32* @UV_HANDLE_BOUND, align 4
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 5
  %65 = load i32, i32* %64, align 8
  %66 = or i32 %65, %62
  store i32 %66, i32* %64, align 8
  br label %67

67:                                               ; preds = %61, %53, %38
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 4
  %70 = load %struct.TYPE_8__*, %struct.TYPE_8__** %69, align 8
  %71 = icmp ne %struct.TYPE_8__* %70, null
  br i1 %71, label %72, label %114

72:                                               ; preds = %67
  %73 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 4
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** %74, align 8
  store %struct.TYPE_8__* %75, %struct.TYPE_8__** %7, align 8
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 0
  %78 = load i32*, i32** %77, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 0
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 1
  store i32 %80, i32* %82, align 8
  %83 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = icmp sgt i64 %85, 0
  %87 = zext i1 %86 to i32
  %88 = call i32 @assert(i32 %87)
  %89 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = add nsw i64 %91, -1
  store i64 %92, i64* %90, align 8
  %93 = icmp eq i64 %92, 0
  br i1 %93, label %94, label %99

94:                                               ; preds = %72
  %95 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %96 = call i32 @uv__free(%struct.TYPE_8__* %95)
  %97 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %98 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %97, i32 0, i32 4
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %98, align 8
  br label %113

99:                                               ; preds = %72
  %100 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i32 0, i32 0
  %102 = load i32*, i32** %101, align 8
  %103 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %103, i32 0, i32 0
  %105 = load i32*, i32** %104, align 8
  %106 = getelementptr inbounds i32, i32* %105, i64 1
  %107 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %108 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %107, i32 0, i32 1
  %109 = load i64, i64* %108, align 8
  %110 = mul i64 %109, 4
  %111 = trunc i64 %110 to i32
  %112 = call i32 @memmove(i32* %102, i32* %106, i32 %111)
  br label %113

113:                                              ; preds = %99, %94
  br label %128

114:                                              ; preds = %67
  %115 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %116 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %115, i32 0, i32 1
  store i32 -1, i32* %116, align 8
  %117 = load i32, i32* %6, align 4
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %119, label %127

119:                                              ; preds = %114
  %120 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %121 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %124 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %123, i32 0, i32 3
  %125 = load i32, i32* @POLLIN, align 4
  %126 = call i32 @uv__io_start(i64 %122, i32* %124, i32 %125)
  br label %127

127:                                              ; preds = %119, %114
  br label %128

128:                                              ; preds = %127, %113
  %129 = load i32, i32* %6, align 4
  store i32 %129, i32* %3, align 4
  br label %130

130:                                              ; preds = %128, %59, %21
  %131 = load i32, i32* %3, align 4
  ret i32 %131
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @uv__stream_open(%struct.TYPE_7__*, i32, i32) #1

declare dso_local i32 @uv__close(i32) #1

declare dso_local i32 @uv_udp_open(i32*, i32) #1

declare dso_local i32 @uv__free(%struct.TYPE_8__*) #1

declare dso_local i32 @memmove(i32*, i32*, i32) #1

declare dso_local i32 @uv__io_start(i64, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
