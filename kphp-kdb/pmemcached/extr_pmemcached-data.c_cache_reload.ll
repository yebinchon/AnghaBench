; ModuleID = '/home/carl/AnghaBench/kphp-kdb/pmemcached/extr_pmemcached-data.c_cache_reload.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/pmemcached/extr_pmemcached-data.c_cache_reload.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.entry = type { i32, %struct.hash_entry*, i32, i32 }
%struct.hash_entry = type { i32 }

@verbosity = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [58 x i8] c"entry->hash_entry->timestamp = %d, entry->timestamp = %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [46 x i8] c"Reloading cache information. Hash_entry = %p\0A\00", align 1
@cache_update = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cache_reload(%struct.entry* %0) #0 {
  %2 = alloca %struct.entry*, align 8
  %3 = alloca %struct.hash_entry*, align 8
  store %struct.entry* %0, %struct.entry** %2, align 8
  %4 = load i32, i32* @verbosity, align 4
  %5 = icmp sge i32 %4, 4
  br i1 %5, label %6, label %22

6:                                                ; preds = %1
  %7 = load %struct.entry*, %struct.entry** %2, align 8
  %8 = getelementptr inbounds %struct.entry, %struct.entry* %7, i32 0, i32 1
  %9 = load %struct.hash_entry*, %struct.hash_entry** %8, align 8
  %10 = icmp ne %struct.hash_entry* %9, null
  br i1 %10, label %11, label %22

11:                                               ; preds = %6
  %12 = load i32, i32* @stderr, align 4
  %13 = load %struct.entry*, %struct.entry** %2, align 8
  %14 = getelementptr inbounds %struct.entry, %struct.entry* %13, i32 0, i32 1
  %15 = load %struct.hash_entry*, %struct.hash_entry** %14, align 8
  %16 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.entry*, %struct.entry** %2, align 8
  %19 = getelementptr inbounds %struct.entry, %struct.entry* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = call i32 (i32, i8*, ...) @fprintf(i32 %12, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0), i32 %17, i32 %20)
  br label %22

22:                                               ; preds = %11, %6, %1
  %23 = load %struct.entry*, %struct.entry** %2, align 8
  %24 = getelementptr inbounds %struct.entry, %struct.entry* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.entry*, %struct.entry** %2, align 8
  %27 = getelementptr inbounds %struct.entry, %struct.entry* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = call %struct.hash_entry* @get_entry(i32 %25, i32 %28)
  store %struct.hash_entry* %29, %struct.hash_entry** %3, align 8
  %30 = load %struct.entry*, %struct.entry** %2, align 8
  %31 = getelementptr inbounds %struct.entry, %struct.entry* %30, i32 0, i32 1
  %32 = load %struct.hash_entry*, %struct.hash_entry** %31, align 8
  %33 = icmp ne %struct.hash_entry* %32, null
  br i1 %33, label %34, label %50

34:                                               ; preds = %22
  %35 = load %struct.entry*, %struct.entry** %2, align 8
  %36 = getelementptr inbounds %struct.entry, %struct.entry* %35, i32 0, i32 1
  %37 = load %struct.hash_entry*, %struct.hash_entry** %36, align 8
  %38 = load %struct.hash_entry*, %struct.hash_entry** %3, align 8
  %39 = icmp ne %struct.hash_entry* %37, %38
  br i1 %39, label %50, label %40

40:                                               ; preds = %34
  %41 = load %struct.entry*, %struct.entry** %2, align 8
  %42 = getelementptr inbounds %struct.entry, %struct.entry* %41, i32 0, i32 1
  %43 = load %struct.hash_entry*, %struct.hash_entry** %42, align 8
  %44 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.entry*, %struct.entry** %2, align 8
  %47 = getelementptr inbounds %struct.entry, %struct.entry* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = icmp ne i32 %45, %48
  br i1 %49, label %50, label %65

50:                                               ; preds = %40, %34, %22
  %51 = load i32, i32* @verbosity, align 4
  %52 = icmp sge i32 %51, 4
  br i1 %52, label %53, label %57

53:                                               ; preds = %50
  %54 = load i32, i32* @stderr, align 4
  %55 = load %struct.hash_entry*, %struct.hash_entry** %3, align 8
  %56 = call i32 (i32, i8*, ...) @fprintf(i32 %54, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), %struct.hash_entry* %55)
  br label %57

57:                                               ; preds = %53, %50
  %58 = load %struct.hash_entry*, %struct.hash_entry** %3, align 8
  %59 = load %struct.entry*, %struct.entry** %2, align 8
  %60 = getelementptr inbounds %struct.entry, %struct.entry* %59, i32 0, i32 1
  store %struct.hash_entry* %58, %struct.hash_entry** %60, align 8
  %61 = load %struct.entry*, %struct.entry** %2, align 8
  %62 = call i32 @cache_assign_data(%struct.entry* %61)
  %63 = load i32, i32* @cache_update, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* @cache_update, align 4
  br label %65

65:                                               ; preds = %57, %40
  ret i32 0
}

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local %struct.hash_entry* @get_entry(i32, i32) #1

declare dso_local i32 @cache_assign_data(%struct.entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
