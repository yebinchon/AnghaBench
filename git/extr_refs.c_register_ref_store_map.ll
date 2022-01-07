; ModuleID = '/home/carl/AnghaBench/git/extr_refs.c_register_ref_store_map.c'
source_filename = "/home/carl/AnghaBench/git/extr_refs.c_register_ref_store_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hashmap = type { i32 }
%struct.ref_store = type { i32 }
%struct.ref_store_hash_entry = type { i32 }

@ref_store_hash_cmp = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"%s ref_store '%s' initialized twice\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hashmap*, i8*, %struct.ref_store*, i8*)* @register_ref_store_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @register_ref_store_map(%struct.hashmap* %0, i8* %1, %struct.ref_store* %2, i8* %3) #0 {
  %5 = alloca %struct.hashmap*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.ref_store*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.ref_store_hash_entry*, align 8
  store %struct.hashmap* %0, %struct.hashmap** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.ref_store* %2, %struct.ref_store** %7, align 8
  store i8* %3, i8** %8, align 8
  %10 = load %struct.hashmap*, %struct.hashmap** %5, align 8
  %11 = getelementptr inbounds %struct.hashmap, %struct.hashmap* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %4
  %15 = load %struct.hashmap*, %struct.hashmap** %5, align 8
  %16 = load i32, i32* @ref_store_hash_cmp, align 4
  %17 = call i32 @hashmap_init(%struct.hashmap* %15, i32 %16, i32* null, i32 0)
  br label %18

18:                                               ; preds = %14, %4
  %19 = load i8*, i8** %8, align 8
  %20 = load %struct.ref_store*, %struct.ref_store** %7, align 8
  %21 = call %struct.ref_store_hash_entry* @alloc_ref_store_hash_entry(i8* %19, %struct.ref_store* %20)
  store %struct.ref_store_hash_entry* %21, %struct.ref_store_hash_entry** %9, align 8
  %22 = load %struct.hashmap*, %struct.hashmap** %5, align 8
  %23 = load %struct.ref_store_hash_entry*, %struct.ref_store_hash_entry** %9, align 8
  %24 = getelementptr inbounds %struct.ref_store_hash_entry, %struct.ref_store_hash_entry* %23, i32 0, i32 0
  %25 = call i64 @hashmap_put(%struct.hashmap* %22, i32* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %18
  %28 = load i8*, i8** %6, align 8
  %29 = load i8*, i8** %8, align 8
  %30 = call i32 @BUG(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i8* %28, i8* %29)
  br label %31

31:                                               ; preds = %27, %18
  ret void
}

declare dso_local i32 @hashmap_init(%struct.hashmap*, i32, i32*, i32) #1

declare dso_local %struct.ref_store_hash_entry* @alloc_ref_store_hash_entry(i8*, %struct.ref_store*) #1

declare dso_local i64 @hashmap_put(%struct.hashmap*, i32*) #1

declare dso_local i32 @BUG(i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
