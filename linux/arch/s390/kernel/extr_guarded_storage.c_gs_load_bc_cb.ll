; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/kernel/extr_guarded_storage.c_gs_load_bc_cb.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/kernel/extr_guarded_storage.c_gs_load_bc_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.gs_cb*, %struct.gs_cb* }
%struct.gs_cb = type { i32 }
%struct.pt_regs = type { i32 }

@TIF_GUARDED_STORAGE = common dso_local global i32 0, align 4
@current = common dso_local global %struct.TYPE_4__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gs_load_bc_cb(%struct.pt_regs* %0) #0 {
  %2 = alloca %struct.pt_regs*, align 8
  %3 = alloca %struct.gs_cb*, align 8
  store %struct.pt_regs* %0, %struct.pt_regs** %2, align 8
  %4 = call i32 (...) @preempt_disable()
  %5 = load i32, i32* @TIF_GUARDED_STORAGE, align 4
  %6 = call i32 @clear_thread_flag(i32 %5)
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 1
  %10 = load %struct.gs_cb*, %struct.gs_cb** %9, align 8
  store %struct.gs_cb* %10, %struct.gs_cb** %3, align 8
  %11 = load %struct.gs_cb*, %struct.gs_cb** %3, align 8
  %12 = icmp ne %struct.gs_cb* %11, null
  br i1 %12, label %13, label %29

13:                                               ; preds = %1
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load %struct.gs_cb*, %struct.gs_cb** %16, align 8
  %18 = call i32 @kfree(%struct.gs_cb* %17)
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 1
  store %struct.gs_cb* null, %struct.gs_cb** %21, align 8
  %22 = call i32 @__ctl_set_bit(i32 2, i32 4)
  %23 = load %struct.gs_cb*, %struct.gs_cb** %3, align 8
  %24 = call i32 @load_gs_cb(%struct.gs_cb* %23)
  %25 = load %struct.gs_cb*, %struct.gs_cb** %3, align 8
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  store %struct.gs_cb* %25, %struct.gs_cb** %28, align 8
  br label %29

29:                                               ; preds = %13, %1
  %30 = call i32 (...) @preempt_enable()
  ret void
}

declare dso_local i32 @preempt_disable(...) #1

declare dso_local i32 @clear_thread_flag(i32) #1

declare dso_local i32 @kfree(%struct.gs_cb*) #1

declare dso_local i32 @__ctl_set_bit(i32, i32) #1

declare dso_local i32 @load_gs_cb(%struct.gs_cb*) #1

declare dso_local i32 @preempt_enable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
