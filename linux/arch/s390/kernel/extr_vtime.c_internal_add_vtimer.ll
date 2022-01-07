; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/kernel/extr_vtime.c_internal_add_vtimer.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/kernel/extr_vtime.c_internal_add_vtimer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vtimer_list = type { i64, i32 }

@virt_timer_list = common dso_local global i32 0, align 4
@virt_timer_current = common dso_local global i32 0, align 4
@virt_timer_elapsed = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vtimer_list*)* @internal_add_vtimer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @internal_add_vtimer(%struct.vtimer_list* %0) #0 {
  %2 = alloca %struct.vtimer_list*, align 8
  store %struct.vtimer_list* %0, %struct.vtimer_list** %2, align 8
  %3 = call i64 @list_empty(i32* @virt_timer_list)
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %5, label %14

5:                                                ; preds = %1
  %6 = load %struct.vtimer_list*, %struct.vtimer_list** %2, align 8
  %7 = getelementptr inbounds %struct.vtimer_list, %struct.vtimer_list* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = call i32 @atomic64_set(i32* @virt_timer_current, i64 %8)
  %10 = call i32 @atomic64_set(i32* @virt_timer_elapsed, i64 0)
  %11 = load %struct.vtimer_list*, %struct.vtimer_list** %2, align 8
  %12 = getelementptr inbounds %struct.vtimer_list, %struct.vtimer_list* %11, i32 0, i32 1
  %13 = call i32 @list_add(i32* %12, i32* @virt_timer_list)
  br label %36

14:                                               ; preds = %1
  %15 = call i64 @atomic64_read(i32* @virt_timer_elapsed)
  %16 = load %struct.vtimer_list*, %struct.vtimer_list** %2, align 8
  %17 = getelementptr inbounds %struct.vtimer_list, %struct.vtimer_list* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = add nsw i64 %18, %15
  store i64 %19, i64* %17, align 8
  %20 = load %struct.vtimer_list*, %struct.vtimer_list** %2, align 8
  %21 = getelementptr inbounds %struct.vtimer_list, %struct.vtimer_list* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = call i64 @atomic64_read(i32* @virt_timer_current)
  %24 = icmp slt i64 %22, %23
  %25 = zext i1 %24 to i32
  %26 = call i64 @likely(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %14
  %29 = load %struct.vtimer_list*, %struct.vtimer_list** %2, align 8
  %30 = getelementptr inbounds %struct.vtimer_list, %struct.vtimer_list* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = call i32 @atomic64_set(i32* @virt_timer_current, i64 %31)
  br label %33

33:                                               ; preds = %28, %14
  %34 = load %struct.vtimer_list*, %struct.vtimer_list** %2, align 8
  %35 = call i32 @list_add_sorted(%struct.vtimer_list* %34, i32* @virt_timer_list)
  br label %36

36:                                               ; preds = %33, %5
  ret void
}

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i32 @atomic64_set(i32*, i64) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i64 @atomic64_read(i32*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @list_add_sorted(%struct.vtimer_list*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
