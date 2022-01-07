; ModuleID = '/home/carl/AnghaBench/git/extr_unpack-trees.c_check_ok_to_remove.c'
source_filename = "/home/carl/AnghaBench/git/extr_unpack-trees.c_check_ok_to_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cache_entry = type { i32 }
%struct.stat = type { i32 }
%struct.unpack_trees_options = type { i32, i32, i64 }

@ignore_case = common dso_local global i64 0, align 8
@CE_REMOVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i32, %struct.cache_entry*, %struct.stat*, i32, %struct.unpack_trees_options*)* @check_ok_to_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_ok_to_remove(i8* %0, i32 %1, i32 %2, %struct.cache_entry* %3, %struct.stat* %4, i32 %5, %struct.unpack_trees_options* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.cache_entry*, align 8
  %13 = alloca %struct.stat*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.unpack_trees_options*, align 8
  %16 = alloca %struct.cache_entry*, align 8
  store i8* %0, i8** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store %struct.cache_entry* %3, %struct.cache_entry** %12, align 8
  store %struct.stat* %4, %struct.stat** %13, align 8
  store i32 %5, i32* %14, align 4
  store %struct.unpack_trees_options* %6, %struct.unpack_trees_options** %15, align 8
  %17 = load i64, i64* @ignore_case, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %27

19:                                               ; preds = %7
  %20 = load %struct.unpack_trees_options*, %struct.unpack_trees_options** %15, align 8
  %21 = load i8*, i8** %9, align 8
  %22 = load i32, i32* %10, align 4
  %23 = load %struct.stat*, %struct.stat** %13, align 8
  %24 = call i64 @icase_exists(%struct.unpack_trees_options* %20, i8* %21, i32 %22, %struct.stat* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %19
  store i32 0, i32* %8, align 4
  br label %78

27:                                               ; preds = %19, %7
  %28 = load %struct.unpack_trees_options*, %struct.unpack_trees_options** %15, align 8
  %29 = getelementptr inbounds %struct.unpack_trees_options, %struct.unpack_trees_options* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %43

32:                                               ; preds = %27
  %33 = load %struct.unpack_trees_options*, %struct.unpack_trees_options** %15, align 8
  %34 = getelementptr inbounds %struct.unpack_trees_options, %struct.unpack_trees_options* %33, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.unpack_trees_options*, %struct.unpack_trees_options** %15, align 8
  %37 = getelementptr inbounds %struct.unpack_trees_options, %struct.unpack_trees_options* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load i8*, i8** %9, align 8
  %40 = call i64 @is_excluded(i64 %35, i32 %38, i8* %39, i32* %11)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %32
  store i32 0, i32* %8, align 4
  br label %78

43:                                               ; preds = %32, %27
  %44 = load %struct.stat*, %struct.stat** %13, align 8
  %45 = getelementptr inbounds %struct.stat, %struct.stat* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i64 @S_ISDIR(i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %56

49:                                               ; preds = %43
  %50 = load %struct.cache_entry*, %struct.cache_entry** %12, align 8
  %51 = load %struct.unpack_trees_options*, %struct.unpack_trees_options** %15, align 8
  %52 = call i64 @verify_clean_subdirectory(%struct.cache_entry* %50, %struct.unpack_trees_options* %51)
  %53 = icmp slt i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %49
  store i32 -1, i32* %8, align 4
  br label %78

55:                                               ; preds = %49
  store i32 0, i32* %8, align 4
  br label %78

56:                                               ; preds = %43
  %57 = load %struct.unpack_trees_options*, %struct.unpack_trees_options** %15, align 8
  %58 = getelementptr inbounds %struct.unpack_trees_options, %struct.unpack_trees_options* %57, i32 0, i32 0
  %59 = load i8*, i8** %9, align 8
  %60 = load i32, i32* %10, align 4
  %61 = call %struct.cache_entry* @index_file_exists(i32* %58, i8* %59, i32 %60, i32 0)
  store %struct.cache_entry* %61, %struct.cache_entry** %16, align 8
  %62 = load %struct.cache_entry*, %struct.cache_entry** %16, align 8
  %63 = icmp ne %struct.cache_entry* %62, null
  br i1 %63, label %64, label %73

64:                                               ; preds = %56
  %65 = load %struct.cache_entry*, %struct.cache_entry** %16, align 8
  %66 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @CE_REMOVE, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %64
  store i32 0, i32* %8, align 4
  br label %78

72:                                               ; preds = %64
  br label %73

73:                                               ; preds = %72, %56
  %74 = load %struct.unpack_trees_options*, %struct.unpack_trees_options** %15, align 8
  %75 = load i32, i32* %14, align 4
  %76 = load i8*, i8** %9, align 8
  %77 = call i32 @add_rejected_path(%struct.unpack_trees_options* %74, i32 %75, i8* %76)
  store i32 %77, i32* %8, align 4
  br label %78

78:                                               ; preds = %73, %71, %55, %54, %42, %26
  %79 = load i32, i32* %8, align 4
  ret i32 %79
}

declare dso_local i64 @icase_exists(%struct.unpack_trees_options*, i8*, i32, %struct.stat*) #1

declare dso_local i64 @is_excluded(i64, i32, i8*, i32*) #1

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local i64 @verify_clean_subdirectory(%struct.cache_entry*, %struct.unpack_trees_options*) #1

declare dso_local %struct.cache_entry* @index_file_exists(i32*, i8*, i32, i32) #1

declare dso_local i32 @add_rejected_path(%struct.unpack_trees_options*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
