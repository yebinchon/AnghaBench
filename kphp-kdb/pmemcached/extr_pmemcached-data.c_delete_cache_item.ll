; ModuleID = '/home/carl/AnghaBench/kphp-kdb/pmemcached/extr_pmemcached-data.c_delete_cache_item.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/pmemcached/extr_pmemcached-data.c_delete_cache_item.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.entry = type { i32 }

@verbosity = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"delete_cache_item\0A\00", align 1
@cache = common dso_local global %struct.entry* null, align 8
@cache_next = common dso_local global i64* null, align 8
@cache_prev = common dso_local global i64* null, align 8
@cache_stack = common dso_local global i32* null, align 8
@cache_free = common dso_local global i32 0, align 4
@cache_deletes = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @delete_cache_item(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.entry*, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* @verbosity, align 4
  %5 = icmp sge i32 %4, 4
  br i1 %5, label %6, label %9

6:                                                ; preds = %1
  %7 = load i32, i32* @stderr, align 4
  %8 = call i32 @fprintf(i32 %7, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  br label %9

9:                                                ; preds = %6, %1
  %10 = load %struct.entry*, %struct.entry** @cache, align 8
  %11 = load i32, i32* %2, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds %struct.entry, %struct.entry* %10, i64 %12
  store %struct.entry* %13, %struct.entry** %3, align 8
  %14 = load %struct.entry*, %struct.entry** %3, align 8
  %15 = call i32 @free_cache_item(%struct.entry* %14)
  %16 = load i32, i32* %2, align 4
  %17 = call i32 @del_cache_use(i32 %16)
  %18 = load i64*, i64** @cache_next, align 8
  %19 = load i32, i32* %2, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i64, i64* %18, i64 %20
  %22 = load i64, i64* %21, align 8
  %23 = load i64*, i64** @cache_next, align 8
  %24 = load i64*, i64** @cache_prev, align 8
  %25 = load i32, i32* %2, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i64, i64* %24, i64 %26
  %28 = load i64, i64* %27, align 8
  %29 = getelementptr inbounds i64, i64* %23, i64 %28
  store i64 %22, i64* %29, align 8
  %30 = load i64*, i64** @cache_prev, align 8
  %31 = load i32, i32* %2, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i64, i64* %30, i64 %32
  %34 = load i64, i64* %33, align 8
  %35 = load i64*, i64** @cache_prev, align 8
  %36 = load i64*, i64** @cache_next, align 8
  %37 = load i32, i32* %2, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i64, i64* %36, i64 %38
  %40 = load i64, i64* %39, align 8
  %41 = getelementptr inbounds i64, i64* %35, i64 %40
  store i64 %34, i64* %41, align 8
  %42 = load i32, i32* %2, align 4
  %43 = load i32*, i32** @cache_stack, align 8
  %44 = load i32, i32* @cache_free, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* @cache_free, align 4
  %46 = sext i32 %44 to i64
  %47 = getelementptr inbounds i32, i32* %43, i64 %46
  store i32 %42, i32* %47, align 4
  %48 = load i32, i32* @cache_deletes, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* @cache_deletes, align 4
  ret void
}

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local i32 @free_cache_item(%struct.entry*) #1

declare dso_local i32 @del_cache_use(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
