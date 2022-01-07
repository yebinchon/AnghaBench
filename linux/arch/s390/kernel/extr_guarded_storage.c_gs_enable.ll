; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/kernel/extr_guarded_storage.c_gs_enable.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/kernel/extr_guarded_storage.c_gs_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.gs_cb* }
%struct.gs_cb = type { i32 }

@current = common dso_local global %struct.TYPE_4__* null, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @gs_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gs_enable() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.gs_cb*, align 8
  %3 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %4 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 0
  %5 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  %6 = load %struct.gs_cb*, %struct.gs_cb** %5, align 8
  %7 = icmp ne %struct.gs_cb* %6, null
  br i1 %7, label %28, label %8

8:                                                ; preds = %0
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.gs_cb* @kzalloc(i32 4, i32 %9)
  store %struct.gs_cb* %10, %struct.gs_cb** %2, align 8
  %11 = load %struct.gs_cb*, %struct.gs_cb** %2, align 8
  %12 = icmp ne %struct.gs_cb* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %8
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %1, align 4
  br label %29

16:                                               ; preds = %8
  %17 = load %struct.gs_cb*, %struct.gs_cb** %2, align 8
  %18 = getelementptr inbounds %struct.gs_cb, %struct.gs_cb* %17, i32 0, i32 0
  store i32 25, i32* %18, align 4
  %19 = call i32 (...) @preempt_disable()
  %20 = call i32 @__ctl_set_bit(i32 2, i32 4)
  %21 = load %struct.gs_cb*, %struct.gs_cb** %2, align 8
  %22 = call i32 @load_gs_cb(%struct.gs_cb* %21)
  %23 = load %struct.gs_cb*, %struct.gs_cb** %2, align 8
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  store %struct.gs_cb* %23, %struct.gs_cb** %26, align 8
  %27 = call i32 (...) @preempt_enable()
  br label %28

28:                                               ; preds = %16, %0
  store i32 0, i32* %1, align 4
  br label %29

29:                                               ; preds = %28, %13
  %30 = load i32, i32* %1, align 4
  ret i32 %30
}

declare dso_local %struct.gs_cb* @kzalloc(i32, i32) #1

declare dso_local i32 @preempt_disable(...) #1

declare dso_local i32 @__ctl_set_bit(i32, i32) #1

declare dso_local i32 @load_gs_cb(%struct.gs_cb*) #1

declare dso_local i32 @preempt_enable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
