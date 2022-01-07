; ModuleID = '/home/carl/AnghaBench/git/extr_hashmap.c_hashmap_put.c'
source_filename = "/home/carl/AnghaBench/git/extr_hashmap.c_hashmap_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hashmap = type { i32 }
%struct.hashmap_entry = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.hashmap_entry* @hashmap_put(%struct.hashmap* %0, %struct.hashmap_entry* %1) #0 {
  %3 = alloca %struct.hashmap*, align 8
  %4 = alloca %struct.hashmap_entry*, align 8
  %5 = alloca %struct.hashmap_entry*, align 8
  store %struct.hashmap* %0, %struct.hashmap** %3, align 8
  store %struct.hashmap_entry* %1, %struct.hashmap_entry** %4, align 8
  %6 = load %struct.hashmap*, %struct.hashmap** %3, align 8
  %7 = load %struct.hashmap_entry*, %struct.hashmap_entry** %4, align 8
  %8 = call %struct.hashmap_entry* @hashmap_remove(%struct.hashmap* %6, %struct.hashmap_entry* %7, i32* null)
  store %struct.hashmap_entry* %8, %struct.hashmap_entry** %5, align 8
  %9 = load %struct.hashmap*, %struct.hashmap** %3, align 8
  %10 = load %struct.hashmap_entry*, %struct.hashmap_entry** %4, align 8
  %11 = call i32 @hashmap_add(%struct.hashmap* %9, %struct.hashmap_entry* %10)
  %12 = load %struct.hashmap_entry*, %struct.hashmap_entry** %5, align 8
  ret %struct.hashmap_entry* %12
}

declare dso_local %struct.hashmap_entry* @hashmap_remove(%struct.hashmap*, %struct.hashmap_entry*, i32*) #1

declare dso_local i32 @hashmap_add(%struct.hashmap*, %struct.hashmap_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
