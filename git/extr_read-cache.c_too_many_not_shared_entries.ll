; ModuleID = '/home/carl/AnghaBench/git/extr_read-cache.c_too_many_not_shared_entries.c'
source_filename = "/home/carl/AnghaBench/git/extr_read-cache.c_too_many_not_shared_entries.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.index_state = type { i32, %struct.cache_entry** }
%struct.cache_entry = type { i32 }

@default_max_percent_split_change = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.index_state*)* @too_many_not_shared_entries to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @too_many_not_shared_entries(%struct.index_state* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.index_state*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.cache_entry*, align 8
  store %struct.index_state* %0, %struct.index_state** %3, align 8
  store i32 0, i32* %5, align 4
  %8 = call i32 (...) @git_config_get_max_percent_split_change()
  store i32 %8, i32* %6, align 4
  %9 = load i32, i32* %6, align 4
  switch i32 %9, label %14 [
    i32 -1, label %10
    i32 0, label %12
    i32 100, label %13
  ]

10:                                               ; preds = %1
  %11 = load i32, i32* @default_max_percent_split_change, align 4
  store i32 %11, i32* %6, align 4
  br label %15

12:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %51

13:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %51

14:                                               ; preds = %1
  br label %15

15:                                               ; preds = %14, %10
  store i32 0, i32* %4, align 4
  br label %16

16:                                               ; preds = %38, %15
  %17 = load i32, i32* %4, align 4
  %18 = load %struct.index_state*, %struct.index_state** %3, align 8
  %19 = getelementptr inbounds %struct.index_state, %struct.index_state* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp slt i32 %17, %20
  br i1 %21, label %22, label %41

22:                                               ; preds = %16
  %23 = load %struct.index_state*, %struct.index_state** %3, align 8
  %24 = getelementptr inbounds %struct.index_state, %struct.index_state* %23, i32 0, i32 1
  %25 = load %struct.cache_entry**, %struct.cache_entry*** %24, align 8
  %26 = load i32, i32* %4, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.cache_entry*, %struct.cache_entry** %25, i64 %27
  %29 = load %struct.cache_entry*, %struct.cache_entry** %28, align 8
  store %struct.cache_entry* %29, %struct.cache_entry** %7, align 8
  %30 = load %struct.cache_entry*, %struct.cache_entry** %7, align 8
  %31 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %22
  %35 = load i32, i32* %5, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %5, align 4
  br label %37

37:                                               ; preds = %34, %22
  br label %38

38:                                               ; preds = %37
  %39 = load i32, i32* %4, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %4, align 4
  br label %16

41:                                               ; preds = %16
  %42 = load %struct.index_state*, %struct.index_state** %3, align 8
  %43 = getelementptr inbounds %struct.index_state, %struct.index_state* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* %6, align 4
  %46 = mul nsw i32 %44, %45
  %47 = load i32, i32* %5, align 4
  %48 = mul nsw i32 %47, 100
  %49 = icmp slt i32 %46, %48
  %50 = zext i1 %49 to i32
  store i32 %50, i32* %2, align 4
  br label %51

51:                                               ; preds = %41, %13, %12
  %52 = load i32, i32* %2, align 4
  ret i32 %52
}

declare dso_local i32 @git_config_get_max_percent_split_change(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
