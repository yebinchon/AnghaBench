; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/ipmi/extr_ipmi_msghandler.c_smi_remove_watch.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/ipmi/extr_ipmi_msghandler.c_smi_remove_watch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipmi_smi = type { i32, i32, i32, %struct.TYPE_2__*, i64, i64, i64 }
%struct.TYPE_2__ = type { i32 (i32, i32)* }

@IPMI_WATCH_MASK_CHECK_MESSAGES = common dso_local global i32 0, align 4
@IPMI_WATCH_MASK_CHECK_WATCHDOG = common dso_local global i32 0, align 4
@IPMI_WATCH_MASK_CHECK_COMMANDS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ipmi_smi*, i32)* @smi_remove_watch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @smi_remove_watch(%struct.ipmi_smi* %0, i32 %1) #0 {
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
  br label %101

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
  %25 = load i64, i64* %24, align 8
  %26 = add nsw i64 %25, -1
  store i64 %26, i64* %24, align 8
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
  %35 = load i64, i64* %34, align 8
  %36 = add nsw i64 %35, -1
  store i64 %36, i64* %34, align 8
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
  %45 = load i64, i64* %44, align 8
  %46 = add nsw i64 %45, -1
  store i64 %46, i64* %44, align 8
  br label %47

47:                                               ; preds = %42, %37
  store i32 0, i32* %4, align 4
  %48 = load %struct.ipmi_smi*, %struct.ipmi_smi** %3, align 8
  %49 = getelementptr inbounds %struct.ipmi_smi, %struct.ipmi_smi* %48, i32 0, i32 6
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %47
  %53 = load i32, i32* @IPMI_WATCH_MASK_CHECK_MESSAGES, align 4
  %54 = load i32, i32* %4, align 4
  %55 = or i32 %54, %53
  store i32 %55, i32* %4, align 4
  br label %56

56:                                               ; preds = %52, %47
  %57 = load %struct.ipmi_smi*, %struct.ipmi_smi** %3, align 8
  %58 = getelementptr inbounds %struct.ipmi_smi, %struct.ipmi_smi* %57, i32 0, i32 5
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %56
  %62 = load i32, i32* @IPMI_WATCH_MASK_CHECK_WATCHDOG, align 4
  %63 = load i32, i32* %4, align 4
  %64 = or i32 %63, %62
  store i32 %64, i32* %4, align 4
  br label %65

65:                                               ; preds = %61, %56
  %66 = load %struct.ipmi_smi*, %struct.ipmi_smi** %3, align 8
  %67 = getelementptr inbounds %struct.ipmi_smi, %struct.ipmi_smi* %66, i32 0, i32 4
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %65
  %71 = load i32, i32* @IPMI_WATCH_MASK_CHECK_COMMANDS, align 4
  %72 = load i32, i32* %4, align 4
  %73 = or i32 %72, %71
  store i32 %73, i32* %4, align 4
  br label %74

74:                                               ; preds = %70, %65
  %75 = load %struct.ipmi_smi*, %struct.ipmi_smi** %3, align 8
  %76 = getelementptr inbounds %struct.ipmi_smi, %struct.ipmi_smi* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* %4, align 4
  %79 = icmp ne i32 %77, %78
  br i1 %79, label %80, label %96

80:                                               ; preds = %74
  %81 = load i32, i32* %4, align 4
  %82 = load %struct.ipmi_smi*, %struct.ipmi_smi** %3, align 8
  %83 = getelementptr inbounds %struct.ipmi_smi, %struct.ipmi_smi* %82, i32 0, i32 0
  store i32 %81, i32* %83, align 8
  %84 = load %struct.ipmi_smi*, %struct.ipmi_smi** %3, align 8
  %85 = getelementptr inbounds %struct.ipmi_smi, %struct.ipmi_smi* %84, i32 0, i32 3
  %86 = load %struct.TYPE_2__*, %struct.TYPE_2__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 0
  %88 = load i32 (i32, i32)*, i32 (i32, i32)** %87, align 8
  %89 = load %struct.ipmi_smi*, %struct.ipmi_smi** %3, align 8
  %90 = getelementptr inbounds %struct.ipmi_smi, %struct.ipmi_smi* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 8
  %92 = load %struct.ipmi_smi*, %struct.ipmi_smi** %3, align 8
  %93 = getelementptr inbounds %struct.ipmi_smi, %struct.ipmi_smi* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = call i32 %88(i32 %91, i32 %94)
  br label %96

96:                                               ; preds = %80, %74
  %97 = load %struct.ipmi_smi*, %struct.ipmi_smi** %3, align 8
  %98 = getelementptr inbounds %struct.ipmi_smi, %struct.ipmi_smi* %97, i32 0, i32 1
  %99 = load i64, i64* %5, align 8
  %100 = call i32 @spin_unlock_irqrestore(i32* %98, i64 %99)
  br label %101

101:                                              ; preds = %96, %12
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
