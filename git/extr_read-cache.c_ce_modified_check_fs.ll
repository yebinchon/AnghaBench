; ModuleID = '/home/carl/AnghaBench/git/extr_read-cache.c_ce_modified_check_fs.c'
source_filename = "/home/carl/AnghaBench/git/extr_read-cache.c_ce_modified_check_fs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.index_state = type { i32 }
%struct.cache_entry = type { i32 }
%struct.stat = type { i32, i32 }

@S_IFMT = common dso_local global i32 0, align 4
@DATA_CHANGED = common dso_local global i32 0, align 4
@TYPE_CHANGED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.index_state*, %struct.cache_entry*, %struct.stat*)* @ce_modified_check_fs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ce_modified_check_fs(%struct.index_state* %0, %struct.cache_entry* %1, %struct.stat* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.index_state*, align 8
  %6 = alloca %struct.cache_entry*, align 8
  %7 = alloca %struct.stat*, align 8
  store %struct.index_state* %0, %struct.index_state** %5, align 8
  store %struct.cache_entry* %1, %struct.cache_entry** %6, align 8
  store %struct.stat* %2, %struct.stat** %7, align 8
  %8 = load %struct.stat*, %struct.stat** %7, align 8
  %9 = getelementptr inbounds %struct.stat, %struct.stat* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @S_IFMT, align 4
  %12 = and i32 %10, %11
  switch i32 %12, label %49 [
    i32 128, label %13
    i32 129, label %22
    i32 130, label %33
  ]

13:                                               ; preds = %3
  %14 = load %struct.index_state*, %struct.index_state** %5, align 8
  %15 = load %struct.cache_entry*, %struct.cache_entry** %6, align 8
  %16 = load %struct.stat*, %struct.stat** %7, align 8
  %17 = call i32 @ce_compare_data(%struct.index_state* %14, %struct.cache_entry* %15, %struct.stat* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %13
  %20 = load i32, i32* @DATA_CHANGED, align 4
  store i32 %20, i32* %4, align 4
  br label %52

21:                                               ; preds = %13
  br label %51

22:                                               ; preds = %3
  %23 = load %struct.cache_entry*, %struct.cache_entry** %6, align 8
  %24 = load %struct.stat*, %struct.stat** %7, align 8
  %25 = getelementptr inbounds %struct.stat, %struct.stat* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @xsize_t(i32 %26)
  %28 = call i32 @ce_compare_link(%struct.cache_entry* %23, i32 %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %22
  %31 = load i32, i32* @DATA_CHANGED, align 4
  store i32 %31, i32* %4, align 4
  br label %52

32:                                               ; preds = %22
  br label %51

33:                                               ; preds = %3
  %34 = load %struct.cache_entry*, %struct.cache_entry** %6, align 8
  %35 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @S_ISGITLINK(i32 %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %48

39:                                               ; preds = %33
  %40 = load %struct.cache_entry*, %struct.cache_entry** %6, align 8
  %41 = call i32 @ce_compare_gitlink(%struct.cache_entry* %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %39
  %44 = load i32, i32* @DATA_CHANGED, align 4
  br label %46

45:                                               ; preds = %39
  br label %46

46:                                               ; preds = %45, %43
  %47 = phi i32 [ %44, %43 ], [ 0, %45 ]
  store i32 %47, i32* %4, align 4
  br label %52

48:                                               ; preds = %33
  br label %49

49:                                               ; preds = %3, %48
  %50 = load i32, i32* @TYPE_CHANGED, align 4
  store i32 %50, i32* %4, align 4
  br label %52

51:                                               ; preds = %32, %21
  store i32 0, i32* %4, align 4
  br label %52

52:                                               ; preds = %51, %49, %46, %30, %19
  %53 = load i32, i32* %4, align 4
  ret i32 %53
}

declare dso_local i32 @ce_compare_data(%struct.index_state*, %struct.cache_entry*, %struct.stat*) #1

declare dso_local i32 @ce_compare_link(%struct.cache_entry*, i32) #1

declare dso_local i32 @xsize_t(i32) #1

declare dso_local i32 @S_ISGITLINK(i32) #1

declare dso_local i32 @ce_compare_gitlink(%struct.cache_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
