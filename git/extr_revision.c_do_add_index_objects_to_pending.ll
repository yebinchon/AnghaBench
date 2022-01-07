; ModuleID = '/home/carl/AnghaBench/git/extr_revision.c_do_add_index_objects_to_pending.c'
source_filename = "/home/carl/AnghaBench/git/extr_revision.c_do_add_index_objects_to_pending.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32 }
%struct.rev_info = type { i32 }
%struct.index_state = type { i32, i64, %struct.cache_entry** }
%struct.cache_entry = type { i32, i32, i32 }
%struct.blob = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [38 x i8] c"unable to add index blob to traversal\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rev_info*, %struct.index_state*, i32)* @do_add_index_objects_to_pending to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_add_index_objects_to_pending(%struct.rev_info* %0, %struct.index_state* %1, i32 %2) #0 {
  %4 = alloca %struct.rev_info*, align 8
  %5 = alloca %struct.index_state*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.cache_entry*, align 8
  %9 = alloca %struct.blob*, align 8
  %10 = alloca %struct.strbuf, align 4
  store %struct.rev_info* %0, %struct.rev_info** %4, align 8
  store %struct.index_state* %1, %struct.index_state** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %11

11:                                               ; preds = %59, %3
  %12 = load i32, i32* %7, align 4
  %13 = load %struct.index_state*, %struct.index_state** %5, align 8
  %14 = getelementptr inbounds %struct.index_state, %struct.index_state* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp slt i32 %12, %15
  br i1 %16, label %17, label %62

17:                                               ; preds = %11
  %18 = load %struct.index_state*, %struct.index_state** %5, align 8
  %19 = getelementptr inbounds %struct.index_state, %struct.index_state* %18, i32 0, i32 2
  %20 = load %struct.cache_entry**, %struct.cache_entry*** %19, align 8
  %21 = load i32, i32* %7, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.cache_entry*, %struct.cache_entry** %20, i64 %22
  %24 = load %struct.cache_entry*, %struct.cache_entry** %23, align 8
  store %struct.cache_entry* %24, %struct.cache_entry** %8, align 8
  %25 = load %struct.cache_entry*, %struct.cache_entry** %8, align 8
  %26 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i64 @S_ISGITLINK(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %17
  br label %59

31:                                               ; preds = %17
  %32 = load %struct.rev_info*, %struct.rev_info** %4, align 8
  %33 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.cache_entry*, %struct.cache_entry** %8, align 8
  %36 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %35, i32 0, i32 2
  %37 = call %struct.blob* @lookup_blob(i32 %34, i32* %36)
  store %struct.blob* %37, %struct.blob** %9, align 8
  %38 = load %struct.blob*, %struct.blob** %9, align 8
  %39 = icmp ne %struct.blob* %38, null
  br i1 %39, label %42, label %40

40:                                               ; preds = %31
  %41 = call i32 @die(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  br label %42

42:                                               ; preds = %40, %31
  %43 = load i32, i32* %6, align 4
  %44 = load %struct.blob*, %struct.blob** %9, align 8
  %45 = getelementptr inbounds %struct.blob, %struct.blob* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = or i32 %47, %43
  store i32 %48, i32* %46, align 4
  %49 = load %struct.rev_info*, %struct.rev_info** %4, align 8
  %50 = load %struct.blob*, %struct.blob** %9, align 8
  %51 = getelementptr inbounds %struct.blob, %struct.blob* %50, i32 0, i32 0
  %52 = load %struct.cache_entry*, %struct.cache_entry** %8, align 8
  %53 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.cache_entry*, %struct.cache_entry** %8, align 8
  %56 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @add_pending_object_with_path(%struct.rev_info* %49, %struct.TYPE_2__* %51, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i32 %54, i32 %57)
  br label %59

59:                                               ; preds = %42, %30
  %60 = load i32, i32* %7, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %7, align 4
  br label %11

62:                                               ; preds = %11
  %63 = load %struct.index_state*, %struct.index_state** %5, align 8
  %64 = getelementptr inbounds %struct.index_state, %struct.index_state* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %76

67:                                               ; preds = %62
  %68 = bitcast %struct.strbuf* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %68, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 4, i1 false)
  %69 = load %struct.index_state*, %struct.index_state** %5, align 8
  %70 = getelementptr inbounds %struct.index_state, %struct.index_state* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = load %struct.rev_info*, %struct.rev_info** %4, align 8
  %73 = load i32, i32* %6, align 4
  %74 = call i32 @add_cache_tree(i64 %71, %struct.rev_info* %72, %struct.strbuf* %10, i32 %73)
  %75 = call i32 @strbuf_release(%struct.strbuf* %10)
  br label %76

76:                                               ; preds = %67, %62
  ret void
}

declare dso_local i64 @S_ISGITLINK(i32) #1

declare dso_local %struct.blob* @lookup_blob(i32, i32*) #1

declare dso_local i32 @die(i8*) #1

declare dso_local i32 @add_pending_object_with_path(%struct.rev_info*, %struct.TYPE_2__*, i8*, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @add_cache_tree(i64, %struct.rev_info*, %struct.strbuf*, i32) #1

declare dso_local i32 @strbuf_release(%struct.strbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
