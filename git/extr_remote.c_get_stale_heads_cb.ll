; ModuleID = '/home/carl/AnghaBench/git/extr_remote.c_get_stale_heads_cb.c'
source_filename = "/home/carl/AnghaBench/git/extr_remote.c_get_stale_heads_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.string_list = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.object_id = type { i32 }
%struct.stale_heads_info = type { i32, i32, i32 }
%struct.refspec_item = type { i8* }
%struct.ref = type { i32 }

@STRING_LIST_INIT_DUP = common dso_local global %struct.string_list zeroinitializer, align 8
@REF_ISSYMREF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.object_id*, i32, i8*)* @get_stale_heads_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_stale_heads_cb(i8* %0, %struct.object_id* %1, i32 %2, i8* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct.object_id*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.stale_heads_info*, align 8
  %10 = alloca %struct.string_list, align 8
  %11 = alloca %struct.refspec_item, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.ref*, align 8
  store i8* %0, i8** %5, align 8
  store %struct.object_id* %1, %struct.object_id** %6, align 8
  store i32 %2, i32* %7, align 4
  store i8* %3, i8** %8, align 8
  %15 = load i8*, i8** %8, align 8
  %16 = bitcast i8* %15 to %struct.stale_heads_info*
  store %struct.stale_heads_info* %16, %struct.stale_heads_info** %9, align 8
  %17 = bitcast %struct.string_list* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %17, i8* align 8 bitcast (%struct.string_list* @STRING_LIST_INIT_DUP to i8*), i64 16, i1 false)
  store i32 1, i32* %13, align 4
  %18 = call i32 @memset(%struct.refspec_item* %11, i32 0, i32 8)
  %19 = load i8*, i8** %5, align 8
  %20 = getelementptr inbounds %struct.refspec_item, %struct.refspec_item* %11, i32 0, i32 0
  store i8* %19, i8** %20, align 8
  %21 = load %struct.stale_heads_info*, %struct.stale_heads_info** %9, align 8
  %22 = getelementptr inbounds %struct.stale_heads_info, %struct.stale_heads_info* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @query_refspecs_multiple(i32 %23, %struct.refspec_item* %11, %struct.string_list* %10)
  %25 = getelementptr inbounds %struct.string_list, %struct.string_list* %10, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %4
  br label %77

29:                                               ; preds = %4
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* @REF_ISSYMREF, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %29
  br label %77

35:                                               ; preds = %29
  store i32 0, i32* %12, align 4
  br label %36

36:                                               ; preds = %61, %35
  %37 = load i32, i32* %13, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %36
  %40 = load i32, i32* %12, align 4
  %41 = getelementptr inbounds %struct.string_list, %struct.string_list* %10, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = icmp slt i32 %40, %42
  br label %44

44:                                               ; preds = %39, %36
  %45 = phi i1 [ false, %36 ], [ %43, %39 ]
  br i1 %45, label %46, label %64

46:                                               ; preds = %44
  %47 = load %struct.stale_heads_info*, %struct.stale_heads_info** %9, align 8
  %48 = getelementptr inbounds %struct.stale_heads_info, %struct.stale_heads_info* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = getelementptr inbounds %struct.string_list, %struct.string_list* %10, i32 0, i32 1
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = load i32, i32* %12, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i64 @string_list_has_string(i32 %49, i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %46
  store i32 0, i32* %13, align 4
  br label %60

60:                                               ; preds = %59, %46
  br label %61

61:                                               ; preds = %60
  %62 = load i32, i32* %12, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %12, align 4
  br label %36

64:                                               ; preds = %44
  %65 = load i32, i32* %13, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %76

67:                                               ; preds = %64
  %68 = load i8*, i8** %5, align 8
  %69 = load %struct.stale_heads_info*, %struct.stale_heads_info** %9, align 8
  %70 = getelementptr inbounds %struct.stale_heads_info, %struct.stale_heads_info* %69, i32 0, i32 0
  %71 = call %struct.ref* @make_linked_ref(i8* %68, i32* %70)
  store %struct.ref* %71, %struct.ref** %14, align 8
  %72 = load %struct.ref*, %struct.ref** %14, align 8
  %73 = getelementptr inbounds %struct.ref, %struct.ref* %72, i32 0, i32 0
  %74 = load %struct.object_id*, %struct.object_id** %6, align 8
  %75 = call i32 @oidcpy(i32* %73, %struct.object_id* %74)
  br label %76

76:                                               ; preds = %67, %64
  br label %77

77:                                               ; preds = %76, %34, %28
  %78 = call i32 @string_list_clear(%struct.string_list* %10, i32 0)
  ret i32 0
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @memset(%struct.refspec_item*, i32, i32) #2

declare dso_local i32 @query_refspecs_multiple(i32, %struct.refspec_item*, %struct.string_list*) #2

declare dso_local i64 @string_list_has_string(i32, i32) #2

declare dso_local %struct.ref* @make_linked_ref(i8*, i32*) #2

declare dso_local i32 @oidcpy(i32*, %struct.object_id*) #2

declare dso_local i32 @string_list_clear(%struct.string_list*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
