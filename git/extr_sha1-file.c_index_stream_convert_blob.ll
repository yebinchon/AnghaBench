; ModuleID = '/home/carl/AnghaBench/git/extr_sha1-file.c_index_stream_convert_blob.c'
source_filename = "/home/carl/AnghaBench/git/extr_sha1-file.c_index_stream_convert_blob.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32, i32 }
%struct.index_state = type { i32 }
%struct.object_id = type { i32 }

@HASH_WRITE_OBJECT = common dso_local global i32 0, align 4
@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 4
@OBJ_BLOB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.index_state*, %struct.object_id*, i32, i8*, i32)* @index_stream_convert_blob to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @index_stream_convert_blob(%struct.index_state* %0, %struct.object_id* %1, i32 %2, i8* %3, i32 %4) #0 {
  %6 = alloca %struct.index_state*, align 8
  %7 = alloca %struct.object_id*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.strbuf, align 4
  store %struct.index_state* %0, %struct.index_state** %6, align 8
  store %struct.object_id* %1, %struct.object_id** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  store i32 %4, i32* %10, align 4
  %14 = load i32, i32* %10, align 4
  %15 = load i32, i32* @HASH_WRITE_OBJECT, align 4
  %16 = and i32 %14, %15
  store i32 %16, i32* %12, align 4
  %17 = bitcast %struct.strbuf* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %17, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 8, i1 false)
  %18 = load i8*, i8** %9, align 8
  %19 = call i32 @assert(i8* %18)
  %20 = load %struct.index_state*, %struct.index_state** %6, align 8
  %21 = load i8*, i8** %9, align 8
  %22 = call i8* @would_convert_to_git_filter_fd(%struct.index_state* %20, i8* %21)
  %23 = call i32 @assert(i8* %22)
  %24 = load %struct.index_state*, %struct.index_state** %6, align 8
  %25 = load i8*, i8** %9, align 8
  %26 = load i32, i32* %8, align 4
  %27 = load i32, i32* %10, align 4
  %28 = call i32 @get_conv_flags(i32 %27)
  %29 = call i32 @convert_to_git_filter_fd(%struct.index_state* %24, i8* %25, i32 %26, %struct.strbuf* %13, i32 %28)
  %30 = load i32, i32* %12, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %41

32:                                               ; preds = %5
  %33 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %13, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %13, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @OBJ_BLOB, align 4
  %38 = call i32 @type_name(i32 %37)
  %39 = load %struct.object_id*, %struct.object_id** %7, align 8
  %40 = call i32 @write_object_file(i32 %34, i32 %36, i32 %38, %struct.object_id* %39)
  store i32 %40, i32* %11, align 4
  br label %50

41:                                               ; preds = %5
  %42 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %13, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %13, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @OBJ_BLOB, align 4
  %47 = call i32 @type_name(i32 %46)
  %48 = load %struct.object_id*, %struct.object_id** %7, align 8
  %49 = call i32 @hash_object_file(i32 %43, i32 %45, i32 %47, %struct.object_id* %48)
  store i32 %49, i32* %11, align 4
  br label %50

50:                                               ; preds = %41, %32
  %51 = call i32 @strbuf_release(%struct.strbuf* %13)
  %52 = load i32, i32* %11, align 4
  ret i32 %52
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @assert(i8*) #2

declare dso_local i8* @would_convert_to_git_filter_fd(%struct.index_state*, i8*) #2

declare dso_local i32 @convert_to_git_filter_fd(%struct.index_state*, i8*, i32, %struct.strbuf*, i32) #2

declare dso_local i32 @get_conv_flags(i32) #2

declare dso_local i32 @write_object_file(i32, i32, i32, %struct.object_id*) #2

declare dso_local i32 @type_name(i32) #2

declare dso_local i32 @hash_object_file(i32, i32, i32, %struct.object_id*) #2

declare dso_local i32 @strbuf_release(%struct.strbuf*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
