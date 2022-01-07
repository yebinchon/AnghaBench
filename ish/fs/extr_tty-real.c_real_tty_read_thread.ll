; ModuleID = '/home/carl/AnghaBench/ish/fs/extr_tty-real.c_real_tty_read_thread.c'
source_filename = "/home/carl/AnghaBench/ish/fs/extr_tty-real.c_real_tty_read_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty = type { i32 }

@STDIN_FILENO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"tty read returned %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"error: %s\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@SIGINT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tty*)* @real_tty_read_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @real_tty_read_thread(%struct.tty* %0) #0 {
  %2 = alloca %struct.tty*, align 8
  %3 = alloca i8, align 1
  %4 = alloca i32, align 4
  store %struct.tty* %0, %struct.tty** %2, align 8
  br label %5

5:                                                ; preds = %27, %19, %1
  %6 = load i32, i32* @STDIN_FILENO, align 4
  %7 = call i32 @read(i32 %6, i8* %3, i32 1)
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = icmp ne i32 %8, 1
  br i1 %9, label %10, label %20

10:                                               ; preds = %5
  %11 = load i32, i32* %4, align 4
  %12 = call i32 @printk(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %11)
  %13 = load i32, i32* %4, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %10
  %16 = load i32, i32* @errno, align 4
  %17 = call i32 @strerror(i32 %16)
  %18 = call i32 @printk(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %17)
  br label %19

19:                                               ; preds = %15, %10
  br label %5

20:                                               ; preds = %5
  %21 = load i8, i8* %3, align 1
  %22 = sext i8 %21 to i32
  %23 = icmp eq i32 %22, 28
  br i1 %23, label %24, label %27

24:                                               ; preds = %20
  %25 = load i32, i32* @SIGINT, align 4
  %26 = call i32 @raise(i32 %25)
  br label %27

27:                                               ; preds = %24, %20
  %28 = load %struct.tty*, %struct.tty** %2, align 8
  %29 = call i32 @tty_input(%struct.tty* %28, i8* %3, i32 1, i32 0)
  br label %5
}

declare dso_local i32 @read(i32, i8*, i32) #1

declare dso_local i32 @printk(i8*, i32) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i32 @raise(i32) #1

declare dso_local i32 @tty_input(%struct.tty*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
