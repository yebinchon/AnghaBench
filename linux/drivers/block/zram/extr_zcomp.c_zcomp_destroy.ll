; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/zram/extr_zcomp.c_zcomp_destroy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/zram/extr_zcomp.c_zcomp_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zcomp = type { i32, i32 }

@CPUHP_ZCOMP_PREPARE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @zcomp_destroy(%struct.zcomp* %0) #0 {
  %2 = alloca %struct.zcomp*, align 8
  store %struct.zcomp* %0, %struct.zcomp** %2, align 8
  %3 = load i32, i32* @CPUHP_ZCOMP_PREPARE, align 4
  %4 = load %struct.zcomp*, %struct.zcomp** %2, align 8
  %5 = getelementptr inbounds %struct.zcomp, %struct.zcomp* %4, i32 0, i32 1
  %6 = call i32 @cpuhp_state_remove_instance(i32 %3, i32* %5)
  %7 = load %struct.zcomp*, %struct.zcomp** %2, align 8
  %8 = getelementptr inbounds %struct.zcomp, %struct.zcomp* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @free_percpu(i32 %9)
  %11 = load %struct.zcomp*, %struct.zcomp** %2, align 8
  %12 = call i32 @kfree(%struct.zcomp* %11)
  ret void
}

declare dso_local i32 @cpuhp_state_remove_instance(i32, i32*) #1

declare dso_local i32 @free_percpu(i32) #1

declare dso_local i32 @kfree(%struct.zcomp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
