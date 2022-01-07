; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/sysdev/extr_mpic_timer.c_detect_idle_cascade_timer.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/sysdev/extr_mpic_timer.c_detect_idle_cascade_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cascade_priv = type { i32, i32 }
%struct.mpic_timer = type { %struct.cascade_priv* }
%struct.timer_group_priv = type { i32, i32, %struct.mpic_timer* }

@cascade_timer = common dso_local global %struct.cascade_priv* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mpic_timer* (%struct.timer_group_priv*)* @detect_idle_cascade_timer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mpic_timer* @detect_idle_cascade_timer(%struct.timer_group_priv* %0) #0 {
  %2 = alloca %struct.mpic_timer*, align 8
  %3 = alloca %struct.timer_group_priv*, align 8
  %4 = alloca %struct.cascade_priv*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.timer_group_priv* %0, %struct.timer_group_priv** %3, align 8
  %10 = load %struct.cascade_priv*, %struct.cascade_priv** @cascade_timer, align 8
  %11 = call i32 @ARRAY_SIZE(%struct.cascade_priv* %10)
  store i32 %11, i32* %6, align 4
  %12 = load %struct.cascade_priv*, %struct.cascade_priv** @cascade_timer, align 8
  store %struct.cascade_priv* %12, %struct.cascade_priv** %4, align 8
  store i32 0, i32* %8, align 4
  br label %13

13:                                               ; preds = %71, %1
  %14 = load i32, i32* %8, align 4
  %15 = load i32, i32* %6, align 4
  %16 = icmp ult i32 %14, %15
  br i1 %16, label %17, label %74

17:                                               ; preds = %13
  %18 = load %struct.timer_group_priv*, %struct.timer_group_priv** %3, align 8
  %19 = getelementptr inbounds %struct.timer_group_priv, %struct.timer_group_priv* %18, i32 0, i32 1
  %20 = load i64, i64* %9, align 8
  %21 = call i32 @spin_lock_irqsave(i32* %19, i64 %20)
  %22 = load %struct.cascade_priv*, %struct.cascade_priv** %4, align 8
  %23 = getelementptr inbounds %struct.cascade_priv, %struct.cascade_priv* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.timer_group_priv*, %struct.timer_group_priv** %3, align 8
  %26 = getelementptr inbounds %struct.timer_group_priv, %struct.timer_group_priv* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = and i32 %24, %27
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* %5, align 4
  %30 = load %struct.cascade_priv*, %struct.cascade_priv** %4, align 8
  %31 = getelementptr inbounds %struct.cascade_priv, %struct.cascade_priv* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = icmp eq i32 %29, %32
  br i1 %33, label %34, label %64

34:                                               ; preds = %17
  %35 = load %struct.cascade_priv*, %struct.cascade_priv** %4, align 8
  %36 = getelementptr inbounds %struct.cascade_priv, %struct.cascade_priv* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %7, align 4
  %38 = load %struct.cascade_priv*, %struct.cascade_priv** %4, align 8
  %39 = load %struct.timer_group_priv*, %struct.timer_group_priv** %3, align 8
  %40 = getelementptr inbounds %struct.timer_group_priv, %struct.timer_group_priv* %39, i32 0, i32 2
  %41 = load %struct.mpic_timer*, %struct.mpic_timer** %40, align 8
  %42 = load i32, i32* %7, align 4
  %43 = zext i32 %42 to i64
  %44 = getelementptr inbounds %struct.mpic_timer, %struct.mpic_timer* %41, i64 %43
  %45 = getelementptr inbounds %struct.mpic_timer, %struct.mpic_timer* %44, i32 0, i32 0
  store %struct.cascade_priv* %38, %struct.cascade_priv** %45, align 8
  %46 = load %struct.cascade_priv*, %struct.cascade_priv** %4, align 8
  %47 = getelementptr inbounds %struct.cascade_priv, %struct.cascade_priv* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = xor i32 %48, -1
  %50 = load %struct.timer_group_priv*, %struct.timer_group_priv** %3, align 8
  %51 = getelementptr inbounds %struct.timer_group_priv, %struct.timer_group_priv* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = and i32 %52, %49
  store i32 %53, i32* %51, align 8
  %54 = load %struct.timer_group_priv*, %struct.timer_group_priv** %3, align 8
  %55 = getelementptr inbounds %struct.timer_group_priv, %struct.timer_group_priv* %54, i32 0, i32 1
  %56 = load i64, i64* %9, align 8
  %57 = call i32 @spin_unlock_irqrestore(i32* %55, i64 %56)
  %58 = load %struct.timer_group_priv*, %struct.timer_group_priv** %3, align 8
  %59 = getelementptr inbounds %struct.timer_group_priv, %struct.timer_group_priv* %58, i32 0, i32 2
  %60 = load %struct.mpic_timer*, %struct.mpic_timer** %59, align 8
  %61 = load i32, i32* %7, align 4
  %62 = zext i32 %61 to i64
  %63 = getelementptr inbounds %struct.mpic_timer, %struct.mpic_timer* %60, i64 %62
  store %struct.mpic_timer* %63, %struct.mpic_timer** %2, align 8
  br label %75

64:                                               ; preds = %17
  %65 = load %struct.timer_group_priv*, %struct.timer_group_priv** %3, align 8
  %66 = getelementptr inbounds %struct.timer_group_priv, %struct.timer_group_priv* %65, i32 0, i32 1
  %67 = load i64, i64* %9, align 8
  %68 = call i32 @spin_unlock_irqrestore(i32* %66, i64 %67)
  %69 = load %struct.cascade_priv*, %struct.cascade_priv** %4, align 8
  %70 = getelementptr inbounds %struct.cascade_priv, %struct.cascade_priv* %69, i32 1
  store %struct.cascade_priv* %70, %struct.cascade_priv** %4, align 8
  br label %71

71:                                               ; preds = %64
  %72 = load i32, i32* %8, align 4
  %73 = add i32 %72, 1
  store i32 %73, i32* %8, align 4
  br label %13

74:                                               ; preds = %13
  store %struct.mpic_timer* null, %struct.mpic_timer** %2, align 8
  br label %75

75:                                               ; preds = %74, %34
  %76 = load %struct.mpic_timer*, %struct.mpic_timer** %2, align 8
  ret %struct.mpic_timer* %76
}

declare dso_local i32 @ARRAY_SIZE(%struct.cascade_priv*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
