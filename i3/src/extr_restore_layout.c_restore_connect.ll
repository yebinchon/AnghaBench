; ModuleID = '/home/carl/AnghaBench/i3/src/extr_restore_layout.c_restore_connect.c'
source_filename = "/home/carl/AnghaBench/i3/src/extr_restore_layout.c_restore_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@restore_conn = common dso_local global i32* null, align 8
@main_loop = common dso_local global i32 0, align 4
@xcb_watcher = common dso_local global i32* null, align 8
@xcb_prepare = common dso_local global i32* null, align 8
@state_head = common dso_local global i32 0, align 4
@EXIT_FAILURE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"Cannot open display\00", align 1
@restore_xcb_got_event = common dso_local global i32 0, align 4
@EV_READ = common dso_local global i32 0, align 4
@restore_xcb_prepare_cb = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @restore_connect() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32, align 4
  %3 = load i32*, i32** @restore_conn, align 8
  %4 = icmp ne i32* %3, null
  br i1 %4, label %5, label %30

5:                                                ; preds = %0
  %6 = load i32, i32* @main_loop, align 4
  %7 = load i32*, i32** @xcb_watcher, align 8
  %8 = call i32 @ev_io_stop(i32 %6, i32* %7)
  %9 = load i32, i32* @main_loop, align 4
  %10 = load i32*, i32** @xcb_prepare, align 8
  %11 = call i32 @ev_prepare_stop(i32 %9, i32* %10)
  br label %12

12:                                               ; preds = %16, %5
  %13 = call i32 @TAILQ_EMPTY(i32* @state_head)
  %14 = icmp ne i32 %13, 0
  %15 = xor i1 %14, true
  br i1 %15, label %16, label %23

16:                                               ; preds = %12
  %17 = call i32* @TAILQ_FIRST(i32* @state_head)
  store i32* %17, i32** %1, align 8
  %18 = load i32*, i32** %1, align 8
  %19 = load i32*, i32** %1, align 8
  %20 = call i32 @TAILQ_REMOVE(i32* @state_head, i32* %18, i32* %19)
  %21 = load i32*, i32** %1, align 8
  %22 = call i32 @free(i32* %21)
  br label %12

23:                                               ; preds = %12
  %24 = load i32*, i32** @restore_conn, align 8
  %25 = call i32 @xcb_disconnect(i32* %24)
  %26 = load i32*, i32** @xcb_watcher, align 8
  %27 = call i32 @free(i32* %26)
  %28 = load i32*, i32** @xcb_prepare, align 8
  %29 = call i32 @free(i32* %28)
  br label %30

30:                                               ; preds = %23, %0
  %31 = call i32* @xcb_connect(i32* null, i32* %2)
  store i32* %31, i32** @restore_conn, align 8
  %32 = load i32*, i32** @restore_conn, align 8
  %33 = icmp eq i32* %32, null
  br i1 %33, label %38, label %34

34:                                               ; preds = %30
  %35 = load i32*, i32** @restore_conn, align 8
  %36 = call i64 @xcb_connection_has_error(i32* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %47

38:                                               ; preds = %34, %30
  %39 = load i32*, i32** @restore_conn, align 8
  %40 = icmp ne i32* %39, null
  br i1 %40, label %41, label %44

41:                                               ; preds = %38
  %42 = load i32*, i32** @restore_conn, align 8
  %43 = call i32 @xcb_disconnect(i32* %42)
  br label %44

44:                                               ; preds = %41, %38
  %45 = load i32, i32* @EXIT_FAILURE, align 4
  %46 = call i32 @errx(i32 %45, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  br label %47

47:                                               ; preds = %44, %34
  %48 = call i32* @scalloc(i32 1, i32 4)
  store i32* %48, i32** @xcb_watcher, align 8
  %49 = call i32* @scalloc(i32 1, i32 4)
  store i32* %49, i32** @xcb_prepare, align 8
  %50 = load i32*, i32** @xcb_watcher, align 8
  %51 = load i32, i32* @restore_xcb_got_event, align 4
  %52 = load i32*, i32** @restore_conn, align 8
  %53 = call i32 @xcb_get_file_descriptor(i32* %52)
  %54 = load i32, i32* @EV_READ, align 4
  %55 = call i32 @ev_io_init(i32* %50, i32 %51, i32 %53, i32 %54)
  %56 = load i32, i32* @main_loop, align 4
  %57 = load i32*, i32** @xcb_watcher, align 8
  %58 = call i32 @ev_io_start(i32 %56, i32* %57)
  %59 = load i32*, i32** @xcb_prepare, align 8
  %60 = load i32, i32* @restore_xcb_prepare_cb, align 4
  %61 = call i32 @ev_prepare_init(i32* %59, i32 %60)
  %62 = load i32, i32* @main_loop, align 4
  %63 = load i32*, i32** @xcb_prepare, align 8
  %64 = call i32 @ev_prepare_start(i32 %62, i32* %63)
  ret void
}

declare dso_local i32 @ev_io_stop(i32, i32*) #1

declare dso_local i32 @ev_prepare_stop(i32, i32*) #1

declare dso_local i32 @TAILQ_EMPTY(i32*) #1

declare dso_local i32* @TAILQ_FIRST(i32*) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, i32*, i32*) #1

declare dso_local i32 @free(i32*) #1

declare dso_local i32 @xcb_disconnect(i32*) #1

declare dso_local i32* @xcb_connect(i32*, i32*) #1

declare dso_local i64 @xcb_connection_has_error(i32*) #1

declare dso_local i32 @errx(i32, i8*) #1

declare dso_local i32* @scalloc(i32, i32) #1

declare dso_local i32 @ev_io_init(i32*, i32, i32, i32) #1

declare dso_local i32 @xcb_get_file_descriptor(i32*) #1

declare dso_local i32 @ev_io_start(i32, i32*) #1

declare dso_local i32 @ev_prepare_init(i32*, i32) #1

declare dso_local i32 @ev_prepare_start(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
