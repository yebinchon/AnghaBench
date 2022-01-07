; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/kernel/extr_topology.c_next_tle.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/kernel/extr_topology.c_next_tle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.topology_entry = type { i32 }
%struct.topology_core = type { i32 }
%struct.topology_container = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%union.topology_entry* (%union.topology_entry*)* @next_tle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %union.topology_entry* @next_tle(%union.topology_entry* %0) #0 {
  %2 = alloca %union.topology_entry*, align 8
  %3 = alloca %union.topology_entry*, align 8
  store %union.topology_entry* %0, %union.topology_entry** %3, align 8
  %4 = load %union.topology_entry*, %union.topology_entry** %3, align 8
  %5 = bitcast %union.topology_entry* %4 to i32*
  %6 = load i32, i32* %5, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %13, label %8

8:                                                ; preds = %1
  %9 = load %union.topology_entry*, %union.topology_entry** %3, align 8
  %10 = bitcast %union.topology_entry* %9 to %struct.topology_core*
  %11 = getelementptr inbounds %struct.topology_core, %struct.topology_core* %10, i64 1
  %12 = bitcast %struct.topology_core* %11 to %union.topology_entry*
  store %union.topology_entry* %12, %union.topology_entry** %2, align 8
  br label %18

13:                                               ; preds = %1
  %14 = load %union.topology_entry*, %union.topology_entry** %3, align 8
  %15 = bitcast %union.topology_entry* %14 to %struct.topology_container*
  %16 = getelementptr inbounds %struct.topology_container, %struct.topology_container* %15, i64 1
  %17 = bitcast %struct.topology_container* %16 to %union.topology_entry*
  store %union.topology_entry* %17, %union.topology_entry** %2, align 8
  br label %18

18:                                               ; preds = %13, %8
  %19 = load %union.topology_entry*, %union.topology_entry** %2, align 8
  ret %union.topology_entry* %19
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
