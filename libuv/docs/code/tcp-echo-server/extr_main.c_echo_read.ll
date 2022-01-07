; ModuleID = '/home/carl/AnghaBench/libuv/docs/code/tcp-echo-server/extr_main.c_echo_read.c'
source_filename = "/home/carl/AnghaBench/libuv/docs/code/tcp-echo-server/extr_main.c_echo_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@echo_write = common dso_local global i32 0, align 4
@UV_EOF = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"Read error %s\0A\00", align 1
@on_close = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @echo_read(i32* %0, i64 %1, %struct.TYPE_5__* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca %struct.TYPE_4__*, align 8
  store i32* %0, i32** %4, align 8
  store i64 %1, i64* %5, align 8
  store %struct.TYPE_5__* %2, %struct.TYPE_5__** %6, align 8
  %8 = load i64, i64* %5, align 8
  %9 = icmp sgt i64 %8, 0
  br i1 %9, label %10, label %27

10:                                               ; preds = %3
  %11 = call i64 @malloc(i32 4)
  %12 = inttoptr i64 %11 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %12, %struct.TYPE_4__** %7, align 8
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i64, i64* %5, align 8
  %17 = call i32 @uv_buf_init(i32 %15, i64 %16)
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 4
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %21 = bitcast %struct.TYPE_4__* %20 to i32*
  %22 = load i32*, i32** %4, align 8
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i32, i32* @echo_write, align 4
  %26 = call i32 @uv_write(i32* %21, i32* %22, i32* %24, i32 1, i32 %25)
  br label %48

27:                                               ; preds = %3
  %28 = load i64, i64* %5, align 8
  %29 = icmp slt i64 %28, 0
  br i1 %29, label %30, label %43

30:                                               ; preds = %27
  %31 = load i64, i64* %5, align 8
  %32 = load i64, i64* @UV_EOF, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %39

34:                                               ; preds = %30
  %35 = load i32, i32* @stderr, align 4
  %36 = load i64, i64* %5, align 8
  %37 = call i8* @uv_err_name(i64 %36)
  %38 = call i32 @fprintf(i32 %35, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8* %37)
  br label %39

39:                                               ; preds = %34, %30
  %40 = load i32*, i32** %4, align 8
  %41 = load i32, i32* @on_close, align 4
  %42 = call i32 @uv_close(i32* %40, i32 %41)
  br label %43

43:                                               ; preds = %39, %27
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @free(i32 %46)
  br label %48

48:                                               ; preds = %43, %10
  ret void
}

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @uv_buf_init(i32, i64) #1

declare dso_local i32 @uv_write(i32*, i32*, i32*, i32, i32) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local i8* @uv_err_name(i64) #1

declare dso_local i32 @uv_close(i32*, i32) #1

declare dso_local i32 @free(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
