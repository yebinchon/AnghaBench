; ModuleID = '/home/carl/AnghaBench/git/extr_dir.c_add_patterns.c'
source_filename = "/home/carl/AnghaBench/git/extr_dir.c_add_patterns.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32* }
%struct.pattern_list = type { i32 }
%struct.index_state = type { %struct.TYPE_5__** }
%struct.TYPE_5__ = type { i32 }
%struct.oid_stat = type { i32, i32, i32 }
%struct.stat = type { i32 }

@O_RDONLY = common dso_local global i32 0, align 4
@the_hash_algo = common dso_local global %struct.TYPE_4__* null, align 8
@.str = private unnamed_addr constant [5 x i8] c"blob\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i32, %struct.pattern_list*, %struct.index_state*, %struct.oid_stat*)* @add_patterns to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_patterns(i8* %0, i8* %1, i32 %2, %struct.pattern_list* %3, %struct.index_state* %4, %struct.oid_stat* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.pattern_list*, align 8
  %12 = alloca %struct.index_state*, align 8
  %13 = alloca %struct.oid_stat*, align 8
  %14 = alloca %struct.stat, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  store i8* %0, i8** %8, align 8
  store i8* %1, i8** %9, align 8
  store i32 %2, i32* %10, align 4
  store %struct.pattern_list* %3, %struct.pattern_list** %11, align 8
  store %struct.index_state* %4, %struct.index_state** %12, align 8
  store %struct.oid_stat* %5, %struct.oid_stat** %13, align 8
  store i64 0, i64* %17, align 8
  %20 = load i8*, i8** %8, align 8
  %21 = load i32, i32* @O_RDONLY, align 4
  %22 = call i32 @open(i8* %20, i32 %21)
  store i32 %22, i32* %16, align 4
  %23 = load i32, i32* %16, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %29, label %25

25:                                               ; preds = %6
  %26 = load i32, i32* %16, align 4
  %27 = call i64 @fstat(i32 %26, %struct.stat* %14)
  %28 = icmp slt i64 %27, 0
  br i1 %28, label %29, label %52

29:                                               ; preds = %25, %6
  %30 = load i32, i32* %16, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %29
  %33 = load i8*, i8** %8, align 8
  %34 = call i32 @warn_on_fopen_errors(i8* %33)
  br label %38

35:                                               ; preds = %29
  %36 = load i32, i32* %16, align 4
  %37 = call i32 @close(i32 %36)
  br label %38

38:                                               ; preds = %35, %32
  %39 = load %struct.index_state*, %struct.index_state** %12, align 8
  %40 = icmp ne %struct.index_state* %39, null
  br i1 %40, label %42, label %41

41:                                               ; preds = %38
  store i32 -1, i32* %7, align 4
  br label %179

42:                                               ; preds = %38
  %43 = load %struct.index_state*, %struct.index_state** %12, align 8
  %44 = load i8*, i8** %8, align 8
  %45 = load %struct.oid_stat*, %struct.oid_stat** %13, align 8
  %46 = call i32 @read_skip_worktree_file_from_index(%struct.index_state* %43, i8* %44, i64* %17, i8** %18, %struct.oid_stat* %45)
  store i32 %46, i32* %15, align 4
  %47 = load i32, i32* %15, align 4
  %48 = icmp ne i32 %47, 1
  br i1 %48, label %49, label %51

49:                                               ; preds = %42
  %50 = load i32, i32* %15, align 4
  store i32 %50, i32* %7, align 4
  br label %179

51:                                               ; preds = %42
  br label %172

52:                                               ; preds = %25
  %53 = getelementptr inbounds %struct.stat, %struct.stat* %14, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i64 @xsize_t(i32 %54)
  store i64 %55, i64* %17, align 8
  %56 = load i64, i64* %17, align 8
  %57 = icmp eq i64 %56, 0
  br i1 %57, label %58, label %76

58:                                               ; preds = %52
  %59 = load %struct.oid_stat*, %struct.oid_stat** %13, align 8
  %60 = icmp ne %struct.oid_stat* %59, null
  br i1 %60, label %61, label %73

61:                                               ; preds = %58
  %62 = load %struct.oid_stat*, %struct.oid_stat** %13, align 8
  %63 = getelementptr inbounds %struct.oid_stat, %struct.oid_stat* %62, i32 0, i32 1
  %64 = call i32 @fill_stat_data(i32* %63, %struct.stat* %14)
  %65 = load %struct.oid_stat*, %struct.oid_stat** %13, align 8
  %66 = getelementptr inbounds %struct.oid_stat, %struct.oid_stat* %65, i32 0, i32 2
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** @the_hash_algo, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  %69 = load i32*, i32** %68, align 8
  %70 = call i32 @oidcpy(i32* %66, i32* %69)
  %71 = load %struct.oid_stat*, %struct.oid_stat** %13, align 8
  %72 = getelementptr inbounds %struct.oid_stat, %struct.oid_stat* %71, i32 0, i32 0
  store i32 1, i32* %72, align 4
  br label %73

73:                                               ; preds = %61, %58
  %74 = load i32, i32* %16, align 4
  %75 = call i32 @close(i32 %74)
  store i32 0, i32* %7, align 4
  br label %179

76:                                               ; preds = %52
  %77 = load i64, i64* %17, align 8
  %78 = call i8* @xmallocz(i64 %77)
  store i8* %78, i8** %18, align 8
  %79 = load i32, i32* %16, align 4
  %80 = load i8*, i8** %18, align 8
  %81 = load i64, i64* %17, align 8
  %82 = call i64 @read_in_full(i32 %79, i8* %80, i64 %81)
  %83 = load i64, i64* %17, align 8
  %84 = icmp ne i64 %82, %83
  br i1 %84, label %85, label %90

85:                                               ; preds = %76
  %86 = load i8*, i8** %18, align 8
  %87 = call i32 @free(i8* %86)
  %88 = load i32, i32* %16, align 4
  %89 = call i32 @close(i32 %88)
  store i32 -1, i32* %7, align 4
  br label %179

90:                                               ; preds = %76
  %91 = load i8*, i8** %18, align 8
  %92 = load i64, i64* %17, align 8
  %93 = add i64 %92, 1
  store i64 %93, i64* %17, align 8
  %94 = getelementptr inbounds i8, i8* %91, i64 %92
  store i8 10, i8* %94, align 1
  %95 = load i32, i32* %16, align 4
  %96 = call i32 @close(i32 %95)
  %97 = load %struct.oid_stat*, %struct.oid_stat** %13, align 8
  %98 = icmp ne %struct.oid_stat* %97, null
  br i1 %98, label %99, label %171

99:                                               ; preds = %90
  %100 = load %struct.oid_stat*, %struct.oid_stat** %13, align 8
  %101 = getelementptr inbounds %struct.oid_stat, %struct.oid_stat* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %111

104:                                              ; preds = %99
  %105 = load %struct.index_state*, %struct.index_state** %12, align 8
  %106 = load %struct.oid_stat*, %struct.oid_stat** %13, align 8
  %107 = getelementptr inbounds %struct.oid_stat, %struct.oid_stat* %106, i32 0, i32 1
  %108 = call i32 @match_stat_data_racy(%struct.index_state* %105, i32* %107, %struct.stat* %14)
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %111, label %110

110:                                              ; preds = %104
  br label %165

111:                                              ; preds = %104, %99
  %112 = load %struct.index_state*, %struct.index_state** %12, align 8
  %113 = icmp ne %struct.index_state* %112, null
  br i1 %113, label %114, label %158

114:                                              ; preds = %111
  %115 = load %struct.index_state*, %struct.index_state** %12, align 8
  %116 = load i8*, i8** %8, align 8
  %117 = load i8*, i8** %8, align 8
  %118 = call i32 @strlen(i8* %117)
  %119 = call i32 @index_name_pos(%struct.index_state* %115, i8* %116, i32 %118)
  store i32 %119, i32* %19, align 4
  %120 = icmp sge i32 %119, 0
  br i1 %120, label %121, label %158

121:                                              ; preds = %114
  %122 = load %struct.index_state*, %struct.index_state** %12, align 8
  %123 = getelementptr inbounds %struct.index_state, %struct.index_state* %122, i32 0, i32 0
  %124 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %123, align 8
  %125 = load i32, i32* %19, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %124, i64 %126
  %128 = load %struct.TYPE_5__*, %struct.TYPE_5__** %127, align 8
  %129 = call i32 @ce_stage(%struct.TYPE_5__* %128)
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %158, label %131

131:                                              ; preds = %121
  %132 = load %struct.index_state*, %struct.index_state** %12, align 8
  %133 = getelementptr inbounds %struct.index_state, %struct.index_state* %132, i32 0, i32 0
  %134 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %133, align 8
  %135 = load i32, i32* %19, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %134, i64 %136
  %138 = load %struct.TYPE_5__*, %struct.TYPE_5__** %137, align 8
  %139 = call i64 @ce_uptodate(%struct.TYPE_5__* %138)
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %158

141:                                              ; preds = %131
  %142 = load %struct.index_state*, %struct.index_state** %12, align 8
  %143 = load i8*, i8** %8, align 8
  %144 = call i32 @would_convert_to_git(%struct.index_state* %142, i8* %143)
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %158, label %146

146:                                              ; preds = %141
  %147 = load %struct.oid_stat*, %struct.oid_stat** %13, align 8
  %148 = getelementptr inbounds %struct.oid_stat, %struct.oid_stat* %147, i32 0, i32 2
  %149 = load %struct.index_state*, %struct.index_state** %12, align 8
  %150 = getelementptr inbounds %struct.index_state, %struct.index_state* %149, i32 0, i32 0
  %151 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %150, align 8
  %152 = load i32, i32* %19, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %151, i64 %153
  %155 = load %struct.TYPE_5__*, %struct.TYPE_5__** %154, align 8
  %156 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %155, i32 0, i32 0
  %157 = call i32 @oidcpy(i32* %148, i32* %156)
  br label %164

158:                                              ; preds = %141, %131, %121, %114, %111
  %159 = load i8*, i8** %18, align 8
  %160 = load i64, i64* %17, align 8
  %161 = load %struct.oid_stat*, %struct.oid_stat** %13, align 8
  %162 = getelementptr inbounds %struct.oid_stat, %struct.oid_stat* %161, i32 0, i32 2
  %163 = call i32 @hash_object_file(i8* %159, i64 %160, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32* %162)
  br label %164

164:                                              ; preds = %158, %146
  br label %165

165:                                              ; preds = %164, %110
  %166 = load %struct.oid_stat*, %struct.oid_stat** %13, align 8
  %167 = getelementptr inbounds %struct.oid_stat, %struct.oid_stat* %166, i32 0, i32 1
  %168 = call i32 @fill_stat_data(i32* %167, %struct.stat* %14)
  %169 = load %struct.oid_stat*, %struct.oid_stat** %13, align 8
  %170 = getelementptr inbounds %struct.oid_stat, %struct.oid_stat* %169, i32 0, i32 0
  store i32 1, i32* %170, align 4
  br label %171

171:                                              ; preds = %165, %90
  br label %172

172:                                              ; preds = %171, %51
  %173 = load i8*, i8** %18, align 8
  %174 = load i64, i64* %17, align 8
  %175 = load i8*, i8** %9, align 8
  %176 = load i32, i32* %10, align 4
  %177 = load %struct.pattern_list*, %struct.pattern_list** %11, align 8
  %178 = call i32 @add_patterns_from_buffer(i8* %173, i64 %174, i8* %175, i32 %176, %struct.pattern_list* %177)
  store i32 0, i32* %7, align 4
  br label %179

179:                                              ; preds = %172, %85, %73, %49, %41
  %180 = load i32, i32* %7, align 4
  ret i32 %180
}

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i64 @fstat(i32, %struct.stat*) #1

declare dso_local i32 @warn_on_fopen_errors(i8*) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @read_skip_worktree_file_from_index(%struct.index_state*, i8*, i64*, i8**, %struct.oid_stat*) #1

declare dso_local i64 @xsize_t(i32) #1

declare dso_local i32 @fill_stat_data(i32*, %struct.stat*) #1

declare dso_local i32 @oidcpy(i32*, i32*) #1

declare dso_local i8* @xmallocz(i64) #1

declare dso_local i64 @read_in_full(i32, i8*, i64) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @match_stat_data_racy(%struct.index_state*, i32*, %struct.stat*) #1

declare dso_local i32 @index_name_pos(%struct.index_state*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @ce_stage(%struct.TYPE_5__*) #1

declare dso_local i64 @ce_uptodate(%struct.TYPE_5__*) #1

declare dso_local i32 @would_convert_to_git(%struct.index_state*, i8*) #1

declare dso_local i32 @hash_object_file(i8*, i64, i8*, i32*) #1

declare dso_local i32 @add_patterns_from_buffer(i8*, i64, i8*, i32, %struct.pattern_list*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
