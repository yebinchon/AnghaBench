; ModuleID = '/home/carl/AnghaBench/git/extr_read-cache.c_write_locked_index.c'
source_filename = "/home/carl/AnghaBench/git/extr_read-cache.c_write_locked_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.index_state = type { i32, i64, %struct.split_index* }
%struct.split_index = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32* }
%struct.lock_file = type { i32 }
%struct.tempfile = type { i32 }

@.str = private unnamed_addr constant [26 x i8] c"GIT_TEST_CHECK_CACHE_TREE\00", align 1
@the_repository = common dso_local global i32 0, align 4
@SKIP_IF_UNCHANGED = common dso_local global i32 0, align 4
@COMMIT_LOCK = common dso_local global i32 0, align 4
@alternate_index_output = common dso_local global i64 0, align 8
@EXTMASK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"GIT_TEST_SPLIT_INDEX\00", align 1
@SPLIT_INDEX_ORDERED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [19 x i8] c"sharedindex_XXXXXX\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [15 x i8] c"sharedindex.%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @write_locked_index(%struct.index_state* %0, %struct.lock_file* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.index_state*, align 8
  %6 = alloca %struct.lock_file*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.split_index*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.tempfile*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  store %struct.index_state* %0, %struct.index_state** %5, align 8
  store %struct.lock_file* %1, %struct.lock_file** %6, align 8
  store i32 %2, i32* %7, align 4
  %15 = load %struct.index_state*, %struct.index_state** %5, align 8
  %16 = getelementptr inbounds %struct.index_state, %struct.index_state* %15, i32 0, i32 2
  %17 = load %struct.split_index*, %struct.split_index** %16, align 8
  store %struct.split_index* %17, %struct.split_index** %10, align 8
  %18 = call i64 @git_env_bool(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 0)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %3
  %21 = load i32, i32* @the_repository, align 4
  %22 = load %struct.index_state*, %struct.index_state** %5, align 8
  %23 = call i32 @cache_tree_verify(i32 %21, %struct.index_state* %22)
  br label %24

24:                                               ; preds = %20, %3
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* @SKIP_IF_UNCHANGED, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %43

29:                                               ; preds = %24
  %30 = load %struct.index_state*, %struct.index_state** %5, align 8
  %31 = getelementptr inbounds %struct.index_state, %struct.index_state* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %43, label %34

34:                                               ; preds = %29
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* @COMMIT_LOCK, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %34
  %40 = load %struct.lock_file*, %struct.lock_file** %6, align 8
  %41 = call i32 @rollback_lock_file(%struct.lock_file* %40)
  br label %42

42:                                               ; preds = %39, %34
  store i32 0, i32* %4, align 4
  br label %176

43:                                               ; preds = %29, %24
  %44 = load %struct.index_state*, %struct.index_state** %5, align 8
  %45 = getelementptr inbounds %struct.index_state, %struct.index_state* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %43
  %49 = load %struct.index_state*, %struct.index_state** %5, align 8
  %50 = call i32 @fill_fsmonitor_bitmap(%struct.index_state* %49)
  br label %51

51:                                               ; preds = %48, %43
  %52 = load %struct.split_index*, %struct.split_index** %10, align 8
  %53 = icmp ne %struct.split_index* %52, null
  br i1 %53, label %54, label %65

54:                                               ; preds = %51
  %55 = load i64, i64* @alternate_index_output, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %65, label %57

57:                                               ; preds = %54
  %58 = load %struct.index_state*, %struct.index_state** %5, align 8
  %59 = getelementptr inbounds %struct.index_state, %struct.index_state* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* @EXTMASK, align 4
  %62 = xor i32 %61, -1
  %63 = and i32 %60, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %77

65:                                               ; preds = %57, %54, %51
  %66 = load %struct.split_index*, %struct.split_index** %10, align 8
  %67 = icmp ne %struct.split_index* %66, null
  br i1 %67, label %68, label %72

68:                                               ; preds = %65
  %69 = load %struct.split_index*, %struct.split_index** %10, align 8
  %70 = getelementptr inbounds %struct.split_index, %struct.split_index* %69, i32 0, i32 0
  %71 = call i32 @oidclr(%struct.TYPE_4__* %70)
  br label %72

72:                                               ; preds = %68, %65
  %73 = load %struct.index_state*, %struct.index_state** %5, align 8
  %74 = load %struct.lock_file*, %struct.lock_file** %6, align 8
  %75 = load i32, i32* %7, align 4
  %76 = call i32 @do_write_locked_index(%struct.index_state* %73, %struct.lock_file* %74, i32 %75)
  store i32 %76, i32* %9, align 4
  br label %166

77:                                               ; preds = %57
  %78 = call i64 @git_env_bool(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 0)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %97

80:                                               ; preds = %77
  %81 = load %struct.split_index*, %struct.split_index** %10, align 8
  %82 = getelementptr inbounds %struct.split_index, %struct.split_index* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 0
  %84 = load i32*, i32** %83, align 8
  %85 = getelementptr inbounds i32, i32* %84, i64 0
  %86 = load i32, i32* %85, align 4
  store i32 %86, i32* %11, align 4
  %87 = load i32, i32* %11, align 4
  %88 = and i32 %87, 15
  %89 = icmp slt i32 %88, 6
  br i1 %89, label %90, label %96

90:                                               ; preds = %80
  %91 = load i32, i32* @SPLIT_INDEX_ORDERED, align 4
  %92 = load %struct.index_state*, %struct.index_state** %5, align 8
  %93 = getelementptr inbounds %struct.index_state, %struct.index_state* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = or i32 %94, %91
  store i32 %95, i32* %93, align 8
  br label %96

96:                                               ; preds = %90, %80
  br label %97

97:                                               ; preds = %96, %77
  %98 = load %struct.index_state*, %struct.index_state** %5, align 8
  %99 = call i64 @too_many_not_shared_entries(%struct.index_state* %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %107

101:                                              ; preds = %97
  %102 = load i32, i32* @SPLIT_INDEX_ORDERED, align 4
  %103 = load %struct.index_state*, %struct.index_state** %5, align 8
  %104 = getelementptr inbounds %struct.index_state, %struct.index_state* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = or i32 %105, %102
  store i32 %106, i32* %104, align 8
  br label %107

107:                                              ; preds = %101, %97
  %108 = load %struct.index_state*, %struct.index_state** %5, align 8
  %109 = getelementptr inbounds %struct.index_state, %struct.index_state* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = load i32, i32* @SPLIT_INDEX_ORDERED, align 4
  %112 = and i32 %110, %111
  store i32 %112, i32* %8, align 4
  %113 = load i32, i32* %8, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %143

115:                                              ; preds = %107
  %116 = call i8* (i8*, ...) @git_path(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  %117 = call %struct.tempfile* @mks_tempfile_sm(i8* %116, i32 0, i32 438)
  store %struct.tempfile* %117, %struct.tempfile** %12, align 8
  %118 = load %struct.tempfile*, %struct.tempfile** %12, align 8
  %119 = icmp ne %struct.tempfile* %118, null
  br i1 %119, label %128, label %120

120:                                              ; preds = %115
  %121 = load %struct.split_index*, %struct.split_index** %10, align 8
  %122 = getelementptr inbounds %struct.split_index, %struct.split_index* %121, i32 0, i32 0
  %123 = call i32 @oidclr(%struct.TYPE_4__* %122)
  %124 = load %struct.index_state*, %struct.index_state** %5, align 8
  %125 = load %struct.lock_file*, %struct.lock_file** %6, align 8
  %126 = load i32, i32* %7, align 4
  %127 = call i32 @do_write_locked_index(%struct.index_state* %124, %struct.lock_file* %125, i32 %126)
  store i32 %127, i32* %9, align 4
  br label %166

128:                                              ; preds = %115
  %129 = load %struct.index_state*, %struct.index_state** %5, align 8
  %130 = call i32 @write_shared_index(%struct.index_state* %129, %struct.tempfile** %12)
  store i32 %130, i32* %9, align 4
  %131 = load i32, i32* @errno, align 4
  store i32 %131, i32* %13, align 4
  %132 = load %struct.tempfile*, %struct.tempfile** %12, align 8
  %133 = call i64 @is_tempfile_active(%struct.tempfile* %132)
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %137

135:                                              ; preds = %128
  %136 = call i32 @delete_tempfile(%struct.tempfile** %12)
  br label %137

137:                                              ; preds = %135, %128
  %138 = load i32, i32* %13, align 4
  store i32 %138, i32* @errno, align 4
  %139 = load i32, i32* %9, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %142

141:                                              ; preds = %137
  br label %166

142:                                              ; preds = %137
  br label %143

143:                                              ; preds = %142, %107
  %144 = load %struct.index_state*, %struct.index_state** %5, align 8
  %145 = load %struct.lock_file*, %struct.lock_file** %6, align 8
  %146 = load i32, i32* %7, align 4
  %147 = call i32 @write_split_index(%struct.index_state* %144, %struct.lock_file* %145, i32 %146)
  store i32 %147, i32* %9, align 4
  %148 = load i32, i32* %9, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %165, label %150

150:                                              ; preds = %143
  %151 = load i32, i32* %8, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %165, label %153

153:                                              ; preds = %150
  %154 = load %struct.split_index*, %struct.split_index** %10, align 8
  %155 = getelementptr inbounds %struct.split_index, %struct.split_index* %154, i32 0, i32 0
  %156 = call i32 @is_null_oid(%struct.TYPE_4__* %155)
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %165, label %158

158:                                              ; preds = %153
  %159 = load %struct.split_index*, %struct.split_index** %10, align 8
  %160 = getelementptr inbounds %struct.split_index, %struct.split_index* %159, i32 0, i32 0
  %161 = call i32 @oid_to_hex(%struct.TYPE_4__* %160)
  %162 = call i8* (i8*, ...) @git_path(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i32 %161)
  store i8* %162, i8** %14, align 8
  %163 = load i8*, i8** %14, align 8
  %164 = call i32 @freshen_shared_index(i8* %163, i32 1)
  br label %165

165:                                              ; preds = %158, %153, %150, %143
  br label %166

166:                                              ; preds = %165, %141, %120, %72
  %167 = load i32, i32* %7, align 4
  %168 = load i32, i32* @COMMIT_LOCK, align 4
  %169 = and i32 %167, %168
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %174

171:                                              ; preds = %166
  %172 = load %struct.lock_file*, %struct.lock_file** %6, align 8
  %173 = call i32 @rollback_lock_file(%struct.lock_file* %172)
  br label %174

174:                                              ; preds = %171, %166
  %175 = load i32, i32* %9, align 4
  store i32 %175, i32* %4, align 4
  br label %176

176:                                              ; preds = %174, %42
  %177 = load i32, i32* %4, align 4
  ret i32 %177
}

declare dso_local i64 @git_env_bool(i8*, i32) #1

declare dso_local i32 @cache_tree_verify(i32, %struct.index_state*) #1

declare dso_local i32 @rollback_lock_file(%struct.lock_file*) #1

declare dso_local i32 @fill_fsmonitor_bitmap(%struct.index_state*) #1

declare dso_local i32 @oidclr(%struct.TYPE_4__*) #1

declare dso_local i32 @do_write_locked_index(%struct.index_state*, %struct.lock_file*, i32) #1

declare dso_local i64 @too_many_not_shared_entries(%struct.index_state*) #1

declare dso_local %struct.tempfile* @mks_tempfile_sm(i8*, i32, i32) #1

declare dso_local i8* @git_path(i8*, ...) #1

declare dso_local i32 @write_shared_index(%struct.index_state*, %struct.tempfile**) #1

declare dso_local i64 @is_tempfile_active(%struct.tempfile*) #1

declare dso_local i32 @delete_tempfile(%struct.tempfile**) #1

declare dso_local i32 @write_split_index(%struct.index_state*, %struct.lock_file*, i32) #1

declare dso_local i32 @is_null_oid(%struct.TYPE_4__*) #1

declare dso_local i32 @oid_to_hex(%struct.TYPE_4__*) #1

declare dso_local i32 @freshen_shared_index(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
