; ModuleID = '/home/carl/AnghaBench/git/extr_submodule-config.c_cache_lookup_path.c'
source_filename = "/home/carl/AnghaBench/git/extr_submodule-config.c_cache_lookup_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.submodule = type { i8*, i32 }
%struct.submodule_cache = type { i32 }
%struct.object_id = type { i32 }
%struct.submodule_entry = type { %struct.submodule*, i32 }

@ent = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.submodule* (%struct.submodule_cache*, %struct.object_id*, i8*)* @cache_lookup_path to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.submodule* @cache_lookup_path(%struct.submodule_cache* %0, %struct.object_id* %1, i8* %2) #0 {
  %4 = alloca %struct.submodule*, align 8
  %5 = alloca %struct.submodule_cache*, align 8
  %6 = alloca %struct.object_id*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.submodule_entry*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.submodule_entry, align 8
  %11 = alloca %struct.submodule, align 8
  store %struct.submodule_cache* %0, %struct.submodule_cache** %5, align 8
  store %struct.object_id* %1, %struct.object_id** %6, align 8
  store i8* %2, i8** %7, align 8
  %12 = load %struct.object_id*, %struct.object_id** %6, align 8
  %13 = load i8*, i8** %7, align 8
  %14 = call i32 @hash_oid_string(%struct.object_id* %12, i8* %13)
  store i32 %14, i32* %9, align 4
  %15 = getelementptr inbounds %struct.submodule, %struct.submodule* %11, i32 0, i32 1
  %16 = load %struct.object_id*, %struct.object_id** %6, align 8
  %17 = call i32 @oidcpy(i32* %15, %struct.object_id* %16)
  %18 = load i8*, i8** %7, align 8
  %19 = getelementptr inbounds %struct.submodule, %struct.submodule* %11, i32 0, i32 0
  store i8* %18, i8** %19, align 8
  %20 = getelementptr inbounds %struct.submodule_entry, %struct.submodule_entry* %10, i32 0, i32 1
  %21 = load i32, i32* %9, align 4
  %22 = call i32 @hashmap_entry_init(i32* %20, i32 %21)
  %23 = getelementptr inbounds %struct.submodule_entry, %struct.submodule_entry* %10, i32 0, i32 0
  store %struct.submodule* %11, %struct.submodule** %23, align 8
  %24 = load %struct.submodule_cache*, %struct.submodule_cache** %5, align 8
  %25 = getelementptr inbounds %struct.submodule_cache, %struct.submodule_cache* %24, i32 0, i32 0
  %26 = load i32, i32* @ent, align 4
  %27 = call %struct.submodule_entry* @hashmap_get_entry(i32* %25, %struct.submodule_entry* %10, i32 %26, i32* null)
  store %struct.submodule_entry* %27, %struct.submodule_entry** %8, align 8
  %28 = load %struct.submodule_entry*, %struct.submodule_entry** %8, align 8
  %29 = icmp ne %struct.submodule_entry* %28, null
  br i1 %29, label %30, label %34

30:                                               ; preds = %3
  %31 = load %struct.submodule_entry*, %struct.submodule_entry** %8, align 8
  %32 = getelementptr inbounds %struct.submodule_entry, %struct.submodule_entry* %31, i32 0, i32 0
  %33 = load %struct.submodule*, %struct.submodule** %32, align 8
  store %struct.submodule* %33, %struct.submodule** %4, align 8
  br label %35

34:                                               ; preds = %3
  store %struct.submodule* null, %struct.submodule** %4, align 8
  br label %35

35:                                               ; preds = %34, %30
  %36 = load %struct.submodule*, %struct.submodule** %4, align 8
  ret %struct.submodule* %36
}

declare dso_local i32 @hash_oid_string(%struct.object_id*, i8*) #1

declare dso_local i32 @oidcpy(i32*, %struct.object_id*) #1

declare dso_local i32 @hashmap_entry_init(i32*, i32) #1

declare dso_local %struct.submodule_entry* @hashmap_get_entry(i32*, %struct.submodule_entry*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
