; ModuleID = '/home/carl/AnghaBench/libuv/docs/code/tty-gravity/extr_main.c_update.c'
source_filename = "/home/carl/AnghaBench/libuv/docs/code/tty-gravity/extr_main.c_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i32 }

@.str = private unnamed_addr constant [29 x i8] c"\1B[2J\1B[H\1B[%dB\1B[%luC\1B[42;37m%s\00", align 1
@pos = common dso_local global i32 0, align 4
@width = common dso_local global i64 0, align 8
@message = common dso_local global i32 0, align 4
@write_req = common dso_local global i32 0, align 4
@tty = common dso_local global i32 0, align 4
@height = common dso_local global i32 0, align 4
@tick = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @update(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca [500 x i8], align 16
  %4 = alloca %struct.TYPE_3__, align 8
  store i32* %0, i32** %2, align 8
  %5 = getelementptr inbounds [500 x i8], [500 x i8]* %3, i64 0, i64 0
  %6 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  store i8* %5, i8** %6, align 8
  %7 = getelementptr inbounds [500 x i8], [500 x i8]* %3, i64 0, i64 0
  %8 = load i32, i32* @pos, align 4
  %9 = load i64, i64* @width, align 8
  %10 = load i32, i32* @message, align 4
  %11 = call i64 @strlen(i32 %10)
  %12 = sub nsw i64 %9, %11
  %13 = udiv i64 %12, 2
  %14 = load i32, i32* @message, align 4
  %15 = call i32 @sprintf(i8* %7, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %8, i64 %13, i32 %14)
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 1
  store i32 %15, i32* %16, align 8
  %17 = call i32 @uv_write(i32* @write_req, i32* @tty, %struct.TYPE_3__* %4, i32 1, i32* null)
  %18 = load i32, i32* @pos, align 4
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* @pos, align 4
  %20 = load i32, i32* @pos, align 4
  %21 = load i32, i32* @height, align 4
  %22 = icmp sgt i32 %20, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %1
  %24 = call i32 (...) @uv_tty_reset_mode()
  %25 = call i32 @uv_timer_stop(i32* @tick)
  br label %26

26:                                               ; preds = %23, %1
  ret void
}

declare dso_local i32 @sprintf(i8*, i8*, i32, i64, i32) #1

declare dso_local i64 @strlen(i32) #1

declare dso_local i32 @uv_write(i32*, i32*, %struct.TYPE_3__*, i32, i32*) #1

declare dso_local i32 @uv_tty_reset_mode(...) #1

declare dso_local i32 @uv_timer_stop(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
