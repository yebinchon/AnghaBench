; ModuleID = '/home/carl/AnghaBench/libuv/test/extr_test-pipe-set-non-blocking.c_thread_main.c'
source_filename = "/home/carl/AnghaBench/libuv/test/extr_test-pipe-set-non-blocking.c_thread_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread_ctx = type { i32, i32 }

@errno = common dso_local global i64 0, align 8
@EINTR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @thread_main to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @thread_main(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.thread_ctx*, align 8
  %4 = alloca [4096 x i8], align 16
  %5 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = bitcast i8* %6 to %struct.thread_ctx*
  store %struct.thread_ctx* %7, %struct.thread_ctx** %3, align 8
  %8 = load %struct.thread_ctx*, %struct.thread_ctx** %3, align 8
  %9 = getelementptr inbounds %struct.thread_ctx, %struct.thread_ctx* %8, i32 0, i32 1
  %10 = call i32 @uv_barrier_wait(i32* %9)
  br label %11

11:                                               ; preds = %29, %1
  %12 = load %struct.thread_ctx*, %struct.thread_ctx** %3, align 8
  %13 = getelementptr inbounds %struct.thread_ctx, %struct.thread_ctx* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = getelementptr inbounds [4096 x i8], [4096 x i8]* %4, i64 0, i64 0
  %16 = call i32 @read(i32 %14, i8* %15, i32 4096)
  store i32 %16, i32* %5, align 4
  br label %17

17:                                               ; preds = %11
  %18 = load i32, i32* %5, align 4
  %19 = icmp sgt i32 %18, 0
  br i1 %19, label %29, label %20

20:                                               ; preds = %17
  %21 = load i32, i32* %5, align 4
  %22 = icmp eq i32 %21, -1
  br i1 %22, label %23, label %27

23:                                               ; preds = %20
  %24 = load i64, i64* @errno, align 8
  %25 = load i64, i64* @EINTR, align 8
  %26 = icmp eq i64 %24, %25
  br label %27

27:                                               ; preds = %23, %20
  %28 = phi i1 [ false, %20 ], [ %26, %23 ]
  br label %29

29:                                               ; preds = %27, %17
  %30 = phi i1 [ true, %17 ], [ %28, %27 ]
  br i1 %30, label %11, label %31

31:                                               ; preds = %29
  %32 = load i32, i32* %5, align 4
  %33 = icmp eq i32 %32, 0
  %34 = zext i1 %33 to i32
  %35 = call i32 @ASSERT(i32 %34)
  ret void
}

declare dso_local i32 @uv_barrier_wait(i32*) #1

declare dso_local i32 @read(i32, i8*, i32) #1

declare dso_local i32 @ASSERT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
