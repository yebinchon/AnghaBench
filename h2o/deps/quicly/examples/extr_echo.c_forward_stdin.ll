; ModuleID = '/home/carl/AnghaBench/h2o/deps/quicly/examples/extr_echo.c_forward_stdin.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/quicly/examples/extr_echo.c_forward_stdin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

@errno = common dso_local global i64 0, align 8
@EINTR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @forward_stdin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @forward_stdin(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca [4096 x i8], align 16
  %6 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  %7 = load i32*, i32** %3, align 8
  %8 = call %struct.TYPE_5__* @quicly_get_stream(i32* %7, i32 0)
  store %struct.TYPE_5__* %8, %struct.TYPE_5__** %4, align 8
  %9 = icmp eq %struct.TYPE_5__* %8, null
  br i1 %9, label %15, label %10

10:                                               ; preds = %1
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = call i32 @quicly_sendstate_is_open(i32* %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %10, %1
  store i32 0, i32* %2, align 4
  br label %39

16:                                               ; preds = %10
  br label %17

17:                                               ; preds = %27, %16
  %18 = getelementptr inbounds [4096 x i8], [4096 x i8]* %5, i64 0, i64 0
  %19 = call i64 @read(i32 0, i8* %18, i32 4096)
  store i64 %19, i64* %6, align 8
  %20 = icmp eq i64 %19, -1
  br i1 %20, label %21, label %25

21:                                               ; preds = %17
  %22 = load i64, i64* @errno, align 8
  %23 = load i64, i64* @EINTR, align 8
  %24 = icmp eq i64 %22, %23
  br label %25

25:                                               ; preds = %21, %17
  %26 = phi i1 [ false, %17 ], [ %24, %21 ]
  br i1 %26, label %27, label %28

27:                                               ; preds = %25
  br label %17

28:                                               ; preds = %25
  %29 = load i64, i64* %6, align 8
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %28
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %33 = call i32 @quicly_streambuf_egress_shutdown(%struct.TYPE_5__* %32)
  store i32 0, i32* %2, align 4
  br label %39

34:                                               ; preds = %28
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %36 = getelementptr inbounds [4096 x i8], [4096 x i8]* %5, i64 0, i64 0
  %37 = load i64, i64* %6, align 8
  %38 = call i32 @quicly_streambuf_egress_write(%struct.TYPE_5__* %35, i8* %36, i64 %37)
  store i32 1, i32* %2, align 4
  br label %39

39:                                               ; preds = %34, %31, %15
  %40 = load i32, i32* %2, align 4
  ret i32 %40
}

declare dso_local %struct.TYPE_5__* @quicly_get_stream(i32*, i32) #1

declare dso_local i32 @quicly_sendstate_is_open(i32*) #1

declare dso_local i64 @read(i32, i8*, i32) #1

declare dso_local i32 @quicly_streambuf_egress_shutdown(%struct.TYPE_5__*) #1

declare dso_local i32 @quicly_streambuf_egress_write(%struct.TYPE_5__*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
