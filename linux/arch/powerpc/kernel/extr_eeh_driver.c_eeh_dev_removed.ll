; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_eeh_driver.c_eeh_dev_removed.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_eeh_driver.c_eeh_dev_removed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eeh_dev = type { i32 }

@EEH_DEV_REMOVED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.eeh_dev*)* @eeh_dev_removed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @eeh_dev_removed(%struct.eeh_dev* %0) #0 {
  %2 = alloca %struct.eeh_dev*, align 8
  store %struct.eeh_dev* %0, %struct.eeh_dev** %2, align 8
  %3 = load %struct.eeh_dev*, %struct.eeh_dev** %2, align 8
  %4 = icmp ne %struct.eeh_dev* %3, null
  br i1 %4, label %5, label %12

5:                                                ; preds = %1
  %6 = load %struct.eeh_dev*, %struct.eeh_dev** %2, align 8
  %7 = getelementptr inbounds %struct.eeh_dev, %struct.eeh_dev* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @EEH_DEV_REMOVED, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br label %12

12:                                               ; preds = %5, %1
  %13 = phi i1 [ true, %1 ], [ %11, %5 ]
  %14 = zext i1 %13 to i32
  ret i32 %14
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
