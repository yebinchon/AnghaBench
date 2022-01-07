; ModuleID = '/home/carl/AnghaBench/ish/kernel/extr_log.c_syslog_read.c'
source_filename = "/home/carl/AnghaBench/ish/kernel/extr_log.c_syslog_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@_EINVAL = common dso_local global i32 0, align 4
@FIFO_LAST = common dso_local global i32 0, align 4
@log_max_since_clear = common dso_local global i64 0, align 8
@log_buf = common dso_local global i32 0, align 4
@_EFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @syslog_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @syslog_read(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* %6, align 4
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %3
  %13 = load i32, i32* @_EINVAL, align 4
  store i32 %13, i32* %4, align 4
  br label %56

14:                                               ; preds = %3
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* @FIFO_LAST, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %28

19:                                               ; preds = %14
  %20 = load i32, i32* %6, align 4
  %21 = sext i32 %20 to i64
  %22 = load i64, i64* @log_max_since_clear, align 8
  %23 = icmp ugt i64 %21, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %19
  %25 = load i64, i64* @log_max_since_clear, align 8
  %26 = trunc i64 %25 to i32
  store i32 %26, i32* %6, align 4
  br label %27

27:                                               ; preds = %24, %19
  br label %37

28:                                               ; preds = %14
  %29 = load i32, i32* %6, align 4
  %30 = sext i32 %29 to i64
  %31 = call i64 @fifo_capacity(i32* @log_buf)
  %32 = icmp ugt i64 %30, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %28
  %34 = call i64 @fifo_capacity(i32* @log_buf)
  %35 = trunc i64 %34 to i32
  store i32 %35, i32* %6, align 4
  br label %36

36:                                               ; preds = %33, %28
  br label %37

37:                                               ; preds = %36, %27
  %38 = load i32, i32* %6, align 4
  %39 = call i8* @malloc(i32 %38)
  store i8* %39, i8** %8, align 8
  %40 = load i8*, i8** %8, align 8
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* %7, align 4
  %43 = call i32 @fifo_read(i32* @log_buf, i8* %40, i32 %41, i32 %42)
  %44 = load i32, i32* %5, align 4
  %45 = load i8*, i8** %8, align 8
  %46 = load i32, i32* %6, align 4
  %47 = call i32 @user_write(i32 %44, i8* %45, i32 %46)
  store i32 %47, i32* %9, align 4
  %48 = load i8*, i8** %8, align 8
  %49 = call i32 @free(i8* %48)
  %50 = load i32, i32* %9, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %37
  %53 = load i32, i32* @_EFAULT, align 4
  store i32 %53, i32* %4, align 4
  br label %56

54:                                               ; preds = %37
  %55 = load i32, i32* %6, align 4
  store i32 %55, i32* %4, align 4
  br label %56

56:                                               ; preds = %54, %52, %12
  %57 = load i32, i32* %4, align 4
  ret i32 %57
}

declare dso_local i64 @fifo_capacity(i32*) #1

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @fifo_read(i32*, i8*, i32, i32) #1

declare dso_local i32 @user_write(i32, i8*, i32) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
