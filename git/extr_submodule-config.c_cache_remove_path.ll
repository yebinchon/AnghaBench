; ModuleID = '/home/carl/AnghaBench/git/extr_submodule-config.c_cache_remove_path.c'
source_filename = "/home/carl/AnghaBench/git/extr_submodule-config.c_cache_remove_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.submodule_cache = type { i32 }
%struct.submodule = type { i32, i32 }
%struct.submodule_entry = type { %struct.submodule*, i32 }

@ent = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.submodule_cache*, %struct.submodule*)* @cache_remove_path to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cache_remove_path(%struct.submodule_cache* %0, %struct.submodule* %1) #0 {
  %3 = alloca %struct.submodule_cache*, align 8
  %4 = alloca %struct.submodule*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.submodule_entry, align 8
  %7 = alloca %struct.submodule_entry*, align 8
  store %struct.submodule_cache* %0, %struct.submodule_cache** %3, align 8
  store %struct.submodule* %1, %struct.submodule** %4, align 8
  %8 = load %struct.submodule*, %struct.submodule** %4, align 8
  %9 = getelementptr inbounds %struct.submodule, %struct.submodule* %8, i32 0, i32 1
  %10 = load %struct.submodule*, %struct.submodule** %4, align 8
  %11 = getelementptr inbounds %struct.submodule, %struct.submodule* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @hash_oid_string(i32* %9, i32 %12)
  store i32 %13, i32* %5, align 4
  %14 = getelementptr inbounds %struct.submodule_entry, %struct.submodule_entry* %6, i32 0, i32 1
  %15 = load i32, i32* %5, align 4
  %16 = call i32 @hashmap_entry_init(i32* %14, i32 %15)
  %17 = load %struct.submodule*, %struct.submodule** %4, align 8
  %18 = getelementptr inbounds %struct.submodule_entry, %struct.submodule_entry* %6, i32 0, i32 0
  store %struct.submodule* %17, %struct.submodule** %18, align 8
  %19 = load %struct.submodule_cache*, %struct.submodule_cache** %3, align 8
  %20 = getelementptr inbounds %struct.submodule_cache, %struct.submodule_cache* %19, i32 0, i32 0
  %21 = load i32, i32* @ent, align 4
  %22 = call %struct.submodule_entry* @hashmap_remove_entry(i32* %20, %struct.submodule_entry* %6, i32 %21, i32* null)
  store %struct.submodule_entry* %22, %struct.submodule_entry** %7, align 8
  %23 = load %struct.submodule_entry*, %struct.submodule_entry** %7, align 8
  %24 = call i32 @free(%struct.submodule_entry* %23)
  ret void
}

declare dso_local i32 @hash_oid_string(i32*, i32) #1

declare dso_local i32 @hashmap_entry_init(i32*, i32) #1

declare dso_local %struct.submodule_entry* @hashmap_remove_entry(i32*, %struct.submodule_entry*, i32, i32*) #1

declare dso_local i32 @free(%struct.submodule_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
