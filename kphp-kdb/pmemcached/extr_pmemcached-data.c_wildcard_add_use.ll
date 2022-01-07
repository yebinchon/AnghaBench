; ModuleID = '/home/carl/AnghaBench/kphp-kdb/pmemcached/extr_pmemcached-data.c_wildcard_add_use.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/pmemcached/extr_pmemcached-data.c_wildcard_add_use.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wildcard_entry = type { %struct.wildcard_entry*, %struct.wildcard_entry* }

@wildcard_use = common dso_local global %struct.wildcard_entry zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wildcard_add_use(%struct.wildcard_entry* %0) #0 {
  %2 = alloca %struct.wildcard_entry*, align 8
  store %struct.wildcard_entry* %0, %struct.wildcard_entry** %2, align 8
  %3 = load %struct.wildcard_entry*, %struct.wildcard_entry** %2, align 8
  %4 = getelementptr inbounds %struct.wildcard_entry, %struct.wildcard_entry* %3, i32 0, i32 0
  store %struct.wildcard_entry* @wildcard_use, %struct.wildcard_entry** %4, align 8
  %5 = load %struct.wildcard_entry*, %struct.wildcard_entry** getelementptr inbounds (%struct.wildcard_entry, %struct.wildcard_entry* @wildcard_use, i32 0, i32 1), align 8
  %6 = load %struct.wildcard_entry*, %struct.wildcard_entry** %2, align 8
  %7 = getelementptr inbounds %struct.wildcard_entry, %struct.wildcard_entry* %6, i32 0, i32 1
  store %struct.wildcard_entry* %5, %struct.wildcard_entry** %7, align 8
  %8 = load %struct.wildcard_entry*, %struct.wildcard_entry** %2, align 8
  %9 = load %struct.wildcard_entry*, %struct.wildcard_entry** %2, align 8
  %10 = getelementptr inbounds %struct.wildcard_entry, %struct.wildcard_entry* %9, i32 0, i32 0
  %11 = load %struct.wildcard_entry*, %struct.wildcard_entry** %10, align 8
  %12 = getelementptr inbounds %struct.wildcard_entry, %struct.wildcard_entry* %11, i32 0, i32 1
  store %struct.wildcard_entry* %8, %struct.wildcard_entry** %12, align 8
  %13 = load %struct.wildcard_entry*, %struct.wildcard_entry** %2, align 8
  %14 = load %struct.wildcard_entry*, %struct.wildcard_entry** %2, align 8
  %15 = getelementptr inbounds %struct.wildcard_entry, %struct.wildcard_entry* %14, i32 0, i32 1
  %16 = load %struct.wildcard_entry*, %struct.wildcard_entry** %15, align 8
  %17 = getelementptr inbounds %struct.wildcard_entry, %struct.wildcard_entry* %16, i32 0, i32 0
  store %struct.wildcard_entry* %13, %struct.wildcard_entry** %17, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
