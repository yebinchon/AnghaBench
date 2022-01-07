; ModuleID = '/home/carl/AnghaBench/git/extr_ll-merge.c_ll_ext_merge.c'
source_filename = "/home/carl/AnghaBench/git/extr_ll-merge.c_ll_ext_merge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i8* }
%struct.ll_merge_driver = type { i32*, i32 }
%struct.TYPE_3__ = type { i32, i32* }
%struct.ll_merge_options = type { i32 }
%struct.strbuf_expand_dict_entry = type { i8*, i8* }
%struct.stat = type { i32 }

@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 8
@.str = private unnamed_addr constant [2 x i8] c"O\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"A\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"B\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"L\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"P\00", align 1
@.str.5 = private unnamed_addr constant [43 x i8] c"custom merge driver %s lacks command line.\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@strbuf_expand_dict_cb = common dso_local global i32 0, align 4
@RUN_USING_SHELL = common dso_local global i32 0, align 4
@O_RDONLY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ll_merge_driver*, %struct.TYPE_3__*, i8*, i32*, i8*, i32*, i8*, i32*, i8*, %struct.ll_merge_options*, i32)* @ll_ext_merge to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ll_ext_merge(%struct.ll_merge_driver* %0, %struct.TYPE_3__* %1, i8* %2, i32* %3, i8* %4, i32* %5, i8* %6, i32* %7, i8* %8, %struct.ll_merge_options* %9, i32 %10) #0 {
  %12 = alloca %struct.ll_merge_driver*, align 8
  %13 = alloca %struct.TYPE_3__*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca %struct.ll_merge_options*, align 8
  %22 = alloca i32, align 4
  %23 = alloca [4 x [50 x i8]], align 16
  %24 = alloca %struct.strbuf, align 8
  %25 = alloca [6 x %struct.strbuf_expand_dict_entry], align 16
  %26 = alloca %struct.strbuf, align 8
  %27 = alloca [2 x i8*], align 16
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca %struct.stat, align 4
  store %struct.ll_merge_driver* %0, %struct.ll_merge_driver** %12, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %13, align 8
  store i8* %2, i8** %14, align 8
  store i32* %3, i32** %15, align 8
  store i8* %4, i8** %16, align 8
  store i32* %5, i32** %17, align 8
  store i8* %6, i8** %18, align 8
  store i32* %7, i32** %19, align 8
  store i8* %8, i8** %20, align 8
  store %struct.ll_merge_options* %9, %struct.ll_merge_options** %21, align 8
  store i32 %10, i32* %22, align 4
  %32 = bitcast %struct.strbuf* %24 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %32, i8* align 8 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 8, i1 false)
  %33 = bitcast %struct.strbuf* %26 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %33, i8* align 8 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 8, i1 false)
  %34 = bitcast [2 x i8*]* %27 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %34, i8 0, i64 16, i1 false)
  %35 = load %struct.ll_merge_options*, %struct.ll_merge_options** %21, align 8
  %36 = call i32 @assert(%struct.ll_merge_options* %35)
  %37 = load i8*, i8** %14, align 8
  %38 = call i32 @sq_quote_buf(%struct.strbuf* %26, i8* %37)
  %39 = getelementptr inbounds [6 x %struct.strbuf_expand_dict_entry], [6 x %struct.strbuf_expand_dict_entry]* %25, i64 0, i64 0
  %40 = getelementptr inbounds %struct.strbuf_expand_dict_entry, %struct.strbuf_expand_dict_entry* %39, i32 0, i32 0
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8** %40, align 16
  %41 = getelementptr inbounds [4 x [50 x i8]], [4 x [50 x i8]]* %23, i64 0, i64 0
  %42 = getelementptr inbounds [50 x i8], [50 x i8]* %41, i64 0, i64 0
  %43 = getelementptr inbounds [6 x %struct.strbuf_expand_dict_entry], [6 x %struct.strbuf_expand_dict_entry]* %25, i64 0, i64 0
  %44 = getelementptr inbounds %struct.strbuf_expand_dict_entry, %struct.strbuf_expand_dict_entry* %43, i32 0, i32 1
  store i8* %42, i8** %44, align 8
  %45 = getelementptr inbounds [6 x %struct.strbuf_expand_dict_entry], [6 x %struct.strbuf_expand_dict_entry]* %25, i64 0, i64 1
  %46 = getelementptr inbounds %struct.strbuf_expand_dict_entry, %struct.strbuf_expand_dict_entry* %45, i32 0, i32 0
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8** %46, align 16
  %47 = getelementptr inbounds [4 x [50 x i8]], [4 x [50 x i8]]* %23, i64 0, i64 1
  %48 = getelementptr inbounds [50 x i8], [50 x i8]* %47, i64 0, i64 0
  %49 = getelementptr inbounds [6 x %struct.strbuf_expand_dict_entry], [6 x %struct.strbuf_expand_dict_entry]* %25, i64 0, i64 1
  %50 = getelementptr inbounds %struct.strbuf_expand_dict_entry, %struct.strbuf_expand_dict_entry* %49, i32 0, i32 1
  store i8* %48, i8** %50, align 8
  %51 = getelementptr inbounds [6 x %struct.strbuf_expand_dict_entry], [6 x %struct.strbuf_expand_dict_entry]* %25, i64 0, i64 2
  %52 = getelementptr inbounds %struct.strbuf_expand_dict_entry, %struct.strbuf_expand_dict_entry* %51, i32 0, i32 0
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8** %52, align 16
  %53 = getelementptr inbounds [4 x [50 x i8]], [4 x [50 x i8]]* %23, i64 0, i64 2
  %54 = getelementptr inbounds [50 x i8], [50 x i8]* %53, i64 0, i64 0
  %55 = getelementptr inbounds [6 x %struct.strbuf_expand_dict_entry], [6 x %struct.strbuf_expand_dict_entry]* %25, i64 0, i64 2
  %56 = getelementptr inbounds %struct.strbuf_expand_dict_entry, %struct.strbuf_expand_dict_entry* %55, i32 0, i32 1
  store i8* %54, i8** %56, align 8
  %57 = getelementptr inbounds [6 x %struct.strbuf_expand_dict_entry], [6 x %struct.strbuf_expand_dict_entry]* %25, i64 0, i64 3
  %58 = getelementptr inbounds %struct.strbuf_expand_dict_entry, %struct.strbuf_expand_dict_entry* %57, i32 0, i32 0
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i8** %58, align 16
  %59 = getelementptr inbounds [4 x [50 x i8]], [4 x [50 x i8]]* %23, i64 0, i64 3
  %60 = getelementptr inbounds [50 x i8], [50 x i8]* %59, i64 0, i64 0
  %61 = getelementptr inbounds [6 x %struct.strbuf_expand_dict_entry], [6 x %struct.strbuf_expand_dict_entry]* %25, i64 0, i64 3
  %62 = getelementptr inbounds %struct.strbuf_expand_dict_entry, %struct.strbuf_expand_dict_entry* %61, i32 0, i32 1
  store i8* %60, i8** %62, align 8
  %63 = getelementptr inbounds [6 x %struct.strbuf_expand_dict_entry], [6 x %struct.strbuf_expand_dict_entry]* %25, i64 0, i64 4
  %64 = getelementptr inbounds %struct.strbuf_expand_dict_entry, %struct.strbuf_expand_dict_entry* %63, i32 0, i32 0
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i8** %64, align 16
  %65 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %26, i32 0, i32 0
  %66 = load i8*, i8** %65, align 8
  %67 = getelementptr inbounds [6 x %struct.strbuf_expand_dict_entry], [6 x %struct.strbuf_expand_dict_entry]* %25, i64 0, i64 4
  %68 = getelementptr inbounds %struct.strbuf_expand_dict_entry, %struct.strbuf_expand_dict_entry* %67, i32 0, i32 1
  store i8* %66, i8** %68, align 8
  %69 = getelementptr inbounds [6 x %struct.strbuf_expand_dict_entry], [6 x %struct.strbuf_expand_dict_entry]* %25, i64 0, i64 5
  %70 = getelementptr inbounds %struct.strbuf_expand_dict_entry, %struct.strbuf_expand_dict_entry* %69, i32 0, i32 0
  store i8* null, i8** %70, align 16
  %71 = getelementptr inbounds [6 x %struct.strbuf_expand_dict_entry], [6 x %struct.strbuf_expand_dict_entry]* %25, i64 0, i64 5
  %72 = getelementptr inbounds %struct.strbuf_expand_dict_entry, %struct.strbuf_expand_dict_entry* %71, i32 0, i32 1
  store i8* null, i8** %72, align 8
  %73 = load %struct.ll_merge_driver*, %struct.ll_merge_driver** %12, align 8
  %74 = getelementptr inbounds %struct.ll_merge_driver, %struct.ll_merge_driver* %73, i32 0, i32 0
  %75 = load i32*, i32** %74, align 8
  %76 = icmp eq i32* %75, null
  br i1 %76, label %77, label %82

77:                                               ; preds = %11
  %78 = load %struct.ll_merge_driver*, %struct.ll_merge_driver** %12, align 8
  %79 = getelementptr inbounds %struct.ll_merge_driver, %struct.ll_merge_driver* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 8
  %81 = call i32 @die(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.5, i64 0, i64 0), i32 %80)
  br label %82

82:                                               ; preds = %77, %11
  %83 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 1
  store i32* null, i32** %84, align 8
  %85 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 0
  store i32 0, i32* %86, align 8
  %87 = load i32*, i32** %15, align 8
  %88 = getelementptr inbounds [4 x [50 x i8]], [4 x [50 x i8]]* %23, i64 0, i64 0
  %89 = getelementptr inbounds [50 x i8], [50 x i8]* %88, i64 0, i64 0
  %90 = call i32 @create_temp(i32* %87, i8* %89, i32 50)
  %91 = load i32*, i32** %17, align 8
  %92 = getelementptr inbounds [4 x [50 x i8]], [4 x [50 x i8]]* %23, i64 0, i64 1
  %93 = getelementptr inbounds [50 x i8], [50 x i8]* %92, i64 0, i64 0
  %94 = call i32 @create_temp(i32* %91, i8* %93, i32 50)
  %95 = load i32*, i32** %19, align 8
  %96 = getelementptr inbounds [4 x [50 x i8]], [4 x [50 x i8]]* %23, i64 0, i64 2
  %97 = getelementptr inbounds [50 x i8], [50 x i8]* %96, i64 0, i64 0
  %98 = call i32 @create_temp(i32* %95, i8* %97, i32 50)
  %99 = getelementptr inbounds [4 x [50 x i8]], [4 x [50 x i8]]* %23, i64 0, i64 3
  %100 = getelementptr inbounds [50 x i8], [50 x i8]* %99, i64 0, i64 0
  %101 = load i32, i32* %22, align 4
  %102 = call i32 @xsnprintf(i8* %100, i32 50, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i32 %101)
  %103 = load %struct.ll_merge_driver*, %struct.ll_merge_driver** %12, align 8
  %104 = getelementptr inbounds %struct.ll_merge_driver, %struct.ll_merge_driver* %103, i32 0, i32 0
  %105 = load i32*, i32** %104, align 8
  %106 = load i32, i32* @strbuf_expand_dict_cb, align 4
  %107 = bitcast [6 x %struct.strbuf_expand_dict_entry]* %25 to %struct.strbuf_expand_dict_entry**
  %108 = call i32 @strbuf_expand(%struct.strbuf* %24, i32* %105, i32 %106, %struct.strbuf_expand_dict_entry** %107)
  %109 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %24, i32 0, i32 0
  %110 = load i8*, i8** %109, align 8
  %111 = getelementptr inbounds [2 x i8*], [2 x i8*]* %27, i64 0, i64 0
  store i8* %110, i8** %111, align 16
  %112 = getelementptr inbounds [2 x i8*], [2 x i8*]* %27, i64 0, i64 0
  %113 = load i32, i32* @RUN_USING_SHELL, align 4
  %114 = call i32 @run_command_v_opt(i8** %112, i32 %113)
  store i32 %114, i32* %28, align 4
  %115 = getelementptr inbounds [4 x [50 x i8]], [4 x [50 x i8]]* %23, i64 0, i64 1
  %116 = getelementptr inbounds [50 x i8], [50 x i8]* %115, i64 0, i64 0
  %117 = load i32, i32* @O_RDONLY, align 4
  %118 = call i32 @open(i8* %116, i32 %117)
  store i32 %118, i32* %29, align 4
  %119 = load i32, i32* %29, align 4
  %120 = icmp slt i32 %119, 0
  br i1 %120, label %121, label %122

121:                                              ; preds = %82
  br label %161

122:                                              ; preds = %82
  %123 = load i32, i32* %29, align 4
  %124 = call i64 @fstat(i32 %123, %struct.stat* %31)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %127

126:                                              ; preds = %122
  br label %158

127:                                              ; preds = %122
  %128 = getelementptr inbounds %struct.stat, %struct.stat* %31, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %131 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %130, i32 0, i32 0
  store i32 %129, i32* %131, align 8
  %132 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %133 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = call i32* @xmallocz(i32 %134)
  %136 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %137 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %136, i32 0, i32 1
  store i32* %135, i32** %137, align 8
  %138 = load i32, i32* %29, align 4
  %139 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %140 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %139, i32 0, i32 1
  %141 = load i32*, i32** %140, align 8
  %142 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %143 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = call i32 @read_in_full(i32 %138, i32* %141, i32 %144)
  %146 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %147 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = icmp ne i32 %145, %148
  br i1 %149, label %150, label %157

150:                                              ; preds = %127
  %151 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %152 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %151, i32 0, i32 1
  %153 = load i32*, i32** %152, align 8
  %154 = call i32 @FREE_AND_NULL(i32* %153)
  %155 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %156 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %155, i32 0, i32 0
  store i32 0, i32* %156, align 8
  br label %157

157:                                              ; preds = %150, %127
  br label %158

158:                                              ; preds = %157, %126
  %159 = load i32, i32* %29, align 4
  %160 = call i32 @close(i32 %159)
  br label %161

161:                                              ; preds = %158, %121
  store i32 0, i32* %30, align 4
  br label %162

162:                                              ; preds = %171, %161
  %163 = load i32, i32* %30, align 4
  %164 = icmp slt i32 %163, 3
  br i1 %164, label %165, label %174

165:                                              ; preds = %162
  %166 = load i32, i32* %30, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds [4 x [50 x i8]], [4 x [50 x i8]]* %23, i64 0, i64 %167
  %169 = getelementptr inbounds [50 x i8], [50 x i8]* %168, i64 0, i64 0
  %170 = call i32 @unlink_or_warn(i8* %169)
  br label %171

171:                                              ; preds = %165
  %172 = load i32, i32* %30, align 4
  %173 = add nsw i32 %172, 1
  store i32 %173, i32* %30, align 4
  br label %162

174:                                              ; preds = %162
  %175 = call i32 @strbuf_release(%struct.strbuf* %24)
  %176 = call i32 @strbuf_release(%struct.strbuf* %26)
  %177 = load i32, i32* %28, align 4
  ret i32 %177
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @assert(%struct.ll_merge_options*) #2

declare dso_local i32 @sq_quote_buf(%struct.strbuf*, i8*) #2

declare dso_local i32 @die(i8*, i32) #2

declare dso_local i32 @create_temp(i32*, i8*, i32) #2

declare dso_local i32 @xsnprintf(i8*, i32, i8*, i32) #2

declare dso_local i32 @strbuf_expand(%struct.strbuf*, i32*, i32, %struct.strbuf_expand_dict_entry**) #2

declare dso_local i32 @run_command_v_opt(i8**, i32) #2

declare dso_local i32 @open(i8*, i32) #2

declare dso_local i64 @fstat(i32, %struct.stat*) #2

declare dso_local i32* @xmallocz(i32) #2

declare dso_local i32 @read_in_full(i32, i32*, i32) #2

declare dso_local i32 @FREE_AND_NULL(i32*) #2

declare dso_local i32 @close(i32) #2

declare dso_local i32 @unlink_or_warn(i8*) #2

declare dso_local i32 @strbuf_release(%struct.strbuf*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
