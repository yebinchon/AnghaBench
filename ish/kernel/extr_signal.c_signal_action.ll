; ModuleID = '/home/carl/AnghaBench/ish/kernel/extr_signal.c_signal_action.c'
source_filename = "/home/carl/AnghaBench/ish/kernel/extr_signal.c_signal_action.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sighand = type { %struct.sigaction_* }
%struct.sigaction_ = type { i64 }

@SIG_IGN_ = common dso_local global i64 0, align 8
@SIGNAL_IGNORE = common dso_local global i32 0, align 4
@SIG_DFL_ = common dso_local global i64 0, align 8
@SIGNAL_CALL_HANDLER = common dso_local global i32 0, align 4
@SIGNAL_STOP = common dso_local global i32 0, align 4
@SIGNAL_KILL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sighand*, i32)* @signal_action to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @signal_action(%struct.sighand* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sighand*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.sigaction_*, align 8
  store %struct.sighand* %0, %struct.sighand** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = call i64 @signal_is_blockable(i32 %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %33

10:                                               ; preds = %2
  %11 = load %struct.sighand*, %struct.sighand** %4, align 8
  %12 = getelementptr inbounds %struct.sighand, %struct.sighand* %11, i32 0, i32 0
  %13 = load %struct.sigaction_*, %struct.sigaction_** %12, align 8
  %14 = load i32, i32* %5, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.sigaction_, %struct.sigaction_* %13, i64 %15
  store %struct.sigaction_* %16, %struct.sigaction_** %6, align 8
  %17 = load %struct.sigaction_*, %struct.sigaction_** %6, align 8
  %18 = getelementptr inbounds %struct.sigaction_, %struct.sigaction_* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @SIG_IGN_, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %10
  %23 = load i32, i32* @SIGNAL_IGNORE, align 4
  store i32 %23, i32* %3, align 4
  br label %41

24:                                               ; preds = %10
  %25 = load %struct.sigaction_*, %struct.sigaction_** %6, align 8
  %26 = getelementptr inbounds %struct.sigaction_, %struct.sigaction_* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @SIG_DFL_, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %24
  %31 = load i32, i32* @SIGNAL_CALL_HANDLER, align 4
  store i32 %31, i32* %3, align 4
  br label %41

32:                                               ; preds = %24
  br label %33

33:                                               ; preds = %32, %2
  %34 = load i32, i32* %5, align 4
  switch i32 %34, label %39 [
    i32 129, label %35
    i32 135, label %35
    i32 136, label %35
    i32 134, label %35
    i32 128, label %35
    i32 133, label %37
    i32 132, label %37
    i32 131, label %37
    i32 130, label %37
  ]

35:                                               ; preds = %33, %33, %33, %33, %33
  %36 = load i32, i32* @SIGNAL_IGNORE, align 4
  store i32 %36, i32* %3, align 4
  br label %41

37:                                               ; preds = %33, %33, %33, %33
  %38 = load i32, i32* @SIGNAL_STOP, align 4
  store i32 %38, i32* %3, align 4
  br label %41

39:                                               ; preds = %33
  %40 = load i32, i32* @SIGNAL_KILL, align 4
  store i32 %40, i32* %3, align 4
  br label %41

41:                                               ; preds = %39, %37, %35, %30, %22
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

declare dso_local i64 @signal_is_blockable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
