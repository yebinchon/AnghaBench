; ModuleID = '/home/carl/AnghaBench/kphp-kdb/pmemcached/extr_pmemcached-index-ram.c_key_cmp.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/pmemcached/extr_pmemcached-index-ram.c_key_cmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.index_entry = type { i32, i32, i32 }
%struct.hash_entry = type { i32, i32, i32 }

@hash_count = common dso_local global i32 0, align 4
@index_size = common dso_local global i32 0, align 4
@p = common dso_local global %struct.index_entry** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @key_cmp(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.hash_entry*, align 8
  %7 = alloca %struct.index_entry*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %4, align 4
  %9 = load i32, i32* @hash_count, align 4
  %10 = icmp eq i32 %8, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %44

12:                                               ; preds = %2
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* @index_size, align 4
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %12
  store i32 -1, i32* %3, align 4
  br label %44

17:                                               ; preds = %12
  %18 = load %struct.index_entry**, %struct.index_entry*** @p, align 8
  %19 = load i32, i32* %4, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.index_entry*, %struct.index_entry** %18, i64 %20
  %22 = load %struct.index_entry*, %struct.index_entry** %21, align 8
  %23 = bitcast %struct.index_entry* %22 to %struct.hash_entry*
  store %struct.hash_entry* %23, %struct.hash_entry** %6, align 8
  %24 = load %struct.hash_entry*, %struct.hash_entry** %6, align 8
  %25 = bitcast %struct.hash_entry* %24 to %struct.index_entry*
  %26 = call i32 @assert(%struct.index_entry* %25)
  %27 = load i32, i32* %5, align 4
  %28 = call %struct.index_entry* @index_get_by_idx(i32 %27)
  store %struct.index_entry* %28, %struct.index_entry** %7, align 8
  %29 = load %struct.index_entry*, %struct.index_entry** %7, align 8
  %30 = call i32 @assert(%struct.index_entry* %29)
  %31 = load %struct.hash_entry*, %struct.hash_entry** %6, align 8
  %32 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.hash_entry*, %struct.hash_entry** %6, align 8
  %35 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.index_entry*, %struct.index_entry** %7, align 8
  %38 = getelementptr inbounds %struct.index_entry, %struct.index_entry* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.index_entry*, %struct.index_entry** %7, align 8
  %41 = getelementptr inbounds %struct.index_entry, %struct.index_entry* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @mystrcmp(i32 %33, i32 %36, i32 %39, i32 %42)
  store i32 %43, i32* %3, align 4
  br label %44

44:                                               ; preds = %17, %16, %11
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

declare dso_local i32 @assert(%struct.index_entry*) #1

declare dso_local %struct.index_entry* @index_get_by_idx(i32) #1

declare dso_local i32 @mystrcmp(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
