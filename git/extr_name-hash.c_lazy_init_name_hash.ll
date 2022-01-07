; ModuleID = '/home/carl/AnghaBench/git/extr_name-hash.c_lazy_init_name_hash.c'
source_filename = "/home/carl/AnghaBench/git/extr_name-hash.c_lazy_init_name_hash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.index_state = type { i32, i32, i32*, i32, i32 }

@cache_entry_cmp = common dso_local global i32 0, align 4
@dir_entry_cmp = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"initialize name hash\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.index_state*)* @lazy_init_name_hash to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lazy_init_name_hash(%struct.index_state* %0) #0 {
  %2 = alloca %struct.index_state*, align 8
  %3 = alloca i32, align 4
  store %struct.index_state* %0, %struct.index_state** %2, align 8
  %4 = load %struct.index_state*, %struct.index_state** %2, align 8
  %5 = getelementptr inbounds %struct.index_state, %struct.index_state* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  br label %62

9:                                                ; preds = %1
  %10 = call i32 (...) @trace_performance_enter()
  %11 = load %struct.index_state*, %struct.index_state** %2, align 8
  %12 = getelementptr inbounds %struct.index_state, %struct.index_state* %11, i32 0, i32 4
  %13 = load i32, i32* @cache_entry_cmp, align 4
  %14 = load %struct.index_state*, %struct.index_state** %2, align 8
  %15 = getelementptr inbounds %struct.index_state, %struct.index_state* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @hashmap_init(i32* %12, i32 %13, i32* null, i32 %16)
  %18 = load %struct.index_state*, %struct.index_state** %2, align 8
  %19 = getelementptr inbounds %struct.index_state, %struct.index_state* %18, i32 0, i32 3
  %20 = load i32, i32* @dir_entry_cmp, align 4
  %21 = load %struct.index_state*, %struct.index_state** %2, align 8
  %22 = getelementptr inbounds %struct.index_state, %struct.index_state* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @hashmap_init(i32* %19, i32 %20, i32* null, i32 %23)
  %25 = load %struct.index_state*, %struct.index_state** %2, align 8
  %26 = call i64 @lookup_lazy_params(%struct.index_state* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %37

28:                                               ; preds = %9
  %29 = load %struct.index_state*, %struct.index_state** %2, align 8
  %30 = getelementptr inbounds %struct.index_state, %struct.index_state* %29, i32 0, i32 3
  %31 = call i32 @hashmap_disable_item_counting(i32* %30)
  %32 = load %struct.index_state*, %struct.index_state** %2, align 8
  %33 = call i32 @threaded_lazy_init_name_hash(%struct.index_state* %32)
  %34 = load %struct.index_state*, %struct.index_state** %2, align 8
  %35 = getelementptr inbounds %struct.index_state, %struct.index_state* %34, i32 0, i32 3
  %36 = call i32 @hashmap_enable_item_counting(i32* %35)
  br label %58

37:                                               ; preds = %9
  store i32 0, i32* %3, align 4
  br label %38

38:                                               ; preds = %54, %37
  %39 = load i32, i32* %3, align 4
  %40 = load %struct.index_state*, %struct.index_state** %2, align 8
  %41 = getelementptr inbounds %struct.index_state, %struct.index_state* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = icmp slt i32 %39, %42
  br i1 %43, label %44, label %57

44:                                               ; preds = %38
  %45 = load %struct.index_state*, %struct.index_state** %2, align 8
  %46 = load %struct.index_state*, %struct.index_state** %2, align 8
  %47 = getelementptr inbounds %struct.index_state, %struct.index_state* %46, i32 0, i32 2
  %48 = load i32*, i32** %47, align 8
  %49 = load i32, i32* %3, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @hash_index_entry(%struct.index_state* %45, i32 %52)
  br label %54

54:                                               ; preds = %44
  %55 = load i32, i32* %3, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %3, align 4
  br label %38

57:                                               ; preds = %38
  br label %58

58:                                               ; preds = %57, %28
  %59 = load %struct.index_state*, %struct.index_state** %2, align 8
  %60 = getelementptr inbounds %struct.index_state, %struct.index_state* %59, i32 0, i32 0
  store i32 1, i32* %60, align 8
  %61 = call i32 @trace_performance_leave(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  br label %62

62:                                               ; preds = %58, %8
  ret void
}

declare dso_local i32 @trace_performance_enter(...) #1

declare dso_local i32 @hashmap_init(i32*, i32, i32*, i32) #1

declare dso_local i64 @lookup_lazy_params(%struct.index_state*) #1

declare dso_local i32 @hashmap_disable_item_counting(i32*) #1

declare dso_local i32 @threaded_lazy_init_name_hash(%struct.index_state*) #1

declare dso_local i32 @hashmap_enable_item_counting(i32*) #1

declare dso_local i32 @hash_index_entry(%struct.index_state*, i32) #1

declare dso_local i32 @trace_performance_leave(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
