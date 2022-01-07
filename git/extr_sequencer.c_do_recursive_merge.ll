; ModuleID = '/home/carl/AnghaBench/git/extr_sequencer.c_do_recursive_merge.c'
source_filename = "/home/carl/AnghaBench/git/extr_sequencer.c_do_recursive_merge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lock_file = type { i32 }
%struct.repository = type { i32 }
%struct.commit = type { i32 }
%struct.object_id = type { i32 }
%struct.strbuf = type { i32 }
%struct.replay_opts = type { i8**, i32, i32 }
%struct.merge_options = type { i8*, i8*, i8*, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.tree = type { i32 }

@LOCK_INIT = common dso_local global %struct.lock_file zeroinitializer, align 4
@LOCK_REPORT_ON_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"(empty tree)\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"HEAD\00", align 1
@stdout = common dso_local global i32 0, align 4
@COMMIT_LOCK = common dso_local global i32 0, align 4
@SKIP_IF_UNCHANGED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"%s: Unable to write new index file\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.repository*, %struct.commit*, %struct.commit*, i8*, i8*, %struct.object_id*, %struct.strbuf*, %struct.replay_opts*)* @do_recursive_merge to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_recursive_merge(%struct.repository* %0, %struct.commit* %1, %struct.commit* %2, i8* %3, i8* %4, %struct.object_id* %5, %struct.strbuf* %6, %struct.replay_opts* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.repository*, align 8
  %11 = alloca %struct.commit*, align 8
  %12 = alloca %struct.commit*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca %struct.object_id*, align 8
  %16 = alloca %struct.strbuf*, align 8
  %17 = alloca %struct.replay_opts*, align 8
  %18 = alloca %struct.merge_options, align 8
  %19 = alloca %struct.tree*, align 8
  %20 = alloca %struct.tree*, align 8
  %21 = alloca %struct.tree*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i8**, align 8
  %24 = alloca %struct.lock_file, align 4
  store %struct.repository* %0, %struct.repository** %10, align 8
  store %struct.commit* %1, %struct.commit** %11, align 8
  store %struct.commit* %2, %struct.commit** %12, align 8
  store i8* %3, i8** %13, align 8
  store i8* %4, i8** %14, align 8
  store %struct.object_id* %5, %struct.object_id** %15, align 8
  store %struct.strbuf* %6, %struct.strbuf** %16, align 8
  store %struct.replay_opts* %7, %struct.replay_opts** %17, align 8
  %25 = bitcast %struct.lock_file* %24 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %25, i8* align 4 bitcast (%struct.lock_file* @LOCK_INIT to i8*), i64 4, i1 false)
  %26 = load %struct.repository*, %struct.repository** %10, align 8
  %27 = load i32, i32* @LOCK_REPORT_ON_ERROR, align 4
  %28 = call i64 @repo_hold_locked_index(%struct.repository* %26, %struct.lock_file* %24, i32 %27)
  %29 = icmp slt i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %8
  store i32 -1, i32* %9, align 4
  br label %160

31:                                               ; preds = %8
  %32 = load %struct.repository*, %struct.repository** %10, align 8
  %33 = call i32 @repo_read_index(%struct.repository* %32)
  %34 = load %struct.repository*, %struct.repository** %10, align 8
  %35 = call i32 @init_merge_options(%struct.merge_options* %18, %struct.repository* %34)
  %36 = load %struct.commit*, %struct.commit** %11, align 8
  %37 = icmp ne %struct.commit* %36, null
  br i1 %37, label %38, label %40

38:                                               ; preds = %31
  %39 = load i8*, i8** %13, align 8
  br label %41

40:                                               ; preds = %31
  br label %41

41:                                               ; preds = %40, %38
  %42 = phi i8* [ %39, %38 ], [ getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), %40 ]
  %43 = getelementptr inbounds %struct.merge_options, %struct.merge_options* %18, i32 0, i32 0
  store i8* %42, i8** %43, align 8
  %44 = getelementptr inbounds %struct.merge_options, %struct.merge_options* %18, i32 0, i32 1
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8** %44, align 8
  %45 = load %struct.commit*, %struct.commit** %12, align 8
  %46 = icmp ne %struct.commit* %45, null
  br i1 %46, label %47, label %49

47:                                               ; preds = %41
  %48 = load i8*, i8** %14, align 8
  br label %50

49:                                               ; preds = %41
  br label %50

50:                                               ; preds = %49, %47
  %51 = phi i8* [ %48, %47 ], [ getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), %49 ]
  %52 = getelementptr inbounds %struct.merge_options, %struct.merge_options* %18, i32 0, i32 2
  store i8* %51, i8** %52, align 8
  %53 = load %struct.replay_opts*, %struct.replay_opts** %17, align 8
  %54 = call i64 @is_rebase_i(%struct.replay_opts* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %50
  %57 = getelementptr inbounds %struct.merge_options, %struct.merge_options* %18, i32 0, i32 3
  store i32 2, i32* %57, align 8
  br label %58

58:                                               ; preds = %56, %50
  %59 = getelementptr inbounds %struct.merge_options, %struct.merge_options* %18, i32 0, i32 4
  store i32 1, i32* %59, align 4
  %60 = load %struct.object_id*, %struct.object_id** %15, align 8
  %61 = call %struct.tree* @parse_tree_indirect(%struct.object_id* %60)
  store %struct.tree* %61, %struct.tree** %21, align 8
  %62 = load %struct.commit*, %struct.commit** %12, align 8
  %63 = icmp ne %struct.commit* %62, null
  br i1 %63, label %64, label %67

64:                                               ; preds = %58
  %65 = load %struct.commit*, %struct.commit** %12, align 8
  %66 = call %struct.tree* @get_commit_tree(%struct.commit* %65)
  br label %70

67:                                               ; preds = %58
  %68 = load %struct.repository*, %struct.repository** %10, align 8
  %69 = call %struct.tree* @empty_tree(%struct.repository* %68)
  br label %70

70:                                               ; preds = %67, %64
  %71 = phi %struct.tree* [ %66, %64 ], [ %69, %67 ]
  store %struct.tree* %71, %struct.tree** %19, align 8
  %72 = load %struct.commit*, %struct.commit** %11, align 8
  %73 = icmp ne %struct.commit* %72, null
  br i1 %73, label %74, label %77

74:                                               ; preds = %70
  %75 = load %struct.commit*, %struct.commit** %11, align 8
  %76 = call %struct.tree* @get_commit_tree(%struct.commit* %75)
  br label %80

77:                                               ; preds = %70
  %78 = load %struct.repository*, %struct.repository** %10, align 8
  %79 = call %struct.tree* @empty_tree(%struct.repository* %78)
  br label %80

80:                                               ; preds = %77, %74
  %81 = phi %struct.tree* [ %76, %74 ], [ %79, %77 ]
  store %struct.tree* %81, %struct.tree** %20, align 8
  %82 = load %struct.replay_opts*, %struct.replay_opts** %17, align 8
  %83 = getelementptr inbounds %struct.replay_opts, %struct.replay_opts* %82, i32 0, i32 0
  %84 = load i8**, i8*** %83, align 8
  store i8** %84, i8*** %23, align 8
  br label %85

85:                                               ; preds = %100, %80
  %86 = load i8**, i8*** %23, align 8
  %87 = load %struct.replay_opts*, %struct.replay_opts** %17, align 8
  %88 = getelementptr inbounds %struct.replay_opts, %struct.replay_opts* %87, i32 0, i32 0
  %89 = load i8**, i8*** %88, align 8
  %90 = load %struct.replay_opts*, %struct.replay_opts** %17, align 8
  %91 = getelementptr inbounds %struct.replay_opts, %struct.replay_opts* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 8
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i8*, i8** %89, i64 %93
  %95 = icmp ne i8** %86, %94
  br i1 %95, label %96, label %103

96:                                               ; preds = %85
  %97 = load i8**, i8*** %23, align 8
  %98 = load i8*, i8** %97, align 8
  %99 = call i32 @parse_merge_opt(%struct.merge_options* %18, i8* %98)
  br label %100

100:                                              ; preds = %96
  %101 = load i8**, i8*** %23, align 8
  %102 = getelementptr inbounds i8*, i8** %101, i32 1
  store i8** %102, i8*** %23, align 8
  br label %85

103:                                              ; preds = %85
  %104 = load %struct.tree*, %struct.tree** %21, align 8
  %105 = load %struct.tree*, %struct.tree** %19, align 8
  %106 = load %struct.tree*, %struct.tree** %20, align 8
  %107 = call i32 @merge_trees(%struct.merge_options* %18, %struct.tree* %104, %struct.tree* %105, %struct.tree* %106)
  store i32 %107, i32* %22, align 4
  %108 = load %struct.replay_opts*, %struct.replay_opts** %17, align 8
  %109 = call i64 @is_rebase_i(%struct.replay_opts* %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %120

111:                                              ; preds = %103
  %112 = load i32, i32* %22, align 4
  %113 = icmp sle i32 %112, 0
  br i1 %113, label %114, label %120

114:                                              ; preds = %111
  %115 = getelementptr inbounds %struct.merge_options, %struct.merge_options* %18, i32 0, i32 5
  %116 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = load i32, i32* @stdout, align 4
  %119 = call i32 @fputs(i32 %117, i32 %118)
  br label %120

120:                                              ; preds = %114, %111, %103
  %121 = getelementptr inbounds %struct.merge_options, %struct.merge_options* %18, i32 0, i32 5
  %122 = call i32 @strbuf_release(%struct.TYPE_2__* %121)
  %123 = load i32, i32* %22, align 4
  %124 = icmp slt i32 %123, 0
  br i1 %124, label %125, label %128

125:                                              ; preds = %120
  %126 = call i32 @rollback_lock_file(%struct.lock_file* %24)
  %127 = load i32, i32* %22, align 4
  store i32 %127, i32* %9, align 4
  br label %160

128:                                              ; preds = %120
  %129 = load %struct.repository*, %struct.repository** %10, align 8
  %130 = getelementptr inbounds %struct.repository, %struct.repository* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = load i32, i32* @COMMIT_LOCK, align 4
  %133 = load i32, i32* @SKIP_IF_UNCHANGED, align 4
  %134 = or i32 %132, %133
  %135 = call i64 @write_locked_index(i32 %131, %struct.lock_file* %24, i32 %134)
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %143

137:                                              ; preds = %128
  %138 = call i32 @_(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  %139 = load %struct.replay_opts*, %struct.replay_opts** %17, align 8
  %140 = call i8* @action_name(%struct.replay_opts* %139)
  %141 = call i32 @_(i8* %140)
  %142 = call i32 @error(i32 %138, i32 %141)
  store i32 %142, i32* %9, align 4
  br label %160

143:                                              ; preds = %128
  %144 = load i32, i32* %22, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %155, label %146

146:                                              ; preds = %143
  %147 = load %struct.repository*, %struct.repository** %10, align 8
  %148 = getelementptr inbounds %struct.repository, %struct.repository* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  %150 = load %struct.strbuf*, %struct.strbuf** %16, align 8
  %151 = load %struct.replay_opts*, %struct.replay_opts** %17, align 8
  %152 = getelementptr inbounds %struct.replay_opts, %struct.replay_opts* %151, i32 0, i32 2
  %153 = load i32, i32* %152, align 4
  %154 = call i32 @append_conflicts_hint(i32 %149, %struct.strbuf* %150, i32 %153)
  br label %155

155:                                              ; preds = %146, %143
  %156 = load i32, i32* %22, align 4
  %157 = icmp ne i32 %156, 0
  %158 = xor i1 %157, true
  %159 = zext i1 %158 to i32
  store i32 %159, i32* %9, align 4
  br label %160

160:                                              ; preds = %155, %137, %125, %30
  %161 = load i32, i32* %9, align 4
  ret i32 %161
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @repo_hold_locked_index(%struct.repository*, %struct.lock_file*, i32) #2

declare dso_local i32 @repo_read_index(%struct.repository*) #2

declare dso_local i32 @init_merge_options(%struct.merge_options*, %struct.repository*) #2

declare dso_local i64 @is_rebase_i(%struct.replay_opts*) #2

declare dso_local %struct.tree* @parse_tree_indirect(%struct.object_id*) #2

declare dso_local %struct.tree* @get_commit_tree(%struct.commit*) #2

declare dso_local %struct.tree* @empty_tree(%struct.repository*) #2

declare dso_local i32 @parse_merge_opt(%struct.merge_options*, i8*) #2

declare dso_local i32 @merge_trees(%struct.merge_options*, %struct.tree*, %struct.tree*, %struct.tree*) #2

declare dso_local i32 @fputs(i32, i32) #2

declare dso_local i32 @strbuf_release(%struct.TYPE_2__*) #2

declare dso_local i32 @rollback_lock_file(%struct.lock_file*) #2

declare dso_local i64 @write_locked_index(i32, %struct.lock_file*, i32) #2

declare dso_local i32 @error(i32, i32) #2

declare dso_local i32 @_(i8*) #2

declare dso_local i8* @action_name(%struct.replay_opts*) #2

declare dso_local i32 @append_conflicts_hint(i32, %struct.strbuf*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
