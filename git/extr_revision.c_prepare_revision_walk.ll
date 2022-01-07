; ModuleID = '/home/carl/AnghaBench/git/extr_revision.c_prepare_revision_walk.c'
source_filename = "/home/carl/AnghaBench/git/extr_revision.c_prepare_revision_walk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rev_info = type { i64, %struct.TYPE_7__, i64, i64, i64, i32, %struct.commit_list*, i64, i64, %struct.TYPE_6__, %struct.TYPE_8__ }
%struct.TYPE_7__ = type { i64 }
%struct.commit_list = type { i32 }
%struct.TYPE_6__ = type { i8* }
%struct.TYPE_8__ = type { i32*, i64, i64 }
%struct.object_array = type { i32, %struct.object_array_entry* }
%struct.object_array_entry = type { i32 }
%struct.commit = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@SEEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"treesame\00", align 1
@mark_uninteresting = common dso_local global i32 0, align 4
@FOR_EACH_OBJECT_PROMISOR_ONLY = common dso_local global i32 0, align 4
@REVISION_WALK_NO_WALK_UNSORTED = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @prepare_revision_walk(%struct.rev_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rev_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.object_array, align 8
  %6 = alloca %struct.commit_list**, align 8
  %7 = alloca %struct.object_array_entry*, align 8
  %8 = alloca %struct.commit*, align 8
  store %struct.rev_info* %0, %struct.rev_info** %3, align 8
  %9 = load %struct.rev_info*, %struct.rev_info** %3, align 8
  %10 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %9, i32 0, i32 6
  store %struct.commit_list** %10, %struct.commit_list*** %6, align 8
  %11 = load %struct.rev_info*, %struct.rev_info** %3, align 8
  %12 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %11, i32 0, i32 10
  %13 = call i32 @memcpy(%struct.object_array* %5, %struct.TYPE_8__* %12, i32 16)
  %14 = load %struct.rev_info*, %struct.rev_info** %3, align 8
  %15 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %14, i32 0, i32 10
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 2
  store i64 0, i64* %16, align 8
  %17 = load %struct.rev_info*, %struct.rev_info** %3, align 8
  %18 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %17, i32 0, i32 10
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 1
  store i64 0, i64* %19, align 8
  %20 = load %struct.rev_info*, %struct.rev_info** %3, align 8
  %21 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %20, i32 0, i32 10
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  store i32* null, i32** %22, align 8
  store i32 0, i32* %4, align 4
  br label %23

23:                                               ; preds = %59, %1
  %24 = load i32, i32* %4, align 4
  %25 = getelementptr inbounds %struct.object_array, %struct.object_array* %5, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp slt i32 %24, %26
  br i1 %27, label %28, label %62

28:                                               ; preds = %23
  %29 = getelementptr inbounds %struct.object_array, %struct.object_array* %5, i32 0, i32 1
  %30 = load %struct.object_array_entry*, %struct.object_array_entry** %29, align 8
  %31 = load i32, i32* %4, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.object_array_entry, %struct.object_array_entry* %30, i64 %32
  store %struct.object_array_entry* %33, %struct.object_array_entry** %7, align 8
  %34 = load %struct.rev_info*, %struct.rev_info** %3, align 8
  %35 = load %struct.object_array_entry*, %struct.object_array_entry** %7, align 8
  %36 = call %struct.commit* @handle_commit(%struct.rev_info* %34, %struct.object_array_entry* %35)
  store %struct.commit* %36, %struct.commit** %8, align 8
  %37 = load %struct.commit*, %struct.commit** %8, align 8
  %38 = icmp ne %struct.commit* %37, null
  br i1 %38, label %39, label %58

39:                                               ; preds = %28
  %40 = load %struct.commit*, %struct.commit** %8, align 8
  %41 = getelementptr inbounds %struct.commit, %struct.commit* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @SEEN, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %57, label %47

47:                                               ; preds = %39
  %48 = load i32, i32* @SEEN, align 4
  %49 = load %struct.commit*, %struct.commit** %8, align 8
  %50 = getelementptr inbounds %struct.commit, %struct.commit* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = or i32 %52, %48
  store i32 %53, i32* %51, align 4
  %54 = load %struct.commit*, %struct.commit** %8, align 8
  %55 = load %struct.commit_list**, %struct.commit_list*** %6, align 8
  %56 = call %struct.commit_list** @commit_list_append(%struct.commit* %54, %struct.commit_list** %55)
  store %struct.commit_list** %56, %struct.commit_list*** %6, align 8
  br label %57

57:                                               ; preds = %47, %39
  br label %58

58:                                               ; preds = %57, %28
  br label %59

59:                                               ; preds = %58
  %60 = load i32, i32* %4, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %4, align 4
  br label %23

62:                                               ; preds = %23
  %63 = call i32 @object_array_clear(%struct.object_array* %5)
  %64 = load %struct.rev_info*, %struct.rev_info** %3, align 8
  %65 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %64, i32 0, i32 2
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %77, label %68

68:                                               ; preds = %62
  %69 = load %struct.rev_info*, %struct.rev_info** %3, align 8
  %70 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %69, i32 0, i32 7
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %81

73:                                               ; preds = %68
  %74 = load %struct.rev_info*, %struct.rev_info** %3, align 8
  %75 = call i64 @limiting_can_increase_treesame(%struct.rev_info* %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %81

77:                                               ; preds = %73, %62
  %78 = load %struct.rev_info*, %struct.rev_info** %3, align 8
  %79 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %78, i32 0, i32 9
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 0
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8** %80, align 8
  br label %81

81:                                               ; preds = %77, %73, %68
  %82 = load %struct.rev_info*, %struct.rev_info** %3, align 8
  %83 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %82, i32 0, i32 8
  %84 = load i64, i64* %83, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %91

86:                                               ; preds = %81
  %87 = load i32, i32* @mark_uninteresting, align 4
  %88 = load %struct.rev_info*, %struct.rev_info** %3, align 8
  %89 = load i32, i32* @FOR_EACH_OBJECT_PROMISOR_ONLY, align 4
  %90 = call i32 @for_each_packed_object(i32 %87, %struct.rev_info* %88, i32 %89)
  br label %91

91:                                               ; preds = %86, %81
  %92 = load %struct.rev_info*, %struct.rev_info** %3, align 8
  %93 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* @REVISION_WALK_NO_WALK_UNSORTED, align 8
  %96 = icmp ne i64 %94, %95
  br i1 %96, label %97, label %101

97:                                               ; preds = %91
  %98 = load %struct.rev_info*, %struct.rev_info** %3, align 8
  %99 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %98, i32 0, i32 6
  %100 = call i32 @commit_list_sort_by_date(%struct.commit_list** %99)
  br label %101

101:                                              ; preds = %97, %91
  %102 = load %struct.rev_info*, %struct.rev_info** %3, align 8
  %103 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %101
  store i32 0, i32* %2, align 4
  br label %165

107:                                              ; preds = %101
  %108 = load %struct.rev_info*, %struct.rev_info** %3, align 8
  %109 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %108, i32 0, i32 7
  %110 = load i64, i64* %109, align 8
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %130

112:                                              ; preds = %107
  %113 = load %struct.rev_info*, %struct.rev_info** %3, align 8
  %114 = call i64 @limit_list(%struct.rev_info* %113)
  %115 = icmp slt i64 %114, 0
  br i1 %115, label %116, label %117

116:                                              ; preds = %112
  store i32 -1, i32* %2, align 4
  br label %165

117:                                              ; preds = %112
  %118 = load %struct.rev_info*, %struct.rev_info** %3, align 8
  %119 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %118, i32 0, i32 4
  %120 = load i64, i64* %119, align 8
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %129

122:                                              ; preds = %117
  %123 = load %struct.rev_info*, %struct.rev_info** %3, align 8
  %124 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %123, i32 0, i32 6
  %125 = load %struct.rev_info*, %struct.rev_info** %3, align 8
  %126 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %125, i32 0, i32 5
  %127 = load i32, i32* %126, align 8
  %128 = call i32 @sort_in_topological_order(%struct.commit_list** %124, i32 %127)
  br label %129

129:                                              ; preds = %122, %117
  br label %139

130:                                              ; preds = %107
  %131 = load %struct.rev_info*, %struct.rev_info** %3, align 8
  %132 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %131, i32 0, i32 4
  %133 = load i64, i64* %132, align 8
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %138

135:                                              ; preds = %130
  %136 = load %struct.rev_info*, %struct.rev_info** %3, align 8
  %137 = call i32 @init_topo_walk(%struct.rev_info* %136)
  br label %138

138:                                              ; preds = %135, %130
  br label %139

139:                                              ; preds = %138, %129
  %140 = load %struct.rev_info*, %struct.rev_info** %3, align 8
  %141 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %140, i32 0, i32 3
  %142 = load i64, i64* %141, align 8
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %147

144:                                              ; preds = %139
  %145 = load %struct.rev_info*, %struct.rev_info** %3, align 8
  %146 = call i32 @line_log_filter(%struct.rev_info* %145)
  br label %147

147:                                              ; preds = %144, %139
  %148 = load %struct.rev_info*, %struct.rev_info** %3, align 8
  %149 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %148, i32 0, i32 2
  %150 = load i64, i64* %149, align 8
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %155

152:                                              ; preds = %147
  %153 = load %struct.rev_info*, %struct.rev_info** %3, align 8
  %154 = call i32 @simplify_merges(%struct.rev_info* %153)
  br label %155

155:                                              ; preds = %152, %147
  %156 = load %struct.rev_info*, %struct.rev_info** %3, align 8
  %157 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %156, i32 0, i32 1
  %158 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %157, i32 0, i32 0
  %159 = load i64, i64* %158, align 8
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %161, label %164

161:                                              ; preds = %155
  %162 = load %struct.rev_info*, %struct.rev_info** %3, align 8
  %163 = call i32 @set_children(%struct.rev_info* %162)
  br label %164

164:                                              ; preds = %161, %155
  store i32 0, i32* %2, align 4
  br label %165

165:                                              ; preds = %164, %116, %106
  %166 = load i32, i32* %2, align 4
  ret i32 %166
}

declare dso_local i32 @memcpy(%struct.object_array*, %struct.TYPE_8__*, i32) #1

declare dso_local %struct.commit* @handle_commit(%struct.rev_info*, %struct.object_array_entry*) #1

declare dso_local %struct.commit_list** @commit_list_append(%struct.commit*, %struct.commit_list**) #1

declare dso_local i32 @object_array_clear(%struct.object_array*) #1

declare dso_local i64 @limiting_can_increase_treesame(%struct.rev_info*) #1

declare dso_local i32 @for_each_packed_object(i32, %struct.rev_info*, i32) #1

declare dso_local i32 @commit_list_sort_by_date(%struct.commit_list**) #1

declare dso_local i64 @limit_list(%struct.rev_info*) #1

declare dso_local i32 @sort_in_topological_order(%struct.commit_list**, i32) #1

declare dso_local i32 @init_topo_walk(%struct.rev_info*) #1

declare dso_local i32 @line_log_filter(%struct.rev_info*) #1

declare dso_local i32 @simplify_merges(%struct.rev_info*) #1

declare dso_local i32 @set_children(%struct.rev_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
