; ModuleID = '/home/carl/AnghaBench/linux/drivers/bcma/extr_main.c_bcma_init_bus.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bcma/extr_main.c_bcma_init_bus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcma_bus = type { i64, i32, i64 }

@bcma_buses_mutex = common dso_local global i32 0, align 4
@bcma_bus_next_num = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bcma_init_bus(%struct.bcma_bus* %0) #0 {
  %2 = alloca %struct.bcma_bus*, align 8
  store %struct.bcma_bus* %0, %struct.bcma_bus** %2, align 8
  %3 = call i32 @mutex_lock(i32* @bcma_buses_mutex)
  %4 = load i32, i32* @bcma_bus_next_num, align 4
  %5 = add nsw i32 %4, 1
  store i32 %5, i32* @bcma_bus_next_num, align 4
  %6 = sext i32 %4 to i64
  %7 = load %struct.bcma_bus*, %struct.bcma_bus** %2, align 8
  %8 = getelementptr inbounds %struct.bcma_bus, %struct.bcma_bus* %7, i32 0, i32 2
  store i64 %6, i64* %8, align 8
  %9 = call i32 @mutex_unlock(i32* @bcma_buses_mutex)
  %10 = load %struct.bcma_bus*, %struct.bcma_bus** %2, align 8
  %11 = getelementptr inbounds %struct.bcma_bus, %struct.bcma_bus* %10, i32 0, i32 1
  %12 = call i32 @INIT_LIST_HEAD(i32* %11)
  %13 = load %struct.bcma_bus*, %struct.bcma_bus** %2, align 8
  %14 = getelementptr inbounds %struct.bcma_bus, %struct.bcma_bus* %13, i32 0, i32 0
  store i64 0, i64* %14, align 8
  %15 = load %struct.bcma_bus*, %struct.bcma_bus** %2, align 8
  %16 = call i32 @bcma_detect_chip(%struct.bcma_bus* %15)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @bcma_detect_chip(%struct.bcma_bus*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
