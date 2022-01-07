; ModuleID = '/home/carl/AnghaBench/git/extr_diff-lib.c_get_stat_data.c'
source_filename = "/home/carl/AnghaBench/git/extr_diff-lib.c_get_stat_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.object_id = type { i32 }
%struct.cache_entry = type { i32, %struct.object_id }
%struct.diff_options = type { i32 }
%struct.stat = type { i32 }

@null_oid = common dso_local global %struct.object_id zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cache_entry*, %struct.object_id**, i32*, i32, i32, i32*, %struct.diff_options*)* @get_stat_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_stat_data(%struct.cache_entry* %0, %struct.object_id** %1, i32* %2, i32 %3, i32 %4, i32* %5, %struct.diff_options* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.cache_entry*, align 8
  %10 = alloca %struct.object_id**, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca %struct.diff_options*, align 8
  %16 = alloca %struct.object_id*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.stat, align 4
  store %struct.cache_entry* %0, %struct.cache_entry** %9, align 8
  store %struct.object_id** %1, %struct.object_id*** %10, align 8
  store i32* %2, i32** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32* %5, i32** %14, align 8
  store %struct.diff_options* %6, %struct.diff_options** %15, align 8
  %20 = load %struct.cache_entry*, %struct.cache_entry** %9, align 8
  %21 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %20, i32 0, i32 1
  store %struct.object_id* %21, %struct.object_id** %16, align 8
  %22 = load %struct.cache_entry*, %struct.cache_entry** %9, align 8
  %23 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %17, align 4
  %25 = load i32, i32* %12, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %63, label %27

27:                                               ; preds = %7
  %28 = load %struct.cache_entry*, %struct.cache_entry** %9, align 8
  %29 = call i32 @ce_uptodate(%struct.cache_entry* %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %63, label %31

31:                                               ; preds = %27
  %32 = load %struct.cache_entry*, %struct.cache_entry** %9, align 8
  %33 = call i32 @check_removed(%struct.cache_entry* %32, %struct.stat* %19)
  store i32 %33, i32* %18, align 4
  %34 = load i32, i32* %18, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %31
  store i32 -1, i32* %8, align 4
  br label %68

37:                                               ; preds = %31
  %38 = load i32, i32* %18, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %49

40:                                               ; preds = %37
  %41 = load i32, i32* %13, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %40
  %44 = load %struct.object_id*, %struct.object_id** %16, align 8
  %45 = load %struct.object_id**, %struct.object_id*** %10, align 8
  store %struct.object_id* %44, %struct.object_id** %45, align 8
  %46 = load i32, i32* %17, align 4
  %47 = load i32*, i32** %11, align 8
  store i32 %46, i32* %47, align 4
  store i32 0, i32* %8, align 4
  br label %68

48:                                               ; preds = %40
  store i32 -1, i32* %8, align 4
  br label %68

49:                                               ; preds = %37
  br label %50

50:                                               ; preds = %49
  %51 = load %struct.diff_options*, %struct.diff_options** %15, align 8
  %52 = load %struct.cache_entry*, %struct.cache_entry** %9, align 8
  %53 = load i32*, i32** %14, align 8
  %54 = call i32 @match_stat_with_submodule(%struct.diff_options* %51, %struct.cache_entry* %52, %struct.stat* %19, i32 0, i32* %53)
  store i32 %54, i32* %18, align 4
  %55 = load i32, i32* %18, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %50
  %58 = load %struct.cache_entry*, %struct.cache_entry** %9, align 8
  %59 = getelementptr inbounds %struct.stat, %struct.stat* %19, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @ce_mode_from_stat(%struct.cache_entry* %58, i32 %60)
  store i32 %61, i32* %17, align 4
  store %struct.object_id* @null_oid, %struct.object_id** %16, align 8
  br label %62

62:                                               ; preds = %57, %50
  br label %63

63:                                               ; preds = %62, %27, %7
  %64 = load %struct.object_id*, %struct.object_id** %16, align 8
  %65 = load %struct.object_id**, %struct.object_id*** %10, align 8
  store %struct.object_id* %64, %struct.object_id** %65, align 8
  %66 = load i32, i32* %17, align 4
  %67 = load i32*, i32** %11, align 8
  store i32 %66, i32* %67, align 4
  store i32 0, i32* %8, align 4
  br label %68

68:                                               ; preds = %63, %48, %43, %36
  %69 = load i32, i32* %8, align 4
  ret i32 %69
}

declare dso_local i32 @ce_uptodate(%struct.cache_entry*) #1

declare dso_local i32 @check_removed(%struct.cache_entry*, %struct.stat*) #1

declare dso_local i32 @match_stat_with_submodule(%struct.diff_options*, %struct.cache_entry*, %struct.stat*, i32, i32*) #1

declare dso_local i32 @ce_mode_from_stat(%struct.cache_entry*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
