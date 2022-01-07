; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/events/intel/extr_core.c_default_is_visible.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/events/intel/extr_core.c_default_is_visible.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.attribute }
%struct.attribute = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.kobject = type { i32 }

@dev_attr_allow_tsx_force_abort = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@x86_pmu = common dso_local global %struct.TYPE_3__ zeroinitializer, align 4
@PMU_FL_TFA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kobject*, %struct.attribute*, i32)* @default_is_visible to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @default_is_visible(%struct.kobject* %0, %struct.attribute* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.kobject*, align 8
  %6 = alloca %struct.attribute*, align 8
  %7 = alloca i32, align 4
  store %struct.kobject* %0, %struct.kobject** %5, align 8
  store %struct.attribute* %1, %struct.attribute** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load %struct.attribute*, %struct.attribute** %6, align 8
  %9 = icmp eq %struct.attribute* %8, getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @dev_attr_allow_tsx_force_abort, i32 0, i32 0)
  br i1 %9, label %10, label %22

10:                                               ; preds = %3
  %11 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @x86_pmu, i32 0, i32 0), align 4
  %12 = load i32, i32* @PMU_FL_TFA, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %10
  %16 = load %struct.attribute*, %struct.attribute** %6, align 8
  %17 = getelementptr inbounds %struct.attribute, %struct.attribute* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  br label %20

19:                                               ; preds = %10
  br label %20

20:                                               ; preds = %19, %15
  %21 = phi i32 [ %18, %15 ], [ 0, %19 ]
  store i32 %21, i32* %4, align 4
  br label %26

22:                                               ; preds = %3
  %23 = load %struct.attribute*, %struct.attribute** %6, align 8
  %24 = getelementptr inbounds %struct.attribute, %struct.attribute* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %4, align 4
  br label %26

26:                                               ; preds = %22, %20
  %27 = load i32, i32* %4, align 4
  ret i32 %27
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
