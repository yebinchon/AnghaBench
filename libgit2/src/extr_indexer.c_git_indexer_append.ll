; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_indexer.c_git_indexer_append.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_indexer.c_git_indexer_append.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32, i32, i64, i32, i32, %struct.TYPE_17__*, %struct.git_pack_header }
%struct.TYPE_17__ = type { i32, i32, %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i64 }
%struct.git_pack_header = type { i32 }
%struct.TYPE_15__ = type { i32, i64, i64, i64, i64, i64 }

@git_indexer__max_objects = common dso_local global i64 0, align 8
@GIT_ERROR_INDEXER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"too many objects\00", align 1
@objects_cmp = common dso_local global i32* null, align 8
@GIT_EBUFS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @git_indexer_append(%struct.TYPE_16__* %0, i8* %1, i64 %2, %struct.TYPE_15__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_16__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_15__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.git_pack_header*, align 8
  %12 = alloca %struct.TYPE_14__*, align 8
  %13 = alloca i32, align 4
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store %struct.TYPE_15__* %3, %struct.TYPE_15__** %9, align 8
  store i32 -1, i32* %10, align 4
  %14 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %14, i32 0, i32 6
  store %struct.git_pack_header* %15, %struct.git_pack_header** %11, align 8
  %16 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %16, i32 0, i32 5
  %18 = load %struct.TYPE_17__*, %struct.TYPE_17__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %18, i32 0, i32 2
  store %struct.TYPE_14__* %19, %struct.TYPE_14__** %12, align 8
  %20 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %21 = icmp ne %struct.TYPE_16__* %20, null
  br i1 %21, label %22, label %28

22:                                               ; preds = %4
  %23 = load i8*, i8** %7, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %25, label %28

25:                                               ; preds = %22
  %26 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %27 = icmp ne %struct.TYPE_15__* %26, null
  br label %28

28:                                               ; preds = %25, %22, %4
  %29 = phi i1 [ false, %22 ], [ false, %4 ], [ %27, %25 ]
  %30 = zext i1 %29 to i32
  %31 = call i32 @assert(i32 %30)
  %32 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %33 = load i8*, i8** %7, align 8
  %34 = load i64, i64* %8, align 8
  %35 = call i32 @append_to_pack(%struct.TYPE_16__* %32, i8* %33, i64 %34)
  store i32 %35, i32* %10, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %28
  %38 = load i32, i32* %10, align 4
  store i32 %38, i32* %5, align 4
  br label %179

39:                                               ; preds = %28
  %40 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %41 = load i8*, i8** %7, align 8
  %42 = load i64, i64* %8, align 8
  %43 = trunc i64 %42 to i32
  %44 = call i32 @hash_partially(%struct.TYPE_16__* %40, i8* %41, i32 %43)
  %45 = load i64, i64* %8, align 8
  %46 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %46, i32 0, i32 5
  %48 = load %struct.TYPE_17__*, %struct.TYPE_17__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %48, i32 0, i32 2
  %50 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = add i64 %51, %45
  store i64 %52, i64* %50, align 8
  %53 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %151, label %57

57:                                               ; preds = %39
  %58 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %58, i32 0, i32 5
  %60 = load %struct.TYPE_17__*, %struct.TYPE_17__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %60, i32 0, i32 2
  %62 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = trunc i64 %63 to i32
  %65 = zext i32 %64 to i64
  %66 = icmp ult i64 %65, 4
  br i1 %66, label %67, label %68

67:                                               ; preds = %57
  store i32 0, i32* %5, align 4
  br label %179

68:                                               ; preds = %57
  %69 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %70 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %69, i32 0, i32 6
  %71 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %72 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %71, i32 0, i32 5
  %73 = load %struct.TYPE_17__*, %struct.TYPE_17__** %72, align 8
  %74 = call i32 @parse_header(%struct.git_pack_header* %70, %struct.TYPE_17__* %73)
  store i32 %74, i32* %10, align 4
  %75 = icmp slt i32 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %68
  %77 = load i32, i32* %10, align 4
  store i32 %77, i32* %5, align 4
  br label %179

78:                                               ; preds = %68
  %79 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %80 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %79, i32 0, i32 0
  store i32 1, i32* %80, align 8
  %81 = load %struct.git_pack_header*, %struct.git_pack_header** %11, align 8
  %82 = getelementptr inbounds %struct.git_pack_header, %struct.git_pack_header* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call i64 @ntohl(i32 %83)
  %85 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %86 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %85, i32 0, i32 2
  store i64 %84, i64* %86, align 8
  %87 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %88 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %87, i32 0, i32 1
  store i32 4, i32* %88, align 4
  %89 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %90 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %89, i32 0, i32 2
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* @git_indexer__max_objects, align 8
  %93 = icmp sle i64 %91, %92
  br i1 %93, label %94, label %99

94:                                               ; preds = %78
  %95 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %96 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %95, i32 0, i32 2
  %97 = load i64, i64* %96, align 8
  %98 = trunc i64 %97 to i32
  store i32 %98, i32* %13, align 4
  br label %102

99:                                               ; preds = %78
  %100 = load i32, i32* @GIT_ERROR_INDEXER, align 4
  %101 = call i32 @git_error_set(i32 %100, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  br label %179

102:                                              ; preds = %94
  %103 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %104 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %103, i32 0, i32 5
  %105 = load %struct.TYPE_17__*, %struct.TYPE_17__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %105, i32 0, i32 1
  %107 = call i64 @git_oidmap_new(i32* %106)
  %108 = icmp slt i64 %107, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %102
  store i32 -1, i32* %5, align 4
  br label %179

110:                                              ; preds = %102
  %111 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %112 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %111, i32 0, i32 5
  %113 = load %struct.TYPE_17__*, %struct.TYPE_17__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %113, i32 0, i32 0
  store i32 1, i32* %114, align 8
  %115 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %116 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %115, i32 0, i32 4
  %117 = load i32, i32* %13, align 4
  %118 = load i32*, i32** @objects_cmp, align 8
  %119 = call i64 @git_vector_init(i32* %116, i32 %117, i32* %118)
  %120 = icmp slt i64 %119, 0
  br i1 %120, label %121, label %122

121:                                              ; preds = %110
  store i32 -1, i32* %5, align 4
  br label %179

122:                                              ; preds = %110
  %123 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %124 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %123, i32 0, i32 3
  %125 = load i32, i32* %13, align 4
  %126 = udiv i32 %125, 2
  %127 = call i64 @git_vector_init(i32* %124, i32 %126, i32* null)
  %128 = icmp slt i64 %127, 0
  br i1 %128, label %129, label %130

129:                                              ; preds = %122
  store i32 -1, i32* %5, align 4
  br label %179

130:                                              ; preds = %122
  %131 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %132 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %131, i32 0, i32 5
  store i64 0, i64* %132, align 8
  %133 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %134 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %133, i32 0, i32 4
  store i64 0, i64* %134, align 8
  %135 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %136 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %135, i32 0, i32 3
  store i64 0, i64* %136, align 8
  %137 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %138 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %137, i32 0, i32 2
  store i64 0, i64* %138, align 8
  %139 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %140 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %139, i32 0, i32 1
  store i64 0, i64* %140, align 8
  %141 = load i32, i32* %13, align 4
  %142 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %143 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %142, i32 0, i32 0
  store i32 %141, i32* %143, align 8
  %144 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %145 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %146 = call i32 @do_progress_callback(%struct.TYPE_16__* %144, %struct.TYPE_15__* %145)
  store i32 %146, i32* %10, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %150

148:                                              ; preds = %130
  %149 = load i32, i32* %10, align 4
  store i32 %149, i32* %5, align 4
  br label %179

150:                                              ; preds = %130
  br label %151

151:                                              ; preds = %150, %39
  %152 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %153 = call i32 @git_mwindow_free_all(%struct.TYPE_14__* %152)
  br label %154

154:                                              ; preds = %173, %151
  %155 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %156 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %155, i32 0, i32 1
  %157 = load i64, i64* %156, align 8
  %158 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %159 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %158, i32 0, i32 2
  %160 = load i64, i64* %159, align 8
  %161 = icmp slt i64 %157, %160
  br i1 %161, label %162, label %174

162:                                              ; preds = %154
  %163 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %164 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %165 = call i32 @read_stream_object(%struct.TYPE_16__* %163, %struct.TYPE_15__* %164)
  store i32 %165, i32* %10, align 4
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %173

167:                                              ; preds = %162
  %168 = load i32, i32* %10, align 4
  %169 = load i32, i32* @GIT_EBUFS, align 4
  %170 = icmp eq i32 %168, %169
  br i1 %170, label %171, label %172

171:                                              ; preds = %167
  br label %174

172:                                              ; preds = %167
  br label %175

173:                                              ; preds = %162
  br label %154

174:                                              ; preds = %171, %154
  store i32 0, i32* %5, align 4
  br label %179

175:                                              ; preds = %172
  %176 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %177 = call i32 @git_mwindow_free_all(%struct.TYPE_14__* %176)
  %178 = load i32, i32* %10, align 4
  store i32 %178, i32* %5, align 4
  br label %179

179:                                              ; preds = %175, %174, %148, %129, %121, %109, %99, %76, %67, %37
  %180 = load i32, i32* %5, align 4
  ret i32 %180
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @append_to_pack(%struct.TYPE_16__*, i8*, i64) #1

declare dso_local i32 @hash_partially(%struct.TYPE_16__*, i8*, i32) #1

declare dso_local i32 @parse_header(%struct.git_pack_header*, %struct.TYPE_17__*) #1

declare dso_local i64 @ntohl(i32) #1

declare dso_local i32 @git_error_set(i32, i8*) #1

declare dso_local i64 @git_oidmap_new(i32*) #1

declare dso_local i64 @git_vector_init(i32*, i32, i32*) #1

declare dso_local i32 @do_progress_callback(%struct.TYPE_16__*, %struct.TYPE_15__*) #1

declare dso_local i32 @git_mwindow_free_all(%struct.TYPE_14__*) #1

declare dso_local i32 @read_stream_object(%struct.TYPE_16__*, %struct.TYPE_15__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
