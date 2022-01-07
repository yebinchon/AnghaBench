; ModuleID = '/home/carl/AnghaBench/ish/util/extr_sync.c_wait_for.c'
source_filename = "/home/carl/AnghaBench/ish/util/extr_sync.c_wait_for.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timespec = type { i32 }

@_EINTR = common dso_local global i32 0, align 4
@_ETIMEDOUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wait_for(i32* %0, i32* %1, %struct.timespec* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.timespec*, align 8
  %8 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.timespec* %2, %struct.timespec** %7, align 8
  %9 = load i32*, i32** %6, align 8
  %10 = call i64 @is_signal_pending(i32* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %3
  %13 = load i32, i32* @_EINTR, align 4
  store i32 %13, i32* %4, align 4
  br label %30

14:                                               ; preds = %3
  %15 = load i32*, i32** %5, align 8
  %16 = load i32*, i32** %6, align 8
  %17 = load %struct.timespec*, %struct.timespec** %7, align 8
  %18 = call i32 @wait_for_ignore_signals(i32* %15, i32* %16, %struct.timespec* %17)
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %8, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %14
  %22 = load i32, i32* @_ETIMEDOUT, align 4
  store i32 %22, i32* %4, align 4
  br label %30

23:                                               ; preds = %14
  %24 = load i32*, i32** %6, align 8
  %25 = call i64 @is_signal_pending(i32* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %23
  %28 = load i32, i32* @_EINTR, align 4
  store i32 %28, i32* %4, align 4
  br label %30

29:                                               ; preds = %23
  store i32 0, i32* %4, align 4
  br label %30

30:                                               ; preds = %29, %27, %21, %12
  %31 = load i32, i32* %4, align 4
  ret i32 %31
}

declare dso_local i64 @is_signal_pending(i32*) #1

declare dso_local i32 @wait_for_ignore_signals(i32*, i32*, %struct.timespec*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
