; ModuleID = '/home/carl/AnghaBench/linux/arch/ia64/kernel/extr_crash.c_kdump_cpu_freeze.c'
source_filename = "/home/carl/AnghaBench/linux/arch/ia64/kernel/extr_crash.c_kdump_cpu_freeze.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.unw_frame_info = type { i64 }

@current = common dso_local global %struct.TYPE_4__* null, align 8
@kdump_cpu_frozen = common dso_local global i32 0, align 4
@kdump_status = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @kdump_cpu_freeze(%struct.unw_frame_info* %0, i8* %1) #0 {
  %3 = alloca %struct.unw_frame_info*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store %struct.unw_frame_info* %0, %struct.unw_frame_info** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = call i32 (...) @local_irq_disable()
  %7 = call i32 (...) @smp_processor_id()
  store i32 %7, i32* %5, align 4
  %8 = call i32 (...) @crash_save_this_cpu()
  %9 = load %struct.unw_frame_info*, %struct.unw_frame_info** %3, align 8
  %10 = getelementptr inbounds %struct.unw_frame_info, %struct.unw_frame_info* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = sub nsw i64 %11, 16
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  store i64 %12, i64* %15, align 8
  %16 = call i32 (...) @ia64_set_psr_mc()
  %17 = call i32 @atomic_inc(i32* @kdump_cpu_frozen)
  %18 = load i32*, i32** @kdump_status, align 8
  %19 = load i32, i32* %5, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32, i32* %18, i64 %20
  store i32 1, i32* %21, align 4
  %22 = call i32 (...) @mb()
  br label %23

23:                                               ; preds = %23, %2
  %24 = call i32 (...) @cpu_relax()
  br label %23
}

declare dso_local i32 @local_irq_disable(...) #1

declare dso_local i32 @smp_processor_id(...) #1

declare dso_local i32 @crash_save_this_cpu(...) #1

declare dso_local i32 @ia64_set_psr_mc(...) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @mb(...) #1

declare dso_local i32 @cpu_relax(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
