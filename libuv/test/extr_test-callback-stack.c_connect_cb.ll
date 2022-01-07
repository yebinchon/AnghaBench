; ModuleID = '/home/carl/AnghaBench/libuv/test/extr_test-callback-stack.c_connect_cb.c'
source_filename = "/home/carl/AnghaBench/libuv/test/extr_test-callback-stack.c_connect_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64 }
%struct.TYPE_6__ = type { i8*, i32 }

@.str = private unnamed_addr constant [45 x i8] c"Connected. Write some data to echo server...\00", align 1
@nested = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [45 x i8] c"connect_cb must be called from a fresh stack\00", align 1
@MESSAGE = common dso_local global i32 0, align 4
@write_req = common dso_local global i32 0, align 4
@write_cb = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [16 x i8] c"uv_write failed\00", align 1
@connect_cb_called = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*, i32)* @connect_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @connect_cb(%struct.TYPE_5__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_6__, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = call i32 @puts(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  %7 = load i32, i32* %4, align 4
  %8 = icmp eq i32 %7, 0
  %9 = zext i1 %8 to i32
  %10 = call i32 @ASSERT(i32 %9)
  %11 = load i64, i64* @nested, align 8
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  br label %14

14:                                               ; preds = %13, %2
  %15 = phi i1 [ false, %2 ], [ true, %13 ]
  %16 = zext i1 %15 to i32
  %17 = call i32 @ASSERT(i32 %16)
  %18 = load i64, i64* @nested, align 8
  %19 = add nsw i64 %18, 1
  store i64 %19, i64* @nested, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 0
  store i8* bitcast (i32* @MESSAGE to i8*), i8** %20, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 1
  store i32 4, i32* %21, align 8
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = inttoptr i64 %24 to i32*
  %26 = load i32, i32* @write_cb, align 4
  %27 = call i64 @uv_write(i32* @write_req, i32* %25, %struct.TYPE_6__* %5, i32 1, i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %14
  %30 = call i32 @FATAL(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  br label %31

31:                                               ; preds = %29, %14
  %32 = load i64, i64* @nested, align 8
  %33 = add nsw i64 %32, -1
  store i64 %33, i64* @nested, align 8
  %34 = load i32, i32* @connect_cb_called, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* @connect_cb_called, align 4
  ret void
}

declare dso_local i32 @puts(i8*) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i64 @uv_write(i32*, i32*, %struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @FATAL(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
