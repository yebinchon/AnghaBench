; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_blame.c_buffer_line_cb.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_blame.c_buffer_line_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i64 }
%struct.TYPE_20__ = type { i32, i32, %struct.TYPE_19__*, i32 }
%struct.TYPE_19__ = type { i32 }

@GIT_DIFF_LINE_ADDITION = common dso_local global i64 0, align 8
@GIT_DIFF_LINE_DELETION = common dso_local global i64 0, align 8
@ptrs_equal_cmp = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_18__*, %struct.TYPE_18__*, %struct.TYPE_18__*, i8*)* @buffer_line_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @buffer_line_cb(%struct.TYPE_18__* %0, %struct.TYPE_18__* %1, %struct.TYPE_18__* %2, i8* %3) #0 {
  %5 = alloca %struct.TYPE_18__*, align 8
  %6 = alloca %struct.TYPE_18__*, align 8
  %7 = alloca %struct.TYPE_18__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_20__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %5, align 8
  store %struct.TYPE_18__* %1, %struct.TYPE_18__** %6, align 8
  store %struct.TYPE_18__* %2, %struct.TYPE_18__** %7, align 8
  store i8* %3, i8** %8, align 8
  %12 = load i8*, i8** %8, align 8
  %13 = bitcast i8* %12 to %struct.TYPE_20__*
  store %struct.TYPE_20__* %13, %struct.TYPE_20__** %9, align 8
  %14 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %15 = call i32 @GIT_UNUSED(%struct.TYPE_18__* %14)
  %16 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %17 = call i32 @GIT_UNUSED(%struct.TYPE_18__* %16)
  %18 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %19 = call i32 @GIT_UNUSED(%struct.TYPE_18__* %18)
  %20 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %21 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @GIT_DIFF_LINE_ADDITION, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %88

25:                                               ; preds = %4
  %26 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %27 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %26, i32 0, i32 2
  %28 = load %struct.TYPE_19__*, %struct.TYPE_19__** %27, align 8
  %29 = call i64 @hunk_is_bufferblame(%struct.TYPE_19__* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %55

31:                                               ; preds = %25
  %32 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %33 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %32, i32 0, i32 2
  %34 = load %struct.TYPE_19__*, %struct.TYPE_19__** %33, align 8
  %35 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %36 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = call i64 @hunk_ends_at_or_before_line(%struct.TYPE_19__* %34, i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %55

40:                                               ; preds = %31
  %41 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %42 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %41, i32 0, i32 2
  %43 = load %struct.TYPE_19__*, %struct.TYPE_19__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %44, align 4
  %47 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %48 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %47, i32 0, i32 1
  %49 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %50 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = add nsw i32 %51, 1
  %53 = sext i32 %52 to i64
  %54 = call i32 @shift_hunks_by(i32* %48, i64 %53, i32 1)
  br label %83

55:                                               ; preds = %31, %25
  %56 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %57 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %56, i32 0, i32 1
  %58 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %59 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = sext i32 %60 to i64
  %62 = call i32 @shift_hunks_by(i32* %57, i64 %61, i32 1)
  %63 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %64 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = sext i32 %65 to i64
  %67 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %68 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 8
  %70 = call %struct.TYPE_19__* @new_hunk(i64 %66, i32 1, i32 0, i32 %69)
  %71 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %72 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %71, i32 0, i32 2
  store %struct.TYPE_19__* %70, %struct.TYPE_19__** %72, align 8
  %73 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %74 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %73, i32 0, i32 2
  %75 = load %struct.TYPE_19__*, %struct.TYPE_19__** %74, align 8
  %76 = call i32 @GIT_ERROR_CHECK_ALLOC(%struct.TYPE_19__* %75)
  %77 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %78 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %77, i32 0, i32 1
  %79 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %80 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %79, i32 0, i32 2
  %81 = load %struct.TYPE_19__*, %struct.TYPE_19__** %80, align 8
  %82 = call i32 @git_vector_insert_sorted(i32* %78, %struct.TYPE_19__* %81, i32* null)
  br label %83

83:                                               ; preds = %55, %40
  %84 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %85 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %85, align 8
  br label %88

88:                                               ; preds = %83, %4
  %89 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %90 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* @GIT_DIFF_LINE_DELETION, align 8
  %93 = icmp eq i64 %91, %92
  br i1 %93, label %94, label %146

94:                                               ; preds = %88
  %95 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %96 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %99 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %98, i32 0, i32 2
  %100 = load %struct.TYPE_19__*, %struct.TYPE_19__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = add nsw i32 %97, %102
  %104 = add nsw i32 %103, 1
  %105 = sext i32 %104 to i64
  store i64 %105, i64* %10, align 8
  %106 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %107 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %106, i32 0, i32 2
  %108 = load %struct.TYPE_19__*, %struct.TYPE_19__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = add nsw i32 %110, -1
  store i32 %111, i32* %109, align 4
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %113, label %141

113:                                              ; preds = %94
  %114 = load i64, i64* %10, align 8
  %115 = add i64 %114, -1
  store i64 %115, i64* %10, align 8
  %116 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %117 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %116, i32 0, i32 1
  %118 = load i32, i32* @ptrs_equal_cmp, align 4
  %119 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %120 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %119, i32 0, i32 2
  %121 = load %struct.TYPE_19__*, %struct.TYPE_19__** %120, align 8
  %122 = call i32 @git_vector_search2(i64* %11, i32* %117, i32 %118, %struct.TYPE_19__* %121)
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %140, label %124

124:                                              ; preds = %113
  %125 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %126 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %125, i32 0, i32 1
  %127 = load i64, i64* %11, align 8
  %128 = call i32 @git_vector_remove(i32* %126, i64 %127)
  %129 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %130 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %129, i32 0, i32 2
  %131 = load %struct.TYPE_19__*, %struct.TYPE_19__** %130, align 8
  %132 = call i32 @free_hunk(%struct.TYPE_19__* %131)
  %133 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %134 = load i64, i64* %11, align 8
  %135 = trunc i64 %134 to i32
  %136 = call i64 @git_blame_get_hunk_byindex(%struct.TYPE_20__* %133, i32 %135)
  %137 = inttoptr i64 %136 to %struct.TYPE_19__*
  %138 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %139 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %138, i32 0, i32 2
  store %struct.TYPE_19__* %137, %struct.TYPE_19__** %139, align 8
  br label %140

140:                                              ; preds = %124, %113
  br label %141

141:                                              ; preds = %140, %94
  %142 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %143 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %142, i32 0, i32 1
  %144 = load i64, i64* %10, align 8
  %145 = call i32 @shift_hunks_by(i32* %143, i64 %144, i32 -1)
  br label %146

146:                                              ; preds = %141, %88
  ret i32 0
}

declare dso_local i32 @GIT_UNUSED(%struct.TYPE_18__*) #1

declare dso_local i64 @hunk_is_bufferblame(%struct.TYPE_19__*) #1

declare dso_local i64 @hunk_ends_at_or_before_line(%struct.TYPE_19__*, i32) #1

declare dso_local i32 @shift_hunks_by(i32*, i64, i32) #1

declare dso_local %struct.TYPE_19__* @new_hunk(i64, i32, i32, i32) #1

declare dso_local i32 @GIT_ERROR_CHECK_ALLOC(%struct.TYPE_19__*) #1

declare dso_local i32 @git_vector_insert_sorted(i32*, %struct.TYPE_19__*, i32*) #1

declare dso_local i32 @git_vector_search2(i64*, i32*, i32, %struct.TYPE_19__*) #1

declare dso_local i32 @git_vector_remove(i32*, i64) #1

declare dso_local i32 @free_hunk(%struct.TYPE_19__*) #1

declare dso_local i64 @git_blame_get_hunk_byindex(%struct.TYPE_20__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
