; ModuleID = '/home/carl/AnghaBench/linux/arch/um/drivers/extr_ubd_user.c_start_io_thread.c'
source_filename = "/home/carl/AnghaBench/linux/arch/um/drivers/extr_ubd_user.c_start_io_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }

@.str = private unnamed_addr constant [44 x i8] c"start_io_thread - os_pipe failed, err = %d\0A\00", align 1
@kernel_fd = common dso_local global i32 0, align 4
@kernel_pollfd = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@POLLIN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [50 x i8] c"start_io_thread - failed to set nonblocking I/O.\0A\00", align 1
@io_thread = common dso_local global i32 0, align 4
@CLONE_FILES = common dso_local global i32 0, align 4
@CLONE_VM = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [45 x i8] c"start_io_thread - clone failed : errno = %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @start_io_thread(i64 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca [2 x i32], align 4
  %8 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  store i32* %1, i32** %5, align 8
  %9 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %10 = call i32 @os_pipe(i32* %9, i32 1, i32 1)
  store i32 %10, i32* %8, align 4
  %11 = load i32, i32* %8, align 4
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %2
  %14 = load i32, i32* %8, align 4
  %15 = sub nsw i32 0, %14
  %16 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %15)
  br label %59

17:                                               ; preds = %2
  %18 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* @kernel_fd, align 4
  %20 = load i32, i32* @kernel_fd, align 4
  store i32 %20, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @kernel_pollfd, i32 0, i32 0), align 4
  %21 = load i32, i32* @POLLIN, align 4
  store i32 %21, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @kernel_pollfd, i32 0, i32 1), align 4
  %22 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 1
  %23 = load i32, i32* %22, align 4
  %24 = load i32*, i32** %5, align 8
  store i32 %23, i32* %24, align 4
  %25 = load i32*, i32** %5, align 8
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @os_set_fd_block(i32 %26, i32 0)
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* @kernel_fd, align 4
  %29 = call i32 @os_set_fd_block(i32 %28, i32 0)
  store i32 %29, i32* %8, align 4
  %30 = load i32, i32* %8, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %17
  %33 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0))
  br label %51

34:                                               ; preds = %17
  %35 = load i32, i32* @io_thread, align 4
  %36 = load i64, i64* %4, align 8
  %37 = inttoptr i64 %36 to i8*
  %38 = load i32, i32* @CLONE_FILES, align 4
  %39 = load i32, i32* @CLONE_VM, align 4
  %40 = or i32 %38, %39
  %41 = call i32 @clone(i32 %35, i8* %37, i32 %40, i32* null)
  store i32 %41, i32* %6, align 4
  %42 = load i32, i32* %6, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %34
  %45 = load i32, i32* @errno, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %8, align 4
  %47 = load i32, i32* @errno, align 4
  %48 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0), i32 %47)
  br label %51

49:                                               ; preds = %34
  %50 = load i32, i32* %6, align 4
  store i32 %50, i32* %3, align 4
  br label %61

51:                                               ; preds = %44, %32
  %52 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @os_close_file(i32 %53)
  %55 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 1
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @os_close_file(i32 %56)
  store i32 -1, i32* @kernel_fd, align 4
  %58 = load i32*, i32** %5, align 8
  store i32 -1, i32* %58, align 4
  br label %59

59:                                               ; preds = %51, %13
  %60 = load i32, i32* %8, align 4
  store i32 %60, i32* %3, align 4
  br label %61

61:                                               ; preds = %59, %49
  %62 = load i32, i32* %3, align 4
  ret i32 %62
}

declare dso_local i32 @os_pipe(i32*, i32, i32) #1

declare dso_local i32 @printk(i8*, ...) #1

declare dso_local i32 @os_set_fd_block(i32, i32) #1

declare dso_local i32 @clone(i32, i8*, i32, i32*) #1

declare dso_local i32 @os_close_file(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
