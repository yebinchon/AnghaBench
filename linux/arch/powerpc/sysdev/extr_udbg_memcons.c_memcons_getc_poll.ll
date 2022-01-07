; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/sysdev/extr_udbg_memcons.c_memcons_getc_poll.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/sysdev/extr_udbg_memcons.c_memcons_getc_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8*, i8*, i8* }

@memcons = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @memcons_getc_poll() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8, align 1
  %3 = alloca i8*, align 8
  %4 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @memcons, i32 0, i32 0), align 8
  %5 = load i8, i8* %4, align 1
  %6 = icmp ne i8 %5, 0
  br i1 %6, label %7, label %31

7:                                                ; preds = %0
  %8 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @memcons, i32 0, i32 0), align 8
  %9 = load i8, i8* %8, align 1
  store i8 %9, i8* %2, align 1
  %10 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @memcons, i32 0, i32 0), align 8
  %11 = getelementptr inbounds i8, i8* %10, i64 1
  store i8* %11, i8** %3, align 8
  %12 = load i8*, i8** %3, align 8
  %13 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @memcons, i32 0, i32 1), align 8
  %14 = icmp uge i8* %12, %13
  br i1 %14, label %15, label %17

15:                                               ; preds = %7
  %16 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @memcons, i32 0, i32 2), align 8
  store i8* %16, i8** %3, align 8
  br label %25

17:                                               ; preds = %7
  %18 = load i8*, i8** %3, align 8
  %19 = load i8, i8* %18, align 1
  %20 = sext i8 %19 to i32
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %17
  %23 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @memcons, i32 0, i32 2), align 8
  store i8* %23, i8** %3, align 8
  br label %24

24:                                               ; preds = %22, %17
  br label %25

25:                                               ; preds = %24, %15
  %26 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @memcons, i32 0, i32 0), align 8
  store i8 0, i8* %26, align 1
  %27 = call i32 (...) @wmb()
  %28 = load i8*, i8** %3, align 8
  store i8* %28, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @memcons, i32 0, i32 0), align 8
  %29 = load i8, i8* %2, align 1
  %30 = sext i8 %29 to i32
  store i32 %30, i32* %1, align 4
  br label %32

31:                                               ; preds = %0
  store i32 -1, i32* %1, align 4
  br label %32

32:                                               ; preds = %31, %25
  %33 = load i32, i32* %1, align 4
  ret i32 %33
}

declare dso_local i32 @wmb(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
