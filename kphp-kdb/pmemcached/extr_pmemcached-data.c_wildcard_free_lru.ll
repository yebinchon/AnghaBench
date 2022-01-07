; ModuleID = '/home/carl/AnghaBench/kphp-kdb/pmemcached/extr_pmemcached-data.c_wildcard_free_lru.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/pmemcached/extr_pmemcached-data.c_wildcard_free_lru.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wildcard_entry = type { i32, %struct.wildcard_entry* }

@wildcard_use = common dso_local global %struct.wildcard_entry zeroinitializer, align 8
@wildcard_cache_tree = common dso_local global i32 0, align 4
@wildcard_rpc_cache_tree = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"wildcard_lru succ: memory = %lld, entry = %p\0A\00", align 1
@wildcard_cache_memory = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wildcard_free_lru() #0 {
  %1 = alloca %struct.wildcard_entry*, align 8
  %2 = load %struct.wildcard_entry*, %struct.wildcard_entry** getelementptr inbounds (%struct.wildcard_entry, %struct.wildcard_entry* @wildcard_use, i32 0, i32 1), align 8
  store %struct.wildcard_entry* %2, %struct.wildcard_entry** %1, align 8
  %3 = load %struct.wildcard_entry*, %struct.wildcard_entry** %1, align 8
  %4 = icmp ne %struct.wildcard_entry* %3, @wildcard_use
  %5 = zext i1 %4 to i32
  %6 = call i32 @assert(i32 %5)
  %7 = load %struct.wildcard_entry*, %struct.wildcard_entry** %1, align 8
  %8 = getelementptr inbounds %struct.wildcard_entry, %struct.wildcard_entry* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = and i32 %9, 1
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %0
  %13 = load i32, i32* @wildcard_cache_tree, align 4
  %14 = load %struct.wildcard_entry*, %struct.wildcard_entry** %1, align 8
  %15 = bitcast %struct.wildcard_entry* %14 to i32*
  %16 = call i32 @tree_wildcard_delete(i32 %13, i32* %15)
  store i32 %16, i32* @wildcard_cache_tree, align 4
  br label %22

17:                                               ; preds = %0
  %18 = load i32, i32* @wildcard_rpc_cache_tree, align 4
  %19 = load %struct.wildcard_entry*, %struct.wildcard_entry** %1, align 8
  %20 = bitcast %struct.wildcard_entry* %19 to i32*
  %21 = call i32 @tree_wildcard_delete(i32 %18, i32* %20)
  store i32 %21, i32* @wildcard_rpc_cache_tree, align 4
  br label %22

22:                                               ; preds = %17, %12
  %23 = load i32, i32* @wildcard_cache_memory, align 4
  %24 = load %struct.wildcard_entry*, %struct.wildcard_entry** %1, align 8
  %25 = call i32 @vkprintf(i32 2, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %23, %struct.wildcard_entry* %24)
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @tree_wildcard_delete(i32, i32*) #1

declare dso_local i32 @vkprintf(i32, i8*, i32, %struct.wildcard_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
