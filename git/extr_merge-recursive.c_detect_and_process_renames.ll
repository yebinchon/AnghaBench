; ModuleID = '/home/carl/AnghaBench/git/extr_merge-recursive.c_detect_and_process_renames.c'
source_filename = "/home/carl/AnghaBench/git/extr_merge-recursive.c_detect_and_process_renames.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.merge_options = type { i64, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.tree = type { i32 }
%struct.string_list = type { i32 }
%struct.rename_info = type { i32*, i32* }
%struct.diff_queue_struct = type { i32 }
%struct.hashmap = type { i32 }

@MERGE_DIRECTORY_RENAMES_TRUE = common dso_local global i64 0, align 8
@MERGE_DIRECTORY_RENAMES_CONFLICT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.merge_options*, %struct.tree*, %struct.tree*, %struct.tree*, %struct.string_list*, %struct.rename_info*)* @detect_and_process_renames to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @detect_and_process_renames(%struct.merge_options* %0, %struct.tree* %1, %struct.tree* %2, %struct.tree* %3, %struct.string_list* %4, %struct.rename_info* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.merge_options*, align 8
  %9 = alloca %struct.tree*, align 8
  %10 = alloca %struct.tree*, align 8
  %11 = alloca %struct.tree*, align 8
  %12 = alloca %struct.string_list*, align 8
  %13 = alloca %struct.rename_info*, align 8
  %14 = alloca %struct.diff_queue_struct*, align 8
  %15 = alloca %struct.diff_queue_struct*, align 8
  %16 = alloca %struct.hashmap*, align 8
  %17 = alloca %struct.hashmap*, align 8
  %18 = alloca i32, align 4
  store %struct.merge_options* %0, %struct.merge_options** %8, align 8
  store %struct.tree* %1, %struct.tree** %9, align 8
  store %struct.tree* %2, %struct.tree** %10, align 8
  store %struct.tree* %3, %struct.tree** %11, align 8
  store %struct.string_list* %4, %struct.string_list** %12, align 8
  store %struct.rename_info* %5, %struct.rename_info** %13, align 8
  store i32 1, i32* %18, align 4
  %19 = load %struct.rename_info*, %struct.rename_info** %13, align 8
  %20 = getelementptr inbounds %struct.rename_info, %struct.rename_info* %19, i32 0, i32 1
  store i32* null, i32** %20, align 8
  %21 = load %struct.rename_info*, %struct.rename_info** %13, align 8
  %22 = getelementptr inbounds %struct.rename_info, %struct.rename_info* %21, i32 0, i32 0
  store i32* null, i32** %22, align 8
  %23 = load %struct.merge_options*, %struct.merge_options** %8, align 8
  %24 = call i32 @merge_detect_rename(%struct.merge_options* %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %6
  store i32 1, i32* %7, align 4
  br label %131

27:                                               ; preds = %6
  %28 = load %struct.merge_options*, %struct.merge_options** %8, align 8
  %29 = load %struct.tree*, %struct.tree** %9, align 8
  %30 = load %struct.tree*, %struct.tree** %10, align 8
  %31 = call %struct.diff_queue_struct* @get_diffpairs(%struct.merge_options* %28, %struct.tree* %29, %struct.tree* %30)
  store %struct.diff_queue_struct* %31, %struct.diff_queue_struct** %14, align 8
  %32 = load %struct.merge_options*, %struct.merge_options** %8, align 8
  %33 = load %struct.tree*, %struct.tree** %9, align 8
  %34 = load %struct.tree*, %struct.tree** %11, align 8
  %35 = call %struct.diff_queue_struct* @get_diffpairs(%struct.merge_options* %32, %struct.tree* %33, %struct.tree* %34)
  store %struct.diff_queue_struct* %35, %struct.diff_queue_struct** %15, align 8
  %36 = load %struct.merge_options*, %struct.merge_options** %8, align 8
  %37 = getelementptr inbounds %struct.merge_options, %struct.merge_options* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @MERGE_DIRECTORY_RENAMES_TRUE, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %54, label %41

41:                                               ; preds = %27
  %42 = load %struct.merge_options*, %struct.merge_options** %8, align 8
  %43 = getelementptr inbounds %struct.merge_options, %struct.merge_options* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @MERGE_DIRECTORY_RENAMES_CONFLICT, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %65

47:                                               ; preds = %41
  %48 = load %struct.merge_options*, %struct.merge_options** %8, align 8
  %49 = getelementptr inbounds %struct.merge_options, %struct.merge_options* %48, i32 0, i32 3
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %65, label %54

54:                                               ; preds = %47, %27
  %55 = load %struct.diff_queue_struct*, %struct.diff_queue_struct** %14, align 8
  %56 = call %struct.hashmap* @get_directory_renames(%struct.diff_queue_struct* %55)
  store %struct.hashmap* %56, %struct.hashmap** %16, align 8
  %57 = load %struct.diff_queue_struct*, %struct.diff_queue_struct** %15, align 8
  %58 = call %struct.hashmap* @get_directory_renames(%struct.diff_queue_struct* %57)
  store %struct.hashmap* %58, %struct.hashmap** %17, align 8
  %59 = load %struct.merge_options*, %struct.merge_options** %8, align 8
  %60 = load %struct.hashmap*, %struct.hashmap** %16, align 8
  %61 = load %struct.tree*, %struct.tree** %10, align 8
  %62 = load %struct.hashmap*, %struct.hashmap** %17, align 8
  %63 = load %struct.tree*, %struct.tree** %11, align 8
  %64 = call i32 @handle_directory_level_conflicts(%struct.merge_options* %59, %struct.hashmap* %60, %struct.tree* %61, %struct.hashmap* %62, %struct.tree* %63)
  br label %72

65:                                               ; preds = %47, %41
  %66 = call %struct.hashmap* @xmalloc(i32 4)
  store %struct.hashmap* %66, %struct.hashmap** %16, align 8
  %67 = call %struct.hashmap* @xmalloc(i32 4)
  store %struct.hashmap* %67, %struct.hashmap** %17, align 8
  %68 = load %struct.hashmap*, %struct.hashmap** %16, align 8
  %69 = call i32 @dir_rename_init(%struct.hashmap* %68)
  %70 = load %struct.hashmap*, %struct.hashmap** %17, align 8
  %71 = call i32 @dir_rename_init(%struct.hashmap* %70)
  br label %72

72:                                               ; preds = %65, %54
  %73 = load %struct.merge_options*, %struct.merge_options** %8, align 8
  %74 = load %struct.merge_options*, %struct.merge_options** %8, align 8
  %75 = getelementptr inbounds %struct.merge_options, %struct.merge_options* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.diff_queue_struct*, %struct.diff_queue_struct** %14, align 8
  %78 = load %struct.hashmap*, %struct.hashmap** %17, align 8
  %79 = load %struct.hashmap*, %struct.hashmap** %16, align 8
  %80 = load %struct.tree*, %struct.tree** %10, align 8
  %81 = load %struct.tree*, %struct.tree** %9, align 8
  %82 = load %struct.tree*, %struct.tree** %10, align 8
  %83 = load %struct.tree*, %struct.tree** %11, align 8
  %84 = load %struct.string_list*, %struct.string_list** %12, align 8
  %85 = call i8* @get_renames(%struct.merge_options* %73, i32 %76, %struct.diff_queue_struct* %77, %struct.hashmap* %78, %struct.hashmap* %79, %struct.tree* %80, %struct.tree* %81, %struct.tree* %82, %struct.tree* %83, %struct.string_list* %84, i32* %18)
  %86 = bitcast i8* %85 to i32*
  %87 = load %struct.rename_info*, %struct.rename_info** %13, align 8
  %88 = getelementptr inbounds %struct.rename_info, %struct.rename_info* %87, i32 0, i32 1
  store i32* %86, i32** %88, align 8
  %89 = load i32, i32* %18, align 4
  %90 = icmp slt i32 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %72
  br label %123

92:                                               ; preds = %72
  %93 = load %struct.merge_options*, %struct.merge_options** %8, align 8
  %94 = load %struct.merge_options*, %struct.merge_options** %8, align 8
  %95 = getelementptr inbounds %struct.merge_options, %struct.merge_options* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 8
  %97 = load %struct.diff_queue_struct*, %struct.diff_queue_struct** %15, align 8
  %98 = load %struct.hashmap*, %struct.hashmap** %16, align 8
  %99 = load %struct.hashmap*, %struct.hashmap** %17, align 8
  %100 = load %struct.tree*, %struct.tree** %11, align 8
  %101 = load %struct.tree*, %struct.tree** %9, align 8
  %102 = load %struct.tree*, %struct.tree** %10, align 8
  %103 = load %struct.tree*, %struct.tree** %11, align 8
  %104 = load %struct.string_list*, %struct.string_list** %12, align 8
  %105 = call i8* @get_renames(%struct.merge_options* %93, i32 %96, %struct.diff_queue_struct* %97, %struct.hashmap* %98, %struct.hashmap* %99, %struct.tree* %100, %struct.tree* %101, %struct.tree* %102, %struct.tree* %103, %struct.string_list* %104, i32* %18)
  %106 = bitcast i8* %105 to i32*
  %107 = load %struct.rename_info*, %struct.rename_info** %13, align 8
  %108 = getelementptr inbounds %struct.rename_info, %struct.rename_info* %107, i32 0, i32 0
  store i32* %106, i32** %108, align 8
  %109 = load i32, i32* %18, align 4
  %110 = icmp slt i32 %109, 0
  br i1 %110, label %111, label %112

111:                                              ; preds = %92
  br label %123

112:                                              ; preds = %92
  %113 = load %struct.merge_options*, %struct.merge_options** %8, align 8
  %114 = load %struct.rename_info*, %struct.rename_info** %13, align 8
  %115 = getelementptr inbounds %struct.rename_info, %struct.rename_info* %114, i32 0, i32 1
  %116 = load i32*, i32** %115, align 8
  %117 = load %struct.rename_info*, %struct.rename_info** %13, align 8
  %118 = getelementptr inbounds %struct.rename_info, %struct.rename_info* %117, i32 0, i32 0
  %119 = load i32*, i32** %118, align 8
  %120 = call i32 @process_renames(%struct.merge_options* %113, i32* %116, i32* %119)
  %121 = load i32, i32* %18, align 4
  %122 = and i32 %121, %120
  store i32 %122, i32* %18, align 4
  br label %123

123:                                              ; preds = %112, %111, %91
  %124 = load %struct.diff_queue_struct*, %struct.diff_queue_struct** %14, align 8
  %125 = load %struct.hashmap*, %struct.hashmap** %16, align 8
  %126 = call i32 @initial_cleanup_rename(%struct.diff_queue_struct* %124, %struct.hashmap* %125)
  %127 = load %struct.diff_queue_struct*, %struct.diff_queue_struct** %15, align 8
  %128 = load %struct.hashmap*, %struct.hashmap** %17, align 8
  %129 = call i32 @initial_cleanup_rename(%struct.diff_queue_struct* %127, %struct.hashmap* %128)
  %130 = load i32, i32* %18, align 4
  store i32 %130, i32* %7, align 4
  br label %131

131:                                              ; preds = %123, %26
  %132 = load i32, i32* %7, align 4
  ret i32 %132
}

declare dso_local i32 @merge_detect_rename(%struct.merge_options*) #1

declare dso_local %struct.diff_queue_struct* @get_diffpairs(%struct.merge_options*, %struct.tree*, %struct.tree*) #1

declare dso_local %struct.hashmap* @get_directory_renames(%struct.diff_queue_struct*) #1

declare dso_local i32 @handle_directory_level_conflicts(%struct.merge_options*, %struct.hashmap*, %struct.tree*, %struct.hashmap*, %struct.tree*) #1

declare dso_local %struct.hashmap* @xmalloc(i32) #1

declare dso_local i32 @dir_rename_init(%struct.hashmap*) #1

declare dso_local i8* @get_renames(%struct.merge_options*, i32, %struct.diff_queue_struct*, %struct.hashmap*, %struct.hashmap*, %struct.tree*, %struct.tree*, %struct.tree*, %struct.tree*, %struct.string_list*, i32*) #1

declare dso_local i32 @process_renames(%struct.merge_options*, i32*, i32*) #1

declare dso_local i32 @initial_cleanup_rename(%struct.diff_queue_struct*, %struct.hashmap*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
