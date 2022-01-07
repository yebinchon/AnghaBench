; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/kernel/extr_vtime.c___mod_vtimer.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/kernel/extr_vtime.c___mod_vtimer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vtimer_list = type { i64, i64, i32, i32 }

@virt_timer_lock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vtimer_list*, i64, i32)* @__mod_vtimer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__mod_vtimer(%struct.vtimer_list* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.vtimer_list*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.vtimer_list* %0, %struct.vtimer_list** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.vtimer_list*, %struct.vtimer_list** %5, align 8
  %11 = getelementptr inbounds %struct.vtimer_list, %struct.vtimer_list* %10, i32 0, i32 3
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  %14 = xor i1 %13, true
  %15 = zext i1 %14 to i32
  %16 = call i32 @BUG_ON(i32 %15)
  %17 = load %struct.vtimer_list*, %struct.vtimer_list** %5, align 8
  %18 = getelementptr inbounds %struct.vtimer_list, %struct.vtimer_list* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* %6, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %27

22:                                               ; preds = %3
  %23 = load %struct.vtimer_list*, %struct.vtimer_list** %5, align 8
  %24 = call i32 @vtimer_pending(%struct.vtimer_list* %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %22
  store i32 1, i32* %4, align 4
  br label %56

27:                                               ; preds = %22, %3
  %28 = load i64, i64* %8, align 8
  %29 = call i32 @spin_lock_irqsave(i32* @virt_timer_lock, i64 %28)
  %30 = load %struct.vtimer_list*, %struct.vtimer_list** %5, align 8
  %31 = call i32 @vtimer_pending(%struct.vtimer_list* %30)
  store i32 %31, i32* %9, align 4
  %32 = load i32, i32* %9, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %27
  %35 = load %struct.vtimer_list*, %struct.vtimer_list** %5, align 8
  %36 = getelementptr inbounds %struct.vtimer_list, %struct.vtimer_list* %35, i32 0, i32 2
  %37 = call i32 @list_del_init(i32* %36)
  br label %38

38:                                               ; preds = %34, %27
  %39 = load i32, i32* %7, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %38
  %42 = load i64, i64* %6, align 8
  br label %44

43:                                               ; preds = %38
  br label %44

44:                                               ; preds = %43, %41
  %45 = phi i64 [ %42, %41 ], [ 0, %43 ]
  %46 = load %struct.vtimer_list*, %struct.vtimer_list** %5, align 8
  %47 = getelementptr inbounds %struct.vtimer_list, %struct.vtimer_list* %46, i32 0, i32 1
  store i64 %45, i64* %47, align 8
  %48 = load i64, i64* %6, align 8
  %49 = load %struct.vtimer_list*, %struct.vtimer_list** %5, align 8
  %50 = getelementptr inbounds %struct.vtimer_list, %struct.vtimer_list* %49, i32 0, i32 0
  store i64 %48, i64* %50, align 8
  %51 = load %struct.vtimer_list*, %struct.vtimer_list** %5, align 8
  %52 = call i32 @internal_add_vtimer(%struct.vtimer_list* %51)
  %53 = load i64, i64* %8, align 8
  %54 = call i32 @spin_unlock_irqrestore(i32* @virt_timer_lock, i64 %53)
  %55 = load i32, i32* %9, align 4
  store i32 %55, i32* %4, align 4
  br label %56

56:                                               ; preds = %44, %26
  %57 = load i32, i32* %4, align 4
  ret i32 %57
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @vtimer_pending(%struct.vtimer_list*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @internal_add_vtimer(%struct.vtimer_list*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
