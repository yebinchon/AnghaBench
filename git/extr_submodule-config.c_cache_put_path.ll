; ModuleID = '/home/carl/AnghaBench/git/extr_submodule-config.c_cache_put_path.c'
source_filename = "/home/carl/AnghaBench/git/extr_submodule-config.c_cache_put_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.submodule_cache = type { i32 }
%struct.submodule = type { i32, i32 }
%struct.submodule_entry = type { i32, %struct.submodule* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.submodule_cache*, %struct.submodule*)* @cache_put_path to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cache_put_path(%struct.submodule_cache* %0, %struct.submodule* %1) #0 {
  %3 = alloca %struct.submodule_cache*, align 8
  %4 = alloca %struct.submodule*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.submodule_entry*, align 8
  store %struct.submodule_cache* %0, %struct.submodule_cache** %3, align 8
  store %struct.submodule* %1, %struct.submodule** %4, align 8
  %7 = load %struct.submodule*, %struct.submodule** %4, align 8
  %8 = getelementptr inbounds %struct.submodule, %struct.submodule* %7, i32 0, i32 1
  %9 = load %struct.submodule*, %struct.submodule** %4, align 8
  %10 = getelementptr inbounds %struct.submodule, %struct.submodule* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @hash_oid_string(i32* %8, i32 %11)
  store i32 %12, i32* %5, align 4
  %13 = call %struct.submodule_entry* @xmalloc(i32 16)
  store %struct.submodule_entry* %13, %struct.submodule_entry** %6, align 8
  %14 = load %struct.submodule_entry*, %struct.submodule_entry** %6, align 8
  %15 = getelementptr inbounds %struct.submodule_entry, %struct.submodule_entry* %14, i32 0, i32 0
  %16 = load i32, i32* %5, align 4
  %17 = call i32 @hashmap_entry_init(i32* %15, i32 %16)
  %18 = load %struct.submodule*, %struct.submodule** %4, align 8
  %19 = load %struct.submodule_entry*, %struct.submodule_entry** %6, align 8
  %20 = getelementptr inbounds %struct.submodule_entry, %struct.submodule_entry* %19, i32 0, i32 1
  store %struct.submodule* %18, %struct.submodule** %20, align 8
  %21 = load %struct.submodule_cache*, %struct.submodule_cache** %3, align 8
  %22 = getelementptr inbounds %struct.submodule_cache, %struct.submodule_cache* %21, i32 0, i32 0
  %23 = load %struct.submodule_entry*, %struct.submodule_entry** %6, align 8
  %24 = getelementptr inbounds %struct.submodule_entry, %struct.submodule_entry* %23, i32 0, i32 0
  %25 = call i32 @hashmap_put(i32* %22, i32* %24)
  ret void
}

declare dso_local i32 @hash_oid_string(i32*, i32) #1

declare dso_local %struct.submodule_entry* @xmalloc(i32) #1

declare dso_local i32 @hashmap_entry_init(i32*, i32) #1

declare dso_local i32 @hashmap_put(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
