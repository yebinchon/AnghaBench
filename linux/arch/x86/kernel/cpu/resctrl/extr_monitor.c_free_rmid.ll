; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/resctrl/extr_monitor.c_free_rmid.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/resctrl/extr_monitor.c_free_rmid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rmid_entry = type { i32 }

@rdtgroup_mutex = common dso_local global i32 0, align 4
@rmid_free_lru = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @free_rmid(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rmid_entry*, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  br label %20

7:                                                ; preds = %1
  %8 = call i32 @lockdep_assert_held(i32* @rdtgroup_mutex)
  %9 = load i32, i32* %2, align 4
  %10 = call %struct.rmid_entry* @__rmid_entry(i32 %9)
  store %struct.rmid_entry* %10, %struct.rmid_entry** %3, align 8
  %11 = call i64 (...) @is_llc_occupancy_enabled()
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %7
  %14 = load %struct.rmid_entry*, %struct.rmid_entry** %3, align 8
  %15 = call i32 @add_rmid_to_limbo(%struct.rmid_entry* %14)
  br label %20

16:                                               ; preds = %7
  %17 = load %struct.rmid_entry*, %struct.rmid_entry** %3, align 8
  %18 = getelementptr inbounds %struct.rmid_entry, %struct.rmid_entry* %17, i32 0, i32 0
  %19 = call i32 @list_add_tail(i32* %18, i32* @rmid_free_lru)
  br label %20

20:                                               ; preds = %6, %16, %13
  ret void
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local %struct.rmid_entry* @__rmid_entry(i32) #1

declare dso_local i64 @is_llc_occupancy_enabled(...) #1

declare dso_local i32 @add_rmid_to_limbo(%struct.rmid_entry*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
