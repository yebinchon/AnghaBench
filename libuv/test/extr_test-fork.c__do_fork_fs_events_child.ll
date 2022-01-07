; ModuleID = '/home/carl/AnghaBench/libuv/test/extr_test-fork.c__do_fork_fs_events_child.c'
source_filename = "/home/carl/AnghaBench/libuv/test/extr_test-fork.c__do_fork_fs_events_child.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [15 x i8] c"Running child\0A\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"Child first watch\0A\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"Child second watch default loop\0A\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"Exiting child \0A\00", align 1
@FS_TEST_FILE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @_do_fork_fs_events_child to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_do_fork_fs_events_child(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = call i32* (...) @uv_default_loop()
  %6 = load i32, i32* %2, align 4
  %7 = call i32 @assert_watch_file_current_dir(i32* %5, i32 %6)
  %8 = call i32 (...) @fork()
  store i32 %8, i32* %3, align 4
  %9 = load i32, i32* %3, align 4
  %10 = icmp ne i32 %9, -1
  %11 = zext i1 %10 to i32
  %12 = call i32 @ASSERT(i32 %11)
  %13 = load i32, i32* %3, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %1
  %16 = load i32, i32* %3, align 4
  %17 = call i32 @assert_wait_child(i32 %16)
  br label %45

18:                                               ; preds = %1
  %19 = call i32 @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %20 = call i32 @uv_loop_init(i32* %4)
  %21 = call i32 @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %22 = load i32, i32* %2, align 4
  %23 = call i32 @assert_watch_file_current_dir(i32* %4, i32 %22)
  %24 = call i64 @uv_loop_close(i32* %4)
  %25 = icmp eq i64 0, %24
  %26 = zext i1 %25 to i32
  %27 = call i32 @ASSERT(i32 %26)
  %28 = call i32 @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  %29 = call i32* (...) @uv_default_loop()
  %30 = call i64 @uv_loop_fork(i32* %29)
  %31 = icmp eq i64 0, %30
  %32 = zext i1 %31 to i32
  %33 = call i32 @ASSERT(i32 %32)
  %34 = call i32* (...) @uv_default_loop()
  %35 = call i32 @uv_update_time(i32* %34)
  %36 = call i32* (...) @uv_default_loop()
  %37 = load i32, i32* %2, align 4
  %38 = call i32 @assert_watch_file_current_dir(i32* %36, i32 %37)
  %39 = call i32* (...) @uv_default_loop()
  %40 = call i64 @uv_loop_close(i32* %39)
  %41 = icmp eq i64 0, %40
  %42 = zext i1 %41 to i32
  %43 = call i32 @ASSERT(i32 %42)
  %44 = call i32 @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  br label %45

45:                                               ; preds = %18, %15
  %46 = call i32 (...) @MAKE_VALGRIND_HAPPY()
  ret i32 0
}

declare dso_local i32 @assert_watch_file_current_dir(i32*, i32) #1

declare dso_local i32* @uv_default_loop(...) #1

declare dso_local i32 @fork(...) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @assert_wait_child(i32) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @uv_loop_init(i32*) #1

declare dso_local i64 @uv_loop_close(i32*) #1

declare dso_local i64 @uv_loop_fork(i32*) #1

declare dso_local i32 @uv_update_time(i32*) #1

declare dso_local i32 @MAKE_VALGRIND_HAPPY(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
