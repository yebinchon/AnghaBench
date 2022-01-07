; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/events/extr_msr.c_msr_event_update.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/events/extr_msr.c_msr_event_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_event = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32 }

@MSR_SMI_COUNT = common dso_local global i64 0, align 8
@MSR_IA32_THERM_STATUS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.perf_event*)* @msr_event_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @msr_event_update(%struct.perf_event* %0) #0 {
  %2 = alloca %struct.perf_event*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.perf_event* %0, %struct.perf_event** %2, align 8
  br label %6

6:                                                ; preds = %21, %1
  %7 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %8 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 1
  %10 = call i64 @local64_read(i32* %9)
  store i64 %10, i64* %3, align 8
  %11 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %12 = call i64 @msr_read_counter(%struct.perf_event* %11)
  store i64 %12, i64* %4, align 8
  %13 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %14 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 1
  %16 = load i64, i64* %3, align 8
  %17 = load i64, i64* %4, align 8
  %18 = call i64 @local64_cmpxchg(i32* %15, i64 %16, i64 %17)
  %19 = load i64, i64* %3, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %6
  br label %6

22:                                               ; preds = %6
  %23 = load i64, i64* %4, align 8
  %24 = load i64, i64* %3, align 8
  %25 = sub nsw i64 %23, %24
  store i64 %25, i64* %5, align 8
  %26 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %27 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @MSR_SMI_COUNT, align 8
  %31 = icmp eq i64 %29, %30
  %32 = zext i1 %31 to i32
  %33 = call i64 @unlikely(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %42

35:                                               ; preds = %22
  %36 = load i64, i64* %5, align 8
  %37 = call i64 @sign_extend64(i64 %36, i32 31)
  store i64 %37, i64* %5, align 8
  %38 = load i64, i64* %5, align 8
  %39 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %40 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %39, i32 0, i32 0
  %41 = call i32 @local64_add(i64 %38, i32* %40)
  br label %73

42:                                               ; preds = %22
  %43 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %44 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @MSR_IA32_THERM_STATUS, align 8
  %48 = icmp eq i64 %46, %47
  %49 = zext i1 %48 to i32
  %50 = call i64 @unlikely(i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %67

52:                                               ; preds = %42
  %53 = load i64, i64* %4, align 8
  %54 = and i64 %53, 2147483648
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %52
  %57 = load i64, i64* %4, align 8
  %58 = ashr i64 %57, 16
  %59 = and i64 %58, 63
  br label %61

60:                                               ; preds = %52
  br label %61

61:                                               ; preds = %60, %56
  %62 = phi i64 [ %59, %56 ], [ -1, %60 ]
  store i64 %62, i64* %4, align 8
  %63 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %64 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %63, i32 0, i32 0
  %65 = load i64, i64* %4, align 8
  %66 = call i32 @local64_set(i32* %64, i64 %65)
  br label %72

67:                                               ; preds = %42
  %68 = load i64, i64* %5, align 8
  %69 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %70 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %69, i32 0, i32 0
  %71 = call i32 @local64_add(i64 %68, i32* %70)
  br label %72

72:                                               ; preds = %67, %61
  br label %73

73:                                               ; preds = %72, %35
  ret void
}

declare dso_local i64 @local64_read(i32*) #1

declare dso_local i64 @msr_read_counter(%struct.perf_event*) #1

declare dso_local i64 @local64_cmpxchg(i32*, i64, i64) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @sign_extend64(i64, i32) #1

declare dso_local i32 @local64_add(i64, i32*) #1

declare dso_local i32 @local64_set(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
