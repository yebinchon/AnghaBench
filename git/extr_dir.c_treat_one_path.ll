; ModuleID = '/home/carl/AnghaBench/git/extr_dir.c_treat_one_path.c'
source_filename = "/home/carl/AnghaBench/git/extr_dir.c_treat_one_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dir_struct = type { i32 }
%struct.untracked_cache_dir = type { i32 }
%struct.index_state = type { i32 }
%struct.strbuf = type { i32, i32 }
%struct.pathspec = type { i32 }
%struct.dirent = type { i32 }

@ignore_case = common dso_local global i32 0, align 4
@DT_UNKNOWN = common dso_local global i32 0, align 4
@path_none = common dso_local global i32 0, align 4
@DIR_COLLECT_KILLED_ONLY = common dso_local global i32 0, align 4
@index_nonexistent = common dso_local global i64 0, align 8
@DIR_SHOW_IGNORED = common dso_local global i32 0, align 4
@DIR_SHOW_IGNORED_TOO = common dso_local global i32 0, align 4
@path_excluded = common dso_local global i32 0, align 4
@DIR_SHOW_IGNORED_TOO_MODE_MATCHING = common dso_local global i32 0, align 4
@path_recurse = common dso_local global i32 0, align 4
@path_untracked = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dir_struct*, %struct.untracked_cache_dir*, %struct.index_state*, %struct.strbuf*, i32, %struct.pathspec*, i32, %struct.dirent*)* @treat_one_path to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @treat_one_path(%struct.dir_struct* %0, %struct.untracked_cache_dir* %1, %struct.index_state* %2, %struct.strbuf* %3, i32 %4, %struct.pathspec* %5, i32 %6, %struct.dirent* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.dir_struct*, align 8
  %11 = alloca %struct.untracked_cache_dir*, align 8
  %12 = alloca %struct.index_state*, align 8
  %13 = alloca %struct.strbuf*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.pathspec*, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.dirent*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.dir_struct* %0, %struct.dir_struct** %10, align 8
  store %struct.untracked_cache_dir* %1, %struct.untracked_cache_dir** %11, align 8
  store %struct.index_state* %2, %struct.index_state** %12, align 8
  store %struct.strbuf* %3, %struct.strbuf** %13, align 8
  store i32 %4, i32* %14, align 4
  store %struct.pathspec* %5, %struct.pathspec** %15, align 8
  store i32 %6, i32* %16, align 4
  store %struct.dirent* %7, %struct.dirent** %17, align 8
  %21 = load %struct.index_state*, %struct.index_state** %12, align 8
  %22 = load %struct.strbuf*, %struct.strbuf** %13, align 8
  %23 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.strbuf*, %struct.strbuf** %13, align 8
  %26 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @ignore_case, align 4
  %29 = call i32 @index_file_exists(%struct.index_state* %21, i32 %24, i32 %27, i32 %28)
  %30 = icmp ne i32 %29, 0
  %31 = xor i1 %30, true
  %32 = xor i1 %31, true
  %33 = zext i1 %32 to i32
  store i32 %33, i32* %19, align 4
  %34 = load i32, i32* %16, align 4
  %35 = load i32, i32* @DT_UNKNOWN, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %47

37:                                               ; preds = %8
  %38 = load %struct.dirent*, %struct.dirent** %17, align 8
  %39 = load %struct.index_state*, %struct.index_state** %12, align 8
  %40 = load %struct.strbuf*, %struct.strbuf** %13, align 8
  %41 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.strbuf*, %struct.strbuf** %13, align 8
  %44 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @get_dtype(%struct.dirent* %38, %struct.index_state* %39, i32 %42, i32 %45)
  store i32 %46, i32* %16, align 4
  br label %47

47:                                               ; preds = %37, %8
  %48 = load i32, i32* %16, align 4
  %49 = icmp ne i32 %48, 130
  br i1 %49, label %50, label %55

50:                                               ; preds = %47
  %51 = load i32, i32* %19, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %50
  %54 = load i32, i32* @path_none, align 4
  store i32 %54, i32* %9, align 4
  br label %154

55:                                               ; preds = %50, %47
  %56 = load %struct.dir_struct*, %struct.dir_struct** %10, align 8
  %57 = getelementptr inbounds %struct.dir_struct, %struct.dir_struct* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @DIR_COLLECT_KILLED_ONLY, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %81

62:                                               ; preds = %55
  %63 = load i32, i32* %16, align 4
  %64 = icmp eq i32 %63, 130
  br i1 %64, label %65, label %81

65:                                               ; preds = %62
  %66 = load i32, i32* %19, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %81, label %68

68:                                               ; preds = %65
  %69 = load %struct.index_state*, %struct.index_state** %12, align 8
  %70 = load %struct.strbuf*, %struct.strbuf** %13, align 8
  %71 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.strbuf*, %struct.strbuf** %13, align 8
  %74 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i64 @directory_exists_in_index(%struct.index_state* %69, i32 %72, i32 %75)
  %77 = load i64, i64* @index_nonexistent, align 8
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %79, label %81

79:                                               ; preds = %68
  %80 = load i32, i32* @path_none, align 4
  store i32 %80, i32* %9, align 4
  br label %154

81:                                               ; preds = %68, %65, %62, %55
  %82 = load %struct.dir_struct*, %struct.dir_struct** %10, align 8
  %83 = load %struct.index_state*, %struct.index_state** %12, align 8
  %84 = load %struct.strbuf*, %struct.strbuf** %13, align 8
  %85 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @is_excluded(%struct.dir_struct* %82, %struct.index_state* %83, i32 %86, i32* %16)
  store i32 %87, i32* %18, align 4
  %88 = load i32, i32* %18, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %101

90:                                               ; preds = %81
  %91 = load %struct.dir_struct*, %struct.dir_struct** %10, align 8
  %92 = getelementptr inbounds %struct.dir_struct, %struct.dir_struct* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* @DIR_SHOW_IGNORED, align 4
  %95 = load i32, i32* @DIR_SHOW_IGNORED_TOO, align 4
  %96 = or i32 %94, %95
  %97 = and i32 %93, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %101, label %99

99:                                               ; preds = %90
  %100 = load i32, i32* @path_excluded, align 4
  store i32 %100, i32* %9, align 4
  br label %154

101:                                              ; preds = %90, %81
  %102 = load i32, i32* %16, align 4
  switch i32 %102, label %103 [
    i32 130, label %105
    i32 128, label %145
    i32 129, label %145
  ]

103:                                              ; preds = %101
  %104 = load i32, i32* @path_none, align 4
  store i32 %104, i32* %9, align 4
  br label %154

105:                                              ; preds = %101
  %106 = load %struct.strbuf*, %struct.strbuf** %13, align 8
  %107 = call i32 @strbuf_addch(%struct.strbuf* %106, i8 signext 47)
  %108 = load %struct.dir_struct*, %struct.dir_struct** %10, align 8
  %109 = load %struct.index_state*, %struct.index_state** %12, align 8
  %110 = load %struct.untracked_cache_dir*, %struct.untracked_cache_dir** %11, align 8
  %111 = load %struct.strbuf*, %struct.strbuf** %13, align 8
  %112 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.strbuf*, %struct.strbuf** %13, align 8
  %115 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = load i32, i32* %14, align 4
  %118 = load i32, i32* %18, align 4
  %119 = load %struct.pathspec*, %struct.pathspec** %15, align 8
  %120 = call i32 @treat_directory(%struct.dir_struct* %108, %struct.index_state* %109, %struct.untracked_cache_dir* %110, i32 %113, i32 %116, i32 %117, i32 %118, %struct.pathspec* %119)
  store i32 %120, i32* %20, align 4
  %121 = load i32, i32* %18, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %143, label %123

123:                                              ; preds = %105
  %124 = load i32, i32* %20, align 4
  %125 = load i32, i32* @path_excluded, align 4
  %126 = icmp eq i32 %124, %125
  br i1 %126, label %127, label %143

127:                                              ; preds = %123
  %128 = load %struct.dir_struct*, %struct.dir_struct** %10, align 8
  %129 = getelementptr inbounds %struct.dir_struct, %struct.dir_struct* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = load i32, i32* @DIR_SHOW_IGNORED_TOO, align 4
  %132 = and i32 %130, %131
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %143

134:                                              ; preds = %127
  %135 = load %struct.dir_struct*, %struct.dir_struct** %10, align 8
  %136 = getelementptr inbounds %struct.dir_struct, %struct.dir_struct* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = load i32, i32* @DIR_SHOW_IGNORED_TOO_MODE_MATCHING, align 4
  %139 = and i32 %137, %138
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %143

141:                                              ; preds = %134
  %142 = load i32, i32* @path_recurse, align 4
  store i32 %142, i32* %9, align 4
  br label %154

143:                                              ; preds = %134, %127, %123, %105
  %144 = load i32, i32* %20, align 4
  store i32 %144, i32* %9, align 4
  br label %154

145:                                              ; preds = %101, %101
  %146 = load i32, i32* %18, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %150

148:                                              ; preds = %145
  %149 = load i32, i32* @path_excluded, align 4
  br label %152

150:                                              ; preds = %145
  %151 = load i32, i32* @path_untracked, align 4
  br label %152

152:                                              ; preds = %150, %148
  %153 = phi i32 [ %149, %148 ], [ %151, %150 ]
  store i32 %153, i32* %9, align 4
  br label %154

154:                                              ; preds = %152, %143, %141, %103, %99, %79, %53
  %155 = load i32, i32* %9, align 4
  ret i32 %155
}

declare dso_local i32 @index_file_exists(%struct.index_state*, i32, i32, i32) #1

declare dso_local i32 @get_dtype(%struct.dirent*, %struct.index_state*, i32, i32) #1

declare dso_local i64 @directory_exists_in_index(%struct.index_state*, i32, i32) #1

declare dso_local i32 @is_excluded(%struct.dir_struct*, %struct.index_state*, i32, i32*) #1

declare dso_local i32 @strbuf_addch(%struct.strbuf*, i8 signext) #1

declare dso_local i32 @treat_directory(%struct.dir_struct*, %struct.index_state*, %struct.untracked_cache_dir*, i32, i32, i32, i32, %struct.pathspec*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
