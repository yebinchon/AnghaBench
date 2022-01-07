; ModuleID = '/home/carl/AnghaBench/git/extr_hashmap.c_hashmap_get_next.c'
source_filename = "/home/carl/AnghaBench/git/extr_hashmap.c_hashmap_get_next.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hashmap = type { i32 }
%struct.hashmap_entry = type { %struct.hashmap_entry* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.hashmap_entry* @hashmap_get_next(%struct.hashmap* %0, %struct.hashmap_entry* %1) #0 {
  %3 = alloca %struct.hashmap_entry*, align 8
  %4 = alloca %struct.hashmap*, align 8
  %5 = alloca %struct.hashmap_entry*, align 8
  %6 = alloca %struct.hashmap_entry*, align 8
  store %struct.hashmap* %0, %struct.hashmap** %4, align 8
  store %struct.hashmap_entry* %1, %struct.hashmap_entry** %5, align 8
  %7 = load %struct.hashmap_entry*, %struct.hashmap_entry** %5, align 8
  %8 = getelementptr inbounds %struct.hashmap_entry, %struct.hashmap_entry* %7, i32 0, i32 0
  %9 = load %struct.hashmap_entry*, %struct.hashmap_entry** %8, align 8
  store %struct.hashmap_entry* %9, %struct.hashmap_entry** %6, align 8
  br label %10

10:                                               ; preds = %22, %2
  %11 = load %struct.hashmap_entry*, %struct.hashmap_entry** %6, align 8
  %12 = icmp ne %struct.hashmap_entry* %11, null
  br i1 %12, label %13, label %26

13:                                               ; preds = %10
  %14 = load %struct.hashmap*, %struct.hashmap** %4, align 8
  %15 = load %struct.hashmap_entry*, %struct.hashmap_entry** %5, align 8
  %16 = load %struct.hashmap_entry*, %struct.hashmap_entry** %6, align 8
  %17 = call i64 @entry_equals(%struct.hashmap* %14, %struct.hashmap_entry* %15, %struct.hashmap_entry* %16, i32* null)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %13
  %20 = load %struct.hashmap_entry*, %struct.hashmap_entry** %6, align 8
  store %struct.hashmap_entry* %20, %struct.hashmap_entry** %3, align 8
  br label %27

21:                                               ; preds = %13
  br label %22

22:                                               ; preds = %21
  %23 = load %struct.hashmap_entry*, %struct.hashmap_entry** %6, align 8
  %24 = getelementptr inbounds %struct.hashmap_entry, %struct.hashmap_entry* %23, i32 0, i32 0
  %25 = load %struct.hashmap_entry*, %struct.hashmap_entry** %24, align 8
  store %struct.hashmap_entry* %25, %struct.hashmap_entry** %6, align 8
  br label %10

26:                                               ; preds = %10
  store %struct.hashmap_entry* null, %struct.hashmap_entry** %3, align 8
  br label %27

27:                                               ; preds = %26, %19
  %28 = load %struct.hashmap_entry*, %struct.hashmap_entry** %3, align 8
  ret %struct.hashmap_entry* %28
}

declare dso_local i64 @entry_equals(%struct.hashmap*, %struct.hashmap_entry*, %struct.hashmap_entry*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
