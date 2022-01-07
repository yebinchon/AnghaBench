; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_revwalk.c_prepare_walk.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_revwalk.c_prepare_walk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i32, i32 (%struct.TYPE_21__**, %struct.TYPE_20__*)*, i32 (%struct.TYPE_20__*, %struct.TYPE_21__*)*, i32, %struct.TYPE_22__*, %struct.TYPE_22__*, i32, i64, %struct.TYPE_22__*, i32 }
%struct.TYPE_21__ = type { i32, i64 }
%struct.TYPE_22__ = type { %struct.TYPE_21__*, %struct.TYPE_22__* }

@GIT_ITEROVER = common dso_local global i32 0, align 4
@GIT_SORT_TOPOLOGICAL = common dso_local global i32 0, align 4
@revwalk_next_toposort = common dso_local global i32 0, align 4
@GIT_SORT_TIME = common dso_local global i32 0, align 4
@revwalk_next_unsorted = common dso_local global i32 0, align 4
@GIT_SORT_REVERSE = common dso_local global i32 0, align 4
@revwalk_next_reverse = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_20__*)* @prepare_walk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @prepare_walk(%struct.TYPE_20__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_20__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_22__*, align 8
  %6 = alloca %struct.TYPE_22__*, align 8
  %7 = alloca %struct.TYPE_21__*, align 8
  %8 = alloca %struct.TYPE_21__*, align 8
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %3, align 8
  store i32 0, i32* %4, align 4
  store %struct.TYPE_22__* null, %struct.TYPE_22__** %6, align 8
  %9 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %9, i32 0, i32 9
  %11 = load i32, i32* %10, align 8
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = call i32 (...) @git_error_clear()
  %15 = load i32, i32* @GIT_ITEROVER, align 4
  store i32 %15, i32* %2, align 4
  br label %172

16:                                               ; preds = %1
  %17 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %17, i32 0, i32 8
  %19 = load %struct.TYPE_22__*, %struct.TYPE_22__** %18, align 8
  store %struct.TYPE_22__* %19, %struct.TYPE_22__** %5, align 8
  br label %20

20:                                               ; preds = %52, %16
  %21 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %22 = icmp ne %struct.TYPE_22__* %21, null
  br i1 %22, label %23, label %56

23:                                               ; preds = %20
  %24 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_21__*, %struct.TYPE_21__** %25, align 8
  store %struct.TYPE_21__* %26, %struct.TYPE_21__** %8, align 8
  %27 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %28 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %29 = call i32 @git_commit_list_parse(%struct.TYPE_20__* %27, %struct.TYPE_21__* %28)
  store i32 %29, i32* %4, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %23
  %32 = load i32, i32* %4, align 4
  store i32 %32, i32* %2, align 4
  br label %172

33:                                               ; preds = %23
  %34 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %35 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %33
  %39 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %40 = call i32 @mark_parents_uninteresting(%struct.TYPE_21__* %39)
  br label %41

41:                                               ; preds = %38, %33
  %42 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %43 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %51, label %46

46:                                               ; preds = %41
  %47 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %48 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %47, i32 0, i32 0
  store i32 1, i32* %48, align 8
  %49 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %50 = call i32* @git_commit_list_insert(%struct.TYPE_21__* %49, %struct.TYPE_22__** %6)
  br label %51

51:                                               ; preds = %46, %41
  br label %52

52:                                               ; preds = %51
  %53 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %53, i32 0, i32 1
  %55 = load %struct.TYPE_22__*, %struct.TYPE_22__** %54, align 8
  store %struct.TYPE_22__* %55, %struct.TYPE_22__** %5, align 8
  br label %20

56:                                               ; preds = %20
  %57 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %57, i32 0, i32 7
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %68

61:                                               ; preds = %56
  %62 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %63 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %64 = call i32 @limit_list(%struct.TYPE_22__** %6, %struct.TYPE_20__* %62, %struct.TYPE_22__* %63)
  store i32 %64, i32* %4, align 4
  %65 = icmp slt i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %61
  %67 = load i32, i32* %4, align 4
  store i32 %67, i32* %2, align 4
  br label %172

68:                                               ; preds = %61, %56
  %69 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %70 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* @GIT_SORT_TOPOLOGICAL, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %89

75:                                               ; preds = %68
  %76 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %77 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %76, i32 0, i32 6
  %78 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %79 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %80 = call i32 @sort_in_topological_order(i32* %77, %struct.TYPE_20__* %78, %struct.TYPE_22__* %79)
  store i32 %80, i32* %4, align 4
  %81 = call i32 @git_commit_list_free(%struct.TYPE_22__** %6)
  %82 = load i32, i32* %4, align 4
  %83 = icmp slt i32 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %75
  %85 = load i32, i32* %4, align 4
  store i32 %85, i32* %2, align 4
  br label %172

86:                                               ; preds = %75
  %87 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %88 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %87, i32 0, i32 1
  store i32 (%struct.TYPE_21__**, %struct.TYPE_20__*)* bitcast (i32* @revwalk_next_toposort to i32 (%struct.TYPE_21__**, %struct.TYPE_20__*)*), i32 (%struct.TYPE_21__**, %struct.TYPE_20__*)** %88, align 8
  br label %137

89:                                               ; preds = %68
  %90 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %91 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = load i32, i32* @GIT_SORT_TIME, align 4
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %127

96:                                               ; preds = %89
  %97 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  store %struct.TYPE_22__* %97, %struct.TYPE_22__** %5, align 8
  br label %98

98:                                               ; preds = %116, %96
  %99 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %100 = icmp ne %struct.TYPE_22__* %99, null
  br i1 %100, label %101, label %105

101:                                              ; preds = %98
  %102 = load i32, i32* %4, align 4
  %103 = icmp ne i32 %102, 0
  %104 = xor i1 %103, true
  br label %105

105:                                              ; preds = %101, %98
  %106 = phi i1 [ false, %98 ], [ %104, %101 ]
  br i1 %106, label %107, label %120

107:                                              ; preds = %105
  %108 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %109 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %108, i32 0, i32 2
  %110 = load i32 (%struct.TYPE_20__*, %struct.TYPE_21__*)*, i32 (%struct.TYPE_20__*, %struct.TYPE_21__*)** %109, align 8
  %111 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %112 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %113 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %112, i32 0, i32 0
  %114 = load %struct.TYPE_21__*, %struct.TYPE_21__** %113, align 8
  %115 = call i32 %110(%struct.TYPE_20__* %111, %struct.TYPE_21__* %114)
  store i32 %115, i32* %4, align 4
  br label %116

116:                                              ; preds = %107
  %117 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %118 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %117, i32 0, i32 1
  %119 = load %struct.TYPE_22__*, %struct.TYPE_22__** %118, align 8
  store %struct.TYPE_22__* %119, %struct.TYPE_22__** %5, align 8
  br label %98

120:                                              ; preds = %105
  %121 = call i32 @git_commit_list_free(%struct.TYPE_22__** %6)
  %122 = load i32, i32* %4, align 4
  %123 = icmp slt i32 %122, 0
  br i1 %123, label %124, label %126

124:                                              ; preds = %120
  %125 = load i32, i32* %4, align 4
  store i32 %125, i32* %2, align 4
  br label %172

126:                                              ; preds = %120
  br label %136

127:                                              ; preds = %89
  %128 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %129 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %130 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %129, i32 0, i32 5
  store %struct.TYPE_22__* %128, %struct.TYPE_22__** %130, align 8
  %131 = load i32, i32* @revwalk_next_unsorted, align 4
  %132 = sext i32 %131 to i64
  %133 = inttoptr i64 %132 to i32 (%struct.TYPE_21__**, %struct.TYPE_20__*)*
  %134 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %135 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %134, i32 0, i32 1
  store i32 (%struct.TYPE_21__**, %struct.TYPE_20__*)* %133, i32 (%struct.TYPE_21__**, %struct.TYPE_20__*)** %135, align 8
  br label %136

136:                                              ; preds = %127, %126
  br label %137

137:                                              ; preds = %136, %86
  %138 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %139 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = load i32, i32* @GIT_SORT_REVERSE, align 4
  %142 = and i32 %140, %141
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %169

144:                                              ; preds = %137
  br label %145

145:                                              ; preds = %159, %144
  %146 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %147 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %146, i32 0, i32 1
  %148 = load i32 (%struct.TYPE_21__**, %struct.TYPE_20__*)*, i32 (%struct.TYPE_21__**, %struct.TYPE_20__*)** %147, align 8
  %149 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %150 = call i32 %148(%struct.TYPE_21__** %7, %struct.TYPE_20__* %149)
  store i32 %150, i32* %4, align 4
  %151 = icmp eq i32 %150, 0
  br i1 %151, label %152, label %160

152:                                              ; preds = %145
  %153 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %154 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %155 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %154, i32 0, i32 4
  %156 = call i32* @git_commit_list_insert(%struct.TYPE_21__* %153, %struct.TYPE_22__** %155)
  %157 = icmp eq i32* %156, null
  br i1 %157, label %158, label %159

158:                                              ; preds = %152
  store i32 -1, i32* %2, align 4
  br label %172

159:                                              ; preds = %152
  br label %145

160:                                              ; preds = %145
  %161 = load i32, i32* %4, align 4
  %162 = load i32, i32* @GIT_ITEROVER, align 4
  %163 = icmp ne i32 %161, %162
  br i1 %163, label %164, label %166

164:                                              ; preds = %160
  %165 = load i32, i32* %4, align 4
  store i32 %165, i32* %2, align 4
  br label %172

166:                                              ; preds = %160
  %167 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %168 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %167, i32 0, i32 1
  store i32 (%struct.TYPE_21__**, %struct.TYPE_20__*)* bitcast (i32* @revwalk_next_reverse to i32 (%struct.TYPE_21__**, %struct.TYPE_20__*)*), i32 (%struct.TYPE_21__**, %struct.TYPE_20__*)** %168, align 8
  br label %169

169:                                              ; preds = %166, %137
  %170 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %171 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %170, i32 0, i32 3
  store i32 1, i32* %171, align 8
  store i32 0, i32* %2, align 4
  br label %172

172:                                              ; preds = %169, %164, %158, %124, %84, %66, %31, %13
  %173 = load i32, i32* %2, align 4
  ret i32 %173
}

declare dso_local i32 @git_error_clear(...) #1

declare dso_local i32 @git_commit_list_parse(%struct.TYPE_20__*, %struct.TYPE_21__*) #1

declare dso_local i32 @mark_parents_uninteresting(%struct.TYPE_21__*) #1

declare dso_local i32* @git_commit_list_insert(%struct.TYPE_21__*, %struct.TYPE_22__**) #1

declare dso_local i32 @limit_list(%struct.TYPE_22__**, %struct.TYPE_20__*, %struct.TYPE_22__*) #1

declare dso_local i32 @sort_in_topological_order(i32*, %struct.TYPE_20__*, %struct.TYPE_22__*) #1

declare dso_local i32 @git_commit_list_free(%struct.TYPE_22__**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
