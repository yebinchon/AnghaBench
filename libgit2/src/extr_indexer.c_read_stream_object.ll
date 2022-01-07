; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_indexer.c_read_stream_object.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_indexer.c_read_stream_object.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { i32, i32, i8*, %struct.TYPE_20__*, i64, i32, i32, i8*, %struct.TYPE_21__ }
%struct.TYPE_20__ = type { %struct.TYPE_19__ }
%struct.TYPE_19__ = type { i64 }
%struct.TYPE_21__ = type { i8* }
%struct.TYPE_22__ = type { i32, i32 }

@GIT_EBUFS = common dso_local global i32 0, align 4
@GIT_OBJECT_REF_DELTA = common dso_local global i64 0, align 8
@GIT_OBJECT_OFS_DELTA = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_23__*, %struct.TYPE_22__*)* @read_stream_object to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_stream_object(%struct.TYPE_23__* %0, %struct.TYPE_22__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_23__*, align 8
  %5 = alloca %struct.TYPE_22__*, align 8
  %6 = alloca %struct.TYPE_21__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  store %struct.TYPE_23__* %0, %struct.TYPE_23__** %4, align 8
  store %struct.TYPE_22__* %1, %struct.TYPE_22__** %5, align 8
  %12 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %12, i32 0, i32 8
  store %struct.TYPE_21__* %13, %struct.TYPE_21__** %6, align 8
  %14 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %14, i32 0, i32 2
  %16 = load i8*, i8** %15, align 8
  store i8* %16, i8** %7, align 8
  store i32* null, i32** %10, align 8
  %17 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %17, i32 0, i32 3
  %19 = load %struct.TYPE_20__*, %struct.TYPE_20__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = inttoptr i64 %22 to i8*
  %24 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %24, i32 0, i32 2
  %26 = load i8*, i8** %25, align 8
  %27 = getelementptr i8, i8* %26, i64 20
  %28 = icmp ule i8* %23, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %2
  %30 = load i32, i32* @GIT_EBUFS, align 4
  store i32 %30, i32* %3, align 4
  br label %198

31:                                               ; preds = %2
  %32 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %127, label %36

36:                                               ; preds = %31
  %37 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %37, i32 0, i32 3
  %39 = load %struct.TYPE_20__*, %struct.TYPE_20__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %39, i32 0, i32 0
  %41 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %41, i32 0, i32 2
  %43 = call i32 @git_packfile_unpack_header(i64* %8, i64* %9, %struct.TYPE_19__* %40, i32** %10, i8** %42)
  store i32 %43, i32* %11, align 4
  %44 = load i32, i32* %11, align 4
  %45 = load i32, i32* @GIT_EBUFS, align 4
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %47, label %52

47:                                               ; preds = %36
  %48 = load i8*, i8** %7, align 8
  %49 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %49, i32 0, i32 2
  store i8* %48, i8** %50, align 8
  %51 = load i32, i32* %11, align 4
  store i32 %51, i32* %3, align 4
  br label %198

52:                                               ; preds = %36
  %53 = load i32, i32* %11, align 4
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %52
  %56 = load i32, i32* %11, align 4
  store i32 %56, i32* %3, align 4
  br label %198

57:                                               ; preds = %52
  %58 = call i32 @git_mwindow_close(i32** %10)
  %59 = load i8*, i8** %7, align 8
  %60 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %60, i32 0, i32 7
  store i8* %59, i8** %61, align 8
  %62 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %62, i32 0, i32 5
  %64 = call i32 @git_hash_init(i32* %63)
  %65 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %65, i32 0, i32 6
  %67 = call i32 @git_buf_clear(i32* %66)
  %68 = load i64, i64* %9, align 8
  %69 = load i64, i64* @GIT_OBJECT_REF_DELTA, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %75, label %71

71:                                               ; preds = %57
  %72 = load i64, i64* %9, align 8
  %73 = load i64, i64* @GIT_OBJECT_OFS_DELTA, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %75, label %95

75:                                               ; preds = %71, %57
  %76 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %77 = load i64, i64* %9, align 8
  %78 = call i32 @advance_delta_offset(%struct.TYPE_23__* %76, i64 %77)
  store i32 %78, i32* %11, align 4
  %79 = load i32, i32* %11, align 4
  %80 = load i32, i32* @GIT_EBUFS, align 4
  %81 = icmp eq i32 %79, %80
  br i1 %81, label %82, label %87

82:                                               ; preds = %75
  %83 = load i8*, i8** %7, align 8
  %84 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %85 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %84, i32 0, i32 2
  store i8* %83, i8** %85, align 8
  %86 = load i32, i32* %11, align 4
  store i32 %86, i32* %3, align 4
  br label %198

87:                                               ; preds = %75
  %88 = load i32, i32* %11, align 4
  %89 = icmp slt i32 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %87
  %91 = load i32, i32* %11, align 4
  store i32 %91, i32* %3, align 4
  br label %198

92:                                               ; preds = %87
  %93 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %94 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %93, i32 0, i32 1
  store i32 1, i32* %94, align 4
  br label %108

95:                                               ; preds = %71
  %96 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %97 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %96, i32 0, i32 1
  store i32 0, i32* %97, align 4
  %98 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %99 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %98, i32 0, i32 5
  %100 = load i64, i64* %8, align 8
  %101 = load i64, i64* %9, align 8
  %102 = call i32 @hash_header(i32* %99, i64 %100, i64 %101)
  store i32 %102, i32* %11, align 4
  %103 = load i32, i32* %11, align 4
  %104 = icmp slt i32 %103, 0
  br i1 %104, label %105, label %107

105:                                              ; preds = %95
  %106 = load i32, i32* %11, align 4
  store i32 %106, i32* %3, align 4
  br label %198

107:                                              ; preds = %95
  br label %108

108:                                              ; preds = %107, %92
  %109 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %110 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %109, i32 0, i32 0
  store i32 1, i32* %110, align 8
  %111 = load i64, i64* %9, align 8
  %112 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %113 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %112, i32 0, i32 4
  store i64 %111, i64* %113, align 8
  %114 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %115 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %116 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %115, i32 0, i32 3
  %117 = load %struct.TYPE_20__*, %struct.TYPE_20__** %116, align 8
  %118 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %119 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %118, i32 0, i32 2
  %120 = load i8*, i8** %119, align 8
  %121 = call i32 @git_packfile_stream_open(%struct.TYPE_21__* %114, %struct.TYPE_20__* %117, i8* %120)
  store i32 %121, i32* %11, align 4
  %122 = load i32, i32* %11, align 4
  %123 = icmp slt i32 %122, 0
  br i1 %123, label %124, label %126

124:                                              ; preds = %108
  %125 = load i32, i32* %11, align 4
  store i32 %125, i32* %3, align 4
  br label %198

126:                                              ; preds = %108
  br label %127

127:                                              ; preds = %126, %31
  %128 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %129 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %136

132:                                              ; preds = %127
  %133 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %134 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %135 = call i32 @read_object_stream(%struct.TYPE_23__* %133, %struct.TYPE_21__* %134)
  store i32 %135, i32* %11, align 4
  br label %140

136:                                              ; preds = %127
  %137 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %138 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %139 = call i32 @hash_object_stream(%struct.TYPE_23__* %137, %struct.TYPE_21__* %138)
  store i32 %139, i32* %11, align 4
  br label %140

140:                                              ; preds = %136, %132
  %141 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %142 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %141, i32 0, i32 0
  %143 = load i8*, i8** %142, align 8
  %144 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %145 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %144, i32 0, i32 2
  store i8* %143, i8** %145, align 8
  %146 = load i32, i32* %11, align 4
  %147 = load i32, i32* @GIT_EBUFS, align 4
  %148 = icmp eq i32 %146, %147
  br i1 %148, label %149, label %151

149:                                              ; preds = %140
  %150 = load i32, i32* %11, align 4
  store i32 %150, i32* %3, align 4
  br label %198

151:                                              ; preds = %140
  %152 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %153 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %152, i32 0, i32 0
  store i32 0, i32* %153, align 8
  %154 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %155 = call i32 @git_packfile_stream_dispose(%struct.TYPE_21__* %154)
  %156 = load i32, i32* %11, align 4
  %157 = icmp slt i32 %156, 0
  br i1 %157, label %158, label %160

158:                                              ; preds = %151
  %159 = load i32, i32* %11, align 4
  store i32 %159, i32* %3, align 4
  br label %198

160:                                              ; preds = %151
  %161 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %162 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %161, i32 0, i32 1
  %163 = load i32, i32* %162, align 4
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %168

165:                                              ; preds = %160
  %166 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %167 = call i32 @store_delta(%struct.TYPE_23__* %166)
  store i32 %167, i32* %11, align 4
  br label %171

168:                                              ; preds = %160
  %169 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %170 = call i32 @store_object(%struct.TYPE_23__* %169)
  store i32 %170, i32* %11, align 4
  br label %171

171:                                              ; preds = %168, %165
  %172 = load i32, i32* %11, align 4
  %173 = icmp slt i32 %172, 0
  br i1 %173, label %174, label %176

174:                                              ; preds = %171
  %175 = load i32, i32* %11, align 4
  store i32 %175, i32* %3, align 4
  br label %198

176:                                              ; preds = %171
  %177 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %178 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %177, i32 0, i32 1
  %179 = load i32, i32* %178, align 4
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %186, label %181

181:                                              ; preds = %176
  %182 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %183 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %182, i32 0, i32 1
  %184 = load i32, i32* %183, align 4
  %185 = add nsw i32 %184, 1
  store i32 %185, i32* %183, align 4
  br label %186

186:                                              ; preds = %181, %176
  %187 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %188 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 4
  %190 = add nsw i32 %189, 1
  store i32 %190, i32* %188, align 4
  %191 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %192 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %193 = call i32 @do_progress_callback(%struct.TYPE_23__* %191, %struct.TYPE_22__* %192)
  store i32 %193, i32* %11, align 4
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %197

195:                                              ; preds = %186
  %196 = load i32, i32* %11, align 4
  store i32 %196, i32* %3, align 4
  br label %198

197:                                              ; preds = %186
  store i32 0, i32* %3, align 4
  br label %198

198:                                              ; preds = %197, %195, %174, %158, %149, %124, %105, %90, %82, %55, %47, %29
  %199 = load i32, i32* %3, align 4
  ret i32 %199
}

declare dso_local i32 @git_packfile_unpack_header(i64*, i64*, %struct.TYPE_19__*, i32**, i8**) #1

declare dso_local i32 @git_mwindow_close(i32**) #1

declare dso_local i32 @git_hash_init(i32*) #1

declare dso_local i32 @git_buf_clear(i32*) #1

declare dso_local i32 @advance_delta_offset(%struct.TYPE_23__*, i64) #1

declare dso_local i32 @hash_header(i32*, i64, i64) #1

declare dso_local i32 @git_packfile_stream_open(%struct.TYPE_21__*, %struct.TYPE_20__*, i8*) #1

declare dso_local i32 @read_object_stream(%struct.TYPE_23__*, %struct.TYPE_21__*) #1

declare dso_local i32 @hash_object_stream(%struct.TYPE_23__*, %struct.TYPE_21__*) #1

declare dso_local i32 @git_packfile_stream_dispose(%struct.TYPE_21__*) #1

declare dso_local i32 @store_delta(%struct.TYPE_23__*) #1

declare dso_local i32 @store_object(%struct.TYPE_23__*) #1

declare dso_local i32 @do_progress_callback(%struct.TYPE_23__*, %struct.TYPE_22__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
