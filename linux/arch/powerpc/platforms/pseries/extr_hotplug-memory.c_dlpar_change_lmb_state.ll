; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/pseries/extr_hotplug-memory.c_dlpar_change_lmb_state.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/pseries/extr_hotplug-memory.c_dlpar_change_lmb_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drmem_lmb = type { i32 }
%struct.memory_block = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drmem_lmb*, i32)* @dlpar_change_lmb_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dlpar_change_lmb_state(%struct.drmem_lmb* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drmem_lmb*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.memory_block*, align 8
  %7 = alloca i32, align 4
  store %struct.drmem_lmb* %0, %struct.drmem_lmb** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.drmem_lmb*, %struct.drmem_lmb** %4, align 8
  %9 = call %struct.memory_block* @lmb_to_memblock(%struct.drmem_lmb* %8)
  store %struct.memory_block* %9, %struct.memory_block** %6, align 8
  %10 = load %struct.memory_block*, %struct.memory_block** %6, align 8
  %11 = icmp ne %struct.memory_block* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* @EINVAL, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %3, align 4
  br label %48

15:                                               ; preds = %2
  %16 = load i32, i32* %5, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %28

18:                                               ; preds = %15
  %19 = load %struct.memory_block*, %struct.memory_block** %6, align 8
  %20 = getelementptr inbounds %struct.memory_block, %struct.memory_block* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %18
  %25 = load %struct.memory_block*, %struct.memory_block** %6, align 8
  %26 = getelementptr inbounds %struct.memory_block, %struct.memory_block* %25, i32 0, i32 0
  %27 = call i32 @device_online(%struct.TYPE_4__* %26)
  store i32 %27, i32* %7, align 4
  br label %43

28:                                               ; preds = %18, %15
  %29 = load i32, i32* %5, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %41, label %31

31:                                               ; preds = %28
  %32 = load %struct.memory_block*, %struct.memory_block** %6, align 8
  %33 = getelementptr inbounds %struct.memory_block, %struct.memory_block* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %41, label %37

37:                                               ; preds = %31
  %38 = load %struct.memory_block*, %struct.memory_block** %6, align 8
  %39 = getelementptr inbounds %struct.memory_block, %struct.memory_block* %38, i32 0, i32 0
  %40 = call i32 @device_offline(%struct.TYPE_4__* %39)
  store i32 %40, i32* %7, align 4
  br label %42

41:                                               ; preds = %31, %28
  store i32 0, i32* %7, align 4
  br label %42

42:                                               ; preds = %41, %37
  br label %43

43:                                               ; preds = %42, %24
  %44 = load %struct.memory_block*, %struct.memory_block** %6, align 8
  %45 = getelementptr inbounds %struct.memory_block, %struct.memory_block* %44, i32 0, i32 0
  %46 = call i32 @put_device(%struct.TYPE_4__* %45)
  %47 = load i32, i32* %7, align 4
  store i32 %47, i32* %3, align 4
  br label %48

48:                                               ; preds = %43, %12
  %49 = load i32, i32* %3, align 4
  ret i32 %49
}

declare dso_local %struct.memory_block* @lmb_to_memblock(%struct.drmem_lmb*) #1

declare dso_local i32 @device_online(%struct.TYPE_4__*) #1

declare dso_local i32 @device_offline(%struct.TYPE_4__*) #1

declare dso_local i32 @put_device(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
