; ModuleID = '/home/carl/AnghaBench/ish/fs/extr_tty-real.c_real_tty_cleanup.c'
source_filename = "/home/carl/AnghaBench/ish/fs/extr_tty-real.c_real_tty_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty = type { i64, i32 }

@REAL_TTY_NUM = common dso_local global i64 0, align 8
@STDIN_FILENO = common dso_local global i32 0, align 4
@TCSANOW = common dso_local global i32 0, align 4
@old_termios = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@ENOTTY = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [25 x i8] c"failed to reset terminal\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @real_tty_cleanup(%struct.tty* %0) #0 {
  %2 = alloca %struct.tty*, align 8
  store %struct.tty* %0, %struct.tty** %2, align 8
  %3 = load %struct.tty*, %struct.tty** %2, align 8
  %4 = getelementptr inbounds %struct.tty, %struct.tty* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = load i64, i64* @REAL_TTY_NUM, align 8
  %7 = icmp ne i64 %5, %6
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  br label %25

9:                                                ; preds = %1
  %10 = load i32, i32* @STDIN_FILENO, align 4
  %11 = load i32, i32* @TCSANOW, align 4
  %12 = call i64 @tcsetattr(i32 %10, i32 %11, i32* @old_termios)
  %13 = icmp slt i64 %12, 0
  br i1 %13, label %14, label %20

14:                                               ; preds = %9
  %15 = load i64, i64* @errno, align 8
  %16 = load i64, i64* @ENOTTY, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %14
  %19 = call i32 @ERRNO_DIE(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %20

20:                                               ; preds = %18, %14, %9
  %21 = load %struct.tty*, %struct.tty** %2, align 8
  %22 = getelementptr inbounds %struct.tty, %struct.tty* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @pthread_cancel(i32 %23)
  br label %25

25:                                               ; preds = %20, %8
  ret void
}

declare dso_local i64 @tcsetattr(i32, i32, i32*) #1

declare dso_local i32 @ERRNO_DIE(i8*) #1

declare dso_local i32 @pthread_cancel(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
