; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/ipmi/extr_ipmi_msghandler.c_smi_add_watch.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/ipmi/extr_ipmi_msghandler.c_smi_add_watch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipmi_smi = type { i32, i32, i32, %struct.TYPE_2__*, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 (i32, i32)* }

@IPMI_WATCH_MASK_CHECK_MESSAGES = common dso_local global i32 0, align 4
@IPMI_WATCH_MASK_CHECK_WATCHDOG = common dso_local global i32 0, align 4
@IPMI_WATCH_MASK_CHECK_COMMANDS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ipmi_smi*, i32)* @smi_add_watch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @smi_add_watch(%struct.ipmi_smi* %0, i32 %1) #0 {
  %3 = alloca %struct.ipmi_smi*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.ipmi_smi* %0, %struct.ipmi_smi** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.ipmi_smi*, %struct.ipmi_smi** %3, align 8
  %7 = getelementptr inbounds %struct.ipmi_smi, %struct.ipmi_smi* %6, i32 0, i32 3
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32 (i32, i32)*, i32 (i32, i32)** %9, align 8
  %11 = icmp ne i32 (i32, i32)* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  br label %78

13:                                               ; preds = %2
  %14 = load %struct.ipmi_smi*, %struct.ipmi_smi** %3, align 8
  %15 = getelementptr inbounds %struct.ipmi_smi, %struct.ipmi_smi* %14, i32 0, i32 1
  %16 = load i64, i64* %5, align 8
  %17 = call i32 @spin_lock_irqsave(i32* %15, i64 %16)
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* @IPMI_WATCH_MASK_CHECK_MESSAGES, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %13
  %23 = load %struct.ipmi_smi*, %struct.ipmi_smi** %3, align 8
  %24 = getelementptr inbounds %struct.ipmi_smi, %struct.ipmi_smi* %23, i32 0, i32 6
  %25 = load i32, i32* %24, align 8
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %24, align 8
  br label %27

27:                                               ; preds = %22, %13
  %28 = load i32, i32* %4, align 4
  %29 = load i32, i32* @IPMI_WATCH_MASK_CHECK_WATCHDOG, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %27
  %33 = load %struct.ipmi_smi*, %struct.ipmi_smi** %3, align 8
  %34 = getelementptr inbounds %struct.ipmi_smi, %struct.ipmi_smi* %33, i32 0, i32 5
  %35 = load i32, i32* %34, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %34, align 4
  br label %37

37:                                               ; preds = %32, %27
  %38 = load i32, i32* %4, align 4
  %39 = load i32, i32* @IPMI_WATCH_MASK_CHECK_COMMANDS, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %37
  %43 = load %struct.ipmi_smi*, %struct.ipmi_smi** %3, align 8
  %44 = getelementptr inbounds %struct.ipmi_smi, %struct.ipmi_smi* %43, i32 0, i32 4
  %45 = load i32, i32* %44, align 8
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %44, align 8
  br label %47

47:                                               ; preds = %42, %37
  %48 = load %struct.ipmi_smi*, %struct.ipmi_smi** %3, align 8
  %49 = getelementptr inbounds %struct.ipmi_smi, %struct.ipmi_smi* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* %4, align 4
  %52 = and i32 %50, %51
  %53 = load i32, i32* %4, align 4
  %54 = icmp ne i32 %52, %53
  br i1 %54, label %55, label %73

55:                                               ; preds = %47
  %56 = load i32, i32* %4, align 4
  %57 = load %struct.ipmi_smi*, %struct.ipmi_smi** %3, align 8
  %58 = getelementptr inbounds %struct.ipmi_smi, %struct.ipmi_smi* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = or i32 %59, %56
  store i32 %60, i32* %58, align 8
  %61 = load %struct.ipmi_smi*, %struct.ipmi_smi** %3, align 8
  %62 = getelementptr inbounds %struct.ipmi_smi, %struct.ipmi_smi* %61, i32 0, i32 3
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = load i32 (i32, i32)*, i32 (i32, i32)** %64, align 8
  %66 = load %struct.ipmi_smi*, %struct.ipmi_smi** %3, align 8
  %67 = getelementptr inbounds %struct.ipmi_smi, %struct.ipmi_smi* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.ipmi_smi*, %struct.ipmi_smi** %3, align 8
  %70 = getelementptr inbounds %struct.ipmi_smi, %struct.ipmi_smi* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = call i32 %65(i32 %68, i32 %71)
  br label %73

73:                                               ; preds = %55, %47
  %74 = load %struct.ipmi_smi*, %struct.ipmi_smi** %3, align 8
  %75 = getelementptr inbounds %struct.ipmi_smi, %struct.ipmi_smi* %74, i32 0, i32 1
  %76 = load i64, i64* %5, align 8
  %77 = call i32 @spin_unlock_irqrestore(i32* %75, i64 %76)
  br label %78

78:                                               ; preds = %73, %12
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
