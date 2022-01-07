; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/events/intel/extr_ds.c_release_bts_buffer.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/events/intel/extr_ds.c_release_bts_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.cpu_hw_events = type { i32* }
%struct.TYPE_6__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@cpu_hw_events = common dso_local global i32 0, align 4
@x86_pmu = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@BTS_BUFFER_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @release_bts_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @release_bts_buffer(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cpu_hw_events*, align 8
  %4 = alloca i8*, align 8
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = call %struct.cpu_hw_events* @per_cpu_ptr(i32* @cpu_hw_events, i32 %5)
  store %struct.cpu_hw_events* %6, %struct.cpu_hw_events** %3, align 8
  %7 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @x86_pmu, i32 0, i32 0), align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  br label %26

10:                                               ; preds = %1
  %11 = load i32, i32* %2, align 4
  %12 = call %struct.TYPE_6__* @get_cpu_entry_area(i32 %11)
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = bitcast i32* %14 to i8*
  store i8* %15, i8** %4, align 8
  %16 = load i8*, i8** %4, align 8
  %17 = load i32, i32* @BTS_BUFFER_SIZE, align 4
  %18 = call i32 @ds_clear_cea(i8* %16, i32 %17)
  %19 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %3, align 8
  %20 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = load i32, i32* @BTS_BUFFER_SIZE, align 4
  %23 = call i32 @dsfree_pages(i32* %21, i32 %22)
  %24 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %3, align 8
  %25 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %24, i32 0, i32 0
  store i32* null, i32** %25, align 8
  br label %26

26:                                               ; preds = %10, %9
  ret void
}

declare dso_local %struct.cpu_hw_events* @per_cpu_ptr(i32*, i32) #1

declare dso_local %struct.TYPE_6__* @get_cpu_entry_area(i32) #1

declare dso_local i32 @ds_clear_cea(i8*, i32) #1

declare dso_local i32 @dsfree_pages(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
