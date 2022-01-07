; ModuleID = '/home/carl/AnghaBench/ish/kernel/extr_log.c_do_syslog.c'
source_filename = "/home/carl/AnghaBench/ish/kernel/extr_log.c_do_syslog.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FIFO_LAST = common dso_local global i32 0, align 4
@FIFO_PEEK = common dso_local global i32 0, align 4
@log_max_since_clear = common dso_local global i32 0, align 4
@log_buf = common dso_local global i32 0, align 4
@_EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @do_syslog to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_syslog(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* %5, align 4
  switch i32 %9, label %39 [
    i32 132, label %10
    i32 131, label %14
    i32 130, label %21
    i32 138, label %33
    i32 128, label %34
    i32 129, label %36
    i32 137, label %38
    i32 133, label %38
    i32 135, label %38
    i32 134, label %38
    i32 136, label %38
  ]

10:                                               ; preds = %3
  %11 = load i32, i32* %6, align 4
  %12 = load i32, i32* %7, align 4
  %13 = call i32 @syslog_read(i32 %11, i32 %12, i32 0)
  store i32 %13, i32* %4, align 4
  br label %41

14:                                               ; preds = %3
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* @FIFO_LAST, align 4
  %18 = load i32, i32* @FIFO_PEEK, align 4
  %19 = or i32 %17, %18
  %20 = call i32 @syslog_read(i32 %15, i32 %16, i32 %19)
  store i32 %20, i32* %4, align 4
  br label %41

21:                                               ; preds = %3
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* @FIFO_LAST, align 4
  %25 = load i32, i32* @FIFO_PEEK, align 4
  %26 = or i32 %24, %25
  %27 = call i32 @syslog_read(i32 %22, i32 %23, i32 %26)
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* %8, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %21
  %31 = load i32, i32* %8, align 4
  store i32 %31, i32* %4, align 4
  br label %41

32:                                               ; preds = %21
  br label %33

33:                                               ; preds = %3, %32
  store i32 0, i32* @log_max_since_clear, align 4
  store i32 0, i32* %4, align 4
  br label %41

34:                                               ; preds = %3
  %35 = call i32 @fifo_size(i32* @log_buf)
  store i32 %35, i32* %4, align 4
  br label %41

36:                                               ; preds = %3
  %37 = call i32 @fifo_capacity(i32* @log_buf)
  store i32 %37, i32* %4, align 4
  br label %41

38:                                               ; preds = %3, %3, %3, %3, %3
  store i32 0, i32* %4, align 4
  br label %41

39:                                               ; preds = %3
  %40 = load i32, i32* @_EINVAL, align 4
  store i32 %40, i32* %4, align 4
  br label %41

41:                                               ; preds = %39, %38, %36, %34, %33, %30, %14, %10
  %42 = load i32, i32* %4, align 4
  ret i32 %42
}

declare dso_local i32 @syslog_read(i32, i32, i32) #1

declare dso_local i32 @fifo_size(i32*) #1

declare dso_local i32 @fifo_capacity(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
