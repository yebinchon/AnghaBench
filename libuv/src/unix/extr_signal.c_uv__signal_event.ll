; ModuleID = '/home/carl/AnghaBench/libuv/src/unix/extr_signal.c_uv__signal_event.c'
source_filename = "/home/carl/AnghaBench/libuv/src/unix/extr_signal.c_uv__signal_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32* }
%struct.TYPE_10__ = type { i64, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i64, i32, i64, i64, i32 (%struct.TYPE_8__*, i64)* }

@errno = common dso_local global i64 0, align 8
@EINTR = common dso_local global i64 0, align 8
@EAGAIN = common dso_local global i64 0, align 8
@EWOULDBLOCK = common dso_local global i64 0, align 8
@UV_HANDLE_CLOSING = common dso_local global i32 0, align 4
@UV_SIGNAL_ONE_SHOT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_9__*, i32*, i32)* @uv__signal_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uv__signal_event(%struct.TYPE_9__* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = alloca [512 x i8], align 16
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  store i64 0, i64* %10, align 8
  store i64 0, i64* %11, align 8
  br label %14

14:                                               ; preds = %160, %3
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 0
  %19 = load i32, i32* %18, align 4
  %20 = getelementptr inbounds [512 x i8], [512 x i8]* %9, i64 0, i64 0
  %21 = load i64, i64* %10, align 8
  %22 = getelementptr inbounds i8, i8* %20, i64 %21
  %23 = load i64, i64* %10, align 8
  %24 = sub i64 512, %23
  %25 = trunc i64 %24 to i32
  %26 = call i32 @read(i32 %19, i8* %22, i32 %25)
  store i32 %26, i32* %13, align 4
  %27 = load i32, i32* %13, align 4
  %28 = icmp eq i32 %27, -1
  br i1 %28, label %29, label %34

29:                                               ; preds = %14
  %30 = load i64, i64* @errno, align 8
  %31 = load i64, i64* @EINTR, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %29
  br label %160

34:                                               ; preds = %29, %14
  %35 = load i32, i32* %13, align 4
  %36 = icmp eq i32 %35, -1
  br i1 %36, label %37, label %50

37:                                               ; preds = %34
  %38 = load i64, i64* @errno, align 8
  %39 = load i64, i64* @EAGAIN, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %45, label %41

41:                                               ; preds = %37
  %42 = load i64, i64* @errno, align 8
  %43 = load i64, i64* @EWOULDBLOCK, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %50

45:                                               ; preds = %41, %37
  %46 = load i64, i64* %10, align 8
  %47 = icmp ugt i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %45
  br label %160

49:                                               ; preds = %45
  br label %163

50:                                               ; preds = %41, %34
  %51 = load i32, i32* %13, align 4
  %52 = icmp eq i32 %51, -1
  br i1 %52, label %53, label %55

53:                                               ; preds = %50
  %54 = call i32 (...) @abort() #3
  unreachable

55:                                               ; preds = %50
  %56 = load i32, i32* %13, align 4
  %57 = sext i32 %56 to i64
  %58 = load i64, i64* %10, align 8
  %59 = add i64 %58, %57
  store i64 %59, i64* %10, align 8
  %60 = load i64, i64* %10, align 8
  %61 = udiv i64 %60, 16
  %62 = mul i64 %61, 16
  store i64 %62, i64* %11, align 8
  store i64 0, i64* %12, align 8
  br label %63

63:                                               ; preds = %143, %55
  %64 = load i64, i64* %12, align 8
  %65 = load i64, i64* %11, align 8
  %66 = icmp ult i64 %64, %65
  br i1 %66, label %67, label %146

67:                                               ; preds = %63
  %68 = getelementptr inbounds [512 x i8], [512 x i8]* %9, i64 0, i64 0
  %69 = load i64, i64* %12, align 8
  %70 = getelementptr inbounds i8, i8* %68, i64 %69
  %71 = bitcast i8* %70 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %71, %struct.TYPE_10__** %7, align 8
  %72 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %72, i32 0, i32 1
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %73, align 8
  store %struct.TYPE_8__* %74, %struct.TYPE_8__** %8, align 8
  %75 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = icmp eq i64 %77, %80
  br i1 %81, label %82, label %100

82:                                               ; preds = %67
  %83 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 8
  %86 = load i32, i32* @UV_HANDLE_CLOSING, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  %89 = xor i1 %88, true
  %90 = zext i1 %89 to i32
  %91 = call i32 @assert(i32 %90)
  %92 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 4
  %94 = load i32 (%struct.TYPE_8__*, i64)*, i32 (%struct.TYPE_8__*, i64)** %93, align 8
  %95 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %96 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = call i32 %94(%struct.TYPE_8__* %95, i64 %98)
  br label %100

100:                                              ; preds = %82, %67
  %101 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %102 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %101, i32 0, i32 2
  %103 = load i64, i64* %102, align 8
  %104 = add nsw i64 %103, 1
  store i64 %104, i64* %102, align 8
  %105 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %106 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 8
  %108 = load i32, i32* @UV_SIGNAL_ONE_SHOT, align 4
  %109 = and i32 %107, %108
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %114

111:                                              ; preds = %100
  %112 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %113 = call i32 @uv__signal_stop(%struct.TYPE_8__* %112)
  br label %114

114:                                              ; preds = %111, %100
  %115 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %116 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %115, i32 0, i32 3
  %117 = load i64, i64* %116, align 8
  %118 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %119 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %118, i32 0, i32 2
  %120 = load i64, i64* %119, align 8
  %121 = icmp eq i64 %117, %120
  br i1 %121, label %122, label %142

122:                                              ; preds = %114
  %123 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %124 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = icmp eq i64 %125, 0
  br i1 %126, label %127, label %130

127:                                              ; preds = %122
  %128 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %129 = call i32 @uv__handle_stop(%struct.TYPE_8__* %128)
  br label %130

130:                                              ; preds = %127, %122
  %131 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %132 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 8
  %134 = load i32, i32* @UV_HANDLE_CLOSING, align 4
  %135 = and i32 %133, %134
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %141

137:                                              ; preds = %130
  %138 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %139 = bitcast %struct.TYPE_8__* %138 to i32*
  %140 = call i32 @uv__make_close_pending(i32* %139)
  br label %141

141:                                              ; preds = %137, %130
  br label %142

142:                                              ; preds = %141, %114
  br label %143

143:                                              ; preds = %142
  %144 = load i64, i64* %12, align 8
  %145 = add i64 %144, 16
  store i64 %145, i64* %12, align 8
  br label %63

146:                                              ; preds = %63
  %147 = load i64, i64* %11, align 8
  %148 = load i64, i64* %10, align 8
  %149 = sub i64 %148, %147
  store i64 %149, i64* %10, align 8
  %150 = load i64, i64* %10, align 8
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %159

152:                                              ; preds = %146
  %153 = getelementptr inbounds [512 x i8], [512 x i8]* %9, i64 0, i64 0
  %154 = getelementptr inbounds [512 x i8], [512 x i8]* %9, i64 0, i64 0
  %155 = load i64, i64* %11, align 8
  %156 = getelementptr inbounds i8, i8* %154, i64 %155
  %157 = load i64, i64* %10, align 8
  %158 = call i32 @memmove(i8* %153, i8* %156, i64 %157)
  br label %160

159:                                              ; preds = %146
  br label %160

160:                                              ; preds = %159, %152, %48, %33
  %161 = load i64, i64* %11, align 8
  %162 = icmp eq i64 %161, 512
  br i1 %162, label %14, label %163

163:                                              ; preds = %49, %160
  ret void
}

declare dso_local i32 @read(i32, i8*, i32) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @uv__signal_stop(%struct.TYPE_8__*) #1

declare dso_local i32 @uv__handle_stop(%struct.TYPE_8__*) #1

declare dso_local i32 @uv__make_close_pending(i32*) #1

declare dso_local i32 @memmove(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
