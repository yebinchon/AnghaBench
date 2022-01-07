; ModuleID = '/home/carl/AnghaBench/git/extr_list-objects.c_mark_edges_uninteresting.c'
source_filename = "/home/carl/AnghaBench/git/extr_list-objects.c_mark_edges_uninteresting.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rev_info = type { i32, %struct.TYPE_8__, i64, %struct.commit_list* }
%struct.TYPE_8__ = type { i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.object* }
%struct.object = type { i64, i32 }
%struct.commit_list = type { %struct.commit*, %struct.commit_list* }
%struct.commit = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.oidset = type { i32 }
%struct.tree = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }

@UNINTERESTING = common dso_local global i32 0, align 4
@SHOWN = common dso_local global i32 0, align 4
@OBJ_COMMIT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mark_edges_uninteresting(%struct.rev_info* %0, i32 (%struct.commit*)* %1, i32 %2) #0 {
  %4 = alloca %struct.rev_info*, align 8
  %5 = alloca i32 (%struct.commit*)*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.commit_list*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.oidset, align 4
  %10 = alloca %struct.commit*, align 8
  %11 = alloca %struct.tree*, align 8
  %12 = alloca %struct.commit*, align 8
  %13 = alloca %struct.object*, align 8
  %14 = alloca %struct.commit*, align 8
  store %struct.rev_info* %0, %struct.rev_info** %4, align 8
  store i32 (%struct.commit*)* %1, i32 (%struct.commit*)** %5, align 8
  store i32 %2, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %64

17:                                               ; preds = %3
  %18 = call i32 @oidset_init(%struct.oidset* %9, i32 16)
  %19 = load %struct.rev_info*, %struct.rev_info** %4, align 8
  %20 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %19, i32 0, i32 3
  %21 = load %struct.commit_list*, %struct.commit_list** %20, align 8
  store %struct.commit_list* %21, %struct.commit_list** %7, align 8
  br label %22

22:                                               ; preds = %54, %17
  %23 = load %struct.commit_list*, %struct.commit_list** %7, align 8
  %24 = icmp ne %struct.commit_list* %23, null
  br i1 %24, label %25, label %58

25:                                               ; preds = %22
  %26 = load %struct.commit_list*, %struct.commit_list** %7, align 8
  %27 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %26, i32 0, i32 0
  %28 = load %struct.commit*, %struct.commit** %27, align 8
  store %struct.commit* %28, %struct.commit** %10, align 8
  %29 = load %struct.commit*, %struct.commit** %10, align 8
  %30 = call %struct.tree* @get_commit_tree(%struct.commit* %29)
  store %struct.tree* %30, %struct.tree** %11, align 8
  %31 = load %struct.commit*, %struct.commit** %10, align 8
  %32 = getelementptr inbounds %struct.commit, %struct.commit* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @UNINTERESTING, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %45

38:                                               ; preds = %25
  %39 = load i32, i32* @UNINTERESTING, align 4
  %40 = load %struct.tree*, %struct.tree** %11, align 8
  %41 = getelementptr inbounds %struct.tree, %struct.tree* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = or i32 %43, %39
  store i32 %44, i32* %42, align 4
  br label %45

45:                                               ; preds = %38, %25
  %46 = load %struct.tree*, %struct.tree** %11, align 8
  %47 = getelementptr inbounds %struct.tree, %struct.tree* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 1
  %49 = call i32 @oidset_insert(%struct.oidset* %9, i32* %48)
  %50 = load %struct.commit*, %struct.commit** %10, align 8
  %51 = load %struct.rev_info*, %struct.rev_info** %4, align 8
  %52 = load i32 (%struct.commit*)*, i32 (%struct.commit*)** %5, align 8
  %53 = call i32 @add_edge_parents(%struct.commit* %50, %struct.rev_info* %51, i32 (%struct.commit*)* %52, %struct.oidset* %9)
  br label %54

54:                                               ; preds = %45
  %55 = load %struct.commit_list*, %struct.commit_list** %7, align 8
  %56 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %55, i32 0, i32 1
  %57 = load %struct.commit_list*, %struct.commit_list** %56, align 8
  store %struct.commit_list* %57, %struct.commit_list** %7, align 8
  br label %22

58:                                               ; preds = %22
  %59 = load %struct.rev_info*, %struct.rev_info** %4, align 8
  %60 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @mark_trees_uninteresting_sparse(i32 %61, %struct.oidset* %9)
  %63 = call i32 @oidset_clear(%struct.oidset* %9)
  br label %122

64:                                               ; preds = %3
  %65 = load %struct.rev_info*, %struct.rev_info** %4, align 8
  %66 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %65, i32 0, i32 3
  %67 = load %struct.commit_list*, %struct.commit_list** %66, align 8
  store %struct.commit_list* %67, %struct.commit_list** %7, align 8
  br label %68

68:                                               ; preds = %117, %64
  %69 = load %struct.commit_list*, %struct.commit_list** %7, align 8
  %70 = icmp ne %struct.commit_list* %69, null
  br i1 %70, label %71, label %121

71:                                               ; preds = %68
  %72 = load %struct.commit_list*, %struct.commit_list** %7, align 8
  %73 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %72, i32 0, i32 0
  %74 = load %struct.commit*, %struct.commit** %73, align 8
  store %struct.commit* %74, %struct.commit** %12, align 8
  %75 = load %struct.commit*, %struct.commit** %12, align 8
  %76 = getelementptr inbounds %struct.commit, %struct.commit* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @UNINTERESTING, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %112

82:                                               ; preds = %71
  %83 = load %struct.rev_info*, %struct.rev_info** %4, align 8
  %84 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = load %struct.commit*, %struct.commit** %12, align 8
  %87 = call %struct.tree* @get_commit_tree(%struct.commit* %86)
  %88 = call i32 @mark_tree_uninteresting(i32 %85, %struct.tree* %87)
  %89 = load %struct.rev_info*, %struct.rev_info** %4, align 8
  %90 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %89, i32 0, i32 2
  %91 = load i64, i64* %90, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %111

93:                                               ; preds = %82
  %94 = load %struct.commit*, %struct.commit** %12, align 8
  %95 = getelementptr inbounds %struct.commit, %struct.commit* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* @SHOWN, align 4
  %99 = and i32 %97, %98
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %111, label %101

101:                                              ; preds = %93
  %102 = load i32, i32* @SHOWN, align 4
  %103 = load %struct.commit*, %struct.commit** %12, align 8
  %104 = getelementptr inbounds %struct.commit, %struct.commit* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = or i32 %106, %102
  store i32 %107, i32* %105, align 4
  %108 = load i32 (%struct.commit*)*, i32 (%struct.commit*)** %5, align 8
  %109 = load %struct.commit*, %struct.commit** %12, align 8
  %110 = call i32 %108(%struct.commit* %109)
  br label %111

111:                                              ; preds = %101, %93, %82
  br label %117

112:                                              ; preds = %71
  %113 = load %struct.commit*, %struct.commit** %12, align 8
  %114 = load %struct.rev_info*, %struct.rev_info** %4, align 8
  %115 = load i32 (%struct.commit*)*, i32 (%struct.commit*)** %5, align 8
  %116 = call i32 @mark_edge_parents_uninteresting(%struct.commit* %113, %struct.rev_info* %114, i32 (%struct.commit*)* %115)
  br label %117

117:                                              ; preds = %112, %111
  %118 = load %struct.commit_list*, %struct.commit_list** %7, align 8
  %119 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %118, i32 0, i32 1
  %120 = load %struct.commit_list*, %struct.commit_list** %119, align 8
  store %struct.commit_list* %120, %struct.commit_list** %7, align 8
  br label %68

121:                                              ; preds = %68
  br label %122

122:                                              ; preds = %121, %58
  %123 = load %struct.rev_info*, %struct.rev_info** %4, align 8
  %124 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %123, i32 0, i32 2
  %125 = load i64, i64* %124, align 8
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %187

127:                                              ; preds = %122
  store i32 0, i32* %8, align 4
  br label %128

128:                                              ; preds = %183, %127
  %129 = load i32, i32* %8, align 4
  %130 = load %struct.rev_info*, %struct.rev_info** %4, align 8
  %131 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %130, i32 0, i32 1
  %132 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = icmp slt i32 %129, %133
  br i1 %134, label %135, label %186

135:                                              ; preds = %128
  %136 = load %struct.rev_info*, %struct.rev_info** %4, align 8
  %137 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %136, i32 0, i32 1
  %138 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %137, i32 0, i32 1
  %139 = load %struct.TYPE_7__*, %struct.TYPE_7__** %138, align 8
  %140 = load i32, i32* %8, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %139, i64 %141
  %143 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %142, i32 0, i32 0
  %144 = load %struct.object*, %struct.object** %143, align 8
  store %struct.object* %144, %struct.object** %13, align 8
  %145 = load %struct.object*, %struct.object** %13, align 8
  %146 = bitcast %struct.object* %145 to %struct.commit*
  store %struct.commit* %146, %struct.commit** %14, align 8
  %147 = load %struct.object*, %struct.object** %13, align 8
  %148 = getelementptr inbounds %struct.object, %struct.object* %147, i32 0, i32 0
  %149 = load i64, i64* %148, align 8
  %150 = load i64, i64* @OBJ_COMMIT, align 8
  %151 = icmp ne i64 %149, %150
  br i1 %151, label %159, label %152

152:                                              ; preds = %135
  %153 = load %struct.object*, %struct.object** %13, align 8
  %154 = getelementptr inbounds %struct.object, %struct.object* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 8
  %156 = load i32, i32* @UNINTERESTING, align 4
  %157 = and i32 %155, %156
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %160, label %159

159:                                              ; preds = %152, %135
  br label %183

160:                                              ; preds = %152
  %161 = load %struct.rev_info*, %struct.rev_info** %4, align 8
  %162 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 8
  %164 = load %struct.commit*, %struct.commit** %14, align 8
  %165 = call %struct.tree* @get_commit_tree(%struct.commit* %164)
  %166 = call i32 @mark_tree_uninteresting(i32 %163, %struct.tree* %165)
  %167 = load %struct.object*, %struct.object** %13, align 8
  %168 = getelementptr inbounds %struct.object, %struct.object* %167, i32 0, i32 1
  %169 = load i32, i32* %168, align 8
  %170 = load i32, i32* @SHOWN, align 4
  %171 = and i32 %169, %170
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %182, label %173

173:                                              ; preds = %160
  %174 = load i32, i32* @SHOWN, align 4
  %175 = load %struct.object*, %struct.object** %13, align 8
  %176 = getelementptr inbounds %struct.object, %struct.object* %175, i32 0, i32 1
  %177 = load i32, i32* %176, align 8
  %178 = or i32 %177, %174
  store i32 %178, i32* %176, align 8
  %179 = load i32 (%struct.commit*)*, i32 (%struct.commit*)** %5, align 8
  %180 = load %struct.commit*, %struct.commit** %14, align 8
  %181 = call i32 %179(%struct.commit* %180)
  br label %182

182:                                              ; preds = %173, %160
  br label %183

183:                                              ; preds = %182, %159
  %184 = load i32, i32* %8, align 4
  %185 = add nsw i32 %184, 1
  store i32 %185, i32* %8, align 4
  br label %128

186:                                              ; preds = %128
  br label %187

187:                                              ; preds = %186, %122
  ret void
}

declare dso_local i32 @oidset_init(%struct.oidset*, i32) #1

declare dso_local %struct.tree* @get_commit_tree(%struct.commit*) #1

declare dso_local i32 @oidset_insert(%struct.oidset*, i32*) #1

declare dso_local i32 @add_edge_parents(%struct.commit*, %struct.rev_info*, i32 (%struct.commit*)*, %struct.oidset*) #1

declare dso_local i32 @mark_trees_uninteresting_sparse(i32, %struct.oidset*) #1

declare dso_local i32 @oidset_clear(%struct.oidset*) #1

declare dso_local i32 @mark_tree_uninteresting(i32, %struct.tree*) #1

declare dso_local i32 @mark_edge_parents_uninteresting(%struct.commit*, %struct.rev_info*, i32 (%struct.commit*)*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
