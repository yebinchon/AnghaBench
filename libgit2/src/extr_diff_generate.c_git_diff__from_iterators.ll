; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_diff_generate.c_git_diff__from_iterators.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_diff_generate.c_git_diff__from_iterators.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_35__ = type { i32 (%struct.TYPE_37__*, %struct.TYPE_37__*)*, %struct.TYPE_31__ }
%struct.TYPE_37__ = type { i32* }
%struct.TYPE_31__ = type { i32 }
%struct.TYPE_32__ = type { i64 }
%struct.TYPE_33__ = type { i32 (%struct.TYPE_35__*, i32*, i32*, i32)*, i32 }
%struct.TYPE_34__ = type { %struct.TYPE_35__ }
%struct.TYPE_36__ = type { %struct.TYPE_37__*, %struct.TYPE_37__*, %struct.TYPE_32__*, %struct.TYPE_32__*, i32* }

@GIT_DIFF_IGNORE_CASE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @git_diff__from_iterators(%struct.TYPE_35__** %0, i32* %1, %struct.TYPE_32__* %2, %struct.TYPE_32__* %3, %struct.TYPE_33__* %4) #0 {
  %6 = alloca %struct.TYPE_35__**, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_32__*, align 8
  %9 = alloca %struct.TYPE_32__*, align 8
  %10 = alloca %struct.TYPE_33__*, align 8
  %11 = alloca %struct.TYPE_34__*, align 8
  %12 = alloca %struct.TYPE_36__, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.TYPE_35__** %0, %struct.TYPE_35__*** %6, align 8
  store i32* %1, i32** %7, align 8
  store %struct.TYPE_32__* %2, %struct.TYPE_32__** %8, align 8
  store %struct.TYPE_32__* %3, %struct.TYPE_32__** %9, align 8
  store %struct.TYPE_33__* %4, %struct.TYPE_33__** %10, align 8
  store i32 0, i32* %13, align 4
  %15 = load %struct.TYPE_35__**, %struct.TYPE_35__*** %6, align 8
  store %struct.TYPE_35__* null, %struct.TYPE_35__** %15, align 8
  %16 = load i32*, i32** %7, align 8
  %17 = load %struct.TYPE_32__*, %struct.TYPE_32__** %8, align 8
  %18 = load %struct.TYPE_32__*, %struct.TYPE_32__** %9, align 8
  %19 = call %struct.TYPE_34__* @diff_generated_alloc(i32* %16, %struct.TYPE_32__* %17, %struct.TYPE_32__* %18)
  store %struct.TYPE_34__* %19, %struct.TYPE_34__** %11, align 8
  %20 = load %struct.TYPE_34__*, %struct.TYPE_34__** %11, align 8
  %21 = call i32 @GIT_ERROR_CHECK_ALLOC(%struct.TYPE_34__* %20)
  %22 = load i32*, i32** %7, align 8
  %23 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %12, i32 0, i32 4
  store i32* %22, i32** %23, align 8
  %24 = load %struct.TYPE_32__*, %struct.TYPE_32__** %8, align 8
  %25 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %12, i32 0, i32 3
  store %struct.TYPE_32__* %24, %struct.TYPE_32__** %25, align 8
  %26 = load %struct.TYPE_32__*, %struct.TYPE_32__** %9, align 8
  %27 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %12, i32 0, i32 2
  store %struct.TYPE_32__* %26, %struct.TYPE_32__** %27, align 8
  %28 = load %struct.TYPE_34__*, %struct.TYPE_34__** %11, align 8
  %29 = load i32, i32* @GIT_DIFF_IGNORE_CASE, align 4
  %30 = call i64 @DIFF_FLAG_IS_SET(%struct.TYPE_34__* %28, i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %5
  %33 = load %struct.TYPE_32__*, %struct.TYPE_32__** %8, align 8
  %34 = call i32 @git_iterator_set_ignore_case(%struct.TYPE_32__* %33, i32 1)
  %35 = load %struct.TYPE_32__*, %struct.TYPE_32__** %9, align 8
  %36 = call i32 @git_iterator_set_ignore_case(%struct.TYPE_32__* %35, i32 1)
  br label %37

37:                                               ; preds = %32, %5
  %38 = load %struct.TYPE_34__*, %struct.TYPE_34__** %11, align 8
  %39 = load %struct.TYPE_33__*, %struct.TYPE_33__** %10, align 8
  %40 = call i32 @diff_generated_apply_options(%struct.TYPE_34__* %38, %struct.TYPE_33__* %39)
  store i32 %40, i32* %13, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %37
  br label %169

43:                                               ; preds = %37
  %44 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %12, i32 0, i32 1
  %45 = load %struct.TYPE_32__*, %struct.TYPE_32__** %8, align 8
  %46 = call i32 @iterator_current(%struct.TYPE_37__** %44, %struct.TYPE_32__* %45)
  store i32 %46, i32* %13, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %53, label %48

48:                                               ; preds = %43
  %49 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %12, i32 0, i32 0
  %50 = load %struct.TYPE_32__*, %struct.TYPE_32__** %9, align 8
  %51 = call i32 @iterator_current(%struct.TYPE_37__** %49, %struct.TYPE_32__* %50)
  store i32 %51, i32* %13, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %48, %43
  br label %169

54:                                               ; preds = %48
  br label %55

55:                                               ; preds = %152, %54
  %56 = load i32, i32* %13, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %68, label %58

58:                                               ; preds = %55
  %59 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %12, i32 0, i32 1
  %60 = load %struct.TYPE_37__*, %struct.TYPE_37__** %59, align 8
  %61 = icmp ne %struct.TYPE_37__* %60, null
  br i1 %61, label %66, label %62

62:                                               ; preds = %58
  %63 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %12, i32 0, i32 0
  %64 = load %struct.TYPE_37__*, %struct.TYPE_37__** %63, align 8
  %65 = icmp ne %struct.TYPE_37__* %64, null
  br label %66

66:                                               ; preds = %62, %58
  %67 = phi i1 [ true, %58 ], [ %65, %62 ]
  br label %68

68:                                               ; preds = %66, %55
  %69 = phi i1 [ false, %55 ], [ %67, %66 ]
  br i1 %69, label %70, label %153

70:                                               ; preds = %68
  %71 = load %struct.TYPE_33__*, %struct.TYPE_33__** %10, align 8
  %72 = icmp ne %struct.TYPE_33__* %71, null
  br i1 %72, label %73, label %113

73:                                               ; preds = %70
  %74 = load %struct.TYPE_33__*, %struct.TYPE_33__** %10, align 8
  %75 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %74, i32 0, i32 0
  %76 = load i32 (%struct.TYPE_35__*, i32*, i32*, i32)*, i32 (%struct.TYPE_35__*, i32*, i32*, i32)** %75, align 8
  %77 = icmp ne i32 (%struct.TYPE_35__*, i32*, i32*, i32)* %76, null
  br i1 %77, label %78, label %113

78:                                               ; preds = %73
  %79 = load %struct.TYPE_33__*, %struct.TYPE_33__** %10, align 8
  %80 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %79, i32 0, i32 0
  %81 = load i32 (%struct.TYPE_35__*, i32*, i32*, i32)*, i32 (%struct.TYPE_35__*, i32*, i32*, i32)** %80, align 8
  %82 = load %struct.TYPE_34__*, %struct.TYPE_34__** %11, align 8
  %83 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %12, i32 0, i32 1
  %85 = load %struct.TYPE_37__*, %struct.TYPE_37__** %84, align 8
  %86 = icmp ne %struct.TYPE_37__* %85, null
  br i1 %86, label %87, label %92

87:                                               ; preds = %78
  %88 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %12, i32 0, i32 1
  %89 = load %struct.TYPE_37__*, %struct.TYPE_37__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %89, i32 0, i32 0
  %91 = load i32*, i32** %90, align 8
  br label %93

92:                                               ; preds = %78
  br label %93

93:                                               ; preds = %92, %87
  %94 = phi i32* [ %91, %87 ], [ null, %92 ]
  %95 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %12, i32 0, i32 0
  %96 = load %struct.TYPE_37__*, %struct.TYPE_37__** %95, align 8
  %97 = icmp ne %struct.TYPE_37__* %96, null
  br i1 %97, label %98, label %103

98:                                               ; preds = %93
  %99 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %12, i32 0, i32 0
  %100 = load %struct.TYPE_37__*, %struct.TYPE_37__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %100, i32 0, i32 0
  %102 = load i32*, i32** %101, align 8
  br label %104

103:                                              ; preds = %93
  br label %104

104:                                              ; preds = %103, %98
  %105 = phi i32* [ %102, %98 ], [ null, %103 ]
  %106 = load %struct.TYPE_33__*, %struct.TYPE_33__** %10, align 8
  %107 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 8
  %109 = call i32 %81(%struct.TYPE_35__* %83, i32* %94, i32* %105, i32 %108)
  store i32 %109, i32* %13, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %112

111:                                              ; preds = %104
  br label %153

112:                                              ; preds = %104
  br label %113

113:                                              ; preds = %112, %73, %70
  %114 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %12, i32 0, i32 1
  %115 = load %struct.TYPE_37__*, %struct.TYPE_37__** %114, align 8
  %116 = icmp ne %struct.TYPE_37__* %115, null
  br i1 %116, label %117, label %134

117:                                              ; preds = %113
  %118 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %12, i32 0, i32 0
  %119 = load %struct.TYPE_37__*, %struct.TYPE_37__** %118, align 8
  %120 = icmp ne %struct.TYPE_37__* %119, null
  br i1 %120, label %121, label %131

121:                                              ; preds = %117
  %122 = load %struct.TYPE_34__*, %struct.TYPE_34__** %11, align 8
  %123 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %123, i32 0, i32 0
  %125 = load i32 (%struct.TYPE_37__*, %struct.TYPE_37__*)*, i32 (%struct.TYPE_37__*, %struct.TYPE_37__*)** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %12, i32 0, i32 1
  %127 = load %struct.TYPE_37__*, %struct.TYPE_37__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %12, i32 0, i32 0
  %129 = load %struct.TYPE_37__*, %struct.TYPE_37__** %128, align 8
  %130 = call i32 %125(%struct.TYPE_37__* %127, %struct.TYPE_37__* %129)
  br label %132

131:                                              ; preds = %117
  br label %132

132:                                              ; preds = %131, %121
  %133 = phi i32 [ %130, %121 ], [ -1, %131 ]
  br label %135

134:                                              ; preds = %113
  br label %135

135:                                              ; preds = %134, %132
  %136 = phi i32 [ %133, %132 ], [ 1, %134 ]
  store i32 %136, i32* %14, align 4
  %137 = load i32, i32* %14, align 4
  %138 = icmp slt i32 %137, 0
  br i1 %138, label %139, label %142

139:                                              ; preds = %135
  %140 = load %struct.TYPE_34__*, %struct.TYPE_34__** %11, align 8
  %141 = call i32 @handle_unmatched_old_item(%struct.TYPE_34__* %140, %struct.TYPE_36__* %12)
  store i32 %141, i32* %13, align 4
  br label %152

142:                                              ; preds = %135
  %143 = load i32, i32* %14, align 4
  %144 = icmp sgt i32 %143, 0
  br i1 %144, label %145, label %148

145:                                              ; preds = %142
  %146 = load %struct.TYPE_34__*, %struct.TYPE_34__** %11, align 8
  %147 = call i32 @handle_unmatched_new_item(%struct.TYPE_34__* %146, %struct.TYPE_36__* %12)
  store i32 %147, i32* %13, align 4
  br label %151

148:                                              ; preds = %142
  %149 = load %struct.TYPE_34__*, %struct.TYPE_34__** %11, align 8
  %150 = call i32 @handle_matched_item(%struct.TYPE_34__* %149, %struct.TYPE_36__* %12)
  store i32 %150, i32* %13, align 4
  br label %151

151:                                              ; preds = %148, %145
  br label %152

152:                                              ; preds = %151, %139
  br label %55

153:                                              ; preds = %111, %68
  %154 = load %struct.TYPE_32__*, %struct.TYPE_32__** %8, align 8
  %155 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %154, i32 0, i32 0
  %156 = load i64, i64* %155, align 8
  %157 = load %struct.TYPE_32__*, %struct.TYPE_32__** %9, align 8
  %158 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %157, i32 0, i32 0
  %159 = load i64, i64* %158, align 8
  %160 = add nsw i64 %156, %159
  %161 = load %struct.TYPE_34__*, %struct.TYPE_34__** %11, align 8
  %162 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %161, i32 0, i32 0
  %163 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %162, i32 0, i32 1
  %164 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 8
  %166 = sext i32 %165 to i64
  %167 = add nsw i64 %166, %160
  %168 = trunc i64 %167 to i32
  store i32 %168, i32* %164, align 8
  br label %169

169:                                              ; preds = %153, %53, %42
  %170 = load i32, i32* %13, align 4
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %176, label %172

172:                                              ; preds = %169
  %173 = load %struct.TYPE_34__*, %struct.TYPE_34__** %11, align 8
  %174 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %173, i32 0, i32 0
  %175 = load %struct.TYPE_35__**, %struct.TYPE_35__*** %6, align 8
  store %struct.TYPE_35__* %174, %struct.TYPE_35__** %175, align 8
  br label %180

176:                                              ; preds = %169
  %177 = load %struct.TYPE_34__*, %struct.TYPE_34__** %11, align 8
  %178 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %177, i32 0, i32 0
  %179 = call i32 @git_diff_free(%struct.TYPE_35__* %178)
  br label %180

180:                                              ; preds = %176, %172
  %181 = load i32, i32* %13, align 4
  ret i32 %181
}

declare dso_local %struct.TYPE_34__* @diff_generated_alloc(i32*, %struct.TYPE_32__*, %struct.TYPE_32__*) #1

declare dso_local i32 @GIT_ERROR_CHECK_ALLOC(%struct.TYPE_34__*) #1

declare dso_local i64 @DIFF_FLAG_IS_SET(%struct.TYPE_34__*, i32) #1

declare dso_local i32 @git_iterator_set_ignore_case(%struct.TYPE_32__*, i32) #1

declare dso_local i32 @diff_generated_apply_options(%struct.TYPE_34__*, %struct.TYPE_33__*) #1

declare dso_local i32 @iterator_current(%struct.TYPE_37__**, %struct.TYPE_32__*) #1

declare dso_local i32 @handle_unmatched_old_item(%struct.TYPE_34__*, %struct.TYPE_36__*) #1

declare dso_local i32 @handle_unmatched_new_item(%struct.TYPE_34__*, %struct.TYPE_36__*) #1

declare dso_local i32 @handle_matched_item(%struct.TYPE_34__*, %struct.TYPE_36__*) #1

declare dso_local i32 @git_diff_free(%struct.TYPE_35__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
