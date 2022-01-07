; ModuleID = '/home/carl/AnghaBench/git/extr_unpack-trees.c_verify_absent_1.c'
source_filename = "/home/carl/AnghaBench/git/extr_unpack-trees.c_verify_absent_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cache_entry = type { i8*, i32 }
%struct.unpack_trees_options = type { i32, i64, i64 }
%struct.stat = type { i32 }

@.str = private unnamed_addr constant [17 x i8] c"cannot stat '%s'\00", align 1
@DT_UNKNOWN = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cache_entry*, i32, %struct.unpack_trees_options*)* @verify_absent_1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @verify_absent_1(%struct.cache_entry* %0, i32 %1, %struct.unpack_trees_options* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cache_entry*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.unpack_trees_options*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.stat, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store %struct.cache_entry* %0, %struct.cache_entry** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.unpack_trees_options* %2, %struct.unpack_trees_options** %7, align 8
  %12 = load %struct.unpack_trees_options*, %struct.unpack_trees_options** %7, align 8
  %13 = getelementptr inbounds %struct.unpack_trees_options, %struct.unpack_trees_options* %12, i32 0, i32 2
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %26, label %16

16:                                               ; preds = %3
  %17 = load %struct.unpack_trees_options*, %struct.unpack_trees_options** %7, align 8
  %18 = getelementptr inbounds %struct.unpack_trees_options, %struct.unpack_trees_options* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %26, label %21

21:                                               ; preds = %16
  %22 = load %struct.unpack_trees_options*, %struct.unpack_trees_options** %7, align 8
  %23 = getelementptr inbounds %struct.unpack_trees_options, %struct.unpack_trees_options* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %21, %16, %3
  store i32 0, i32* %4, align 4
  br label %114

27:                                               ; preds = %21
  %28 = load %struct.cache_entry*, %struct.cache_entry** %5, align 8
  %29 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %28, i32 0, i32 0
  %30 = load i8*, i8** %29, align 8
  %31 = load %struct.cache_entry*, %struct.cache_entry** %5, align 8
  %32 = call i32 @ce_namelen(%struct.cache_entry* %31)
  %33 = call i32 @check_leading_path(i8* %30, i32 %32)
  store i32 %33, i32* %8, align 4
  %34 = load i32, i32* %8, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %27
  store i32 0, i32* %4, align 4
  br label %114

37:                                               ; preds = %27
  %38 = load i32, i32* %8, align 4
  %39 = icmp sgt i32 %38, 0
  br i1 %39, label %40, label %75

40:                                               ; preds = %37
  %41 = load %struct.cache_entry*, %struct.cache_entry** %5, align 8
  %42 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %41, i32 0, i32 0
  %43 = load i8*, i8** %42, align 8
  %44 = load i32, i32* %8, align 4
  %45 = call i8* @xmemdupz(i8* %43, i32 %44)
  store i8* %45, i8** %10, align 8
  %46 = load i8*, i8** %10, align 8
  %47 = call i64 @lstat(i8* %46, %struct.stat* %9)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %40
  %50 = load i8*, i8** %10, align 8
  %51 = call i32 @error_errno(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i8* %50)
  store i32 %51, i32* %11, align 4
  br label %71

52:                                               ; preds = %40
  %53 = load %struct.cache_entry*, %struct.cache_entry** %5, align 8
  %54 = call i64 @submodule_from_ce(%struct.cache_entry* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %63

56:                                               ; preds = %52
  %57 = load %struct.cache_entry*, %struct.cache_entry** %5, align 8
  %58 = load %struct.cache_entry*, %struct.cache_entry** %5, align 8
  %59 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %58, i32 0, i32 1
  %60 = call i32 @oid_to_hex(i32* %59)
  %61 = load %struct.unpack_trees_options*, %struct.unpack_trees_options** %7, align 8
  %62 = call i32 @check_submodule_move_head(%struct.cache_entry* %57, i32 %60, i32* null, %struct.unpack_trees_options* %61)
  store i32 %62, i32* %11, align 4
  br label %70

63:                                               ; preds = %52
  %64 = load i8*, i8** %10, align 8
  %65 = load i32, i32* %8, align 4
  %66 = load i32, i32* @DT_UNKNOWN, align 4
  %67 = load i32, i32* %6, align 4
  %68 = load %struct.unpack_trees_options*, %struct.unpack_trees_options** %7, align 8
  %69 = call i32 @check_ok_to_remove(i8* %64, i32 %65, i32 %66, %struct.cache_entry* null, %struct.stat* %9, i32 %67, %struct.unpack_trees_options* %68)
  store i32 %69, i32* %11, align 4
  br label %70

70:                                               ; preds = %63, %56
  br label %71

71:                                               ; preds = %70, %49
  %72 = load i8*, i8** %10, align 8
  %73 = call i32 @free(i8* %72)
  %74 = load i32, i32* %11, align 4
  store i32 %74, i32* %4, align 4
  br label %114

75:                                               ; preds = %37
  %76 = load %struct.cache_entry*, %struct.cache_entry** %5, align 8
  %77 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %76, i32 0, i32 0
  %78 = load i8*, i8** %77, align 8
  %79 = call i64 @lstat(i8* %78, %struct.stat* %9)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %91

81:                                               ; preds = %75
  %82 = load i64, i64* @errno, align 8
  %83 = load i64, i64* @ENOENT, align 8
  %84 = icmp ne i64 %82, %83
  br i1 %84, label %85, label %90

85:                                               ; preds = %81
  %86 = load %struct.cache_entry*, %struct.cache_entry** %5, align 8
  %87 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %86, i32 0, i32 0
  %88 = load i8*, i8** %87, align 8
  %89 = call i32 @error_errno(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i8* %88)
  store i32 %89, i32* %4, align 4
  br label %114

90:                                               ; preds = %81
  store i32 0, i32* %4, align 4
  br label %114

91:                                               ; preds = %75
  %92 = load %struct.cache_entry*, %struct.cache_entry** %5, align 8
  %93 = call i64 @submodule_from_ce(%struct.cache_entry* %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %102

95:                                               ; preds = %91
  %96 = load %struct.cache_entry*, %struct.cache_entry** %5, align 8
  %97 = load %struct.cache_entry*, %struct.cache_entry** %5, align 8
  %98 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %97, i32 0, i32 1
  %99 = call i32 @oid_to_hex(i32* %98)
  %100 = load %struct.unpack_trees_options*, %struct.unpack_trees_options** %7, align 8
  %101 = call i32 @check_submodule_move_head(%struct.cache_entry* %96, i32 %99, i32* null, %struct.unpack_trees_options* %100)
  store i32 %101, i32* %4, align 4
  br label %114

102:                                              ; preds = %91
  %103 = load %struct.cache_entry*, %struct.cache_entry** %5, align 8
  %104 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %103, i32 0, i32 0
  %105 = load i8*, i8** %104, align 8
  %106 = load %struct.cache_entry*, %struct.cache_entry** %5, align 8
  %107 = call i32 @ce_namelen(%struct.cache_entry* %106)
  %108 = load %struct.cache_entry*, %struct.cache_entry** %5, align 8
  %109 = call i32 @ce_to_dtype(%struct.cache_entry* %108)
  %110 = load %struct.cache_entry*, %struct.cache_entry** %5, align 8
  %111 = load i32, i32* %6, align 4
  %112 = load %struct.unpack_trees_options*, %struct.unpack_trees_options** %7, align 8
  %113 = call i32 @check_ok_to_remove(i8* %105, i32 %107, i32 %109, %struct.cache_entry* %110, %struct.stat* %9, i32 %111, %struct.unpack_trees_options* %112)
  store i32 %113, i32* %4, align 4
  br label %114

114:                                              ; preds = %102, %95, %90, %85, %71, %36, %26
  %115 = load i32, i32* %4, align 4
  ret i32 %115
}

declare dso_local i32 @check_leading_path(i8*, i32) #1

declare dso_local i32 @ce_namelen(%struct.cache_entry*) #1

declare dso_local i8* @xmemdupz(i8*, i32) #1

declare dso_local i64 @lstat(i8*, %struct.stat*) #1

declare dso_local i32 @error_errno(i8*, i8*) #1

declare dso_local i64 @submodule_from_ce(%struct.cache_entry*) #1

declare dso_local i32 @check_submodule_move_head(%struct.cache_entry*, i32, i32*, %struct.unpack_trees_options*) #1

declare dso_local i32 @oid_to_hex(i32*) #1

declare dso_local i32 @check_ok_to_remove(i8*, i32, i32, %struct.cache_entry*, %struct.stat*, i32, %struct.unpack_trees_options*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @ce_to_dtype(%struct.cache_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
