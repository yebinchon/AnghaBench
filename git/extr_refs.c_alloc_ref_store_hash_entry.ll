; ModuleID = '/home/carl/AnghaBench/git/extr_refs.c_alloc_ref_store_hash_entry.c'
source_filename = "/home/carl/AnghaBench/git/extr_refs.c_alloc_ref_store_hash_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ref_store_hash_entry = type { %struct.ref_store*, i32 }
%struct.ref_store = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ref_store_hash_entry* (i8*, %struct.ref_store*)* @alloc_ref_store_hash_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ref_store_hash_entry* @alloc_ref_store_hash_entry(i8* %0, %struct.ref_store* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.ref_store*, align 8
  %5 = alloca %struct.ref_store_hash_entry*, align 8
  store i8* %0, i8** %3, align 8
  store %struct.ref_store* %1, %struct.ref_store** %4, align 8
  %6 = load %struct.ref_store_hash_entry*, %struct.ref_store_hash_entry** %5, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = load i8*, i8** %3, align 8
  %9 = call i32 @FLEX_ALLOC_STR(%struct.ref_store_hash_entry* %6, i8* %7, i8* %8)
  %10 = load %struct.ref_store_hash_entry*, %struct.ref_store_hash_entry** %5, align 8
  %11 = getelementptr inbounds %struct.ref_store_hash_entry, %struct.ref_store_hash_entry* %10, i32 0, i32 1
  %12 = load i8*, i8** %3, align 8
  %13 = call i32 @strhash(i8* %12)
  %14 = call i32 @hashmap_entry_init(i32* %11, i32 %13)
  %15 = load %struct.ref_store*, %struct.ref_store** %4, align 8
  %16 = load %struct.ref_store_hash_entry*, %struct.ref_store_hash_entry** %5, align 8
  %17 = getelementptr inbounds %struct.ref_store_hash_entry, %struct.ref_store_hash_entry* %16, i32 0, i32 0
  store %struct.ref_store* %15, %struct.ref_store** %17, align 8
  %18 = load %struct.ref_store_hash_entry*, %struct.ref_store_hash_entry** %5, align 8
  ret %struct.ref_store_hash_entry* %18
}

declare dso_local i32 @FLEX_ALLOC_STR(%struct.ref_store_hash_entry*, i8*, i8*) #1

declare dso_local i32 @hashmap_entry_init(i32*, i32) #1

declare dso_local i32 @strhash(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
