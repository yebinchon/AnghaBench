; ModuleID = '/home/carl/AnghaBench/git/extr_list-objects-filter.c_filter_trees_depth.c'
source_filename = "/home/carl/AnghaBench/git/extr_list-objects-filter.c_filter_trees_depth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.repository = type { i32 }
%struct.object = type { i32, i32 }
%struct.oidset = type { i32 }
%struct.filter_trees_depth_data = type { i64, i64, i32 }
%struct.seen_map_entry = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [29 x i8] c"unknown filter_situation: %d\00", align 1
@OBJ_TREE = common dso_local global i32 0, align 4
@LOFR_ZERO = common dso_local global i32 0, align 4
@LOFR_MARK_SEEN = common dso_local global i32 0, align 4
@LOFR_DO_SHOW = common dso_local global i32 0, align 4
@LOFR_SKIP_TREE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.repository*, i32, %struct.object*, i8*, i8*, %struct.oidset*, i8*)* @filter_trees_depth to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @filter_trees_depth(%struct.repository* %0, i32 %1, %struct.object* %2, i8* %3, i8* %4, %struct.oidset* %5, i8* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.repository*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.object*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct.oidset*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca %struct.filter_trees_depth_data*, align 8
  %17 = alloca %struct.seen_map_entry*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.repository* %0, %struct.repository** %9, align 8
  store i32 %1, i32* %10, align 4
  store %struct.object* %2, %struct.object** %11, align 8
  store i8* %3, i8** %12, align 8
  store i8* %4, i8** %13, align 8
  store %struct.oidset* %5, %struct.oidset** %14, align 8
  store i8* %6, i8** %15, align 8
  %22 = load i8*, i8** %15, align 8
  %23 = bitcast i8* %22 to %struct.filter_trees_depth_data*
  store %struct.filter_trees_depth_data* %23, %struct.filter_trees_depth_data** %16, align 8
  %24 = load %struct.filter_trees_depth_data*, %struct.filter_trees_depth_data** %16, align 8
  %25 = getelementptr inbounds %struct.filter_trees_depth_data, %struct.filter_trees_depth_data* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.filter_trees_depth_data*, %struct.filter_trees_depth_data** %16, align 8
  %28 = getelementptr inbounds %struct.filter_trees_depth_data, %struct.filter_trees_depth_data* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = icmp slt i64 %26, %29
  %31 = zext i1 %30 to i32
  store i32 %31, i32* %18, align 4
  %32 = load i32, i32* %10, align 4
  switch i32 %32, label %33 [
    i32 128, label %36
    i32 129, label %49
    i32 130, label %64
  ]

33:                                               ; preds = %7
  %34 = load i32, i32* %10, align 4
  %35 = call i32 @BUG(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %34)
  br label %36

36:                                               ; preds = %7, %33
  %37 = load %struct.object*, %struct.object** %11, align 8
  %38 = getelementptr inbounds %struct.object, %struct.object* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @OBJ_TREE, align 4
  %41 = icmp eq i32 %39, %40
  %42 = zext i1 %41 to i32
  %43 = call i32 @assert(i32 %42)
  %44 = load %struct.filter_trees_depth_data*, %struct.filter_trees_depth_data** %16, align 8
  %45 = getelementptr inbounds %struct.filter_trees_depth_data, %struct.filter_trees_depth_data* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = add nsw i64 %46, -1
  store i64 %47, i64* %45, align 8
  %48 = load i32, i32* @LOFR_ZERO, align 4
  store i32 %48, i32* %8, align 4
  br label %135

49:                                               ; preds = %7
  %50 = load %struct.object*, %struct.object** %11, align 8
  %51 = load %struct.oidset*, %struct.oidset** %14, align 8
  %52 = load i32, i32* %18, align 4
  %53 = call i32 @filter_trees_update_omits(%struct.object* %50, %struct.oidset* %51, i32 %52)
  %54 = load i32, i32* %18, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %49
  %57 = load i32, i32* @LOFR_MARK_SEEN, align 4
  %58 = load i32, i32* @LOFR_DO_SHOW, align 4
  %59 = or i32 %57, %58
  br label %62

60:                                               ; preds = %49
  %61 = load i32, i32* @LOFR_ZERO, align 4
  br label %62

62:                                               ; preds = %60, %56
  %63 = phi i32 [ %59, %56 ], [ %61, %60 ]
  store i32 %63, i32* %8, align 4
  br label %135

64:                                               ; preds = %7
  %65 = load %struct.filter_trees_depth_data*, %struct.filter_trees_depth_data** %16, align 8
  %66 = getelementptr inbounds %struct.filter_trees_depth_data, %struct.filter_trees_depth_data* %65, i32 0, i32 2
  %67 = load %struct.object*, %struct.object** %11, align 8
  %68 = getelementptr inbounds %struct.object, %struct.object* %67, i32 0, i32 0
  %69 = call %struct.seen_map_entry* @oidmap_get(i32* %66, i32* %68)
  store %struct.seen_map_entry* %69, %struct.seen_map_entry** %17, align 8
  %70 = load %struct.seen_map_entry*, %struct.seen_map_entry** %17, align 8
  %71 = icmp ne %struct.seen_map_entry* %70, null
  br i1 %71, label %89, label %72

72:                                               ; preds = %64
  %73 = call %struct.seen_map_entry* @xcalloc(i32 1, i32 16)
  store %struct.seen_map_entry* %73, %struct.seen_map_entry** %17, align 8
  %74 = load %struct.seen_map_entry*, %struct.seen_map_entry** %17, align 8
  %75 = getelementptr inbounds %struct.seen_map_entry, %struct.seen_map_entry* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  %77 = load %struct.object*, %struct.object** %11, align 8
  %78 = getelementptr inbounds %struct.object, %struct.object* %77, i32 0, i32 0
  %79 = call i32 @oidcpy(i32* %76, i32* %78)
  %80 = load %struct.filter_trees_depth_data*, %struct.filter_trees_depth_data** %16, align 8
  %81 = getelementptr inbounds %struct.filter_trees_depth_data, %struct.filter_trees_depth_data* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load %struct.seen_map_entry*, %struct.seen_map_entry** %17, align 8
  %84 = getelementptr inbounds %struct.seen_map_entry, %struct.seen_map_entry* %83, i32 0, i32 0
  store i64 %82, i64* %84, align 8
  %85 = load %struct.filter_trees_depth_data*, %struct.filter_trees_depth_data** %16, align 8
  %86 = getelementptr inbounds %struct.filter_trees_depth_data, %struct.filter_trees_depth_data* %85, i32 0, i32 2
  %87 = load %struct.seen_map_entry*, %struct.seen_map_entry** %17, align 8
  %88 = call i32 @oidmap_put(i32* %86, %struct.seen_map_entry* %87)
  store i32 0, i32* %20, align 4
  br label %98

89:                                               ; preds = %64
  %90 = load %struct.filter_trees_depth_data*, %struct.filter_trees_depth_data** %16, align 8
  %91 = getelementptr inbounds %struct.filter_trees_depth_data, %struct.filter_trees_depth_data* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = load %struct.seen_map_entry*, %struct.seen_map_entry** %17, align 8
  %94 = getelementptr inbounds %struct.seen_map_entry, %struct.seen_map_entry* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = icmp sge i64 %92, %95
  %97 = zext i1 %96 to i32
  store i32 %97, i32* %20, align 4
  br label %98

98:                                               ; preds = %89, %72
  %99 = load i32, i32* %20, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %103

101:                                              ; preds = %98
  %102 = load i32, i32* @LOFR_SKIP_TREE, align 4
  store i32 %102, i32* %19, align 4
  br label %129

103:                                              ; preds = %98
  %104 = load %struct.object*, %struct.object** %11, align 8
  %105 = load %struct.oidset*, %struct.oidset** %14, align 8
  %106 = load i32, i32* %18, align 4
  %107 = call i32 @filter_trees_update_omits(%struct.object* %104, %struct.oidset* %105, i32 %106)
  store i32 %107, i32* %21, align 4
  %108 = load %struct.filter_trees_depth_data*, %struct.filter_trees_depth_data** %16, align 8
  %109 = getelementptr inbounds %struct.filter_trees_depth_data, %struct.filter_trees_depth_data* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = load %struct.seen_map_entry*, %struct.seen_map_entry** %17, align 8
  %112 = getelementptr inbounds %struct.seen_map_entry, %struct.seen_map_entry* %111, i32 0, i32 0
  store i64 %110, i64* %112, align 8
  %113 = load i32, i32* %18, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %117

115:                                              ; preds = %103
  %116 = load i32, i32* @LOFR_DO_SHOW, align 4
  store i32 %116, i32* %19, align 4
  br label %128

117:                                              ; preds = %103
  %118 = load %struct.oidset*, %struct.oidset** %14, align 8
  %119 = icmp ne %struct.oidset* %118, null
  br i1 %119, label %120, label %125

120:                                              ; preds = %117
  %121 = load i32, i32* %21, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %125, label %123

123:                                              ; preds = %120
  %124 = load i32, i32* @LOFR_ZERO, align 4
  store i32 %124, i32* %19, align 4
  br label %127

125:                                              ; preds = %120, %117
  %126 = load i32, i32* @LOFR_SKIP_TREE, align 4
  store i32 %126, i32* %19, align 4
  br label %127

127:                                              ; preds = %125, %123
  br label %128

128:                                              ; preds = %127, %115
  br label %129

129:                                              ; preds = %128, %101
  %130 = load %struct.filter_trees_depth_data*, %struct.filter_trees_depth_data** %16, align 8
  %131 = getelementptr inbounds %struct.filter_trees_depth_data, %struct.filter_trees_depth_data* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = add nsw i64 %132, 1
  store i64 %133, i64* %131, align 8
  %134 = load i32, i32* %19, align 4
  store i32 %134, i32* %8, align 4
  br label %135

135:                                              ; preds = %129, %62, %36
  %136 = load i32, i32* %8, align 4
  ret i32 %136
}

declare dso_local i32 @BUG(i8*, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @filter_trees_update_omits(%struct.object*, %struct.oidset*, i32) #1

declare dso_local %struct.seen_map_entry* @oidmap_get(i32*, i32*) #1

declare dso_local %struct.seen_map_entry* @xcalloc(i32, i32) #1

declare dso_local i32 @oidcpy(i32*, i32*) #1

declare dso_local i32 @oidmap_put(i32*, %struct.seen_map_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
