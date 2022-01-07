; ModuleID = '/home/carl/AnghaBench/git/extr_read-cache.c_repo_index_has_changes.c'
source_filename = "/home/carl/AnghaBench/git/extr_read-cache.c_repo_index_has_changes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, %struct.TYPE_9__** }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }
%struct.repository = type { %struct.index_state* }
%struct.index_state = type { i32, %struct.TYPE_11__** }
%struct.TYPE_11__ = type { i32 }
%struct.tree = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.object_id }
%struct.object_id = type { i32 }
%struct.strbuf = type { i32 }
%struct.diff_options = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, i32, i64 }

@.str = private unnamed_addr constant [5 x i8] c"HEAD\00", align 1
@diff_queued_diff = common dso_local global %struct.TYPE_12__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @repo_index_has_changes(%struct.repository* %0, %struct.tree* %1, %struct.strbuf* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.repository*, align 8
  %6 = alloca %struct.tree*, align 8
  %7 = alloca %struct.strbuf*, align 8
  %8 = alloca %struct.index_state*, align 8
  %9 = alloca %struct.object_id, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.diff_options, align 8
  store %struct.repository* %0, %struct.repository** %5, align 8
  store %struct.tree* %1, %struct.tree** %6, align 8
  store %struct.strbuf* %2, %struct.strbuf** %7, align 8
  %12 = load %struct.repository*, %struct.repository** %5, align 8
  %13 = getelementptr inbounds %struct.repository, %struct.repository* %12, i32 0, i32 0
  %14 = load %struct.index_state*, %struct.index_state** %13, align 8
  store %struct.index_state* %14, %struct.index_state** %8, align 8
  %15 = load %struct.tree*, %struct.tree** %6, align 8
  %16 = icmp ne %struct.tree* %15, null
  br i1 %16, label %17, label %23

17:                                               ; preds = %3
  %18 = load %struct.tree*, %struct.tree** %6, align 8
  %19 = getelementptr inbounds %struct.tree, %struct.tree* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  %21 = bitcast %struct.object_id* %9 to i8*
  %22 = bitcast %struct.object_id* %20 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %21, i8* align 4 %22, i64 4, i1 false)
  br label %23

23:                                               ; preds = %17, %3
  %24 = load %struct.tree*, %struct.tree** %6, align 8
  %25 = icmp ne %struct.tree* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %23
  %27 = call i32 @get_oid_tree(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), %struct.object_id* %9)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %79, label %29

29:                                               ; preds = %26, %23
  %30 = load %struct.repository*, %struct.repository** %5, align 8
  %31 = call i32 @repo_diff_setup(%struct.repository* %30, %struct.diff_options* %11)
  %32 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %11, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 0
  store i32 1, i32* %33, align 8
  %34 = load %struct.strbuf*, %struct.strbuf** %7, align 8
  %35 = icmp ne %struct.strbuf* %34, null
  br i1 %35, label %39, label %36

36:                                               ; preds = %29
  %37 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %11, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 1
  store i32 1, i32* %38, align 4
  br label %39

39:                                               ; preds = %36, %29
  %40 = call i32 @do_diff_cache(%struct.object_id* %9, %struct.diff_options* %11)
  %41 = call i32 @diffcore_std(%struct.diff_options* %11)
  store i32 0, i32* %10, align 4
  br label %42

42:                                               ; preds = %69, %39
  %43 = load %struct.strbuf*, %struct.strbuf** %7, align 8
  %44 = icmp ne %struct.strbuf* %43, null
  br i1 %44, label %45, label %49

45:                                               ; preds = %42
  %46 = load i32, i32* %10, align 4
  %47 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @diff_queued_diff, i32 0, i32 0), align 8
  %48 = icmp slt i32 %46, %47
  br label %49

49:                                               ; preds = %45, %42
  %50 = phi i1 [ false, %42 ], [ %48, %45 ]
  br i1 %50, label %51, label %72

51:                                               ; preds = %49
  %52 = load i32, i32* %10, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %51
  %55 = load %struct.strbuf*, %struct.strbuf** %7, align 8
  %56 = call i32 @strbuf_addch(%struct.strbuf* %55, i8 signext 32)
  br label %57

57:                                               ; preds = %54, %51
  %58 = load %struct.strbuf*, %struct.strbuf** %7, align 8
  %59 = load %struct.TYPE_9__**, %struct.TYPE_9__*** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @diff_queued_diff, i32 0, i32 1), align 8
  %60 = load i32, i32* %10, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %59, i64 %61
  %63 = load %struct.TYPE_9__*, %struct.TYPE_9__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 0
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @strbuf_addstr(%struct.strbuf* %58, i32 %67)
  br label %69

69:                                               ; preds = %57
  %70 = load i32, i32* %10, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %10, align 4
  br label %42

72:                                               ; preds = %49
  %73 = call i32 @diff_flush(%struct.diff_options* %11)
  %74 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %11, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %74, i32 0, i32 2
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 0
  %78 = zext i1 %77 to i32
  store i32 %78, i32* %4, align 4
  br label %120

79:                                               ; preds = %26
  store i32 0, i32* %10, align 4
  br label %80

80:                                               ; preds = %109, %79
  %81 = load %struct.strbuf*, %struct.strbuf** %7, align 8
  %82 = icmp ne %struct.strbuf* %81, null
  br i1 %82, label %83, label %89

83:                                               ; preds = %80
  %84 = load i32, i32* %10, align 4
  %85 = load %struct.index_state*, %struct.index_state** %8, align 8
  %86 = getelementptr inbounds %struct.index_state, %struct.index_state* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = icmp slt i32 %84, %87
  br label %89

89:                                               ; preds = %83, %80
  %90 = phi i1 [ false, %80 ], [ %88, %83 ]
  br i1 %90, label %91, label %112

91:                                               ; preds = %89
  %92 = load i32, i32* %10, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %97

94:                                               ; preds = %91
  %95 = load %struct.strbuf*, %struct.strbuf** %7, align 8
  %96 = call i32 @strbuf_addch(%struct.strbuf* %95, i8 signext 32)
  br label %97

97:                                               ; preds = %94, %91
  %98 = load %struct.strbuf*, %struct.strbuf** %7, align 8
  %99 = load %struct.index_state*, %struct.index_state** %8, align 8
  %100 = getelementptr inbounds %struct.index_state, %struct.index_state* %99, i32 0, i32 1
  %101 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %100, align 8
  %102 = load i32, i32* %10, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %101, i64 %103
  %105 = load %struct.TYPE_11__*, %struct.TYPE_11__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @strbuf_addstr(%struct.strbuf* %98, i32 %107)
  br label %109

109:                                              ; preds = %97
  %110 = load i32, i32* %10, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %10, align 4
  br label %80

112:                                              ; preds = %89
  %113 = load %struct.index_state*, %struct.index_state** %8, align 8
  %114 = getelementptr inbounds %struct.index_state, %struct.index_state* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = icmp ne i32 %115, 0
  %117 = xor i1 %116, true
  %118 = xor i1 %117, true
  %119 = zext i1 %118 to i32
  store i32 %119, i32* %4, align 4
  br label %120

120:                                              ; preds = %112, %72
  %121 = load i32, i32* %4, align 4
  ret i32 %121
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @get_oid_tree(i8*, %struct.object_id*) #2

declare dso_local i32 @repo_diff_setup(%struct.repository*, %struct.diff_options*) #2

declare dso_local i32 @do_diff_cache(%struct.object_id*, %struct.diff_options*) #2

declare dso_local i32 @diffcore_std(%struct.diff_options*) #2

declare dso_local i32 @strbuf_addch(%struct.strbuf*, i8 signext) #2

declare dso_local i32 @strbuf_addstr(%struct.strbuf*, i32) #2

declare dso_local i32 @diff_flush(%struct.diff_options*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
