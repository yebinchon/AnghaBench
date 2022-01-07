; ModuleID = '/home/carl/AnghaBench/kphp-kdb/pmemcached/extr_pmemcached-data.c_cache_reload_local.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/pmemcached/extr_pmemcached-data.c_cache_reload_local.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.entry = type { i32, %struct.hash_entry* }
%struct.hash_entry = type { i64 }
%struct.index_entry = type { i32 }

@verbosity = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [58 x i8] c"entry->hash_entry->timestamp = %d, entry->timestamp = %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"Reloading cache information.\0A\00", align 1
@cache_update = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cache_reload_local(%struct.entry* %0, %struct.hash_entry* %1, %struct.index_entry* %2) #0 {
  %4 = alloca %struct.entry*, align 8
  %5 = alloca %struct.hash_entry*, align 8
  %6 = alloca %struct.index_entry*, align 8
  store %struct.entry* %0, %struct.entry** %4, align 8
  store %struct.hash_entry* %1, %struct.hash_entry** %5, align 8
  store %struct.index_entry* %2, %struct.index_entry** %6, align 8
  %7 = load i32, i32* @verbosity, align 4
  %8 = icmp sge i32 %7, 4
  br i1 %8, label %9, label %25

9:                                                ; preds = %3
  %10 = load %struct.entry*, %struct.entry** %4, align 8
  %11 = getelementptr inbounds %struct.entry, %struct.entry* %10, i32 0, i32 1
  %12 = load %struct.hash_entry*, %struct.hash_entry** %11, align 8
  %13 = icmp ne %struct.hash_entry* %12, null
  br i1 %13, label %14, label %25

14:                                               ; preds = %9
  %15 = load i32, i32* @stderr, align 4
  %16 = load %struct.entry*, %struct.entry** %4, align 8
  %17 = getelementptr inbounds %struct.entry, %struct.entry* %16, i32 0, i32 1
  %18 = load %struct.hash_entry*, %struct.hash_entry** %17, align 8
  %19 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.entry*, %struct.entry** %4, align 8
  %22 = getelementptr inbounds %struct.entry, %struct.entry* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = call i32 (i32, i8*, ...) @fprintf(i32 %15, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0), i64 %20, i32 %23)
  br label %25

25:                                               ; preds = %14, %9, %3
  %26 = load %struct.entry*, %struct.entry** %4, align 8
  %27 = getelementptr inbounds %struct.entry, %struct.entry* %26, i32 0, i32 1
  %28 = load %struct.hash_entry*, %struct.hash_entry** %27, align 8
  %29 = icmp ne %struct.hash_entry* %28, null
  br i1 %29, label %30, label %47

30:                                               ; preds = %25
  %31 = load %struct.entry*, %struct.entry** %4, align 8
  %32 = getelementptr inbounds %struct.entry, %struct.entry* %31, i32 0, i32 1
  %33 = load %struct.hash_entry*, %struct.hash_entry** %32, align 8
  %34 = load %struct.hash_entry*, %struct.hash_entry** %5, align 8
  %35 = icmp ne %struct.hash_entry* %33, %34
  br i1 %35, label %47, label %36

36:                                               ; preds = %30
  %37 = load %struct.entry*, %struct.entry** %4, align 8
  %38 = getelementptr inbounds %struct.entry, %struct.entry* %37, i32 0, i32 1
  %39 = load %struct.hash_entry*, %struct.hash_entry** %38, align 8
  %40 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.entry*, %struct.entry** %4, align 8
  %43 = getelementptr inbounds %struct.entry, %struct.entry* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = sext i32 %44 to i64
  %46 = icmp ne i64 %41, %45
  br i1 %46, label %47, label %61

47:                                               ; preds = %36, %30, %25
  %48 = load i32, i32* @verbosity, align 4
  %49 = icmp sge i32 %48, 4
  br i1 %49, label %50, label %53

50:                                               ; preds = %47
  %51 = load i32, i32* @stderr, align 4
  %52 = call i32 (i32, i8*, ...) @fprintf(i32 %51, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  br label %53

53:                                               ; preds = %50, %47
  %54 = load %struct.hash_entry*, %struct.hash_entry** %5, align 8
  %55 = load %struct.entry*, %struct.entry** %4, align 8
  %56 = getelementptr inbounds %struct.entry, %struct.entry* %55, i32 0, i32 1
  store %struct.hash_entry* %54, %struct.hash_entry** %56, align 8
  %57 = load %struct.entry*, %struct.entry** %4, align 8
  %58 = call i32 @cache_assign_data(%struct.entry* %57)
  %59 = load i32, i32* @cache_update, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* @cache_update, align 4
  br label %61

61:                                               ; preds = %53, %36
  ret i32 0
}

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @cache_assign_data(%struct.entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
