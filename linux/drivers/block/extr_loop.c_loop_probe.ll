; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/extr_loop.c_loop_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/extr_loop.c_loop_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kobject = type { i32 }
%struct.loop_device = type { i32 }

@loop_ctl_mutex = common dso_local global i32 0, align 4
@part_shift = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.kobject* (i32, i32*, i8*)* @loop_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.kobject* @loop_probe(i32 %0, i32* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.loop_device*, align 8
  %8 = alloca %struct.kobject*, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  store i8* %2, i8** %6, align 8
  %10 = call i32 @mutex_lock(i32* @loop_ctl_mutex)
  %11 = load i32, i32* %4, align 4
  %12 = call i32 @MINOR(i32 %11)
  %13 = load i32, i32* @part_shift, align 4
  %14 = ashr i32 %12, %13
  %15 = call i32 @loop_lookup(%struct.loop_device** %7, i32 %14)
  store i32 %15, i32* %9, align 4
  %16 = load i32, i32* %9, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %3
  %19 = load i32, i32* %4, align 4
  %20 = call i32 @MINOR(i32 %19)
  %21 = load i32, i32* @part_shift, align 4
  %22 = ashr i32 %20, %21
  %23 = call i32 @loop_add(%struct.loop_device** %7, i32 %22)
  store i32 %23, i32* %9, align 4
  br label %24

24:                                               ; preds = %18, %3
  %25 = load i32, i32* %9, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %24
  store %struct.kobject* null, %struct.kobject** %8, align 8
  br label %33

28:                                               ; preds = %24
  %29 = load %struct.loop_device*, %struct.loop_device** %7, align 8
  %30 = getelementptr inbounds %struct.loop_device, %struct.loop_device* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call %struct.kobject* @get_disk_and_module(i32 %31)
  store %struct.kobject* %32, %struct.kobject** %8, align 8
  br label %33

33:                                               ; preds = %28, %27
  %34 = call i32 @mutex_unlock(i32* @loop_ctl_mutex)
  %35 = load i32*, i32** %5, align 8
  store i32 0, i32* %35, align 4
  %36 = load %struct.kobject*, %struct.kobject** %8, align 8
  ret %struct.kobject* %36
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @loop_lookup(%struct.loop_device**, i32) #1

declare dso_local i32 @MINOR(i32) #1

declare dso_local i32 @loop_add(%struct.loop_device**, i32) #1

declare dso_local %struct.kobject* @get_disk_and_module(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
