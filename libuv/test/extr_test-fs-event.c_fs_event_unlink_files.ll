; ModuleID = '/home/carl/AnghaBench/libuv/test/extr_test-fs-event.c_fs_event_unlink_files.c'
source_filename = "/home/carl/AnghaBench/libuv/test/extr_test-fs-event.c_fs_event_unlink_files.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@fs_event_removed = common dso_local global i32 0, align 4
@fs_event_file_count = common dso_local global i32 0, align 4
@timer = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @fs_event_unlink_files to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fs_event_unlink_files(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %5 = load i32*, i32** %2, align 8
  %6 = icmp eq i32* %5, null
  br i1 %6, label %7, label %27

7:                                                ; preds = %1
  store i32 0, i32* %4, align 4
  br label %8

8:                                                ; preds = %23, %7
  %9 = load i32, i32* %4, align 4
  %10 = icmp slt i32 %9, 16
  br i1 %10, label %11, label %26

11:                                               ; preds = %8
  %12 = load i32, i32* %4, align 4
  %13 = call i32 @fs_event_get_filename(i32 %12)
  %14 = call i32 @remove(i32 %13)
  store i32 %14, i32* %3, align 4
  %15 = load i32*, i32** %2, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %17, label %22

17:                                               ; preds = %11
  %18 = load i32, i32* %3, align 4
  %19 = icmp eq i32 %18, 0
  %20 = zext i1 %19 to i32
  %21 = call i32 @ASSERT(i32 %20)
  br label %22

22:                                               ; preds = %17, %11
  br label %23

23:                                               ; preds = %22
  %24 = load i32, i32* %4, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %4, align 4
  br label %8

26:                                               ; preds = %8
  br label %49

27:                                               ; preds = %1
  %28 = load i32, i32* @fs_event_removed, align 4
  %29 = load i32, i32* @fs_event_file_count, align 4
  %30 = icmp slt i32 %28, %29
  %31 = zext i1 %30 to i32
  %32 = call i32 @ASSERT(i32 %31)
  %33 = load i32, i32* @fs_event_removed, align 4
  %34 = call i32 @fs_event_get_filename(i32 %33)
  %35 = call i32 @remove(i32 %34)
  %36 = icmp eq i32 0, %35
  %37 = zext i1 %36 to i32
  %38 = call i32 @ASSERT(i32 %37)
  %39 = load i32, i32* @fs_event_removed, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* @fs_event_removed, align 4
  %41 = load i32, i32* @fs_event_file_count, align 4
  %42 = icmp slt i32 %40, %41
  br i1 %42, label %43, label %48

43:                                               ; preds = %27
  %44 = call i64 @uv_timer_start(i32* @timer, void (i32*)* @fs_event_unlink_files, i32 1, i32 0)
  %45 = icmp eq i64 0, %44
  %46 = zext i1 %45 to i32
  %47 = call i32 @ASSERT(i32 %46)
  br label %48

48:                                               ; preds = %43, %27
  br label %49

49:                                               ; preds = %48, %26
  ret void
}

declare dso_local i32 @remove(i32) #1

declare dso_local i32 @fs_event_get_filename(i32) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i64 @uv_timer_start(i32*, void (i32*)*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
