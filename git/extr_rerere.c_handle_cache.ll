; ModuleID = '/home/carl/AnghaBench/git/extr_rerere.c_handle_cache.c'
source_filename = "/home/carl/AnghaBench/git/extr_rerere.c_handle_cache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.index_state = type { i32, %struct.cache_entry** }
%struct.cache_entry = type { i32, i32 }
%struct.TYPE_9__ = type { i64, i64, i32* }
%struct.TYPE_10__ = type { i32, i32, i32, i32* }
%struct.rerere_io_mem = type { %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { i32*, i32 }
%struct.rerere_io = type { i32 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"ours\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"theirs\00", align 1
@rerere_mem_getline = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.index_state*, i8*, i8*, i8*)* @handle_cache to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @handle_cache(%struct.index_state* %0, i8* %1, i8* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.index_state*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca [3 x %struct.TYPE_9__], align 16
  %11 = alloca %struct.TYPE_10__, align 8
  %12 = alloca %struct.cache_entry*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.rerere_io_mem, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  store %struct.index_state* %0, %struct.index_state** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  %21 = bitcast [3 x %struct.TYPE_9__]* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %21, i8 0, i64 72, i1 false)
  %22 = bitcast %struct.TYPE_10__* %11 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %22, i8 0, i64 24, i1 false)
  %23 = load %struct.index_state*, %struct.index_state** %6, align 8
  %24 = load i8*, i8** %7, align 8
  %25 = call i32 @ll_merge_marker_size(%struct.index_state* %23, i8* %24)
  store i32 %25, i32* %18, align 4
  %26 = load i8*, i8** %7, align 8
  %27 = call i32 @strlen(i8* %26)
  store i32 %27, i32* %14, align 4
  %28 = load %struct.index_state*, %struct.index_state** %6, align 8
  %29 = load i8*, i8** %7, align 8
  %30 = load i32, i32* %14, align 4
  %31 = call i32 @index_name_pos(%struct.index_state* %28, i8* %29, i32 %30)
  store i32 %31, i32* %13, align 4
  %32 = load i32, i32* %13, align 4
  %33 = icmp sle i32 0, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %182

35:                                               ; preds = %4
  %36 = load i32, i32* %13, align 4
  %37 = sub nsw i32 0, %36
  %38 = sub nsw i32 %37, 1
  store i32 %38, i32* %13, align 4
  br label %39

39:                                               ; preds = %90, %35
  %40 = load i32, i32* %13, align 4
  %41 = load %struct.index_state*, %struct.index_state** %6, align 8
  %42 = getelementptr inbounds %struct.index_state, %struct.index_state* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = icmp slt i32 %40, %43
  br i1 %44, label %45, label %91

45:                                               ; preds = %39
  %46 = load %struct.index_state*, %struct.index_state** %6, align 8
  %47 = getelementptr inbounds %struct.index_state, %struct.index_state* %46, i32 0, i32 1
  %48 = load %struct.cache_entry**, %struct.cache_entry*** %47, align 8
  %49 = load i32, i32* %13, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %13, align 4
  %51 = sext i32 %49 to i64
  %52 = getelementptr inbounds %struct.cache_entry*, %struct.cache_entry** %48, i64 %51
  %53 = load %struct.cache_entry*, %struct.cache_entry** %52, align 8
  store %struct.cache_entry* %53, %struct.cache_entry** %12, align 8
  %54 = load %struct.cache_entry*, %struct.cache_entry** %12, align 8
  %55 = call i32 @ce_namelen(%struct.cache_entry* %54)
  %56 = load i32, i32* %14, align 4
  %57 = icmp ne i32 %55, %56
  br i1 %57, label %66, label %58

58:                                               ; preds = %45
  %59 = load %struct.cache_entry*, %struct.cache_entry** %12, align 8
  %60 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load i8*, i8** %7, align 8
  %63 = load i32, i32* %14, align 4
  %64 = call i64 @memcmp(i32 %61, i8* %62, i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %58, %45
  br label %91

67:                                               ; preds = %58
  %68 = load %struct.cache_entry*, %struct.cache_entry** %12, align 8
  %69 = call i32 @ce_stage(%struct.cache_entry* %68)
  %70 = sub nsw i32 %69, 1
  store i32 %70, i32* %15, align 4
  %71 = load i32, i32* %15, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds [3 x %struct.TYPE_9__], [3 x %struct.TYPE_9__]* %10, i64 0, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %90, label %77

77:                                               ; preds = %67
  %78 = load %struct.cache_entry*, %struct.cache_entry** %12, align 8
  %79 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %78, i32 0, i32 0
  %80 = call i64 @read_object_file(i32* %79, i32* %19, i64* %20)
  %81 = load i32, i32* %15, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds [3 x %struct.TYPE_9__], [3 x %struct.TYPE_9__]* %10, i64 0, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %83, i32 0, i32 1
  store i64 %80, i64* %84, align 8
  %85 = load i64, i64* %20, align 8
  %86 = load i32, i32* %15, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds [3 x %struct.TYPE_9__], [3 x %struct.TYPE_9__]* %10, i64 0, i64 %87
  %89 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %88, i32 0, i32 0
  store i64 %85, i64* %89, align 8
  br label %90

90:                                               ; preds = %77, %67
  br label %39

91:                                               ; preds = %66, %39
  store i32 0, i32* %15, align 4
  br label %92

92:                                               ; preds = %116, %91
  %93 = load i32, i32* %15, align 4
  %94 = icmp slt i32 %93, 3
  br i1 %94, label %95, label %119

95:                                               ; preds = %92
  %96 = load i32, i32* %15, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds [3 x %struct.TYPE_9__], [3 x %struct.TYPE_9__]* %10, i64 0, i64 %97
  %99 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %98, i32 0, i32 1
  %100 = load i64, i64* %99, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %115, label %102

102:                                              ; preds = %95
  %103 = load i32, i32* %15, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds [3 x %struct.TYPE_9__], [3 x %struct.TYPE_9__]* %10, i64 0, i64 %104
  %106 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %115, label %109

109:                                              ; preds = %102
  %110 = call i64 @xstrdup(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %111 = load i32, i32* %15, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds [3 x %struct.TYPE_9__], [3 x %struct.TYPE_9__]* %10, i64 0, i64 %112
  %114 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %113, i32 0, i32 1
  store i64 %110, i64* %114, align 8
  br label %115

115:                                              ; preds = %109, %102, %95
  br label %116

116:                                              ; preds = %115
  %117 = load i32, i32* %15, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %15, align 4
  br label %92

119:                                              ; preds = %92
  %120 = load i8*, i8** %7, align 8
  %121 = getelementptr inbounds [3 x %struct.TYPE_9__], [3 x %struct.TYPE_9__]* %10, i64 0, i64 0
  %122 = getelementptr inbounds [3 x %struct.TYPE_9__], [3 x %struct.TYPE_9__]* %10, i64 0, i64 1
  %123 = getelementptr inbounds [3 x %struct.TYPE_9__], [3 x %struct.TYPE_9__]* %10, i64 0, i64 2
  %124 = load %struct.index_state*, %struct.index_state** %6, align 8
  %125 = call i32 @ll_merge(%struct.TYPE_10__* %11, i8* %120, %struct.TYPE_9__* %121, i32* null, %struct.TYPE_9__* %122, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_9__* %123, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), %struct.index_state* %124, i32* null)
  store i32 0, i32* %15, align 4
  br label %126

126:                                              ; preds = %136, %119
  %127 = load i32, i32* %15, align 4
  %128 = icmp slt i32 %127, 3
  br i1 %128, label %129, label %139

129:                                              ; preds = %126
  %130 = load i32, i32* %15, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds [3 x %struct.TYPE_9__], [3 x %struct.TYPE_9__]* %10, i64 0, i64 %131
  %133 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %132, i32 0, i32 1
  %134 = load i64, i64* %133, align 8
  %135 = call i32 @free(i64 %134)
  br label %136

136:                                              ; preds = %129
  %137 = load i32, i32* %15, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %15, align 4
  br label %126

139:                                              ; preds = %126
  %140 = call i32 @memset(%struct.rerere_io_mem* %17, i32 0, i32 24)
  %141 = load i32, i32* @rerere_mem_getline, align 4
  %142 = getelementptr inbounds %struct.rerere_io_mem, %struct.rerere_io_mem* %17, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %142, i32 0, i32 1
  store i32 %141, i32* %143, align 8
  %144 = load i8*, i8** %9, align 8
  %145 = icmp ne i8* %144, null
  br i1 %145, label %146, label %151

146:                                              ; preds = %139
  %147 = load i8*, i8** %9, align 8
  %148 = call i32* @fopen(i8* %147, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %149 = getelementptr inbounds %struct.rerere_io_mem, %struct.rerere_io_mem* %17, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %149, i32 0, i32 0
  store i32* %148, i32** %150, align 8
  br label %154

151:                                              ; preds = %139
  %152 = getelementptr inbounds %struct.rerere_io_mem, %struct.rerere_io_mem* %17, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %152, i32 0, i32 0
  store i32* null, i32** %153, align 8
  br label %154

154:                                              ; preds = %151, %146
  %155 = getelementptr inbounds %struct.rerere_io_mem, %struct.rerere_io_mem* %17, i32 0, i32 1
  %156 = call i32 @strbuf_init(i32* %155, i32 0)
  %157 = getelementptr inbounds %struct.rerere_io_mem, %struct.rerere_io_mem* %17, i32 0, i32 1
  %158 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 1
  %159 = load i32, i32* %158, align 4
  %160 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 0
  %161 = load i32, i32* %160, align 8
  %162 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 0
  %163 = load i32, i32* %162, align 8
  %164 = call i32 @strbuf_attach(i32* %157, i32 %159, i32 %161, i32 %163)
  %165 = load i8*, i8** %8, align 8
  %166 = bitcast %struct.rerere_io_mem* %17 to %struct.rerere_io*
  %167 = load i32, i32* %18, align 4
  %168 = call i32 @handle_path(i8* %165, %struct.rerere_io* %166, i32 %167)
  store i32 %168, i32* %16, align 4
  %169 = getelementptr inbounds %struct.rerere_io_mem, %struct.rerere_io_mem* %17, i32 0, i32 1
  %170 = call i32 @strbuf_release(i32* %169)
  %171 = getelementptr inbounds %struct.rerere_io_mem, %struct.rerere_io_mem* %17, i32 0, i32 0
  %172 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %171, i32 0, i32 0
  %173 = load i32*, i32** %172, align 8
  %174 = icmp ne i32* %173, null
  br i1 %174, label %175, label %180

175:                                              ; preds = %154
  %176 = getelementptr inbounds %struct.rerere_io_mem, %struct.rerere_io_mem* %17, i32 0, i32 0
  %177 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %176, i32 0, i32 0
  %178 = load i32*, i32** %177, align 8
  %179 = call i32 @fclose(i32* %178)
  br label %180

180:                                              ; preds = %175, %154
  %181 = load i32, i32* %16, align 4
  store i32 %181, i32* %5, align 4
  br label %182

182:                                              ; preds = %180, %34
  %183 = load i32, i32* %5, align 4
  ret i32 %183
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @ll_merge_marker_size(%struct.index_state*, i8*) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @index_name_pos(%struct.index_state*, i8*, i32) #2

declare dso_local i32 @ce_namelen(%struct.cache_entry*) #2

declare dso_local i64 @memcmp(i32, i8*, i32) #2

declare dso_local i32 @ce_stage(%struct.cache_entry*) #2

declare dso_local i64 @read_object_file(i32*, i32*, i64*) #2

declare dso_local i64 @xstrdup(i8*) #2

declare dso_local i32 @ll_merge(%struct.TYPE_10__*, i8*, %struct.TYPE_9__*, i32*, %struct.TYPE_9__*, i8*, %struct.TYPE_9__*, i8*, %struct.index_state*, i32*) #2

declare dso_local i32 @free(i64) #2

declare dso_local i32 @memset(%struct.rerere_io_mem*, i32, i32) #2

declare dso_local i32* @fopen(i8*, i8*) #2

declare dso_local i32 @strbuf_init(i32*, i32) #2

declare dso_local i32 @strbuf_attach(i32*, i32, i32, i32) #2

declare dso_local i32 @handle_path(i8*, %struct.rerere_io*, i32) #2

declare dso_local i32 @strbuf_release(i32*) #2

declare dso_local i32 @fclose(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
