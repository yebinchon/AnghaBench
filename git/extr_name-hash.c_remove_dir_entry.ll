; ModuleID = '/home/carl/AnghaBench/git/extr_name-hash.c_remove_dir_entry.c'
source_filename = "/home/carl/AnghaBench/git/extr_name-hash.c_remove_dir_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.index_state = type { i32 }
%struct.cache_entry = type { i32 }
%struct.dir_entry = type { i32, %struct.dir_entry*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.index_state*, %struct.cache_entry*)* @remove_dir_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @remove_dir_entry(%struct.index_state* %0, %struct.cache_entry* %1) #0 {
  %3 = alloca %struct.index_state*, align 8
  %4 = alloca %struct.cache_entry*, align 8
  %5 = alloca %struct.dir_entry*, align 8
  %6 = alloca %struct.dir_entry*, align 8
  store %struct.index_state* %0, %struct.index_state** %3, align 8
  store %struct.cache_entry* %1, %struct.cache_entry** %4, align 8
  %7 = load %struct.index_state*, %struct.index_state** %3, align 8
  %8 = load %struct.cache_entry*, %struct.cache_entry** %4, align 8
  %9 = load %struct.cache_entry*, %struct.cache_entry** %4, align 8
  %10 = call i32 @ce_namelen(%struct.cache_entry* %9)
  %11 = call %struct.dir_entry* @hash_dir_entry(%struct.index_state* %7, %struct.cache_entry* %8, i32 %10)
  store %struct.dir_entry* %11, %struct.dir_entry** %5, align 8
  br label %12

12:                                               ; preds = %24, %2
  %13 = load %struct.dir_entry*, %struct.dir_entry** %5, align 8
  %14 = icmp ne %struct.dir_entry* %13, null
  br i1 %14, label %15, label %22

15:                                               ; preds = %12
  %16 = load %struct.dir_entry*, %struct.dir_entry** %5, align 8
  %17 = getelementptr inbounds %struct.dir_entry, %struct.dir_entry* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 8
  %19 = add nsw i32 %18, -1
  store i32 %19, i32* %17, align 8
  %20 = icmp ne i32 %19, 0
  %21 = xor i1 %20, true
  br label %22

22:                                               ; preds = %15, %12
  %23 = phi i1 [ false, %12 ], [ %21, %15 ]
  br i1 %23, label %24, label %36

24:                                               ; preds = %22
  %25 = load %struct.dir_entry*, %struct.dir_entry** %5, align 8
  %26 = getelementptr inbounds %struct.dir_entry, %struct.dir_entry* %25, i32 0, i32 1
  %27 = load %struct.dir_entry*, %struct.dir_entry** %26, align 8
  store %struct.dir_entry* %27, %struct.dir_entry** %6, align 8
  %28 = load %struct.index_state*, %struct.index_state** %3, align 8
  %29 = getelementptr inbounds %struct.index_state, %struct.index_state* %28, i32 0, i32 0
  %30 = load %struct.dir_entry*, %struct.dir_entry** %5, align 8
  %31 = getelementptr inbounds %struct.dir_entry, %struct.dir_entry* %30, i32 0, i32 0
  %32 = call i32 @hashmap_remove(i32* %29, i32* %31, i32* null)
  %33 = load %struct.dir_entry*, %struct.dir_entry** %5, align 8
  %34 = call i32 @free(%struct.dir_entry* %33)
  %35 = load %struct.dir_entry*, %struct.dir_entry** %6, align 8
  store %struct.dir_entry* %35, %struct.dir_entry** %5, align 8
  br label %12

36:                                               ; preds = %22
  ret void
}

declare dso_local %struct.dir_entry* @hash_dir_entry(%struct.index_state*, %struct.cache_entry*, i32) #1

declare dso_local i32 @ce_namelen(%struct.cache_entry*) #1

declare dso_local i32 @hashmap_remove(i32*, i32*, i32*) #1

declare dso_local i32 @free(%struct.dir_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
