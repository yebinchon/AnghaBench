; ModuleID = '/home/carl/AnghaBench/i3/i3bar/src/extr_child.c_stdin_io_first_line_cb.c'
source_filename = "/home/carl/AnghaBench/i3/i3bar/src/extr_child.c_stdin_io_first_line_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }
%struct.TYPE_5__ = type { i64 }
%struct.ev_loop = type { i32 }
%struct.status_block = type { i32 }

@.str = private unnamed_addr constant [45 x i8] c"Detecting input type based on buffer *%.*s*\0A\00", align 1
@child = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@config = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@statusline_head = common dso_local global i32 0, align 4
@blocks = common dso_local global i32 0, align 4
@main_loop = common dso_local global i32 0, align 4
@stdin_io = common dso_local global i32 0, align 4
@stdin_io_cb = common dso_local global i32 0, align 4
@stdin_fd = common dso_local global i32 0, align 4
@EV_READ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ev_loop*, i32*, i32)* @stdin_io_first_line_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stdin_io_first_line_cb(%struct.ev_loop* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.ev_loop*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.status_block*, align 8
  store %struct.ev_loop* %0, %struct.ev_loop** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load i32*, i32** %5, align 8
  %12 = call i8* @get_buffer(i32* %11, i32* %7)
  store i8* %12, i8** %8, align 8
  %13 = load i8*, i8** %8, align 8
  %14 = icmp eq i8* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %3
  br label %61

16:                                               ; preds = %3
  %17 = load i32, i32* %7, align 4
  %18 = load i8*, i8** %8, align 8
  %19 = call i32 @DLOG(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %17, i8* %18)
  store i32 0, i32* %9, align 4
  %20 = load i8*, i8** %8, align 8
  %21 = load i32, i32* %7, align 4
  %22 = call i32 @parse_json_header(%struct.TYPE_4__* @child, i8* %20, i32 %21, i32* %9)
  %23 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @child, i32 0, i32 0), align 8
  %24 = icmp sgt i64 %23, 0
  br i1 %24, label %25, label %40

25:                                               ; preds = %16
  %26 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @config, i32 0, i32 0), align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %25
  %29 = call i32 (...) @stop_child()
  br label %30

30:                                               ; preds = %28, %25
  %31 = load i8*, i8** %8, align 8
  %32 = load i32, i32* %9, align 4
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds i8, i8* %31, i64 %33
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* %9, align 4
  %37 = sub i32 %35, %36
  %38 = call i32 @read_json_input(i8* %34, i32 %37)
  %39 = call i32 @draw_bars(i32 %38)
  br label %48

40:                                               ; preds = %16
  %41 = call %struct.status_block* @scalloc(i32 1, i32 4)
  store %struct.status_block* %41, %struct.status_block** %10, align 8
  %42 = load %struct.status_block*, %struct.status_block** %10, align 8
  %43 = load i32, i32* @blocks, align 4
  %44 = call i32 @TAILQ_INSERT_TAIL(i32* @statusline_head, %struct.status_block* %42, i32 %43)
  %45 = load i8*, i8** %8, align 8
  %46 = load i32, i32* %7, align 4
  %47 = call i32 @read_flat_input(i8* %45, i32 %46)
  br label %48

48:                                               ; preds = %40, %30
  %49 = load i8*, i8** %8, align 8
  %50 = call i32 @free(i8* %49)
  %51 = load i32, i32* @main_loop, align 4
  %52 = load i32, i32* @stdin_io, align 4
  %53 = call i32 @ev_io_stop(i32 %51, i32 %52)
  %54 = load i32, i32* @stdin_io, align 4
  %55 = load i32, i32* @stdin_fd, align 4
  %56 = load i32, i32* @EV_READ, align 4
  %57 = call i32 @ev_io_init(i32 %54, i32* @stdin_io_cb, i32 %55, i32 %56)
  %58 = load i32, i32* @main_loop, align 4
  %59 = load i32, i32* @stdin_io, align 4
  %60 = call i32 @ev_io_start(i32 %58, i32 %59)
  br label %61

61:                                               ; preds = %48, %15
  ret void
}

declare dso_local i8* @get_buffer(i32*, i32*) #1

declare dso_local i32 @DLOG(i8*, i32, i8*) #1

declare dso_local i32 @parse_json_header(%struct.TYPE_4__*, i8*, i32, i32*) #1

declare dso_local i32 @stop_child(...) #1

declare dso_local i32 @draw_bars(i32) #1

declare dso_local i32 @read_json_input(i8*, i32) #1

declare dso_local %struct.status_block* @scalloc(i32, i32) #1

declare dso_local i32 @TAILQ_INSERT_TAIL(i32*, %struct.status_block*, i32) #1

declare dso_local i32 @read_flat_input(i8*, i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @ev_io_stop(i32, i32) #1

declare dso_local i32 @ev_io_init(i32, i32*, i32, i32) #1

declare dso_local i32 @ev_io_start(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
