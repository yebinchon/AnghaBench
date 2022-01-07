; ModuleID = '/home/carl/AnghaBench/git/extr_delta-islands.c_resolve_tree_islands.c'
source_filename = "/home/carl/AnghaBench/git/extr_delta-islands.c_resolve_tree_islands.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.repository = type { i32 }
%struct.packing_data = type { i32, %struct.object_entry* }
%struct.object_entry = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.progress = type { i32 }
%struct.tree_islands_todo = type { %struct.object_entry*, i32 }
%struct.island_bitmap = type { i32 }
%struct.tree = type { i32, i32 }
%struct.tree_desc = type { i32 }
%struct.name_entry = type { i32, i32 }
%struct.object = type { i32 }

@island_marks = common dso_local global i32 0, align 4
@OBJ_TREE = common dso_local global i64 0, align 8
@tree_depth_compare = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Propagating island marks\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"bad tree object %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @resolve_tree_islands(%struct.repository* %0, i32 %1, %struct.packing_data* %2) #0 {
  %4 = alloca %struct.repository*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.packing_data*, align 8
  %7 = alloca %struct.progress*, align 8
  %8 = alloca %struct.tree_islands_todo*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.object_entry*, align 8
  %12 = alloca %struct.island_bitmap*, align 8
  %13 = alloca %struct.tree*, align 8
  %14 = alloca %struct.tree_desc, align 4
  %15 = alloca %struct.name_entry, align 4
  %16 = alloca i64, align 8
  %17 = alloca %struct.object*, align 8
  store %struct.repository* %0, %struct.repository** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.packing_data* %2, %struct.packing_data** %6, align 8
  store %struct.progress* null, %struct.progress** %7, align 8
  store i32 0, i32* %9, align 4
  %18 = load i32, i32* @island_marks, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %3
  br label %172

21:                                               ; preds = %3
  %22 = load %struct.tree_islands_todo*, %struct.tree_islands_todo** %8, align 8
  %23 = load %struct.packing_data*, %struct.packing_data** %6, align 8
  %24 = getelementptr inbounds %struct.packing_data, %struct.packing_data* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @ALLOC_ARRAY(%struct.tree_islands_todo* %22, i32 %25)
  store i32 0, i32* %10, align 4
  br label %27

27:                                               ; preds = %71, %21
  %28 = load i32, i32* %10, align 4
  %29 = load %struct.packing_data*, %struct.packing_data** %6, align 8
  %30 = getelementptr inbounds %struct.packing_data, %struct.packing_data* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp slt i32 %28, %31
  br i1 %32, label %33, label %74

33:                                               ; preds = %27
  %34 = load %struct.packing_data*, %struct.packing_data** %6, align 8
  %35 = getelementptr inbounds %struct.packing_data, %struct.packing_data* %34, i32 0, i32 1
  %36 = load %struct.object_entry*, %struct.object_entry** %35, align 8
  %37 = load i32, i32* %10, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.object_entry, %struct.object_entry* %36, i64 %38
  %40 = call i64 @oe_type(%struct.object_entry* %39)
  %41 = load i64, i64* @OBJ_TREE, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %70

43:                                               ; preds = %33
  %44 = load %struct.packing_data*, %struct.packing_data** %6, align 8
  %45 = getelementptr inbounds %struct.packing_data, %struct.packing_data* %44, i32 0, i32 1
  %46 = load %struct.object_entry*, %struct.object_entry** %45, align 8
  %47 = load i32, i32* %10, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.object_entry, %struct.object_entry* %46, i64 %48
  %50 = load %struct.tree_islands_todo*, %struct.tree_islands_todo** %8, align 8
  %51 = load i32, i32* %9, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.tree_islands_todo, %struct.tree_islands_todo* %50, i64 %52
  %54 = getelementptr inbounds %struct.tree_islands_todo, %struct.tree_islands_todo* %53, i32 0, i32 0
  store %struct.object_entry* %49, %struct.object_entry** %54, align 8
  %55 = load %struct.packing_data*, %struct.packing_data** %6, align 8
  %56 = load %struct.packing_data*, %struct.packing_data** %6, align 8
  %57 = getelementptr inbounds %struct.packing_data, %struct.packing_data* %56, i32 0, i32 1
  %58 = load %struct.object_entry*, %struct.object_entry** %57, align 8
  %59 = load i32, i32* %10, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.object_entry, %struct.object_entry* %58, i64 %60
  %62 = call i32 @oe_tree_depth(%struct.packing_data* %55, %struct.object_entry* %61)
  %63 = load %struct.tree_islands_todo*, %struct.tree_islands_todo** %8, align 8
  %64 = load i32, i32* %9, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.tree_islands_todo, %struct.tree_islands_todo* %63, i64 %65
  %67 = getelementptr inbounds %struct.tree_islands_todo, %struct.tree_islands_todo* %66, i32 0, i32 1
  store i32 %62, i32* %67, align 8
  %68 = load i32, i32* %9, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %9, align 4
  br label %70

70:                                               ; preds = %43, %33
  br label %71

71:                                               ; preds = %70
  %72 = load i32, i32* %10, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %10, align 4
  br label %27

74:                                               ; preds = %27
  %75 = load %struct.tree_islands_todo*, %struct.tree_islands_todo** %8, align 8
  %76 = load i32, i32* %9, align 4
  %77 = load i32, i32* @tree_depth_compare, align 4
  %78 = call i32 @QSORT(%struct.tree_islands_todo* %75, i32 %76, i32 %77)
  %79 = load i32, i32* %5, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %85

81:                                               ; preds = %74
  %82 = call i32 @_(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %83 = load i32, i32* %9, align 4
  %84 = call %struct.progress* @start_progress(i32 %82, i32 %83)
  store %struct.progress* %84, %struct.progress** %7, align 8
  br label %85

85:                                               ; preds = %81, %74
  store i32 0, i32* %10, align 4
  br label %86

86:                                               ; preds = %165, %85
  %87 = load i32, i32* %10, align 4
  %88 = load i32, i32* %9, align 4
  %89 = icmp slt i32 %87, %88
  br i1 %89, label %90, label %168

90:                                               ; preds = %86
  %91 = load %struct.tree_islands_todo*, %struct.tree_islands_todo** %8, align 8
  %92 = load i32, i32* %10, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.tree_islands_todo, %struct.tree_islands_todo* %91, i64 %93
  %95 = getelementptr inbounds %struct.tree_islands_todo, %struct.tree_islands_todo* %94, i32 0, i32 0
  %96 = load %struct.object_entry*, %struct.object_entry** %95, align 8
  store %struct.object_entry* %96, %struct.object_entry** %11, align 8
  %97 = load i32, i32* @island_marks, align 4
  %98 = load %struct.object_entry*, %struct.object_entry** %11, align 8
  %99 = getelementptr inbounds %struct.object_entry, %struct.object_entry* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = call i64 @kh_get_oid_map(i32 %97, i32 %101)
  store i64 %102, i64* %16, align 8
  %103 = load i64, i64* %16, align 8
  %104 = load i32, i32* @island_marks, align 4
  %105 = call i64 @kh_end(i32 %104)
  %106 = icmp sge i64 %103, %105
  br i1 %106, label %107, label %108

107:                                              ; preds = %90
  br label %165

108:                                              ; preds = %90
  %109 = load i32, i32* @island_marks, align 4
  %110 = load i64, i64* %16, align 8
  %111 = call %struct.island_bitmap* @kh_value(i32 %109, i64 %110)
  store %struct.island_bitmap* %111, %struct.island_bitmap** %12, align 8
  %112 = load %struct.repository*, %struct.repository** %4, align 8
  %113 = load %struct.object_entry*, %struct.object_entry** %11, align 8
  %114 = getelementptr inbounds %struct.object_entry, %struct.object_entry* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %114, i32 0, i32 0
  %116 = call %struct.tree* @lookup_tree(%struct.repository* %112, i32* %115)
  store %struct.tree* %116, %struct.tree** %13, align 8
  %117 = load %struct.tree*, %struct.tree** %13, align 8
  %118 = icmp ne %struct.tree* %117, null
  br i1 %118, label %119, label %123

119:                                              ; preds = %108
  %120 = load %struct.tree*, %struct.tree** %13, align 8
  %121 = call i64 @parse_tree(%struct.tree* %120)
  %122 = icmp slt i64 %121, 0
  br i1 %122, label %123, label %130

123:                                              ; preds = %119, %108
  %124 = call i32 @_(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %125 = load %struct.object_entry*, %struct.object_entry** %11, align 8
  %126 = getelementptr inbounds %struct.object_entry, %struct.object_entry* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %126, i32 0, i32 0
  %128 = call i32 @oid_to_hex(i32* %127)
  %129 = call i32 @die(i32 %124, i32 %128)
  br label %130

130:                                              ; preds = %123, %119
  %131 = load %struct.tree*, %struct.tree** %13, align 8
  %132 = getelementptr inbounds %struct.tree, %struct.tree* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = load %struct.tree*, %struct.tree** %13, align 8
  %135 = getelementptr inbounds %struct.tree, %struct.tree* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = call i32 @init_tree_desc(%struct.tree_desc* %14, i32 %133, i32 %136)
  br label %138

138:                                              ; preds = %154, %153, %146, %130
  %139 = call i64 @tree_entry(%struct.tree_desc* %14, %struct.name_entry* %15)
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %158

141:                                              ; preds = %138
  %142 = getelementptr inbounds %struct.name_entry, %struct.name_entry* %15, i32 0, i32 1
  %143 = load i32, i32* %142, align 4
  %144 = call i64 @S_ISGITLINK(i32 %143)
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %147

146:                                              ; preds = %141
  br label %138

147:                                              ; preds = %141
  %148 = load %struct.repository*, %struct.repository** %4, align 8
  %149 = getelementptr inbounds %struct.name_entry, %struct.name_entry* %15, i32 0, i32 0
  %150 = call %struct.object* @lookup_object(%struct.repository* %148, i32* %149)
  store %struct.object* %150, %struct.object** %17, align 8
  %151 = load %struct.object*, %struct.object** %17, align 8
  %152 = icmp ne %struct.object* %151, null
  br i1 %152, label %154, label %153

153:                                              ; preds = %147
  br label %138

154:                                              ; preds = %147
  %155 = load %struct.object*, %struct.object** %17, align 8
  %156 = load %struct.island_bitmap*, %struct.island_bitmap** %12, align 8
  %157 = call i32 @set_island_marks(%struct.object* %155, %struct.island_bitmap* %156)
  br label %138

158:                                              ; preds = %138
  %159 = load %struct.tree*, %struct.tree** %13, align 8
  %160 = call i32 @free_tree_buffer(%struct.tree* %159)
  %161 = load %struct.progress*, %struct.progress** %7, align 8
  %162 = load i32, i32* %10, align 4
  %163 = add nsw i32 %162, 1
  %164 = call i32 @display_progress(%struct.progress* %161, i32 %163)
  br label %165

165:                                              ; preds = %158, %107
  %166 = load i32, i32* %10, align 4
  %167 = add nsw i32 %166, 1
  store i32 %167, i32* %10, align 4
  br label %86

168:                                              ; preds = %86
  %169 = call i32 @stop_progress(%struct.progress** %7)
  %170 = load %struct.tree_islands_todo*, %struct.tree_islands_todo** %8, align 8
  %171 = call i32 @free(%struct.tree_islands_todo* %170)
  br label %172

172:                                              ; preds = %168, %20
  ret void
}

declare dso_local i32 @ALLOC_ARRAY(%struct.tree_islands_todo*, i32) #1

declare dso_local i64 @oe_type(%struct.object_entry*) #1

declare dso_local i32 @oe_tree_depth(%struct.packing_data*, %struct.object_entry*) #1

declare dso_local i32 @QSORT(%struct.tree_islands_todo*, i32, i32) #1

declare dso_local %struct.progress* @start_progress(i32, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i64 @kh_get_oid_map(i32, i32) #1

declare dso_local i64 @kh_end(i32) #1

declare dso_local %struct.island_bitmap* @kh_value(i32, i64) #1

declare dso_local %struct.tree* @lookup_tree(%struct.repository*, i32*) #1

declare dso_local i64 @parse_tree(%struct.tree*) #1

declare dso_local i32 @die(i32, i32) #1

declare dso_local i32 @oid_to_hex(i32*) #1

declare dso_local i32 @init_tree_desc(%struct.tree_desc*, i32, i32) #1

declare dso_local i64 @tree_entry(%struct.tree_desc*, %struct.name_entry*) #1

declare dso_local i64 @S_ISGITLINK(i32) #1

declare dso_local %struct.object* @lookup_object(%struct.repository*, i32*) #1

declare dso_local i32 @set_island_marks(%struct.object*, %struct.island_bitmap*) #1

declare dso_local i32 @free_tree_buffer(%struct.tree*) #1

declare dso_local i32 @display_progress(%struct.progress*, i32) #1

declare dso_local i32 @stop_progress(%struct.progress**) #1

declare dso_local i32 @free(%struct.tree_islands_todo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
