; ModuleID = '/home/carl/AnghaBench/git/extr_revision.c_paths_and_oids_insert.c'
source_filename = "/home/carl/AnghaBench/git/extr_revision.c_paths_and_oids_insert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hashmap = type { i32 }
%struct.object_id = type { i32 }
%struct.path_and_oids_entry = type { i8*, i32, i32 }

@ent = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hashmap*, i8*, %struct.object_id*)* @paths_and_oids_insert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @paths_and_oids_insert(%struct.hashmap* %0, i8* %1, %struct.object_id* %2) #0 {
  %4 = alloca %struct.hashmap*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.object_id*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.path_and_oids_entry, align 8
  %9 = alloca %struct.path_and_oids_entry*, align 8
  store %struct.hashmap* %0, %struct.hashmap** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.object_id* %2, %struct.object_id** %6, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = call i32 @strhash(i8* %10)
  store i32 %11, i32* %7, align 4
  %12 = getelementptr inbounds %struct.path_and_oids_entry, %struct.path_and_oids_entry* %8, i32 0, i32 2
  %13 = load i32, i32* %7, align 4
  %14 = call i32 @hashmap_entry_init(i32* %12, i32 %13)
  %15 = load i8*, i8** %5, align 8
  %16 = getelementptr inbounds %struct.path_and_oids_entry, %struct.path_and_oids_entry* %8, i32 0, i32 0
  store i8* %15, i8** %16, align 8
  %17 = getelementptr inbounds %struct.path_and_oids_entry, %struct.path_and_oids_entry* %8, i32 0, i32 1
  %18 = call i32 @oidset_init(i32* %17, i32 0)
  %19 = load %struct.hashmap*, %struct.hashmap** %4, align 8
  %20 = load i32, i32* @ent, align 4
  %21 = call %struct.path_and_oids_entry* @hashmap_get_entry(%struct.hashmap* %19, %struct.path_and_oids_entry* %8, i32 %20, i32* null)
  store %struct.path_and_oids_entry* %21, %struct.path_and_oids_entry** %9, align 8
  %22 = load %struct.path_and_oids_entry*, %struct.path_and_oids_entry** %9, align 8
  %23 = icmp ne %struct.path_and_oids_entry* %22, null
  br i1 %23, label %42, label %24

24:                                               ; preds = %3
  %25 = call %struct.path_and_oids_entry* @xcalloc(i32 1, i32 16)
  store %struct.path_and_oids_entry* %25, %struct.path_and_oids_entry** %9, align 8
  %26 = load %struct.path_and_oids_entry*, %struct.path_and_oids_entry** %9, align 8
  %27 = getelementptr inbounds %struct.path_and_oids_entry, %struct.path_and_oids_entry* %26, i32 0, i32 2
  %28 = load i32, i32* %7, align 4
  %29 = call i32 @hashmap_entry_init(i32* %27, i32 %28)
  %30 = getelementptr inbounds %struct.path_and_oids_entry, %struct.path_and_oids_entry* %8, i32 0, i32 0
  %31 = load i8*, i8** %30, align 8
  %32 = call i8* @xstrdup(i8* %31)
  %33 = load %struct.path_and_oids_entry*, %struct.path_and_oids_entry** %9, align 8
  %34 = getelementptr inbounds %struct.path_and_oids_entry, %struct.path_and_oids_entry* %33, i32 0, i32 0
  store i8* %32, i8** %34, align 8
  %35 = load %struct.path_and_oids_entry*, %struct.path_and_oids_entry** %9, align 8
  %36 = getelementptr inbounds %struct.path_and_oids_entry, %struct.path_and_oids_entry* %35, i32 0, i32 1
  %37 = call i32 @oidset_init(i32* %36, i32 16)
  %38 = load %struct.hashmap*, %struct.hashmap** %4, align 8
  %39 = load %struct.path_and_oids_entry*, %struct.path_and_oids_entry** %9, align 8
  %40 = getelementptr inbounds %struct.path_and_oids_entry, %struct.path_and_oids_entry* %39, i32 0, i32 2
  %41 = call i32 @hashmap_put(%struct.hashmap* %38, i32* %40)
  br label %42

42:                                               ; preds = %24, %3
  %43 = load %struct.path_and_oids_entry*, %struct.path_and_oids_entry** %9, align 8
  %44 = getelementptr inbounds %struct.path_and_oids_entry, %struct.path_and_oids_entry* %43, i32 0, i32 1
  %45 = load %struct.object_id*, %struct.object_id** %6, align 8
  %46 = call i32 @oidset_insert(i32* %44, %struct.object_id* %45)
  ret void
}

declare dso_local i32 @strhash(i8*) #1

declare dso_local i32 @hashmap_entry_init(i32*, i32) #1

declare dso_local i32 @oidset_init(i32*, i32) #1

declare dso_local %struct.path_and_oids_entry* @hashmap_get_entry(%struct.hashmap*, %struct.path_and_oids_entry*, i32, i32*) #1

declare dso_local %struct.path_and_oids_entry* @xcalloc(i32, i32) #1

declare dso_local i8* @xstrdup(i8*) #1

declare dso_local i32 @hashmap_put(%struct.hashmap*, i32*) #1

declare dso_local i32 @oidset_insert(i32*, %struct.object_id*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
