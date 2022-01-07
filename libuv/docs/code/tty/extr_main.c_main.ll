; ModuleID = '/home/carl/AnghaBench/libuv/docs/code/tty/extr_main.c_main.c'
source_filename = "/home/carl/AnghaBench/libuv/docs/code/tty/extr_main.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i8* }

@loop = common dso_local global i32 0, align 4
@tty = common dso_local global i32 0, align 4
@STDOUT_FILENO = common dso_local global i32 0, align 4
@UV_TTY_MODE_NORMAL = common dso_local global i32 0, align 4
@UV_TTY = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [9 x i8] c"\1B[41;37m\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"Hello TTY\0A\00", align 1
@UV_RUN_DEFAULT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_3__, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_3__, align 8
  store i32 0, i32* %1, align 4
  %6 = call i32 (...) @uv_default_loop()
  store i32 %6, i32* @loop, align 4
  %7 = load i32, i32* @loop, align 4
  %8 = load i32, i32* @STDOUT_FILENO, align 4
  %9 = call i32 @uv_tty_init(i32 %7, i32* @tty, i32 %8, i32 0)
  %10 = load i32, i32* @UV_TTY_MODE_NORMAL, align 4
  %11 = call i32 @uv_tty_set_mode(i32* @tty, i32 %10)
  %12 = call i64 @uv_guess_handle(i32 1)
  %13 = load i64, i64* @UV_TTY, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %22

15:                                               ; preds = %0
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 0
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8** %16, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 0
  %18 = load i8*, i8** %17, align 8
  %19 = call i8* @strlen(i8* %18)
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 1
  store i8* %19, i8** %20, align 8
  %21 = call i32 @uv_write(i32* %2, i32* @tty, %struct.TYPE_3__* %3, i32 1, i32* null)
  br label %22

22:                                               ; preds = %15, %0
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8** %23, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %25 = load i8*, i8** %24, align 8
  %26 = call i8* @strlen(i8* %25)
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 1
  store i8* %26, i8** %27, align 8
  %28 = call i32 @uv_write(i32* %4, i32* @tty, %struct.TYPE_3__* %5, i32 1, i32* null)
  %29 = call i32 (...) @uv_tty_reset_mode()
  %30 = load i32, i32* @loop, align 4
  %31 = load i32, i32* @UV_RUN_DEFAULT, align 4
  %32 = call i32 @uv_run(i32 %30, i32 %31)
  ret i32 %32
}

declare dso_local i32 @uv_default_loop(...) #1

declare dso_local i32 @uv_tty_init(i32, i32*, i32, i32) #1

declare dso_local i32 @uv_tty_set_mode(i32*, i32) #1

declare dso_local i64 @uv_guess_handle(i32) #1

declare dso_local i8* @strlen(i8*) #1

declare dso_local i32 @uv_write(i32*, i32*, %struct.TYPE_3__*, i32, i32*) #1

declare dso_local i32 @uv_tty_reset_mode(...) #1

declare dso_local i32 @uv_run(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
