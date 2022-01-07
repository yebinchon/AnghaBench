; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mach-vexpress/extr_spc.c_ve_spc_waitforcompletion.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mach-vexpress/extr_spc.c_ve_spc_waitforcompletion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }

@info = common dso_local global %struct.TYPE_2__* null, align 8
@TIMEOUT_US = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @ve_spc_waitforcompletion to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ve_spc_waitforcompletion(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = load %struct.TYPE_2__*, %struct.TYPE_2__** @info, align 8
  %5 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i32 0, i32 1
  %6 = load i32, i32* @TIMEOUT_US, align 4
  %7 = call i32 @usecs_to_jiffies(i32 %6)
  %8 = call i32 @wait_for_completion_interruptible_timeout(i32* %5, i32 %7)
  store i32 %8, i32* %3, align 4
  %9 = load i32, i32* %3, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  %12 = load i32, i32* @ETIMEDOUT, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %3, align 4
  br label %32

14:                                               ; preds = %1
  %15 = load i32, i32* %3, align 4
  %16 = icmp sgt i32 %15, 0
  br i1 %16, label %17, label %31

17:                                               ; preds = %14
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** @info, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* %2, align 4
  %22 = call i32 @STAT_COMPLETE(i32 %21)
  %23 = and i32 %20, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %17
  br label %29

26:                                               ; preds = %17
  %27 = load i32, i32* @EIO, align 4
  %28 = sub nsw i32 0, %27
  br label %29

29:                                               ; preds = %26, %25
  %30 = phi i32 [ 0, %25 ], [ %28, %26 ]
  store i32 %30, i32* %3, align 4
  br label %31

31:                                               ; preds = %29, %14
  br label %32

32:                                               ; preds = %31, %11
  %33 = load i32, i32* %3, align 4
  ret i32 %33
}

declare dso_local i32 @wait_for_completion_interruptible_timeout(i32*, i32) #1

declare dso_local i32 @usecs_to_jiffies(i32) #1

declare dso_local i32 @STAT_COMPLETE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
