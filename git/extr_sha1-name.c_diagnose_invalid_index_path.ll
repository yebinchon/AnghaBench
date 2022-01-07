; ModuleID = '/home/carl/AnghaBench/git/extr_sha1-name.c_diagnose_invalid_index_path.c'
source_filename = "/home/carl/AnghaBench/git/extr_sha1-name.c_diagnose_invalid_index_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i8*, i32 }
%struct.repository = type { %struct.index_state* }
%struct.index_state = type { i32, %struct.cache_entry** }
%struct.cache_entry = type { i32 }

@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 8
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [71 x i8] c"Path '%s' is in the index, but not at stage %d.\0ADid you mean ':%d:%s'?\00", align 1
@.str.2 = private unnamed_addr constant [79 x i8] c"Path '%s' is in the index, but not '%s'.\0ADid you mean ':%d:%s' aka ':%d:./%s'?\00", align 1
@.str.3 = private unnamed_addr constant [48 x i8] c"Path '%s' exists on disk, but not in the index.\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [61 x i8] c"Path '%s' does not exist (neither on disk nor in the index).\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.repository*, i32, i8*, i8*)* @diagnose_invalid_index_path to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @diagnose_invalid_index_path(%struct.repository* %0, i32 %1, i8* %2, i8* %3) #0 {
  %5 = alloca %struct.repository*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.index_state*, align 8
  %10 = alloca %struct.cache_entry*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.strbuf, align 8
  store %struct.repository* %0, %struct.repository** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i8* %3, i8** %8, align 8
  %14 = load %struct.repository*, %struct.repository** %5, align 8
  %15 = getelementptr inbounds %struct.repository, %struct.repository* %14, i32 0, i32 0
  %16 = load %struct.index_state*, %struct.index_state** %15, align 8
  store %struct.index_state* %16, %struct.index_state** %9, align 8
  %17 = load i8*, i8** %8, align 8
  %18 = call i32 @strlen(i8* %17)
  store i32 %18, i32* %12, align 4
  %19 = bitcast %struct.strbuf* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %19, i8* align 8 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 16, i1 false)
  %20 = load i8*, i8** %7, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %4
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %7, align 8
  br label %23

23:                                               ; preds = %22, %4
  %24 = load %struct.index_state*, %struct.index_state** %9, align 8
  %25 = load i8*, i8** %8, align 8
  %26 = load i32, i32* %12, align 4
  %27 = call i32 @index_name_pos(%struct.index_state* %24, i8* %25, i32 %26)
  store i32 %27, i32* %11, align 4
  %28 = load i32, i32* %11, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %23
  %31 = load i32, i32* %11, align 4
  %32 = sub nsw i32 0, %31
  %33 = sub nsw i32 %32, 1
  store i32 %33, i32* %11, align 4
  br label %34

34:                                               ; preds = %30, %23
  %35 = load i32, i32* %11, align 4
  %36 = load %struct.index_state*, %struct.index_state** %9, align 8
  %37 = getelementptr inbounds %struct.index_state, %struct.index_state* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = icmp slt i32 %35, %38
  br i1 %39, label %40, label %68

40:                                               ; preds = %34
  %41 = load %struct.index_state*, %struct.index_state** %9, align 8
  %42 = getelementptr inbounds %struct.index_state, %struct.index_state* %41, i32 0, i32 1
  %43 = load %struct.cache_entry**, %struct.cache_entry*** %42, align 8
  %44 = load i32, i32* %11, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.cache_entry*, %struct.cache_entry** %43, i64 %45
  %47 = load %struct.cache_entry*, %struct.cache_entry** %46, align 8
  store %struct.cache_entry* %47, %struct.cache_entry** %10, align 8
  %48 = load %struct.cache_entry*, %struct.cache_entry** %10, align 8
  %49 = call i32 @ce_namelen(%struct.cache_entry* %48)
  %50 = load i32, i32* %12, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %52, label %67

52:                                               ; preds = %40
  %53 = load %struct.cache_entry*, %struct.cache_entry** %10, align 8
  %54 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i8*, i8** %8, align 8
  %57 = load i32, i32* %12, align 4
  %58 = call i32 @memcmp(i32 %55, i8* %56, i32 %57)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %67, label %60

60:                                               ; preds = %52
  %61 = load i8*, i8** %8, align 8
  %62 = load i32, i32* %6, align 4
  %63 = load %struct.cache_entry*, %struct.cache_entry** %10, align 8
  %64 = call i32 @ce_stage(%struct.cache_entry* %63)
  %65 = load i8*, i8** %8, align 8
  %66 = call i32 (i8*, i8*, ...) @die(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.1, i64 0, i64 0), i8* %61, i32 %62, i32 %64, i8* %65)
  br label %67

67:                                               ; preds = %60, %52, %40
  br label %68

68:                                               ; preds = %67, %34
  %69 = load i8*, i8** %7, align 8
  %70 = call i32 @strbuf_addstr(%struct.strbuf* %13, i8* %69)
  %71 = load i8*, i8** %8, align 8
  %72 = call i32 @strbuf_addstr(%struct.strbuf* %13, i8* %71)
  %73 = load %struct.index_state*, %struct.index_state** %9, align 8
  %74 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %13, i32 0, i32 0
  %75 = load i8*, i8** %74, align 8
  %76 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %13, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @index_name_pos(%struct.index_state* %73, i8* %75, i32 %77)
  store i32 %78, i32* %11, align 4
  %79 = load i32, i32* %11, align 4
  %80 = icmp slt i32 %79, 0
  br i1 %80, label %81, label %85

81:                                               ; preds = %68
  %82 = load i32, i32* %11, align 4
  %83 = sub nsw i32 0, %82
  %84 = sub nsw i32 %83, 1
  store i32 %84, i32* %11, align 4
  br label %85

85:                                               ; preds = %81, %68
  %86 = load i32, i32* %11, align 4
  %87 = load %struct.index_state*, %struct.index_state** %9, align 8
  %88 = getelementptr inbounds %struct.index_state, %struct.index_state* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = icmp slt i32 %86, %89
  br i1 %90, label %91, label %127

91:                                               ; preds = %85
  %92 = load %struct.index_state*, %struct.index_state** %9, align 8
  %93 = getelementptr inbounds %struct.index_state, %struct.index_state* %92, i32 0, i32 1
  %94 = load %struct.cache_entry**, %struct.cache_entry*** %93, align 8
  %95 = load i32, i32* %11, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.cache_entry*, %struct.cache_entry** %94, i64 %96
  %98 = load %struct.cache_entry*, %struct.cache_entry** %97, align 8
  store %struct.cache_entry* %98, %struct.cache_entry** %10, align 8
  %99 = load %struct.cache_entry*, %struct.cache_entry** %10, align 8
  %100 = call i32 @ce_namelen(%struct.cache_entry* %99)
  %101 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %13, i32 0, i32 1
  %102 = load i32, i32* %101, align 8
  %103 = icmp eq i32 %100, %102
  br i1 %103, label %104, label %126

104:                                              ; preds = %91
  %105 = load %struct.cache_entry*, %struct.cache_entry** %10, align 8
  %106 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %13, i32 0, i32 0
  %109 = load i8*, i8** %108, align 8
  %110 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %13, i32 0, i32 1
  %111 = load i32, i32* %110, align 8
  %112 = call i32 @memcmp(i32 %107, i8* %109, i32 %111)
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %126, label %114

114:                                              ; preds = %104
  %115 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %13, i32 0, i32 0
  %116 = load i8*, i8** %115, align 8
  %117 = load i8*, i8** %8, align 8
  %118 = load %struct.cache_entry*, %struct.cache_entry** %10, align 8
  %119 = call i32 @ce_stage(%struct.cache_entry* %118)
  %120 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %13, i32 0, i32 0
  %121 = load i8*, i8** %120, align 8
  %122 = load %struct.cache_entry*, %struct.cache_entry** %10, align 8
  %123 = call i32 @ce_stage(%struct.cache_entry* %122)
  %124 = load i8*, i8** %8, align 8
  %125 = call i32 (i8*, i8*, ...) @die(i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.2, i64 0, i64 0), i8* %116, i8* %117, i32 %119, i8* %121, i32 %123, i8* %124)
  br label %126

126:                                              ; preds = %114, %104, %91
  br label %127

127:                                              ; preds = %126, %85
  %128 = load %struct.repository*, %struct.repository** %5, align 8
  %129 = load i8*, i8** %8, align 8
  %130 = call i64 @repo_file_exists(%struct.repository* %128, i8* %129)
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %135

132:                                              ; preds = %127
  %133 = load i8*, i8** %8, align 8
  %134 = call i32 (i8*, i8*, ...) @die(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i64 0, i64 0), i8* %133)
  br label %135

135:                                              ; preds = %132, %127
  %136 = load i32, i32* @errno, align 4
  %137 = call i64 @is_missing_file_error(i32 %136)
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %142

139:                                              ; preds = %135
  %140 = load i8*, i8** %8, align 8
  %141 = call i32 (i8*, i8*, ...) @die(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.4, i64 0, i64 0), i8* %140)
  br label %142

142:                                              ; preds = %139, %135
  %143 = call i32 @strbuf_release(%struct.strbuf* %13)
  ret void
}

declare dso_local i32 @strlen(i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @index_name_pos(%struct.index_state*, i8*, i32) #1

declare dso_local i32 @ce_namelen(%struct.cache_entry*) #1

declare dso_local i32 @memcmp(i32, i8*, i32) #1

declare dso_local i32 @die(i8*, i8*, ...) #1

declare dso_local i32 @ce_stage(%struct.cache_entry*) #1

declare dso_local i32 @strbuf_addstr(%struct.strbuf*, i8*) #1

declare dso_local i64 @repo_file_exists(%struct.repository*, i8*) #1

declare dso_local i64 @is_missing_file_error(i32) #1

declare dso_local i32 @strbuf_release(%struct.strbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
