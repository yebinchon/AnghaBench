; ModuleID = '/home/carl/AnghaBench/libuv/test/extr_test-queue-foreach-delete.c_init_and_start_fs_events.c'
source_filename = "/home/carl/AnghaBench/libuv/test/extr_test-queue-foreach-delete.c_init_and_start_fs_events.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@fs_event = common dso_local global i32* null, align 8
@fs_event_cbs = common dso_local global i64* null, align 8
@watched_dir = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @init_and_start_fs_events to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_and_start_fs_events(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  store i64 0, i64* %3, align 8
  br label %5

5:                                                ; preds = %34, %1
  %6 = load i64, i64* %3, align 8
  %7 = load i32*, i32** @fs_event, align 8
  %8 = call i64 @ARRAY_SIZE(i32* %7)
  %9 = icmp ult i64 %6, %8
  br i1 %9, label %10, label %37

10:                                               ; preds = %5
  %11 = load i32*, i32** %2, align 8
  %12 = load i32*, i32** @fs_event, align 8
  %13 = load i64, i64* %3, align 8
  %14 = getelementptr inbounds i32, i32* %12, i64 %13
  %15 = call i32 @uv_fs_event_init(i32* %11, i32* %14)
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* %4, align 4
  %17 = icmp eq i32 %16, 0
  %18 = zext i1 %17 to i32
  %19 = call i32 @ASSERT(i32 %18)
  %20 = load i32*, i32** @fs_event, align 8
  %21 = load i64, i64* %3, align 8
  %22 = getelementptr inbounds i32, i32* %20, i64 %21
  %23 = load i64*, i64** @fs_event_cbs, align 8
  %24 = load i64, i64* %3, align 8
  %25 = getelementptr inbounds i64, i64* %23, i64 %24
  %26 = load i64, i64* %25, align 8
  %27 = trunc i64 %26 to i32
  %28 = load i32, i32* @watched_dir, align 4
  %29 = call i32 @uv_fs_event_start(i32* %22, i32 %27, i32 %28, i32 0)
  store i32 %29, i32* %4, align 4
  %30 = load i32, i32* %4, align 4
  %31 = icmp eq i32 %30, 0
  %32 = zext i1 %31 to i32
  %33 = call i32 @ASSERT(i32 %32)
  br label %34

34:                                               ; preds = %10
  %35 = load i64, i64* %3, align 8
  %36 = add i64 %35, 1
  store i64 %36, i64* %3, align 8
  br label %5

37:                                               ; preds = %5
  ret void
}

declare dso_local i64 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @uv_fs_event_init(i32*, i32*) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @uv_fs_event_start(i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
