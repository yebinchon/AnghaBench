; ModuleID = '/home/carl/AnghaBench/git/extr_revision.c_prepare_show_merge.c'
source_filename = "/home/carl/AnghaBench/git/extr_revision.c_prepare_show_merge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rev_info = type { i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.index_state* }
%struct.index_state = type { i32, %struct.cache_entry** }
%struct.cache_entry = type { i8* }
%struct.commit_list = type { i32 }
%struct.commit = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.object_id = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"HEAD\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"--merge without HEAD?\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"MERGE_HEAD\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"--merge without MERGE_HEAD?\00", align 1
@REV_CMD_MERGE_BASE = common dso_local global i32 0, align 4
@UNINTERESTING = common dso_local global i32 0, align 4
@BOTTOM = common dso_local global i32 0, align 4
@SYMMETRIC_LEFT = common dso_local global i32 0, align 4
@PATHSPEC_ALL_MAGIC = common dso_local global i32 0, align 4
@PATHSPEC_LITERAL = common dso_local global i32 0, align 4
@PATHSPEC_PREFER_FULL = common dso_local global i32 0, align 4
@PATHSPEC_LITERAL_PATH = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rev_info*)* @prepare_show_merge to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @prepare_show_merge(%struct.rev_info* %0) #0 {
  %2 = alloca %struct.rev_info*, align 8
  %3 = alloca %struct.commit_list*, align 8
  %4 = alloca %struct.commit*, align 8
  %5 = alloca %struct.commit*, align 8
  %6 = alloca %struct.object_id, align 4
  %7 = alloca i8**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.index_state*, align 8
  %11 = alloca %struct.cache_entry*, align 8
  store %struct.rev_info* %0, %struct.rev_info** %2, align 8
  store i8** null, i8*** %7, align 8
  store i32 1, i32* %9, align 4
  %12 = load %struct.rev_info*, %struct.rev_info** %2, align 8
  %13 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %12, i32 0, i32 2
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load %struct.index_state*, %struct.index_state** %15, align 8
  store %struct.index_state* %16, %struct.index_state** %10, align 8
  %17 = call i64 @get_oid(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), %struct.object_id* %6)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %1
  %20 = call i32 @die(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  br label %21

21:                                               ; preds = %19, %1
  %22 = call %struct.commit* @lookup_commit_or_die(%struct.object_id* %6, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store %struct.commit* %22, %struct.commit** %4, align 8
  %23 = call i64 @get_oid(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), %struct.object_id* %6)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %21
  %26 = call i32 @die(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  br label %27

27:                                               ; preds = %25, %21
  %28 = call %struct.commit* @lookup_commit_or_die(%struct.object_id* %6, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  store %struct.commit* %28, %struct.commit** %5, align 8
  %29 = load %struct.rev_info*, %struct.rev_info** %2, align 8
  %30 = load %struct.commit*, %struct.commit** %4, align 8
  %31 = getelementptr inbounds %struct.commit, %struct.commit* %30, i32 0, i32 0
  %32 = call i32 @add_pending_object(%struct.rev_info* %29, %struct.TYPE_4__* %31, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %33 = load %struct.rev_info*, %struct.rev_info** %2, align 8
  %34 = load %struct.commit*, %struct.commit** %5, align 8
  %35 = getelementptr inbounds %struct.commit, %struct.commit* %34, i32 0, i32 0
  %36 = call i32 @add_pending_object(%struct.rev_info* %33, %struct.TYPE_4__* %35, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  %37 = load %struct.commit*, %struct.commit** %4, align 8
  %38 = load %struct.commit*, %struct.commit** %5, align 8
  %39 = call %struct.commit_list* @get_merge_bases(%struct.commit* %37, %struct.commit* %38)
  store %struct.commit_list* %39, %struct.commit_list** %3, align 8
  %40 = load %struct.rev_info*, %struct.rev_info** %2, align 8
  %41 = load %struct.commit_list*, %struct.commit_list** %3, align 8
  %42 = load i32, i32* @REV_CMD_MERGE_BASE, align 4
  %43 = load i32, i32* @UNINTERESTING, align 4
  %44 = load i32, i32* @BOTTOM, align 4
  %45 = or i32 %43, %44
  %46 = call i32 @add_rev_cmdline_list(%struct.rev_info* %40, %struct.commit_list* %41, i32 %42, i32 %45)
  %47 = load %struct.rev_info*, %struct.rev_info** %2, align 8
  %48 = load %struct.commit_list*, %struct.commit_list** %3, align 8
  %49 = load i32, i32* @UNINTERESTING, align 4
  %50 = load i32, i32* @BOTTOM, align 4
  %51 = or i32 %49, %50
  %52 = call i32 @add_pending_commit_list(%struct.rev_info* %47, %struct.commit_list* %48, i32 %51)
  %53 = load %struct.commit_list*, %struct.commit_list** %3, align 8
  %54 = call i32 @free_commit_list(%struct.commit_list* %53)
  %55 = load i32, i32* @SYMMETRIC_LEFT, align 4
  %56 = load %struct.commit*, %struct.commit** %4, align 8
  %57 = getelementptr inbounds %struct.commit, %struct.commit* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = or i32 %59, %55
  store i32 %60, i32* %58, align 4
  %61 = load %struct.index_state*, %struct.index_state** %10, align 8
  %62 = getelementptr inbounds %struct.index_state, %struct.index_state* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %70, label %65

65:                                               ; preds = %27
  %66 = load %struct.rev_info*, %struct.rev_info** %2, align 8
  %67 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %66, i32 0, i32 2
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** %67, align 8
  %69 = call i32 @repo_read_index(%struct.TYPE_3__* %68)
  br label %70

70:                                               ; preds = %65, %27
  store i32 0, i32* %8, align 4
  br label %71

71:                                               ; preds = %141, %70
  %72 = load i32, i32* %8, align 4
  %73 = load %struct.index_state*, %struct.index_state** %10, align 8
  %74 = getelementptr inbounds %struct.index_state, %struct.index_state* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = icmp slt i32 %72, %75
  br i1 %76, label %77, label %144

77:                                               ; preds = %71
  %78 = load %struct.index_state*, %struct.index_state** %10, align 8
  %79 = getelementptr inbounds %struct.index_state, %struct.index_state* %78, i32 0, i32 1
  %80 = load %struct.cache_entry**, %struct.cache_entry*** %79, align 8
  %81 = load i32, i32* %8, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.cache_entry*, %struct.cache_entry** %80, i64 %82
  %84 = load %struct.cache_entry*, %struct.cache_entry** %83, align 8
  store %struct.cache_entry* %84, %struct.cache_entry** %11, align 8
  %85 = load %struct.cache_entry*, %struct.cache_entry** %11, align 8
  %86 = call i32 @ce_stage(%struct.cache_entry* %85)
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %89, label %88

88:                                               ; preds = %77
  br label %141

89:                                               ; preds = %77
  %90 = load %struct.index_state*, %struct.index_state** %10, align 8
  %91 = load %struct.cache_entry*, %struct.cache_entry** %11, align 8
  %92 = load %struct.rev_info*, %struct.rev_info** %2, align 8
  %93 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %92, i32 0, i32 1
  %94 = call i64 @ce_path_match(%struct.index_state* %90, %struct.cache_entry* %91, i32* %93, i32* null)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %115

96:                                               ; preds = %89
  %97 = load i32, i32* %9, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %9, align 4
  %99 = load i8**, i8*** %7, align 8
  %100 = load i32, i32* %9, align 4
  %101 = call i32 @REALLOC_ARRAY(i8** %99, i32 %100)
  %102 = load %struct.cache_entry*, %struct.cache_entry** %11, align 8
  %103 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %102, i32 0, i32 0
  %104 = load i8*, i8** %103, align 8
  %105 = load i8**, i8*** %7, align 8
  %106 = load i32, i32* %9, align 4
  %107 = sub nsw i32 %106, 2
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i8*, i8** %105, i64 %108
  store i8* %104, i8** %109, align 8
  %110 = load i8**, i8*** %7, align 8
  %111 = load i32, i32* %9, align 4
  %112 = sub nsw i32 %111, 1
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i8*, i8** %110, i64 %113
  store i8* null, i8** %114, align 8
  br label %115

115:                                              ; preds = %96, %89
  br label %116

116:                                              ; preds = %137, %115
  %117 = load i32, i32* %8, align 4
  %118 = add nsw i32 %117, 1
  %119 = load %struct.index_state*, %struct.index_state** %10, align 8
  %120 = getelementptr inbounds %struct.index_state, %struct.index_state* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = icmp slt i32 %118, %121
  br i1 %122, label %123, label %135

123:                                              ; preds = %116
  %124 = load %struct.cache_entry*, %struct.cache_entry** %11, align 8
  %125 = load %struct.index_state*, %struct.index_state** %10, align 8
  %126 = getelementptr inbounds %struct.index_state, %struct.index_state* %125, i32 0, i32 1
  %127 = load %struct.cache_entry**, %struct.cache_entry*** %126, align 8
  %128 = load i32, i32* %8, align 4
  %129 = add nsw i32 %128, 1
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds %struct.cache_entry*, %struct.cache_entry** %127, i64 %130
  %132 = load %struct.cache_entry*, %struct.cache_entry** %131, align 8
  %133 = call i64 @ce_same_name(%struct.cache_entry* %124, %struct.cache_entry* %132)
  %134 = icmp ne i64 %133, 0
  br label %135

135:                                              ; preds = %123, %116
  %136 = phi i1 [ false, %116 ], [ %134, %123 ]
  br i1 %136, label %137, label %140

137:                                              ; preds = %135
  %138 = load i32, i32* %8, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %8, align 4
  br label %116

140:                                              ; preds = %135
  br label %141

141:                                              ; preds = %140, %88
  %142 = load i32, i32* %8, align 4
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %8, align 4
  br label %71

144:                                              ; preds = %71
  %145 = load %struct.rev_info*, %struct.rev_info** %2, align 8
  %146 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %145, i32 0, i32 1
  %147 = call i32 @clear_pathspec(i32* %146)
  %148 = load %struct.rev_info*, %struct.rev_info** %2, align 8
  %149 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %148, i32 0, i32 1
  %150 = load i32, i32* @PATHSPEC_ALL_MAGIC, align 4
  %151 = load i32, i32* @PATHSPEC_LITERAL, align 4
  %152 = xor i32 %151, -1
  %153 = and i32 %150, %152
  %154 = load i32, i32* @PATHSPEC_PREFER_FULL, align 4
  %155 = load i32, i32* @PATHSPEC_LITERAL_PATH, align 4
  %156 = or i32 %154, %155
  %157 = load i8**, i8*** %7, align 8
  %158 = call i32 @parse_pathspec(i32* %149, i32 %153, i32 %156, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0), i8** %157)
  %159 = load %struct.rev_info*, %struct.rev_info** %2, align 8
  %160 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %159, i32 0, i32 0
  store i32 1, i32* %160, align 8
  ret void
}

declare dso_local i64 @get_oid(i8*, %struct.object_id*) #1

declare dso_local i32 @die(i8*) #1

declare dso_local %struct.commit* @lookup_commit_or_die(%struct.object_id*, i8*) #1

declare dso_local i32 @add_pending_object(%struct.rev_info*, %struct.TYPE_4__*, i8*) #1

declare dso_local %struct.commit_list* @get_merge_bases(%struct.commit*, %struct.commit*) #1

declare dso_local i32 @add_rev_cmdline_list(%struct.rev_info*, %struct.commit_list*, i32, i32) #1

declare dso_local i32 @add_pending_commit_list(%struct.rev_info*, %struct.commit_list*, i32) #1

declare dso_local i32 @free_commit_list(%struct.commit_list*) #1

declare dso_local i32 @repo_read_index(%struct.TYPE_3__*) #1

declare dso_local i32 @ce_stage(%struct.cache_entry*) #1

declare dso_local i64 @ce_path_match(%struct.index_state*, %struct.cache_entry*, i32*, i32*) #1

declare dso_local i32 @REALLOC_ARRAY(i8**, i32) #1

declare dso_local i64 @ce_same_name(%struct.cache_entry*, %struct.cache_entry*) #1

declare dso_local i32 @clear_pathspec(i32*) #1

declare dso_local i32 @parse_pathspec(i32*, i32, i32, i8*, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
