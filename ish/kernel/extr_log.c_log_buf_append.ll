; ModuleID = '/home/carl/AnghaBench/ish/kernel/extr_log.c_log_buf_append.c'
source_filename = "/home/carl/AnghaBench/ish/kernel/extr_log.c_log_buf_append.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@log_buf = common dso_local global i32 0, align 4
@FIFO_OVERWRITE = common dso_local global i32 0, align 4
@log_max_since_clear = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @log_buf_append to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @log_buf_append(i8* %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load i8*, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = call i64 @strlen(i8* %4)
  %6 = load i32, i32* @FIFO_OVERWRITE, align 4
  %7 = call i32 @fifo_write(i32* @log_buf, i8* %3, i64 %5, i32 %6)
  %8 = load i8*, i8** %2, align 8
  %9 = call i64 @strlen(i8* %8)
  %10 = load i64, i64* @log_max_since_clear, align 8
  %11 = add nsw i64 %10, %9
  store i64 %11, i64* @log_max_since_clear, align 8
  %12 = load i64, i64* @log_max_since_clear, align 8
  %13 = call i64 @fifo_capacity(i32* @log_buf)
  %14 = icmp sgt i64 %12, %13
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = call i64 @fifo_capacity(i32* @log_buf)
  store i64 %16, i64* @log_max_since_clear, align 8
  br label %17

17:                                               ; preds = %15, %1
  ret void
}

declare dso_local i32 @fifo_write(i32*, i8*, i64, i32) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @fifo_capacity(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
