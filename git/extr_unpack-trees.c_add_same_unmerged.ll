; ModuleID = '/home/carl/AnghaBench/git/extr_unpack-trees.c_add_same_unmerged.c'
source_filename = "/home/carl/AnghaBench/git/extr_unpack-trees.c_add_same_unmerged.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cache_entry = type { i32 }
%struct.unpack_trees_options = type { %struct.index_state* }
%struct.index_state = type { i32, %struct.cache_entry** }

@.str = private unnamed_addr constant [56 x i8] c"programming error in a caller of mark_ce_used_same_name\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cache_entry*, %struct.unpack_trees_options*)* @add_same_unmerged to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_same_unmerged(%struct.cache_entry* %0, %struct.unpack_trees_options* %1) #0 {
  %3 = alloca %struct.cache_entry*, align 8
  %4 = alloca %struct.unpack_trees_options*, align 8
  %5 = alloca %struct.index_state*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.cache_entry*, align 8
  store %struct.cache_entry* %0, %struct.cache_entry** %3, align 8
  store %struct.unpack_trees_options* %1, %struct.unpack_trees_options** %4, align 8
  %9 = load %struct.unpack_trees_options*, %struct.unpack_trees_options** %4, align 8
  %10 = getelementptr inbounds %struct.unpack_trees_options, %struct.unpack_trees_options* %9, i32 0, i32 0
  %11 = load %struct.index_state*, %struct.index_state** %10, align 8
  store %struct.index_state* %11, %struct.index_state** %5, align 8
  %12 = load %struct.cache_entry*, %struct.cache_entry** %3, align 8
  %13 = call i32 @ce_namelen(%struct.cache_entry* %12)
  store i32 %13, i32* %6, align 4
  %14 = load %struct.index_state*, %struct.index_state** %5, align 8
  %15 = load %struct.cache_entry*, %struct.cache_entry** %3, align 8
  %16 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @index_name_pos(%struct.index_state* %14, i32 %17, i32 %18)
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %7, align 4
  %21 = icmp sle i32 0, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %2
  %23 = call i32 @die(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0))
  br label %24

24:                                               ; preds = %22, %2
  %25 = load i32, i32* %7, align 4
  %26 = sub nsw i32 0, %25
  %27 = sub nsw i32 %26, 1
  store i32 %27, i32* %7, align 4
  br label %28

28:                                               ; preds = %64, %24
  %29 = load i32, i32* %7, align 4
  %30 = load %struct.index_state*, %struct.index_state** %5, align 8
  %31 = getelementptr inbounds %struct.index_state, %struct.index_state* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp slt i32 %29, %32
  br i1 %33, label %34, label %67

34:                                               ; preds = %28
  %35 = load %struct.index_state*, %struct.index_state** %5, align 8
  %36 = getelementptr inbounds %struct.index_state, %struct.index_state* %35, i32 0, i32 1
  %37 = load %struct.cache_entry**, %struct.cache_entry*** %36, align 8
  %38 = load i32, i32* %7, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.cache_entry*, %struct.cache_entry** %37, i64 %39
  %41 = load %struct.cache_entry*, %struct.cache_entry** %40, align 8
  store %struct.cache_entry* %41, %struct.cache_entry** %8, align 8
  %42 = load i32, i32* %6, align 4
  %43 = load %struct.cache_entry*, %struct.cache_entry** %8, align 8
  %44 = call i32 @ce_namelen(%struct.cache_entry* %43)
  %45 = icmp ne i32 %42, %44
  br i1 %45, label %56, label %46

46:                                               ; preds = %34
  %47 = load %struct.cache_entry*, %struct.cache_entry** %3, align 8
  %48 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.cache_entry*, %struct.cache_entry** %8, align 8
  %51 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* %6, align 4
  %54 = call i64 @memcmp(i32 %49, i32 %52, i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %46, %34
  br label %67

57:                                               ; preds = %46
  %58 = load %struct.unpack_trees_options*, %struct.unpack_trees_options** %4, align 8
  %59 = load %struct.cache_entry*, %struct.cache_entry** %8, align 8
  %60 = call i32 @add_entry(%struct.unpack_trees_options* %58, %struct.cache_entry* %59, i32 0, i32 0)
  %61 = load %struct.cache_entry*, %struct.cache_entry** %8, align 8
  %62 = load %struct.unpack_trees_options*, %struct.unpack_trees_options** %4, align 8
  %63 = call i32 @mark_ce_used(%struct.cache_entry* %61, %struct.unpack_trees_options* %62)
  br label %64

64:                                               ; preds = %57
  %65 = load i32, i32* %7, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %7, align 4
  br label %28

67:                                               ; preds = %56, %28
  ret void
}

declare dso_local i32 @ce_namelen(%struct.cache_entry*) #1

declare dso_local i32 @index_name_pos(%struct.index_state*, i32, i32) #1

declare dso_local i32 @die(i8*) #1

declare dso_local i64 @memcmp(i32, i32, i32) #1

declare dso_local i32 @add_entry(%struct.unpack_trees_options*, %struct.cache_entry*, i32, i32) #1

declare dso_local i32 @mark_ce_used(%struct.cache_entry*, %struct.unpack_trees_options*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
