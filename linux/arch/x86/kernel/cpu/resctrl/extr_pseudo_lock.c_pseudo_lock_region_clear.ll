; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/resctrl/extr_pseudo_lock.c_pseudo_lock_region_clear.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/resctrl/extr_pseudo_lock.c_pseudo_lock_region_clear.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pseudo_lock_region = type { i32*, i64, %struct.TYPE_2__*, i32*, i32*, i64, i64 }
%struct.TYPE_2__ = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pseudo_lock_region*)* @pseudo_lock_region_clear to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pseudo_lock_region_clear(%struct.pseudo_lock_region* %0) #0 {
  %2 = alloca %struct.pseudo_lock_region*, align 8
  store %struct.pseudo_lock_region* %0, %struct.pseudo_lock_region** %2, align 8
  %3 = load %struct.pseudo_lock_region*, %struct.pseudo_lock_region** %2, align 8
  %4 = getelementptr inbounds %struct.pseudo_lock_region, %struct.pseudo_lock_region* %3, i32 0, i32 6
  store i64 0, i64* %4, align 8
  %5 = load %struct.pseudo_lock_region*, %struct.pseudo_lock_region** %2, align 8
  %6 = getelementptr inbounds %struct.pseudo_lock_region, %struct.pseudo_lock_region* %5, i32 0, i32 5
  store i64 0, i64* %6, align 8
  %7 = load %struct.pseudo_lock_region*, %struct.pseudo_lock_region** %2, align 8
  %8 = getelementptr inbounds %struct.pseudo_lock_region, %struct.pseudo_lock_region* %7, i32 0, i32 4
  %9 = load i32*, i32** %8, align 8
  %10 = call i32 @kfree(i32* %9)
  %11 = load %struct.pseudo_lock_region*, %struct.pseudo_lock_region** %2, align 8
  %12 = getelementptr inbounds %struct.pseudo_lock_region, %struct.pseudo_lock_region* %11, i32 0, i32 4
  store i32* null, i32** %12, align 8
  %13 = load %struct.pseudo_lock_region*, %struct.pseudo_lock_region** %2, align 8
  %14 = getelementptr inbounds %struct.pseudo_lock_region, %struct.pseudo_lock_region* %13, i32 0, i32 3
  store i32* null, i32** %14, align 8
  %15 = load %struct.pseudo_lock_region*, %struct.pseudo_lock_region** %2, align 8
  %16 = getelementptr inbounds %struct.pseudo_lock_region, %struct.pseudo_lock_region* %15, i32 0, i32 2
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = icmp ne %struct.TYPE_2__* %17, null
  br i1 %18, label %19, label %24

19:                                               ; preds = %1
  %20 = load %struct.pseudo_lock_region*, %struct.pseudo_lock_region** %2, align 8
  %21 = getelementptr inbounds %struct.pseudo_lock_region, %struct.pseudo_lock_region* %20, i32 0, i32 2
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  store i32* null, i32** %23, align 8
  br label %24

24:                                               ; preds = %19, %1
  %25 = load %struct.pseudo_lock_region*, %struct.pseudo_lock_region** %2, align 8
  %26 = getelementptr inbounds %struct.pseudo_lock_region, %struct.pseudo_lock_region* %25, i32 0, i32 2
  store %struct.TYPE_2__* null, %struct.TYPE_2__** %26, align 8
  %27 = load %struct.pseudo_lock_region*, %struct.pseudo_lock_region** %2, align 8
  %28 = getelementptr inbounds %struct.pseudo_lock_region, %struct.pseudo_lock_region* %27, i32 0, i32 1
  store i64 0, i64* %28, align 8
  %29 = load %struct.pseudo_lock_region*, %struct.pseudo_lock_region** %2, align 8
  %30 = getelementptr inbounds %struct.pseudo_lock_region, %struct.pseudo_lock_region* %29, i32 0, i32 0
  store i32* null, i32** %30, align 8
  ret void
}

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
