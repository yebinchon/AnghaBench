; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/events/intel/extr_pt.c_pt_event_init.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/events/intel/extr_pt.c_pt_event_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }
%struct.perf_event = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }

@pt_pmu = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@ENOENT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@x86_lbr_exclusive_pt = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@pt_event_destroy = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.perf_event*)* @pt_event_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pt_event_init(%struct.perf_event* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.perf_event*, align 8
  store %struct.perf_event* %0, %struct.perf_event** %3, align 8
  %4 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %5 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %4, i32 0, i32 1
  %6 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @pt_pmu, i32 0, i32 0, i32 0), align 8
  %9 = icmp ne i64 %7, %8
  br i1 %9, label %10, label %13

10:                                               ; preds = %1
  %11 = load i32, i32* @ENOENT, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %2, align 4
  br label %40

13:                                               ; preds = %1
  %14 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %15 = call i32 @pt_event_valid(%struct.perf_event* %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %13
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %40

20:                                               ; preds = %13
  %21 = load i32, i32* @x86_lbr_exclusive_pt, align 4
  %22 = call i64 @x86_add_exclusive(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %20
  %25 = load i32, i32* @EBUSY, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %2, align 4
  br label %40

27:                                               ; preds = %20
  %28 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %29 = call i64 @pt_addr_filters_init(%struct.perf_event* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %27
  %32 = load i32, i32* @x86_lbr_exclusive_pt, align 4
  %33 = call i32 @x86_del_exclusive(i32 %32)
  %34 = load i32, i32* @ENOMEM, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %2, align 4
  br label %40

36:                                               ; preds = %27
  %37 = load i32, i32* @pt_event_destroy, align 4
  %38 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %39 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 8
  store i32 0, i32* %2, align 4
  br label %40

40:                                               ; preds = %36, %31, %24, %17, %10
  %41 = load i32, i32* %2, align 4
  ret i32 %41
}

declare dso_local i32 @pt_event_valid(%struct.perf_event*) #1

declare dso_local i64 @x86_add_exclusive(i32) #1

declare dso_local i64 @pt_addr_filters_init(%struct.perf_event*) #1

declare dso_local i32 @x86_del_exclusive(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
