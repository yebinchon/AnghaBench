; ModuleID = '/home/carl/AnghaBench/git/extr_dir.c_treat_directory.c'
source_filename = "/home/carl/AnghaBench/git/extr_dir.c_treat_directory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32 }
%struct.dir_struct = type { i32, i32 }
%struct.index_state = type { i32 }
%struct.untracked_cache_dir = type { i32 }
%struct.pathspec = type { i32 }

@path_recurse = common dso_local global i32 0, align 4
@path_none = common dso_local global i32 0, align 4
@DIR_SKIP_NESTED_GIT = common dso_local global i32 0, align 4
@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 4
@DIR_SHOW_OTHER_DIRECTORIES = common dso_local global i32 0, align 4
@DIR_SHOW_IGNORED_TOO = common dso_local global i32 0, align 4
@DIR_SHOW_IGNORED_TOO_MODE_MATCHING = common dso_local global i32 0, align 4
@DIR_HIDE_EMPTY_DIRECTORIES = common dso_local global i32 0, align 4
@path_excluded = common dso_local global i32 0, align 4
@DIR_NO_GITLINKS = common dso_local global i32 0, align 4
@path_untracked = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dir_struct*, %struct.index_state*, %struct.untracked_cache_dir*, i8*, i32, i32, i32, %struct.pathspec*)* @treat_directory to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @treat_directory(%struct.dir_struct* %0, %struct.index_state* %1, %struct.untracked_cache_dir* %2, i8* %3, i32 %4, i32 %5, i32 %6, %struct.pathspec* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.dir_struct*, align 8
  %11 = alloca %struct.index_state*, align 8
  %12 = alloca %struct.untracked_cache_dir*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.pathspec*, align 8
  %18 = alloca i32, align 4
  %19 = alloca %struct.strbuf, align 4
  %20 = alloca %struct.strbuf, align 4
  store %struct.dir_struct* %0, %struct.dir_struct** %10, align 8
  store %struct.index_state* %1, %struct.index_state** %11, align 8
  store %struct.untracked_cache_dir* %2, %struct.untracked_cache_dir** %12, align 8
  store i8* %3, i8** %13, align 8
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store %struct.pathspec* %7, %struct.pathspec** %17, align 8
  %21 = load %struct.index_state*, %struct.index_state** %11, align 8
  %22 = load i8*, i8** %13, align 8
  %23 = load i32, i32* %14, align 4
  %24 = sub nsw i32 %23, 1
  %25 = call i32 @directory_exists_in_index(%struct.index_state* %21, i8* %22, i32 %24)
  switch i32 %25, label %122 [
    i32 130, label %26
    i32 129, label %28
    i32 128, label %30
  ]

26:                                               ; preds = %8
  %27 = load i32, i32* @path_recurse, align 4
  store i32 %27, i32* %9, align 4
  br label %159

28:                                               ; preds = %8
  %29 = load i32, i32* @path_none, align 4
  store i32 %29, i32* %9, align 4
  br label %159

30:                                               ; preds = %8
  %31 = load %struct.dir_struct*, %struct.dir_struct** %10, align 8
  %32 = getelementptr inbounds %struct.dir_struct, %struct.dir_struct* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @DIR_SKIP_NESTED_GIT, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %48

37:                                               ; preds = %30
  %38 = bitcast %struct.strbuf* %19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %38, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 4, i1 false)
  %39 = load i8*, i8** %13, align 8
  %40 = call i32 @strbuf_addstr(%struct.strbuf* %19, i8* %39)
  %41 = call i32 @is_nonbare_repository_dir(%struct.strbuf* %19)
  store i32 %41, i32* %18, align 4
  %42 = call i32 @strbuf_release(%struct.strbuf* %19)
  %43 = load i32, i32* %18, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %37
  %46 = load i32, i32* @path_none, align 4
  store i32 %46, i32* %9, align 4
  br label %159

47:                                               ; preds = %37
  br label %48

48:                                               ; preds = %47, %30
  %49 = load %struct.dir_struct*, %struct.dir_struct** %10, align 8
  %50 = getelementptr inbounds %struct.dir_struct, %struct.dir_struct* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @DIR_SHOW_OTHER_DIRECTORIES, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %48
  br label %122

56:                                               ; preds = %48
  %57 = load i32, i32* %16, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %96

59:                                               ; preds = %56
  %60 = load %struct.dir_struct*, %struct.dir_struct** %10, align 8
  %61 = getelementptr inbounds %struct.dir_struct, %struct.dir_struct* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @DIR_SHOW_IGNORED_TOO, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %96

66:                                               ; preds = %59
  %67 = load %struct.dir_struct*, %struct.dir_struct** %10, align 8
  %68 = getelementptr inbounds %struct.dir_struct, %struct.dir_struct* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @DIR_SHOW_IGNORED_TOO_MODE_MATCHING, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %96

73:                                               ; preds = %66
  %74 = load %struct.dir_struct*, %struct.dir_struct** %10, align 8
  %75 = getelementptr inbounds %struct.dir_struct, %struct.dir_struct* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @DIR_HIDE_EMPTY_DIRECTORIES, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %82, label %80

80:                                               ; preds = %73
  %81 = load i32, i32* @path_excluded, align 4
  store i32 %81, i32* %9, align 4
  br label %159

82:                                               ; preds = %73
  %83 = load %struct.dir_struct*, %struct.dir_struct** %10, align 8
  %84 = load %struct.index_state*, %struct.index_state** %11, align 8
  %85 = load i8*, i8** %13, align 8
  %86 = load i32, i32* %14, align 4
  %87 = load %struct.untracked_cache_dir*, %struct.untracked_cache_dir** %12, align 8
  %88 = load %struct.pathspec*, %struct.pathspec** %17, align 8
  %89 = call i32 @read_directory_recursive(%struct.dir_struct* %83, %struct.index_state* %84, i8* %85, i32 %86, %struct.untracked_cache_dir* %87, i32 1, i32 1, %struct.pathspec* %88)
  %90 = load i32, i32* @path_excluded, align 4
  %91 = icmp eq i32 %89, %90
  br i1 %91, label %92, label %94

92:                                               ; preds = %82
  %93 = load i32, i32* @path_excluded, align 4
  store i32 %93, i32* %9, align 4
  br label %159

94:                                               ; preds = %82
  %95 = load i32, i32* @path_none, align 4
  store i32 %95, i32* %9, align 4
  br label %159

96:                                               ; preds = %66, %59, %56
  %97 = load %struct.dir_struct*, %struct.dir_struct** %10, align 8
  %98 = getelementptr inbounds %struct.dir_struct, %struct.dir_struct* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* @DIR_NO_GITLINKS, align 4
  %101 = and i32 %99, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %120, label %103

103:                                              ; preds = %96
  %104 = bitcast %struct.strbuf* %20 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %104, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 4, i1 false)
  %105 = load i8*, i8** %13, align 8
  %106 = call i32 @strbuf_addstr(%struct.strbuf* %20, i8* %105)
  %107 = call i32 @is_nonbare_repository_dir(%struct.strbuf* %20)
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %118

109:                                              ; preds = %103
  %110 = load i32, i32* %16, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %114

112:                                              ; preds = %109
  %113 = load i32, i32* @path_excluded, align 4
  br label %116

114:                                              ; preds = %109
  %115 = load i32, i32* @path_untracked, align 4
  br label %116

116:                                              ; preds = %114, %112
  %117 = phi i32 [ %113, %112 ], [ %115, %114 ]
  store i32 %117, i32* %9, align 4
  br label %159

118:                                              ; preds = %103
  %119 = call i32 @strbuf_release(%struct.strbuf* %20)
  br label %120

120:                                              ; preds = %118, %96
  %121 = load i32, i32* @path_recurse, align 4
  store i32 %121, i32* %9, align 4
  br label %159

122:                                              ; preds = %8, %55
  %123 = load %struct.dir_struct*, %struct.dir_struct** %10, align 8
  %124 = getelementptr inbounds %struct.dir_struct, %struct.dir_struct* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = load i32, i32* @DIR_HIDE_EMPTY_DIRECTORIES, align 4
  %127 = and i32 %125, %126
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %138, label %129

129:                                              ; preds = %122
  %130 = load i32, i32* %16, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %134

132:                                              ; preds = %129
  %133 = load i32, i32* @path_excluded, align 4
  br label %136

134:                                              ; preds = %129
  %135 = load i32, i32* @path_untracked, align 4
  br label %136

136:                                              ; preds = %134, %132
  %137 = phi i32 [ %133, %132 ], [ %135, %134 ]
  store i32 %137, i32* %9, align 4
  br label %159

138:                                              ; preds = %122
  %139 = load %struct.dir_struct*, %struct.dir_struct** %10, align 8
  %140 = getelementptr inbounds %struct.dir_struct, %struct.dir_struct* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = load %struct.untracked_cache_dir*, %struct.untracked_cache_dir** %12, align 8
  %143 = load i8*, i8** %13, align 8
  %144 = load i32, i32* %15, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i8, i8* %143, i64 %145
  %147 = load i32, i32* %14, align 4
  %148 = load i32, i32* %15, align 4
  %149 = sub nsw i32 %147, %148
  %150 = call %struct.untracked_cache_dir* @lookup_untracked(i32 %141, %struct.untracked_cache_dir* %142, i8* %146, i32 %149)
  store %struct.untracked_cache_dir* %150, %struct.untracked_cache_dir** %12, align 8
  %151 = load %struct.dir_struct*, %struct.dir_struct** %10, align 8
  %152 = load %struct.index_state*, %struct.index_state** %11, align 8
  %153 = load i8*, i8** %13, align 8
  %154 = load i32, i32* %14, align 4
  %155 = load %struct.untracked_cache_dir*, %struct.untracked_cache_dir** %12, align 8
  %156 = load i32, i32* %16, align 4
  %157 = load %struct.pathspec*, %struct.pathspec** %17, align 8
  %158 = call i32 @read_directory_recursive(%struct.dir_struct* %151, %struct.index_state* %152, i8* %153, i32 %154, %struct.untracked_cache_dir* %155, i32 1, i32 %156, %struct.pathspec* %157)
  store i32 %158, i32* %9, align 4
  br label %159

159:                                              ; preds = %138, %136, %120, %116, %94, %92, %80, %45, %28, %26
  %160 = load i32, i32* %9, align 4
  ret i32 %160
}

declare dso_local i32 @directory_exists_in_index(%struct.index_state*, i8*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @strbuf_addstr(%struct.strbuf*, i8*) #1

declare dso_local i32 @is_nonbare_repository_dir(%struct.strbuf*) #1

declare dso_local i32 @strbuf_release(%struct.strbuf*) #1

declare dso_local i32 @read_directory_recursive(%struct.dir_struct*, %struct.index_state*, i8*, i32, %struct.untracked_cache_dir*, i32, i32, %struct.pathspec*) #1

declare dso_local %struct.untracked_cache_dir* @lookup_untracked(i32, %struct.untracked_cache_dir*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
