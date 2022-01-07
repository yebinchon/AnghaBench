; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_iterator.c_tree_iterator_advance.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_iterator.c_tree_iterator_advance.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_31__ = type { i32, %struct.TYPE_26__, %struct.TYPE_27__ }
%struct.TYPE_26__ = type { i32 }
%struct.TYPE_27__ = type { i32 }
%struct.TYPE_30__ = type { i32 }
%struct.TYPE_28__ = type { i64, %struct.TYPE_29__ }
%struct.TYPE_29__ = type { i64, %struct.TYPE_30__** }

@GIT_ITERATOR_FIRST_ACCESS = common dso_local global i32 0, align 4
@GIT_ITEROVER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32**, i32*)* @tree_iterator_advance to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tree_iterator_advance(i32** %0, i32* %1) #0 {
  %3 = alloca i32**, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_31__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_30__*, align 8
  %8 = alloca %struct.TYPE_30__*, align 8
  %9 = alloca %struct.TYPE_28__*, align 8
  %10 = alloca i32, align 4
  store i32** %0, i32*** %3, align 8
  store i32* %1, i32** %4, align 8
  %11 = load i32*, i32** %4, align 8
  %12 = bitcast i32* %11 to %struct.TYPE_31__*
  store %struct.TYPE_31__* %12, %struct.TYPE_31__** %5, align 8
  store i32 0, i32* %6, align 4
  %13 = load i32, i32* @GIT_ITERATOR_FIRST_ACCESS, align 4
  %14 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %14, i32 0, i32 2
  %16 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = or i32 %17, %13
  store i32 %18, i32* %16, align 4
  br label %19

19:                                               ; preds = %2, %34, %79, %96, %117, %140
  %20 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %21 = call %struct.TYPE_28__* @tree_iterator_current_frame(%struct.TYPE_31__* %20)
  store %struct.TYPE_28__* %21, %struct.TYPE_28__** %9, align 8
  %22 = icmp eq %struct.TYPE_28__* %21, null
  br i1 %22, label %23, label %25

23:                                               ; preds = %19
  %24 = load i32, i32* @GIT_ITEROVER, align 4
  store i32 %24, i32* %6, align 4
  br label %157

25:                                               ; preds = %19
  %26 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %27 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %30 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp eq i64 %28, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %25
  %35 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %36 = call i32 @tree_iterator_frame_pop(%struct.TYPE_31__* %35)
  br label %19

37:                                               ; preds = %25
  %38 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %39 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %42, label %51

42:                                               ; preds = %37
  %43 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %44 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %43, i32 0, i32 1
  %45 = call i32 @git_vector_is_sorted(%struct.TYPE_29__* %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %51, label %47

47:                                               ; preds = %42
  %48 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %49 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %48, i32 0, i32 1
  %50 = call i32 @git_vector_sort(%struct.TYPE_29__* %49)
  br label %51

51:                                               ; preds = %47, %42, %37
  %52 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %53 = call %struct.TYPE_30__* @tree_iterator_current_entry(%struct.TYPE_28__* %52)
  store %struct.TYPE_30__* %53, %struct.TYPE_30__** %7, align 8
  %54 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %55 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %55, i32 0, i32 1
  %57 = load %struct.TYPE_30__**, %struct.TYPE_30__*** %56, align 8
  %58 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %59 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_30__*, %struct.TYPE_30__** %57, i64 %60
  %62 = load %struct.TYPE_30__*, %struct.TYPE_30__** %61, align 8
  store %struct.TYPE_30__* %62, %struct.TYPE_30__** %8, align 8
  %63 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %64 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = add i64 %65, 1
  store i64 %66, i64* %64, align 8
  %67 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %67, i32 0, i32 2
  %69 = call i64 @iterator__ignore_case(%struct.TYPE_27__* %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %80

71:                                               ; preds = %51
  %72 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %73 = icmp ne %struct.TYPE_30__* %72, null
  br i1 %73, label %74, label %80

74:                                               ; preds = %71
  %75 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %76 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %77 = call i64 @tree_iterator_entry_cmp_icase(%struct.TYPE_30__* %75, %struct.TYPE_30__* %76)
  %78 = icmp eq i64 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %74
  br label %19

80:                                               ; preds = %74, %71, %51
  %81 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %82 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %81, i32 0, i32 1
  %83 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %84 = call i32 @tree_iterator_compute_path(%struct.TYPE_26__* %82, %struct.TYPE_30__* %83)
  store i32 %84, i32* %6, align 4
  %85 = icmp slt i32 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %80
  br label %157

87:                                               ; preds = %80
  %88 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %89 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %88, i32 0, i32 2
  %90 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %91 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @iterator_has_started(%struct.TYPE_27__* %89, i32 %93, i32 0)
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %97, label %96

96:                                               ; preds = %87
  br label %19

97:                                               ; preds = %87
  %98 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %99 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %98, i32 0, i32 2
  %100 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %101 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %100, i32 0, i32 1
  %102 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = call i64 @iterator_has_ended(%struct.TYPE_27__* %99, i32 %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %108

106:                                              ; preds = %97
  %107 = load i32, i32* @GIT_ITEROVER, align 4
  store i32 %107, i32* %6, align 4
  br label %157

108:                                              ; preds = %97
  %109 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %110 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %109, i32 0, i32 2
  %111 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %112 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %111, i32 0, i32 1
  %113 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @iterator_pathlist_next_is(%struct.TYPE_27__* %110, i32 %114)
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %118, label %117

117:                                              ; preds = %108
  br label %19

118:                                              ; preds = %108
  %119 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %120 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = call i32 @git_tree_entry__is_tree(i32 %121)
  store i32 %122, i32* %10, align 4
  %123 = load i32, i32* %10, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %141

125:                                              ; preds = %118
  %126 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %127 = call i32 @iterator__include_trees(%struct.TYPE_31__* %126)
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %141, label %129

129:                                              ; preds = %125
  %130 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %131 = call i64 @iterator__do_autoexpand(%struct.TYPE_31__* %130)
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %140

133:                                              ; preds = %129
  %134 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %135 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %136 = call i32 @tree_iterator_frame_push(%struct.TYPE_31__* %134, %struct.TYPE_30__* %135)
  store i32 %136, i32* %6, align 4
  %137 = icmp slt i32 %136, 0
  br i1 %137, label %138, label %139

138:                                              ; preds = %133
  br label %157

139:                                              ; preds = %133
  br label %140

140:                                              ; preds = %139, %129
  br label %19

141:                                              ; preds = %125, %118
  %142 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %143 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %144 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %145 = call i32 @tree_iterator_set_current(%struct.TYPE_31__* %142, %struct.TYPE_28__* %143, %struct.TYPE_30__* %144)
  %146 = load i32, i32* %10, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %156

148:                                              ; preds = %141
  %149 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %150 = call i64 @iterator__do_autoexpand(%struct.TYPE_31__* %149)
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %156

152:                                              ; preds = %148
  %153 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %154 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %155 = call i32 @tree_iterator_frame_push(%struct.TYPE_31__* %153, %struct.TYPE_30__* %154)
  store i32 %155, i32* %6, align 4
  br label %156

156:                                              ; preds = %152, %148, %141
  br label %157

157:                                              ; preds = %156, %138, %106, %86, %23
  %158 = load i32**, i32*** %3, align 8
  %159 = icmp ne i32** %158, null
  br i1 %159, label %160, label %170

160:                                              ; preds = %157
  %161 = load i32, i32* %6, align 4
  %162 = icmp eq i32 %161, 0
  br i1 %162, label %163, label %166

163:                                              ; preds = %160
  %164 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %165 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %164, i32 0, i32 0
  br label %167

166:                                              ; preds = %160
  br label %167

167:                                              ; preds = %166, %163
  %168 = phi i32* [ %165, %163 ], [ null, %166 ]
  %169 = load i32**, i32*** %3, align 8
  store i32* %168, i32** %169, align 8
  br label %170

170:                                              ; preds = %167, %157
  %171 = load i32, i32* %6, align 4
  ret i32 %171
}

declare dso_local %struct.TYPE_28__* @tree_iterator_current_frame(%struct.TYPE_31__*) #1

declare dso_local i32 @tree_iterator_frame_pop(%struct.TYPE_31__*) #1

declare dso_local i32 @git_vector_is_sorted(%struct.TYPE_29__*) #1

declare dso_local i32 @git_vector_sort(%struct.TYPE_29__*) #1

declare dso_local %struct.TYPE_30__* @tree_iterator_current_entry(%struct.TYPE_28__*) #1

declare dso_local i64 @iterator__ignore_case(%struct.TYPE_27__*) #1

declare dso_local i64 @tree_iterator_entry_cmp_icase(%struct.TYPE_30__*, %struct.TYPE_30__*) #1

declare dso_local i32 @tree_iterator_compute_path(%struct.TYPE_26__*, %struct.TYPE_30__*) #1

declare dso_local i32 @iterator_has_started(%struct.TYPE_27__*, i32, i32) #1

declare dso_local i64 @iterator_has_ended(%struct.TYPE_27__*, i32) #1

declare dso_local i32 @iterator_pathlist_next_is(%struct.TYPE_27__*, i32) #1

declare dso_local i32 @git_tree_entry__is_tree(i32) #1

declare dso_local i32 @iterator__include_trees(%struct.TYPE_31__*) #1

declare dso_local i64 @iterator__do_autoexpand(%struct.TYPE_31__*) #1

declare dso_local i32 @tree_iterator_frame_push(%struct.TYPE_31__*, %struct.TYPE_30__*) #1

declare dso_local i32 @tree_iterator_set_current(%struct.TYPE_31__*, %struct.TYPE_28__*, %struct.TYPE_30__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
