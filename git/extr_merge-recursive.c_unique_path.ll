; ModuleID = '/home/carl/AnghaBench/git/extr_merge-recursive.c_unique_path.c'
source_filename = "/home/carl/AnghaBench/git/extr_merge-recursive.c_unique_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i64, i32 }
%struct.merge_options = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.path_hashmap_entry = type { i32, i32 }

@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 8
@.str = private unnamed_addr constant [4 x i8] c"%s~\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"_%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.merge_options*, i8*, i8*)* @unique_path to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @unique_path(%struct.merge_options* %0, i8* %1, i8* %2) #0 {
  %4 = alloca %struct.merge_options*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.path_hashmap_entry*, align 8
  %8 = alloca %struct.strbuf, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.merge_options* %0, %struct.merge_options** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %11 = bitcast %struct.strbuf* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %11, i8* align 8 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 16, i1 false)
  store i32 0, i32* %9, align 4
  %12 = load i8*, i8** %5, align 8
  %13 = call i32 @strbuf_addf(%struct.strbuf* %8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %12)
  %14 = load i8*, i8** %6, align 8
  %15 = call i32 @add_flattened_path(%struct.strbuf* %8, i8* %14)
  %16 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %8, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  store i64 %17, i64* %10, align 8
  br label %18

18:                                               ; preds = %46, %3
  %19 = load %struct.merge_options*, %struct.merge_options** %4, align 8
  %20 = getelementptr inbounds %struct.merge_options, %struct.merge_options* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %8, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @path_hash(i32 %24)
  %26 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %8, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = call i64 @hashmap_get_from_hash(i32* %22, i32 %25, i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %44, label %30

30:                                               ; preds = %18
  %31 = load %struct.merge_options*, %struct.merge_options** %4, align 8
  %32 = getelementptr inbounds %struct.merge_options, %struct.merge_options* %31, i32 0, i32 0
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %42, label %37

37:                                               ; preds = %30
  %38 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %8, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = call i64 @file_exists(i32 %39)
  %41 = icmp ne i64 %40, 0
  br label %42

42:                                               ; preds = %37, %30
  %43 = phi i1 [ false, %30 ], [ %41, %37 ]
  br label %44

44:                                               ; preds = %42, %18
  %45 = phi i1 [ true, %18 ], [ %43, %42 ]
  br i1 %45, label %46, label %54

46:                                               ; preds = %44
  %47 = load i64, i64* %10, align 8
  %48 = call i32 @strbuf_setlen(%struct.strbuf* %8, i64 %47)
  %49 = load i32, i32* %9, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %9, align 4
  %51 = sext i32 %49 to i64
  %52 = inttoptr i64 %51 to i8*
  %53 = call i32 @strbuf_addf(%struct.strbuf* %8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %52)
  br label %18

54:                                               ; preds = %44
  %55 = load %struct.path_hashmap_entry*, %struct.path_hashmap_entry** %7, align 8
  %56 = load i8*, i8** %5, align 8
  %57 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %8, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %8, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = call i32 @FLEX_ALLOC_MEM(%struct.path_hashmap_entry* %55, i8* %56, i32 %58, i64 %60)
  %62 = load %struct.path_hashmap_entry*, %struct.path_hashmap_entry** %7, align 8
  %63 = getelementptr inbounds %struct.path_hashmap_entry, %struct.path_hashmap_entry* %62, i32 0, i32 0
  %64 = load %struct.path_hashmap_entry*, %struct.path_hashmap_entry** %7, align 8
  %65 = getelementptr inbounds %struct.path_hashmap_entry, %struct.path_hashmap_entry* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @path_hash(i32 %66)
  %68 = call i32 @hashmap_entry_init(i32* %63, i32 %67)
  %69 = load %struct.merge_options*, %struct.merge_options** %4, align 8
  %70 = getelementptr inbounds %struct.merge_options, %struct.merge_options* %69, i32 0, i32 0
  %71 = load %struct.TYPE_2__*, %struct.TYPE_2__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  %73 = load %struct.path_hashmap_entry*, %struct.path_hashmap_entry** %7, align 8
  %74 = getelementptr inbounds %struct.path_hashmap_entry, %struct.path_hashmap_entry* %73, i32 0, i32 0
  %75 = call i32 @hashmap_add(i32* %72, i32* %74)
  %76 = call i8* @strbuf_detach(%struct.strbuf* %8, i32* null)
  ret i8* %76
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @strbuf_addf(%struct.strbuf*, i8*, i8*) #2

declare dso_local i32 @add_flattened_path(%struct.strbuf*, i8*) #2

declare dso_local i64 @hashmap_get_from_hash(i32*, i32, i32) #2

declare dso_local i32 @path_hash(i32) #2

declare dso_local i64 @file_exists(i32) #2

declare dso_local i32 @strbuf_setlen(%struct.strbuf*, i64) #2

declare dso_local i32 @FLEX_ALLOC_MEM(%struct.path_hashmap_entry*, i8*, i32, i64) #2

declare dso_local i32 @hashmap_entry_init(i32*, i32) #2

declare dso_local i32 @hashmap_add(i32*, i32*) #2

declare dso_local i8* @strbuf_detach(%struct.strbuf*, i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
