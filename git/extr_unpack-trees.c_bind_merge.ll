; ModuleID = '/home/carl/AnghaBench/git/extr_unpack-trees.c_bind_merge.c'
source_filename = "/home/carl/AnghaBench/git/extr_unpack-trees.c_bind_merge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cache_entry = type { i32 }
%struct.unpack_trees_options = type { i32, i64 }

@.str = private unnamed_addr constant [35 x i8] c"Cannot do a bind merge of %d trees\00", align 1
@ERROR_BIND_OVERLAP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bind_merge(%struct.cache_entry** %0, %struct.unpack_trees_options* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cache_entry**, align 8
  %5 = alloca %struct.unpack_trees_options*, align 8
  %6 = alloca %struct.cache_entry*, align 8
  %7 = alloca %struct.cache_entry*, align 8
  store %struct.cache_entry** %0, %struct.cache_entry*** %4, align 8
  store %struct.unpack_trees_options* %1, %struct.unpack_trees_options** %5, align 8
  %8 = load %struct.cache_entry**, %struct.cache_entry*** %4, align 8
  %9 = getelementptr inbounds %struct.cache_entry*, %struct.cache_entry** %8, i64 0
  %10 = load %struct.cache_entry*, %struct.cache_entry** %9, align 8
  store %struct.cache_entry* %10, %struct.cache_entry** %6, align 8
  %11 = load %struct.cache_entry**, %struct.cache_entry*** %4, align 8
  %12 = getelementptr inbounds %struct.cache_entry*, %struct.cache_entry** %11, i64 1
  %13 = load %struct.cache_entry*, %struct.cache_entry** %12, align 8
  store %struct.cache_entry* %13, %struct.cache_entry** %7, align 8
  %14 = load %struct.unpack_trees_options*, %struct.unpack_trees_options** %5, align 8
  %15 = getelementptr inbounds %struct.unpack_trees_options, %struct.unpack_trees_options* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp ne i32 %16, 1
  br i1 %17, label %18, label %23

18:                                               ; preds = %2
  %19 = load %struct.unpack_trees_options*, %struct.unpack_trees_options** %5, align 8
  %20 = getelementptr inbounds %struct.unpack_trees_options, %struct.unpack_trees_options* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %21)
  store i32 %22, i32* %3, align 4
  br label %63

23:                                               ; preds = %2
  %24 = load %struct.cache_entry*, %struct.cache_entry** %7, align 8
  %25 = icmp ne %struct.cache_entry* %24, null
  br i1 %25, label %26, label %52

26:                                               ; preds = %23
  %27 = load %struct.cache_entry*, %struct.cache_entry** %6, align 8
  %28 = icmp ne %struct.cache_entry* %27, null
  br i1 %28, label %29, label %52

29:                                               ; preds = %26
  %30 = load %struct.unpack_trees_options*, %struct.unpack_trees_options** %5, align 8
  %31 = getelementptr inbounds %struct.unpack_trees_options, %struct.unpack_trees_options* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %29
  br label %50

35:                                               ; preds = %29
  %36 = load %struct.unpack_trees_options*, %struct.unpack_trees_options** %5, align 8
  %37 = load i32, i32* @ERROR_BIND_OVERLAP, align 4
  %38 = call i32 @ERRORMSG(%struct.unpack_trees_options* %36, i32 %37)
  %39 = sext i32 %38 to i64
  %40 = inttoptr i64 %39 to i8*
  %41 = load %struct.cache_entry*, %struct.cache_entry** %7, align 8
  %42 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i8* @super_prefixed(i32 %43)
  %45 = load %struct.cache_entry*, %struct.cache_entry** %6, align 8
  %46 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i8* @super_prefixed(i32 %47)
  %49 = call i32 (i8*, ...) @error(i8* %40, i8* %44, i8* %48)
  br label %50

50:                                               ; preds = %35, %34
  %51 = phi i32 [ -1, %34 ], [ %49, %35 ]
  store i32 %51, i32* %3, align 4
  br label %63

52:                                               ; preds = %26, %23
  %53 = load %struct.cache_entry*, %struct.cache_entry** %7, align 8
  %54 = icmp ne %struct.cache_entry* %53, null
  br i1 %54, label %59, label %55

55:                                               ; preds = %52
  %56 = load %struct.cache_entry*, %struct.cache_entry** %6, align 8
  %57 = load %struct.unpack_trees_options*, %struct.unpack_trees_options** %5, align 8
  %58 = call i32 @keep_entry(%struct.cache_entry* %56, %struct.unpack_trees_options* %57)
  store i32 %58, i32* %3, align 4
  br label %63

59:                                               ; preds = %52
  %60 = load %struct.cache_entry*, %struct.cache_entry** %7, align 8
  %61 = load %struct.unpack_trees_options*, %struct.unpack_trees_options** %5, align 8
  %62 = call i32 @merged_entry(%struct.cache_entry* %60, i32* null, %struct.unpack_trees_options* %61)
  store i32 %62, i32* %3, align 4
  br label %63

63:                                               ; preds = %59, %55, %50, %18
  %64 = load i32, i32* %3, align 4
  ret i32 %64
}

declare dso_local i32 @error(i8*, ...) #1

declare dso_local i32 @ERRORMSG(%struct.unpack_trees_options*, i32) #1

declare dso_local i8* @super_prefixed(i32) #1

declare dso_local i32 @keep_entry(%struct.cache_entry*, %struct.unpack_trees_options*) #1

declare dso_local i32 @merged_entry(%struct.cache_entry*, i32*, %struct.unpack_trees_options*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
