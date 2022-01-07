; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/pseries/extr_hotplug-cpu.c_pseries_cpu_die.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/pseries/extr_hotplug-cpu.c_pseries_cpu_die.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@CPU_STATE_INACTIVE = common dso_local global i64 0, align 8
@CPU_STATE_OFFLINE = common dso_local global i64 0, align 8
@QCSS_STOPPED = common dso_local global i32 0, align 4
@QCSS_HARDWARE_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Querying DEAD? cpu %i (%i) shows %i\0A\00", align 1
@paca_ptrs = common dso_local global %struct.TYPE_2__** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @pseries_cpu_die to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pseries_cpu_die(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 1, i32* %4, align 4
  %6 = load i32, i32* %2, align 4
  %7 = call i32 @get_hard_smp_processor_id(i32 %6)
  store i32 %7, i32* %5, align 4
  %8 = load i32, i32* %2, align 4
  %9 = call i64 @get_preferred_offline_state(i32 %8)
  %10 = load i64, i64* @CPU_STATE_INACTIVE, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %28

12:                                               ; preds = %1
  store i32 1, i32* %4, align 4
  store i32 0, i32* %3, align 4
  br label %13

13:                                               ; preds = %24, %12
  %14 = load i32, i32* %3, align 4
  %15 = icmp slt i32 %14, 5000
  br i1 %15, label %16, label %27

16:                                               ; preds = %13
  %17 = load i32, i32* %2, align 4
  %18 = call i64 @get_cpu_current_state(i32 %17)
  %19 = load i64, i64* @CPU_STATE_INACTIVE, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %16
  store i32 0, i32* %4, align 4
  br label %27

22:                                               ; preds = %16
  %23 = call i32 @msleep(i32 1)
  br label %24

24:                                               ; preds = %22
  %25 = load i32, i32* %3, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %3, align 4
  br label %13

27:                                               ; preds = %21, %13
  br label %55

28:                                               ; preds = %1
  %29 = load i32, i32* %2, align 4
  %30 = call i64 @get_preferred_offline_state(i32 %29)
  %31 = load i64, i64* @CPU_STATE_OFFLINE, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %54

33:                                               ; preds = %28
  store i32 0, i32* %3, align 4
  br label %34

34:                                               ; preds = %50, %33
  %35 = load i32, i32* %3, align 4
  %36 = icmp slt i32 %35, 25
  br i1 %36, label %37, label %53

37:                                               ; preds = %34
  %38 = load i32, i32* %5, align 4
  %39 = call i32 @smp_query_cpu_stopped(i32 %38)
  store i32 %39, i32* %4, align 4
  %40 = load i32, i32* %4, align 4
  %41 = load i32, i32* @QCSS_STOPPED, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %47, label %43

43:                                               ; preds = %37
  %44 = load i32, i32* %4, align 4
  %45 = load i32, i32* @QCSS_HARDWARE_ERROR, align 4
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %43, %37
  br label %53

48:                                               ; preds = %43
  %49 = call i32 (...) @cpu_relax()
  br label %50

50:                                               ; preds = %48
  %51 = load i32, i32* %3, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %3, align 4
  br label %34

53:                                               ; preds = %47, %34
  br label %54

54:                                               ; preds = %53, %28
  br label %55

55:                                               ; preds = %54, %27
  %56 = load i32, i32* %4, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %63

58:                                               ; preds = %55
  %59 = load i32, i32* %2, align 4
  %60 = load i32, i32* %5, align 4
  %61 = load i32, i32* %4, align 4
  %62 = call i32 @printk(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %59, i32 %60, i32 %61)
  br label %63

63:                                               ; preds = %58, %55
  %64 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @paca_ptrs, align 8
  %65 = load i32, i32* %2, align 4
  %66 = zext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %64, i64 %66
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  store i64 0, i64* %69, align 8
  ret void
}

declare dso_local i32 @get_hard_smp_processor_id(i32) #1

declare dso_local i64 @get_preferred_offline_state(i32) #1

declare dso_local i64 @get_cpu_current_state(i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @smp_query_cpu_stopped(i32) #1

declare dso_local i32 @cpu_relax(...) #1

declare dso_local i32 @printk(i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
