; ModuleID = '/home/carl/AnghaBench/git/extr_merge-recursive.c_handle_path_level_conflicts.c'
source_filename = "/home/carl/AnghaBench/git/extr_merge-recursive.c_handle_path_level_conflicts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32 }
%struct.merge_options = type { i32 }
%struct.dir_rename_entry = type { i32, i32 }
%struct.hashmap = type { i32 }
%struct.tree = type { i32 }
%struct.collision_entry = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 4
@.str = private unnamed_addr constant [44 x i8] c"entry->non_unqiue_dir not set and !new_path\00", align 1
@.str.1 = private unnamed_addr constant [178 x i8] c"CONFLICT (directory rename split): Unclear where to place %s because directory %s was renamed to multiple other directories, with no destination getting a majority of the files.\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"collision_ent is NULL\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.4 = private unnamed_addr constant [140 x i8] c"CONFLICT (implicit dir rename): Existing file/dir at %s in the way of implicit directory rename(s) putting the following path(s) there: %s.\00", align 1
@.str.5 = private unnamed_addr constant [131 x i8] c"CONFLICT (implicit dir rename): Cannot map more than one path to %s; implicit directory renames tried to put these paths there: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.merge_options*, i8*, %struct.dir_rename_entry*, %struct.hashmap*, %struct.tree*)* @handle_path_level_conflicts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @handle_path_level_conflicts(%struct.merge_options* %0, i8* %1, %struct.dir_rename_entry* %2, %struct.hashmap* %3, %struct.tree* %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca %struct.merge_options*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.dir_rename_entry*, align 8
  %10 = alloca %struct.hashmap*, align 8
  %11 = alloca %struct.tree*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.collision_entry*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.strbuf, align 4
  store %struct.merge_options* %0, %struct.merge_options** %7, align 8
  store i8* %1, i8** %8, align 8
  store %struct.dir_rename_entry* %2, %struct.dir_rename_entry** %9, align 8
  store %struct.hashmap* %3, %struct.hashmap** %10, align 8
  store %struct.tree* %4, %struct.tree** %11, align 8
  store i8* null, i8** %12, align 8
  store i32 1, i32* %14, align 4
  %16 = bitcast %struct.strbuf* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %16, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 4, i1 false)
  %17 = load %struct.dir_rename_entry*, %struct.dir_rename_entry** %9, align 8
  %18 = load i8*, i8** %8, align 8
  %19 = call i8* @apply_dir_rename(%struct.dir_rename_entry* %17, i8* %18)
  store i8* %19, i8** %12, align 8
  %20 = load i8*, i8** %12, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %37, label %22

22:                                               ; preds = %5
  %23 = load %struct.dir_rename_entry*, %struct.dir_rename_entry** %9, align 8
  %24 = getelementptr inbounds %struct.dir_rename_entry, %struct.dir_rename_entry* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %22
  %28 = call i32 @BUG(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  br label %29

29:                                               ; preds = %27, %22
  %30 = load %struct.merge_options*, %struct.merge_options** %7, align 8
  %31 = call i32 @_(i8* getelementptr inbounds ([178 x i8], [178 x i8]* @.str.1, i64 0, i64 0))
  %32 = load i8*, i8** %8, align 8
  %33 = load %struct.dir_rename_entry*, %struct.dir_rename_entry** %9, align 8
  %34 = getelementptr inbounds %struct.dir_rename_entry, %struct.dir_rename_entry* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @output(%struct.merge_options* %30, i32 1, i32 %31, i8* %32, i32 %35)
  store i32 0, i32* %14, align 4
  store i8* null, i8** %6, align 8
  br label %103

37:                                               ; preds = %5
  %38 = load %struct.hashmap*, %struct.hashmap** %10, align 8
  %39 = load i8*, i8** %12, align 8
  %40 = call %struct.collision_entry* @collision_find_entry(%struct.hashmap* %38, i8* %39)
  store %struct.collision_entry* %40, %struct.collision_entry** %13, align 8
  %41 = load %struct.collision_entry*, %struct.collision_entry** %13, align 8
  %42 = icmp eq %struct.collision_entry* %41, null
  br i1 %42, label %43, label %45

43:                                               ; preds = %37
  %44 = call i32 @BUG(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  br label %45

45:                                               ; preds = %43, %37
  %46 = load %struct.collision_entry*, %struct.collision_entry** %13, align 8
  %47 = getelementptr inbounds %struct.collision_entry, %struct.collision_entry* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %45
  store i32 0, i32* %14, align 4
  br label %91

51:                                               ; preds = %45
  %52 = load %struct.merge_options*, %struct.merge_options** %7, align 8
  %53 = getelementptr inbounds %struct.merge_options, %struct.merge_options* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.tree*, %struct.tree** %11, align 8
  %56 = load i8*, i8** %12, align 8
  %57 = call i64 @tree_has_path(i32 %54, %struct.tree* %55, i8* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %71

59:                                               ; preds = %51
  %60 = load %struct.collision_entry*, %struct.collision_entry** %13, align 8
  %61 = getelementptr inbounds %struct.collision_entry, %struct.collision_entry* %60, i32 0, i32 0
  store i32 1, i32* %61, align 4
  %62 = load %struct.collision_entry*, %struct.collision_entry** %13, align 8
  %63 = getelementptr inbounds %struct.collision_entry, %struct.collision_entry* %62, i32 0, i32 1
  %64 = call i32 @strbuf_add_separated_string_list(%struct.strbuf* %15, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), %struct.TYPE_2__* %63)
  %65 = load %struct.merge_options*, %struct.merge_options** %7, align 8
  %66 = call i32 @_(i8* getelementptr inbounds ([140 x i8], [140 x i8]* @.str.4, i64 0, i64 0))
  %67 = load i8*, i8** %12, align 8
  %68 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %15, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @output(%struct.merge_options* %65, i32 1, i32 %66, i8* %67, i32 %69)
  store i32 0, i32* %14, align 4
  br label %90

71:                                               ; preds = %51
  %72 = load %struct.collision_entry*, %struct.collision_entry** %13, align 8
  %73 = getelementptr inbounds %struct.collision_entry, %struct.collision_entry* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = icmp sgt i32 %75, 1
  br i1 %76, label %77, label %89

77:                                               ; preds = %71
  %78 = load %struct.collision_entry*, %struct.collision_entry** %13, align 8
  %79 = getelementptr inbounds %struct.collision_entry, %struct.collision_entry* %78, i32 0, i32 0
  store i32 1, i32* %79, align 4
  %80 = load %struct.collision_entry*, %struct.collision_entry** %13, align 8
  %81 = getelementptr inbounds %struct.collision_entry, %struct.collision_entry* %80, i32 0, i32 1
  %82 = call i32 @strbuf_add_separated_string_list(%struct.strbuf* %15, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), %struct.TYPE_2__* %81)
  %83 = load %struct.merge_options*, %struct.merge_options** %7, align 8
  %84 = call i32 @_(i8* getelementptr inbounds ([131 x i8], [131 x i8]* @.str.5, i64 0, i64 0))
  %85 = load i8*, i8** %12, align 8
  %86 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %15, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @output(%struct.merge_options* %83, i32 1, i32 %84, i8* %85, i32 %87)
  store i32 0, i32* %14, align 4
  br label %89

89:                                               ; preds = %77, %71
  br label %90

90:                                               ; preds = %89, %59
  br label %91

91:                                               ; preds = %90, %50
  %92 = call i32 @strbuf_release(%struct.strbuf* %15)
  %93 = load i32, i32* %14, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %101, label %95

95:                                               ; preds = %91
  %96 = load i8*, i8** %12, align 8
  %97 = icmp ne i8* %96, null
  br i1 %97, label %98, label %101

98:                                               ; preds = %95
  %99 = load i8*, i8** %12, align 8
  %100 = call i32 @free(i8* %99)
  store i8* null, i8** %6, align 8
  br label %103

101:                                              ; preds = %95, %91
  %102 = load i8*, i8** %12, align 8
  store i8* %102, i8** %6, align 8
  br label %103

103:                                              ; preds = %101, %98, %29
  %104 = load i8*, i8** %6, align 8
  ret i8* %104
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i8* @apply_dir_rename(%struct.dir_rename_entry*, i8*) #2

declare dso_local i32 @BUG(i8*) #2

declare dso_local i32 @output(%struct.merge_options*, i32, i32, i8*, i32) #2

declare dso_local i32 @_(i8*) #2

declare dso_local %struct.collision_entry* @collision_find_entry(%struct.hashmap*, i8*) #2

declare dso_local i64 @tree_has_path(i32, %struct.tree*, i8*) #2

declare dso_local i32 @strbuf_add_separated_string_list(%struct.strbuf*, i8*, %struct.TYPE_2__*) #2

declare dso_local i32 @strbuf_release(%struct.strbuf*) #2

declare dso_local i32 @free(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
