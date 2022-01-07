; ModuleID = '/home/carl/AnghaBench/linux/drivers/base/extr_core.c_live_in_glue_dir.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/base/extr_core.c_live_in_glue_dir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kobject = type { i32* }
%struct.device = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kobject*, %struct.device*)* @live_in_glue_dir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @live_in_glue_dir(%struct.kobject* %0, %struct.device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.kobject*, align 8
  %5 = alloca %struct.device*, align 8
  store %struct.kobject* %0, %struct.kobject** %4, align 8
  store %struct.device* %1, %struct.device** %5, align 8
  %6 = load %struct.kobject*, %struct.kobject** %4, align 8
  %7 = icmp ne %struct.kobject* %6, null
  br i1 %7, label %8, label %24

8:                                                ; preds = %2
  %9 = load %struct.device*, %struct.device** %5, align 8
  %10 = getelementptr inbounds %struct.device, %struct.device* %9, i32 0, i32 0
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = icmp ne %struct.TYPE_4__* %11, null
  br i1 %12, label %13, label %24

13:                                               ; preds = %8
  %14 = load %struct.kobject*, %struct.kobject** %4, align 8
  %15 = getelementptr inbounds %struct.kobject, %struct.kobject* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = load %struct.device*, %struct.device** %5, align 8
  %18 = getelementptr inbounds %struct.device, %struct.device* %17, i32 0, i32 0
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = icmp ne i32* %16, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %13, %8, %2
  store i32 0, i32* %3, align 4
  br label %26

25:                                               ; preds = %13
  store i32 1, i32* %3, align 4
  br label %26

26:                                               ; preds = %25, %24
  %27 = load i32, i32* %3, align 4
  ret i32 %27
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
