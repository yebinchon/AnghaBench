; ModuleID = '/home/carl/AnghaBench/kphp-kdb/pmemcached/extr_pmemcached-data.c_do_pmemcached_get_all_next_keys.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/pmemcached/extr_pmemcached-data.c_do_pmemcached_get_all_next_keys.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.index_entry = type { i32 }

@iterator_key = common dso_local global i8* null, align 8
@iterator_prefix_len = common dso_local global i32 0, align 4
@iterator_index_entry = common dso_local global %struct.index_entry* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @do_pmemcached_get_all_next_keys(i8* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.index_entry*, align 8
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store %struct.index_entry* null, %struct.index_entry** %10, align 8
  %11 = load i8*, i8** %6, align 8
  store i8* %11, i8** @iterator_key, align 8
  %12 = load i32, i32* %8, align 4
  store i32 %12, i32* @iterator_prefix_len, align 4
  %13 = load i32, i32* %9, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %29, label %15

15:                                               ; preds = %4
  %16 = load i8*, i8** %6, align 8
  %17 = load i32, i32* %7, align 4
  %18 = call %struct.index_entry* @index_get(i8* %16, i32 %17)
  store %struct.index_entry* %18, %struct.index_entry** %10, align 8
  %19 = load %struct.index_entry*, %struct.index_entry** %10, align 8
  %20 = icmp ne %struct.index_entry* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %15
  store i32 -2, i32* %5, align 4
  br label %51

22:                                               ; preds = %15
  %23 = load %struct.index_entry*, %struct.index_entry** %10, align 8
  %24 = getelementptr inbounds %struct.index_entry, %struct.index_entry* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp eq i32 %25, -1
  br i1 %26, label %27, label %28

27:                                               ; preds = %22
  store %struct.index_entry* null, %struct.index_entry** %10, align 8
  br label %28

28:                                               ; preds = %27, %22
  br label %29

29:                                               ; preds = %28, %4
  %30 = load %struct.index_entry*, %struct.index_entry** %10, align 8
  %31 = icmp ne %struct.index_entry* %30, null
  br i1 %31, label %40, label %32

32:                                               ; preds = %29
  %33 = load i8*, i8** %6, align 8
  %34 = load i32, i32* %7, align 4
  %35 = call %struct.index_entry* @index_get_next(i8* %33, i32 %34)
  store %struct.index_entry* %35, %struct.index_entry** %10, align 8
  %36 = load %struct.index_entry*, %struct.index_entry** %10, align 8
  %37 = icmp ne %struct.index_entry* %36, null
  br i1 %37, label %39, label %38

38:                                               ; preds = %32
  store i32 -2, i32* %5, align 4
  br label %51

39:                                               ; preds = %32
  br label %40

40:                                               ; preds = %39, %29
  %41 = load %struct.index_entry*, %struct.index_entry** %10, align 8
  store %struct.index_entry* %41, %struct.index_entry** @iterator_index_entry, align 8
  %42 = load i8*, i8** %6, align 8
  %43 = load i32, i32* %7, align 4
  %44 = load i32, i32* %8, align 4
  %45 = load i32, i32* %9, align 4
  %46 = call i32 @get_all_next_entries(i8* %42, i32 %43, i32 %44, i32 %45)
  %47 = icmp ne i32 %46, -2
  br i1 %47, label %48, label %50

48:                                               ; preds = %40
  %49 = call i32 @iterator_report(i32 0)
  store i32 %49, i32* %5, align 4
  br label %51

50:                                               ; preds = %40
  store i32 0, i32* %5, align 4
  br label %51

51:                                               ; preds = %50, %48, %38, %21
  %52 = load i32, i32* %5, align 4
  ret i32 %52
}

declare dso_local %struct.index_entry* @index_get(i8*, i32) #1

declare dso_local %struct.index_entry* @index_get_next(i8*, i32) #1

declare dso_local i32 @get_all_next_entries(i8*, i32, i32, i32) #1

declare dso_local i32 @iterator_report(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
