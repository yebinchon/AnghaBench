; ModuleID = '/home/carl/AnghaBench/git/extr_read-cache.c_load_all_cache_entries.c'
source_filename = "/home/carl/AnghaBench/git/extr_read-cache.c_load_all_cache_entries.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.index_state = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.index_state*, i8*, i64, i64)* @load_all_cache_entries to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @load_all_cache_entries(%struct.index_state* %0, i8* %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.index_state*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.index_state* %0, %struct.index_state** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %10 = load %struct.index_state*, %struct.index_state** %5, align 8
  %11 = getelementptr inbounds %struct.index_state, %struct.index_state* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp eq i32 %12, 4
  br i1 %13, label %14, label %22

14:                                               ; preds = %4
  %15 = load %struct.index_state*, %struct.index_state** %5, align 8
  %16 = getelementptr inbounds %struct.index_state, %struct.index_state* %15, i32 0, i32 2
  %17 = load %struct.index_state*, %struct.index_state** %5, align 8
  %18 = getelementptr inbounds %struct.index_state, %struct.index_state* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @estimate_cache_size_from_compressed(i32 %19)
  %21 = call i32 @mem_pool_init(i32* %16, i32 %20)
  br label %31

22:                                               ; preds = %4
  %23 = load %struct.index_state*, %struct.index_state** %5, align 8
  %24 = getelementptr inbounds %struct.index_state, %struct.index_state* %23, i32 0, i32 2
  %25 = load i64, i64* %7, align 8
  %26 = load %struct.index_state*, %struct.index_state** %5, align 8
  %27 = getelementptr inbounds %struct.index_state, %struct.index_state* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @estimate_cache_size(i64 %25, i32 %28)
  %30 = call i32 @mem_pool_init(i32* %24, i32 %29)
  br label %31

31:                                               ; preds = %22, %14
  %32 = load %struct.index_state*, %struct.index_state** %5, align 8
  %33 = load %struct.index_state*, %struct.index_state** %5, align 8
  %34 = getelementptr inbounds %struct.index_state, %struct.index_state* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.index_state*, %struct.index_state** %5, align 8
  %37 = getelementptr inbounds %struct.index_state, %struct.index_state* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load i8*, i8** %6, align 8
  %40 = load i64, i64* %8, align 8
  %41 = call i64 @load_cache_entry_block(%struct.index_state* %32, i32 %35, i32 0, i32 %38, i8* %39, i64 %40, i32* null)
  store i64 %41, i64* %9, align 8
  %42 = load i64, i64* %9, align 8
  ret i64 %42
}

declare dso_local i32 @mem_pool_init(i32*, i32) #1

declare dso_local i32 @estimate_cache_size_from_compressed(i32) #1

declare dso_local i32 @estimate_cache_size(i64, i32) #1

declare dso_local i64 @load_cache_entry_block(%struct.index_state*, i32, i32, i32, i8*, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
