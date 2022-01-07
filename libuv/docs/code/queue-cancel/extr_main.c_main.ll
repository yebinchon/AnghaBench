; ModuleID = '/home/carl/AnghaBench/libuv/docs/code/queue-cancel/extr_main.c_main.c'
source_filename = "/home/carl/AnghaBench/libuv/docs/code/queue-cancel/extr_main.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8* }

@loop = common dso_local global i32 0, align 4
@FIB_UNTIL = common dso_local global i32 0, align 4
@fib_reqs = common dso_local global %struct.TYPE_3__* null, align 8
@fib = common dso_local global i32 0, align 4
@after_fib = common dso_local global i32 0, align 4
@signal_handler = common dso_local global i32 0, align 4
@SIGINT = common dso_local global i32 0, align 4
@UV_RUN_DEFAULT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %6 = call i32 (...) @uv_default_loop()
  store i32 %6, i32* @loop, align 4
  %7 = load i32, i32* @FIB_UNTIL, align 4
  %8 = zext i32 %7 to i64
  %9 = call i8* @llvm.stacksave()
  store i8* %9, i8** %2, align 8
  %10 = alloca i32, i64 %8, align 16
  store i64 %8, i64* %3, align 8
  store i32 0, i32* %4, align 4
  br label %11

11:                                               ; preds = %37, %0
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* @FIB_UNTIL, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %40

15:                                               ; preds = %11
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* %4, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i32, i32* %10, i64 %18
  store i32 %16, i32* %19, align 4
  %20 = load i32, i32* %4, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32, i32* %10, i64 %21
  %23 = bitcast i32* %22 to i8*
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** @fib_reqs, align 8
  %25 = load i32, i32* %4, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  store i8* %23, i8** %28, align 8
  %29 = load i32, i32* @loop, align 4
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** @fib_reqs, align 8
  %31 = load i32, i32* %4, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i64 %32
  %34 = load i32, i32* @fib, align 4
  %35 = load i32, i32* @after_fib, align 4
  %36 = call i32 @uv_queue_work(i32 %29, %struct.TYPE_3__* %33, i32 %34, i32 %35)
  br label %37

37:                                               ; preds = %15
  %38 = load i32, i32* %4, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %4, align 4
  br label %11

40:                                               ; preds = %11
  %41 = load i32, i32* @loop, align 4
  %42 = call i32 @uv_signal_init(i32 %41, i32* %5)
  %43 = load i32, i32* @signal_handler, align 4
  %44 = load i32, i32* @SIGINT, align 4
  %45 = call i32 @uv_signal_start(i32* %5, i32 %43, i32 %44)
  %46 = load i32, i32* @loop, align 4
  %47 = load i32, i32* @UV_RUN_DEFAULT, align 4
  %48 = call i32 @uv_run(i32 %46, i32 %47)
  store i32 %48, i32* %1, align 4
  %49 = load i8*, i8** %2, align 8
  call void @llvm.stackrestore(i8* %49)
  %50 = load i32, i32* %1, align 4
  ret i32 %50
}

declare dso_local i32 @uv_default_loop(...) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @uv_queue_work(i32, %struct.TYPE_3__*, i32, i32) #1

declare dso_local i32 @uv_signal_init(i32, i32*) #1

declare dso_local i32 @uv_signal_start(i32*, i32, i32) #1

declare dso_local i32 @uv_run(i32, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
