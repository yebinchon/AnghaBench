; ModuleID = '/home/carl/AnghaBench/linux/block/extr_elevator.c_elv_unregister.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_elevator.c_elv_unregister.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.elevator_type = type { i32*, i32 }

@elv_list_lock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @elv_unregister(%struct.elevator_type* %0) #0 {
  %2 = alloca %struct.elevator_type*, align 8
  store %struct.elevator_type* %0, %struct.elevator_type** %2, align 8
  %3 = call i32 @spin_lock(i32* @elv_list_lock)
  %4 = load %struct.elevator_type*, %struct.elevator_type** %2, align 8
  %5 = getelementptr inbounds %struct.elevator_type, %struct.elevator_type* %4, i32 0, i32 1
  %6 = call i32 @list_del_init(i32* %5)
  %7 = call i32 @spin_unlock(i32* @elv_list_lock)
  %8 = load %struct.elevator_type*, %struct.elevator_type** %2, align 8
  %9 = getelementptr inbounds %struct.elevator_type, %struct.elevator_type* %8, i32 0, i32 0
  %10 = load i32*, i32** %9, align 8
  %11 = icmp ne i32* %10, null
  br i1 %11, label %12, label %20

12:                                               ; preds = %1
  %13 = call i32 (...) @rcu_barrier()
  %14 = load %struct.elevator_type*, %struct.elevator_type** %2, align 8
  %15 = getelementptr inbounds %struct.elevator_type, %struct.elevator_type* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = call i32 @kmem_cache_destroy(i32* %16)
  %18 = load %struct.elevator_type*, %struct.elevator_type** %2, align 8
  %19 = getelementptr inbounds %struct.elevator_type, %struct.elevator_type* %18, i32 0, i32 0
  store i32* null, i32** %19, align 8
  br label %20

20:                                               ; preds = %12, %1
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @rcu_barrier(...) #1

declare dso_local i32 @kmem_cache_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
