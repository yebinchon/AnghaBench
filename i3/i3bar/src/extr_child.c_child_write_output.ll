; ModuleID = '/home/carl/AnghaBench/i3/i3bar/src/extr_child.c_child_write_output.c'
source_filename = "/home/carl/AnghaBench/i3/i3bar/src/extr_child.c_child_write_output.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@child = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@gen = common dso_local global i32 0, align 4
@child_stdin = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"child_write_output failed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @child_write_output to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @child_write_output() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @child, i32 0, i32 0), align 4
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %6, label %28

6:                                                ; preds = %0
  %7 = load i32, i32* @gen, align 4
  %8 = call i32 @yajl_gen_get_buf(i32 %7, i8** %1, i64* %2)
  %9 = load i32, i32* @child_stdin, align 4
  %10 = load i8*, i8** %1, align 8
  %11 = load i64, i64* %2, align 8
  %12 = call i32 (i32, ...) @writeall(i32 %9, i8* %10, i64 %11)
  store i32 %12, i32* %3, align 4
  %13 = load i32, i32* %3, align 4
  %14 = icmp ne i32 %13, -1
  br i1 %14, label %15, label %18

15:                                               ; preds = %6
  %16 = load i32, i32* @child_stdin, align 4
  %17 = call i32 (i32, ...) @writeall(i32 %16, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 1)
  store i32 %17, i32* %3, align 4
  br label %18

18:                                               ; preds = %15, %6
  %19 = load i32, i32* @gen, align 4
  %20 = call i32 @yajl_gen_clear(i32 %19)
  %21 = load i32, i32* %3, align 4
  %22 = icmp eq i32 %21, -1
  br i1 %22, label %23, label %27

23:                                               ; preds = %18
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @child, i32 0, i32 0), align 4
  %24 = call i32 (...) @kill_child()
  %25 = call i32 @set_statusline_error(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %26 = call i32 @draw_bars(i32 0)
  br label %27

27:                                               ; preds = %23, %18
  br label %28

28:                                               ; preds = %27, %0
  ret void
}

declare dso_local i32 @yajl_gen_get_buf(i32, i8**, i64*) #1

declare dso_local i32 @writeall(i32, ...) #1

declare dso_local i32 @yajl_gen_clear(i32) #1

declare dso_local i32 @kill_child(...) #1

declare dso_local i32 @set_statusline_error(i8*) #1

declare dso_local i32 @draw_bars(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
