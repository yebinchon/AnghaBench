; ModuleID = '/home/carl/AnghaBench/git/extr_hashmap.c_memintern.c'
source_filename = "/home/carl/AnghaBench/git/extr_hashmap.c_memintern.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hashmap = type { i32 }
%struct.pool_entry = type { i64, i8*, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@memintern.map = internal global %struct.hashmap zeroinitializer, align 4
@pool_entry_cmp = common dso_local global i32 0, align 4
@ent = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @memintern(i8* %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.pool_entry, align 8
  %6 = alloca %struct.pool_entry*, align 8
  store i8* %0, i8** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load i32, i32* getelementptr inbounds (%struct.hashmap, %struct.hashmap* @memintern.map, i32 0, i32 0), align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %2
  %10 = load i32, i32* @pool_entry_cmp, align 4
  %11 = call i32 @hashmap_init(%struct.hashmap* @memintern.map, i32 %10, i32* null, i32 0)
  br label %12

12:                                               ; preds = %9, %2
  %13 = getelementptr inbounds %struct.pool_entry, %struct.pool_entry* %5, i32 0, i32 2
  %14 = load i8*, i8** %3, align 8
  %15 = load i64, i64* %4, align 8
  %16 = call i32 @memhash(i8* %14, i64 %15)
  %17 = call i32 @hashmap_entry_init(%struct.TYPE_3__* %13, i32 %16)
  %18 = load i64, i64* %4, align 8
  %19 = getelementptr inbounds %struct.pool_entry, %struct.pool_entry* %5, i32 0, i32 0
  store i64 %18, i64* %19, align 8
  %20 = load i32, i32* @ent, align 4
  %21 = load i8*, i8** %3, align 8
  %22 = call %struct.pool_entry* @hashmap_get_entry(%struct.hashmap* @memintern.map, %struct.pool_entry* %5, i32 %20, i8* %21)
  store %struct.pool_entry* %22, %struct.pool_entry** %6, align 8
  %23 = load %struct.pool_entry*, %struct.pool_entry** %6, align 8
  %24 = icmp ne %struct.pool_entry* %23, null
  br i1 %24, label %43, label %25

25:                                               ; preds = %12
  %26 = load %struct.pool_entry*, %struct.pool_entry** %6, align 8
  %27 = load i8*, i8** %3, align 8
  %28 = load i8*, i8** %3, align 8
  %29 = load i64, i64* %4, align 8
  %30 = call i32 @FLEX_ALLOC_MEM(%struct.pool_entry* %26, i8* %27, i8* %28, i64 %29)
  %31 = load %struct.pool_entry*, %struct.pool_entry** %6, align 8
  %32 = getelementptr inbounds %struct.pool_entry, %struct.pool_entry* %31, i32 0, i32 2
  %33 = getelementptr inbounds %struct.pool_entry, %struct.pool_entry* %5, i32 0, i32 2
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @hashmap_entry_init(%struct.TYPE_3__* %32, i32 %35)
  %37 = load i64, i64* %4, align 8
  %38 = load %struct.pool_entry*, %struct.pool_entry** %6, align 8
  %39 = getelementptr inbounds %struct.pool_entry, %struct.pool_entry* %38, i32 0, i32 0
  store i64 %37, i64* %39, align 8
  %40 = load %struct.pool_entry*, %struct.pool_entry** %6, align 8
  %41 = getelementptr inbounds %struct.pool_entry, %struct.pool_entry* %40, i32 0, i32 2
  %42 = call i32 @hashmap_add(%struct.hashmap* @memintern.map, %struct.TYPE_3__* %41)
  br label %43

43:                                               ; preds = %25, %12
  %44 = load %struct.pool_entry*, %struct.pool_entry** %6, align 8
  %45 = getelementptr inbounds %struct.pool_entry, %struct.pool_entry* %44, i32 0, i32 1
  %46 = load i8*, i8** %45, align 8
  ret i8* %46
}

declare dso_local i32 @hashmap_init(%struct.hashmap*, i32, i32*, i32) #1

declare dso_local i32 @hashmap_entry_init(%struct.TYPE_3__*, i32) #1

declare dso_local i32 @memhash(i8*, i64) #1

declare dso_local %struct.pool_entry* @hashmap_get_entry(%struct.hashmap*, %struct.pool_entry*, i32, i8*) #1

declare dso_local i32 @FLEX_ALLOC_MEM(%struct.pool_entry*, i8*, i8*, i64) #1

declare dso_local i32 @hashmap_add(%struct.hashmap*, %struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
