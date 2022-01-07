; ModuleID = '/home/carl/AnghaBench/git/extr_sequencer.c_sequencer_pick_revisions.c'
source_filename = "/home/carl/AnghaBench/git/extr_sequencer.c_sequencer_pick_revisions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.todo_list = type { i32 }
%struct.repository = type { i32 }
%struct.replay_opts = type { i64, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { %struct.TYPE_11__, i64, %struct.TYPE_9__ }
%struct.TYPE_11__ = type { i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i64, i32 }
%struct.TYPE_9__ = type { i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i8* }
%struct.object_id = type { i32 }
%struct.commit = type { i32 }

@TODO_LIST_INIT = common dso_local global %struct.todo_list zeroinitializer, align 4
@.str = private unnamed_addr constant [27 x i8] c"%s: can't cherry-pick a %s\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"%s: bad revision\00", align 1
@REV_CMD_REV = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [27 x i8] c"revision walk setup failed\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"empty commit set passed\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"unexpected extra commit from walk\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"HEAD\00", align 1
@REPLAY_REVERT = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [31 x i8] c"can't revert as initial commit\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sequencer_pick_revisions(%struct.repository* %0, %struct.replay_opts* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.repository*, align 8
  %5 = alloca %struct.replay_opts*, align 8
  %6 = alloca %struct.todo_list, align 4
  %7 = alloca %struct.object_id, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.object_id, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.commit*, align 8
  store %struct.repository* %0, %struct.repository** %4, align 8
  store %struct.replay_opts* %1, %struct.replay_opts** %5, align 8
  %14 = bitcast %struct.todo_list* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %14, i8* align 4 bitcast (%struct.todo_list* @TODO_LIST_INIT to i8*), i64 4, i1 false)
  %15 = load %struct.replay_opts*, %struct.replay_opts** %5, align 8
  %16 = getelementptr inbounds %struct.replay_opts, %struct.replay_opts* %15, i32 0, i32 1
  %17 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %18 = call i32 @assert(%struct.TYPE_12__* %17)
  %19 = load %struct.repository*, %struct.repository** %4, align 8
  %20 = load %struct.replay_opts*, %struct.replay_opts** %5, align 8
  %21 = call i64 @read_and_refresh_cache(%struct.repository* %19, %struct.replay_opts* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %181

24:                                               ; preds = %2
  store i32 0, i32* %8, align 4
  br label %25

25:                                               ; preds = %72, %24
  %26 = load i32, i32* %8, align 4
  %27 = load %struct.replay_opts*, %struct.replay_opts** %5, align 8
  %28 = getelementptr inbounds %struct.replay_opts, %struct.replay_opts* %27, i32 0, i32 1
  %29 = load %struct.TYPE_12__*, %struct.TYPE_12__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp slt i32 %26, %32
  br i1 %33, label %34, label %75

34:                                               ; preds = %25
  %35 = load %struct.replay_opts*, %struct.replay_opts** %5, align 8
  %36 = getelementptr inbounds %struct.replay_opts, %struct.replay_opts* %35, i32 0, i32 1
  %37 = load %struct.TYPE_12__*, %struct.TYPE_12__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 1
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %39, align 8
  %41 = load i32, i32* %8, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 0
  %45 = load i8*, i8** %44, align 8
  store i8* %45, i8** %11, align 8
  %46 = load i8*, i8** %11, align 8
  %47 = call i32 @strlen(i8* %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %34
  br label %72

50:                                               ; preds = %34
  %51 = load i8*, i8** %11, align 8
  %52 = call i64 @get_oid(i8* %51, %struct.object_id* %10)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %67, label %54

54:                                               ; preds = %50
  %55 = load %struct.repository*, %struct.repository** %4, align 8
  %56 = call i32 @lookup_commit_reference_gently(%struct.repository* %55, %struct.object_id* %10, i32 1)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %66, label %58

58:                                               ; preds = %54
  %59 = load %struct.repository*, %struct.repository** %4, align 8
  %60 = call i32 @oid_object_info(%struct.repository* %59, %struct.object_id* %10, i32* null)
  store i32 %60, i32* %12, align 4
  %61 = call i32 @_(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %62 = load i8*, i8** %11, align 8
  %63 = load i32, i32* %12, align 4
  %64 = call i8* @type_name(i32 %63)
  %65 = call i32 (i32, ...) @error(i32 %61, i8* %62, i8* %64)
  store i32 %65, i32* %3, align 4
  br label %181

66:                                               ; preds = %54
  br label %71

67:                                               ; preds = %50
  %68 = call i32 @_(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %69 = load i8*, i8** %11, align 8
  %70 = call i32 (i32, ...) @error(i32 %68, i8* %69)
  store i32 %70, i32* %3, align 4
  br label %181

71:                                               ; preds = %66
  br label %72

72:                                               ; preds = %71, %49
  %73 = load i32, i32* %8, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %8, align 4
  br label %25

75:                                               ; preds = %25
  %76 = load %struct.replay_opts*, %struct.replay_opts** %5, align 8
  %77 = getelementptr inbounds %struct.replay_opts, %struct.replay_opts* %76, i32 0, i32 1
  %78 = load %struct.TYPE_12__*, %struct.TYPE_12__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = icmp eq i32 %81, 1
  br i1 %82, label %83, label %143

83:                                               ; preds = %75
  %84 = load %struct.replay_opts*, %struct.replay_opts** %5, align 8
  %85 = getelementptr inbounds %struct.replay_opts, %struct.replay_opts* %84, i32 0, i32 1
  %86 = load %struct.TYPE_12__*, %struct.TYPE_12__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %87, i32 0, i32 1
  %89 = load %struct.TYPE_10__*, %struct.TYPE_10__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* @REV_CMD_REV, align 8
  %93 = icmp eq i64 %91, %92
  br i1 %93, label %94, label %143

94:                                               ; preds = %83
  %95 = load %struct.replay_opts*, %struct.replay_opts** %5, align 8
  %96 = getelementptr inbounds %struct.replay_opts, %struct.replay_opts* %95, i32 0, i32 1
  %97 = load %struct.TYPE_12__*, %struct.TYPE_12__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %97, i32 0, i32 1
  %99 = load i64, i64* %98, align 8
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %143

101:                                              ; preds = %94
  %102 = load %struct.replay_opts*, %struct.replay_opts** %5, align 8
  %103 = getelementptr inbounds %struct.replay_opts, %struct.replay_opts* %102, i32 0, i32 1
  %104 = load %struct.TYPE_12__*, %struct.TYPE_12__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %105, i32 0, i32 1
  %107 = load %struct.TYPE_10__*, %struct.TYPE_10__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 8
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %143, label %111

111:                                              ; preds = %101
  %112 = load %struct.replay_opts*, %struct.replay_opts** %5, align 8
  %113 = getelementptr inbounds %struct.replay_opts, %struct.replay_opts* %112, i32 0, i32 1
  %114 = load %struct.TYPE_12__*, %struct.TYPE_12__** %113, align 8
  %115 = call i64 @prepare_revision_walk(%struct.TYPE_12__* %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %120

117:                                              ; preds = %111
  %118 = call i32 @_(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  %119 = call i32 (i32, ...) @error(i32 %118)
  store i32 %119, i32* %3, align 4
  br label %181

120:                                              ; preds = %111
  %121 = load %struct.replay_opts*, %struct.replay_opts** %5, align 8
  %122 = getelementptr inbounds %struct.replay_opts, %struct.replay_opts* %121, i32 0, i32 1
  %123 = load %struct.TYPE_12__*, %struct.TYPE_12__** %122, align 8
  %124 = call %struct.commit* @get_revision(%struct.TYPE_12__* %123)
  store %struct.commit* %124, %struct.commit** %13, align 8
  %125 = load %struct.commit*, %struct.commit** %13, align 8
  %126 = icmp ne %struct.commit* %125, null
  br i1 %126, label %130, label %127

127:                                              ; preds = %120
  %128 = call i32 @_(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  %129 = call i32 (i32, ...) @error(i32 %128)
  store i32 %129, i32* %3, align 4
  br label %181

130:                                              ; preds = %120
  %131 = load %struct.replay_opts*, %struct.replay_opts** %5, align 8
  %132 = getelementptr inbounds %struct.replay_opts, %struct.replay_opts* %131, i32 0, i32 1
  %133 = load %struct.TYPE_12__*, %struct.TYPE_12__** %132, align 8
  %134 = call %struct.commit* @get_revision(%struct.TYPE_12__* %133)
  %135 = icmp ne %struct.commit* %134, null
  br i1 %135, label %136, label %138

136:                                              ; preds = %130
  %137 = call i32 @BUG(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0))
  br label %138

138:                                              ; preds = %136, %130
  %139 = load %struct.repository*, %struct.repository** %4, align 8
  %140 = load %struct.commit*, %struct.commit** %13, align 8
  %141 = load %struct.replay_opts*, %struct.replay_opts** %5, align 8
  %142 = call i32 @single_pick(%struct.repository* %139, %struct.commit* %140, %struct.replay_opts* %141)
  store i32 %142, i32* %3, align 4
  br label %181

143:                                              ; preds = %101, %94, %83, %75
  %144 = load %struct.replay_opts*, %struct.replay_opts** %5, align 8
  %145 = call i64 @walk_revs_populate_todo(%struct.todo_list* %6, %struct.replay_opts* %144)
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %151, label %147

147:                                              ; preds = %143
  %148 = load %struct.repository*, %struct.repository** %4, align 8
  %149 = call i64 @create_seq_dir(%struct.repository* %148)
  %150 = icmp slt i64 %149, 0
  br i1 %150, label %151, label %152

151:                                              ; preds = %147, %143
  store i32 -1, i32* %3, align 4
  br label %181

152:                                              ; preds = %147
  %153 = call i64 @get_oid(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), %struct.object_id* %7)
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %164

155:                                              ; preds = %152
  %156 = load %struct.replay_opts*, %struct.replay_opts** %5, align 8
  %157 = getelementptr inbounds %struct.replay_opts, %struct.replay_opts* %156, i32 0, i32 0
  %158 = load i64, i64* %157, align 8
  %159 = load i64, i64* @REPLAY_REVERT, align 8
  %160 = icmp eq i64 %158, %159
  br i1 %160, label %161, label %164

161:                                              ; preds = %155
  %162 = call i32 @_(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i64 0, i64 0))
  %163 = call i32 (i32, ...) @error(i32 %162)
  store i32 %163, i32* %3, align 4
  br label %181

164:                                              ; preds = %155, %152
  %165 = call i32 @oid_to_hex(%struct.object_id* %7)
  %166 = call i64 @save_head(i32 %165)
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %168, label %169

168:                                              ; preds = %164
  store i32 -1, i32* %3, align 4
  br label %181

169:                                              ; preds = %164
  %170 = load %struct.replay_opts*, %struct.replay_opts** %5, align 8
  %171 = call i64 @save_opts(%struct.replay_opts* %170)
  %172 = icmp ne i64 %171, 0
  br i1 %172, label %173, label %174

173:                                              ; preds = %169
  store i32 -1, i32* %3, align 4
  br label %181

174:                                              ; preds = %169
  %175 = call i32 (...) @update_abort_safety_file()
  %176 = load %struct.repository*, %struct.repository** %4, align 8
  %177 = load %struct.replay_opts*, %struct.replay_opts** %5, align 8
  %178 = call i32 @pick_commits(%struct.repository* %176, %struct.todo_list* %6, %struct.replay_opts* %177)
  store i32 %178, i32* %9, align 4
  %179 = call i32 @todo_list_release(%struct.todo_list* %6)
  %180 = load i32, i32* %9, align 4
  store i32 %180, i32* %3, align 4
  br label %181

181:                                              ; preds = %174, %173, %168, %161, %151, %138, %127, %117, %67, %58, %23
  %182 = load i32, i32* %3, align 4
  ret i32 %182
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @assert(%struct.TYPE_12__*) #2

declare dso_local i64 @read_and_refresh_cache(%struct.repository*, %struct.replay_opts*) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i64 @get_oid(i8*, %struct.object_id*) #2

declare dso_local i32 @lookup_commit_reference_gently(%struct.repository*, %struct.object_id*, i32) #2

declare dso_local i32 @oid_object_info(%struct.repository*, %struct.object_id*, i32*) #2

declare dso_local i32 @error(i32, ...) #2

declare dso_local i32 @_(i8*) #2

declare dso_local i8* @type_name(i32) #2

declare dso_local i64 @prepare_revision_walk(%struct.TYPE_12__*) #2

declare dso_local %struct.commit* @get_revision(%struct.TYPE_12__*) #2

declare dso_local i32 @BUG(i8*) #2

declare dso_local i32 @single_pick(%struct.repository*, %struct.commit*, %struct.replay_opts*) #2

declare dso_local i64 @walk_revs_populate_todo(%struct.todo_list*, %struct.replay_opts*) #2

declare dso_local i64 @create_seq_dir(%struct.repository*) #2

declare dso_local i64 @save_head(i32) #2

declare dso_local i32 @oid_to_hex(%struct.object_id*) #2

declare dso_local i64 @save_opts(%struct.replay_opts*) #2

declare dso_local i32 @update_abort_safety_file(...) #2

declare dso_local i32 @pick_commits(%struct.repository*, %struct.todo_list*, %struct.replay_opts*) #2

declare dso_local i32 @todo_list_release(%struct.todo_list*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
