; ModuleID = '/home/carl/AnghaBench/linux/drivers/base/extr_core.c_device_get_ownership.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/base/extr_core.c_device_get_ownership.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kobject = type { i32 }
%struct.device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.device*, i32*, i32*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kobject*, i32*, i32*)* @device_get_ownership to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @device_get_ownership(%struct.kobject* %0, i32* %1, i32* %2) #0 {
  %4 = alloca %struct.kobject*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.device*, align 8
  store %struct.kobject* %0, %struct.kobject** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %8 = load %struct.kobject*, %struct.kobject** %4, align 8
  %9 = call %struct.device* @kobj_to_dev(%struct.kobject* %8)
  store %struct.device* %9, %struct.device** %7, align 8
  %10 = load %struct.device*, %struct.device** %7, align 8
  %11 = getelementptr inbounds %struct.device, %struct.device* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = icmp ne %struct.TYPE_2__* %12, null
  br i1 %13, label %14, label %31

14:                                               ; preds = %3
  %15 = load %struct.device*, %struct.device** %7, align 8
  %16 = getelementptr inbounds %struct.device, %struct.device* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32 (%struct.device*, i32*, i32*)*, i32 (%struct.device*, i32*, i32*)** %18, align 8
  %20 = icmp ne i32 (%struct.device*, i32*, i32*)* %19, null
  br i1 %20, label %21, label %31

21:                                               ; preds = %14
  %22 = load %struct.device*, %struct.device** %7, align 8
  %23 = getelementptr inbounds %struct.device, %struct.device* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32 (%struct.device*, i32*, i32*)*, i32 (%struct.device*, i32*, i32*)** %25, align 8
  %27 = load %struct.device*, %struct.device** %7, align 8
  %28 = load i32*, i32** %5, align 8
  %29 = load i32*, i32** %6, align 8
  %30 = call i32 %26(%struct.device* %27, i32* %28, i32* %29)
  br label %31

31:                                               ; preds = %21, %14, %3
  ret void
}

declare dso_local %struct.device* @kobj_to_dev(%struct.kobject*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
