; ModuleID = '/home/carl/AnghaBench/git/extr_read-cache.c_create_alias_ce.c'
source_filename = "/home/carl/AnghaBench/git/extr_read-cache.c_create_alias_ce.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.index_state = type { i32 }
%struct.cache_entry = type { i32, i32 }

@CE_ADDED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [60 x i8] c"will not add file alias '%s' ('%s' already exists in index)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.cache_entry* (%struct.index_state*, %struct.cache_entry*, %struct.cache_entry*)* @create_alias_ce to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.cache_entry* @create_alias_ce(%struct.index_state* %0, %struct.cache_entry* %1, %struct.cache_entry* %2) #0 {
  %4 = alloca %struct.index_state*, align 8
  %5 = alloca %struct.cache_entry*, align 8
  %6 = alloca %struct.cache_entry*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.cache_entry*, align 8
  store %struct.index_state* %0, %struct.index_state** %4, align 8
  store %struct.cache_entry* %1, %struct.cache_entry** %5, align 8
  store %struct.cache_entry* %2, %struct.cache_entry** %6, align 8
  %9 = load %struct.cache_entry*, %struct.cache_entry** %6, align 8
  %10 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @CE_ADDED, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %24

15:                                               ; preds = %3
  %16 = call i32 @_(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0))
  %17 = load %struct.cache_entry*, %struct.cache_entry** %5, align 8
  %18 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.cache_entry*, %struct.cache_entry** %6, align 8
  %21 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @die(i32 %16, i32 %19, i32 %22)
  br label %24

24:                                               ; preds = %15, %3
  %25 = load %struct.cache_entry*, %struct.cache_entry** %6, align 8
  %26 = call i32 @ce_namelen(%struct.cache_entry* %25)
  store i32 %26, i32* %7, align 4
  %27 = load %struct.index_state*, %struct.index_state** %4, align 8
  %28 = load i32, i32* %7, align 4
  %29 = call %struct.cache_entry* @make_empty_cache_entry(%struct.index_state* %27, i32 %28)
  store %struct.cache_entry* %29, %struct.cache_entry** %8, align 8
  %30 = load %struct.cache_entry*, %struct.cache_entry** %8, align 8
  %31 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.cache_entry*, %struct.cache_entry** %6, align 8
  %34 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %7, align 4
  %37 = call i32 @memcpy(i32 %32, i32 %35, i32 %36)
  %38 = load %struct.cache_entry*, %struct.cache_entry** %8, align 8
  %39 = load %struct.cache_entry*, %struct.cache_entry** %5, align 8
  %40 = call i32 @copy_cache_entry(%struct.cache_entry* %38, %struct.cache_entry* %39)
  %41 = load %struct.index_state*, %struct.index_state** %4, align 8
  %42 = load %struct.cache_entry*, %struct.cache_entry** %5, align 8
  %43 = call i32 @save_or_free_index_entry(%struct.index_state* %41, %struct.cache_entry* %42)
  %44 = load %struct.cache_entry*, %struct.cache_entry** %8, align 8
  ret %struct.cache_entry* %44
}

declare dso_local i32 @die(i32, i32, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @ce_namelen(%struct.cache_entry*) #1

declare dso_local %struct.cache_entry* @make_empty_cache_entry(%struct.index_state*, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @copy_cache_entry(%struct.cache_entry*, %struct.cache_entry*) #1

declare dso_local i32 @save_or_free_index_entry(%struct.index_state*, %struct.cache_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
