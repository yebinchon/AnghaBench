; ModuleID = '/home/carl/AnghaBench/linux/drivers/base/extr_core.c_cleanup_glue_dir.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/base/extr_core.c_cleanup_glue_dir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.kobject = type { i32 }

@gdp_mutex = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device*, %struct.kobject*)* @cleanup_glue_dir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cleanup_glue_dir(%struct.device* %0, %struct.kobject* %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.kobject*, align 8
  %5 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  store %struct.kobject* %1, %struct.kobject** %4, align 8
  %6 = load %struct.kobject*, %struct.kobject** %4, align 8
  %7 = load %struct.device*, %struct.device** %3, align 8
  %8 = call i32 @live_in_glue_dir(%struct.kobject* %6, %struct.device* %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  br label %30

11:                                               ; preds = %2
  %12 = call i32 @mutex_lock(i32* @gdp_mutex)
  %13 = load %struct.kobject*, %struct.kobject** %4, align 8
  %14 = getelementptr inbounds %struct.kobject, %struct.kobject* %13, i32 0, i32 0
  %15 = call i32 @kref_read(i32* %14)
  store i32 %15, i32* %5, align 4
  %16 = load %struct.kobject*, %struct.kobject** %4, align 8
  %17 = call i32 @kobject_has_children(%struct.kobject* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %26, label %19

19:                                               ; preds = %11
  %20 = load i32, i32* %5, align 4
  %21 = add i32 %20, -1
  store i32 %21, i32* %5, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %19
  %24 = load %struct.kobject*, %struct.kobject** %4, align 8
  %25 = call i32 @kobject_del(%struct.kobject* %24)
  br label %26

26:                                               ; preds = %23, %19, %11
  %27 = load %struct.kobject*, %struct.kobject** %4, align 8
  %28 = call i32 @kobject_put(%struct.kobject* %27)
  %29 = call i32 @mutex_unlock(i32* @gdp_mutex)
  br label %30

30:                                               ; preds = %26, %10
  ret void
}

declare dso_local i32 @live_in_glue_dir(%struct.kobject*, %struct.device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @kref_read(i32*) #1

declare dso_local i32 @kobject_has_children(%struct.kobject*) #1

declare dso_local i32 @kobject_del(%struct.kobject*) #1

declare dso_local i32 @kobject_put(%struct.kobject*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
