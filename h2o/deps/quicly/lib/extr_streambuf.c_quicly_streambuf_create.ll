; ModuleID = '/home/carl/AnghaBench/h2o/deps/quicly/lib/extr_streambuf.c_quicly_streambuf_create.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/quicly/lib/extr_streambuf.c_quicly_streambuf_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i32 }

@PTLS_ERROR_NO_MEMORY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @quicly_streambuf_create(%struct.TYPE_6__* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load i64, i64* %5, align 8
  %8 = icmp uge i64 %7, 8
  %9 = zext i1 %8 to i32
  %10 = call i32 @assert(i32 %9)
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %14 = icmp eq %struct.TYPE_5__* %13, null
  %15 = zext i1 %14 to i32
  %16 = call i32 @assert(i32 %15)
  %17 = load i64, i64* %5, align 8
  %18 = call %struct.TYPE_5__* @malloc(i64 %17)
  store %struct.TYPE_5__* %18, %struct.TYPE_5__** %6, align 8
  %19 = icmp eq %struct.TYPE_5__* %18, null
  br i1 %19, label %20, label %22

20:                                               ; preds = %2
  %21 = load i32, i32* @PTLS_ERROR_NO_MEMORY, align 4
  store i32 %21, i32* %3, align 4
  br label %42

22:                                               ; preds = %2
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 1
  %25 = call i32 @quicly_sendbuf_init(i32* %24)
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = call i32 @ptls_buffer_init(i32* %27, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i32 0)
  %29 = load i64, i64* %5, align 8
  %30 = icmp ne i64 %29, 8
  br i1 %30, label %31, label %38

31:                                               ; preds = %22
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %33 = bitcast %struct.TYPE_5__* %32 to i8*
  %34 = getelementptr inbounds i8, i8* %33, i64 8
  %35 = load i64, i64* %5, align 8
  %36 = sub i64 %35, 8
  %37 = call i32 @memset(i8* %34, i32 0, i64 %36)
  br label %38

38:                                               ; preds = %31, %22
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  store %struct.TYPE_5__* %39, %struct.TYPE_5__** %41, align 8
  store i32 0, i32* %3, align 4
  br label %42

42:                                               ; preds = %38, %20
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.TYPE_5__* @malloc(i64) #1

declare dso_local i32 @quicly_sendbuf_init(i32*) #1

declare dso_local i32 @ptls_buffer_init(i32*, i8*, i32) #1

declare dso_local i32 @memset(i8*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
