; ModuleID = '/home/carl/AnghaBench/git/extr_submodule-config.c_lookup_or_create_by_name.c'
source_filename = "/home/carl/AnghaBench/git/extr_submodule-config.c_lookup_or_create_by_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32 }
%struct.submodule = type { i32, i32, i32*, i32*, i32, %struct.TYPE_2__, i32*, i32*, i32 }
%struct.TYPE_2__ = type { i32*, i32 }
%struct.submodule_cache = type { i32 }
%struct.object_id = type { i32 }

@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 4
@SM_UPDATE_UNSPECIFIED = common dso_local global i32 0, align 4
@RECURSE_SUBMODULES_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.submodule* (%struct.submodule_cache*, %struct.object_id*, i8*)* @lookup_or_create_by_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.submodule* @lookup_or_create_by_name(%struct.submodule_cache* %0, %struct.object_id* %1, i8* %2) #0 {
  %4 = alloca %struct.submodule*, align 8
  %5 = alloca %struct.submodule_cache*, align 8
  %6 = alloca %struct.object_id*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.submodule*, align 8
  %9 = alloca %struct.strbuf, align 4
  store %struct.submodule_cache* %0, %struct.submodule_cache** %5, align 8
  store %struct.object_id* %1, %struct.object_id** %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = bitcast %struct.strbuf* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %10, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 4, i1 false)
  %11 = load %struct.submodule_cache*, %struct.submodule_cache** %5, align 8
  %12 = load %struct.object_id*, %struct.object_id** %6, align 8
  %13 = load i8*, i8** %7, align 8
  %14 = call %struct.submodule* @cache_lookup_name(%struct.submodule_cache* %11, %struct.object_id* %12, i8* %13)
  store %struct.submodule* %14, %struct.submodule** %8, align 8
  %15 = load %struct.submodule*, %struct.submodule** %8, align 8
  %16 = icmp ne %struct.submodule* %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %3
  %18 = load %struct.submodule*, %struct.submodule** %8, align 8
  store %struct.submodule* %18, %struct.submodule** %4, align 8
  br label %54

19:                                               ; preds = %3
  %20 = call %struct.submodule* @xmalloc(i32 72)
  store %struct.submodule* %20, %struct.submodule** %8, align 8
  %21 = load i8*, i8** %7, align 8
  %22 = call i32 @strbuf_addstr(%struct.strbuf* %9, i8* %21)
  %23 = call i32 @strbuf_detach(%struct.strbuf* %9, i32* null)
  %24 = load %struct.submodule*, %struct.submodule** %8, align 8
  %25 = getelementptr inbounds %struct.submodule, %struct.submodule* %24, i32 0, i32 8
  store i32 %23, i32* %25, align 8
  %26 = load %struct.submodule*, %struct.submodule** %8, align 8
  %27 = getelementptr inbounds %struct.submodule, %struct.submodule* %26, i32 0, i32 7
  store i32* null, i32** %27, align 8
  %28 = load %struct.submodule*, %struct.submodule** %8, align 8
  %29 = getelementptr inbounds %struct.submodule, %struct.submodule* %28, i32 0, i32 6
  store i32* null, i32** %29, align 8
  %30 = load i32, i32* @SM_UPDATE_UNSPECIFIED, align 4
  %31 = load %struct.submodule*, %struct.submodule** %8, align 8
  %32 = getelementptr inbounds %struct.submodule, %struct.submodule* %31, i32 0, i32 5
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 1
  store i32 %30, i32* %33, align 8
  %34 = load %struct.submodule*, %struct.submodule** %8, align 8
  %35 = getelementptr inbounds %struct.submodule, %struct.submodule* %34, i32 0, i32 5
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  store i32* null, i32** %36, align 8
  %37 = load i32, i32* @RECURSE_SUBMODULES_NONE, align 4
  %38 = load %struct.submodule*, %struct.submodule** %8, align 8
  %39 = getelementptr inbounds %struct.submodule, %struct.submodule* %38, i32 0, i32 4
  store i32 %37, i32* %39, align 8
  %40 = load %struct.submodule*, %struct.submodule** %8, align 8
  %41 = getelementptr inbounds %struct.submodule, %struct.submodule* %40, i32 0, i32 3
  store i32* null, i32** %41, align 8
  %42 = load %struct.submodule*, %struct.submodule** %8, align 8
  %43 = getelementptr inbounds %struct.submodule, %struct.submodule* %42, i32 0, i32 2
  store i32* null, i32** %43, align 8
  %44 = load %struct.submodule*, %struct.submodule** %8, align 8
  %45 = getelementptr inbounds %struct.submodule, %struct.submodule* %44, i32 0, i32 0
  store i32 -1, i32* %45, align 8
  %46 = load %struct.submodule*, %struct.submodule** %8, align 8
  %47 = getelementptr inbounds %struct.submodule, %struct.submodule* %46, i32 0, i32 1
  %48 = load %struct.object_id*, %struct.object_id** %6, align 8
  %49 = call i32 @oidcpy(i32* %47, %struct.object_id* %48)
  %50 = load %struct.submodule_cache*, %struct.submodule_cache** %5, align 8
  %51 = load %struct.submodule*, %struct.submodule** %8, align 8
  %52 = call i32 @cache_add(%struct.submodule_cache* %50, %struct.submodule* %51)
  %53 = load %struct.submodule*, %struct.submodule** %8, align 8
  store %struct.submodule* %53, %struct.submodule** %4, align 8
  br label %54

54:                                               ; preds = %19, %17
  %55 = load %struct.submodule*, %struct.submodule** %4, align 8
  ret %struct.submodule* %55
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local %struct.submodule* @cache_lookup_name(%struct.submodule_cache*, %struct.object_id*, i8*) #2

declare dso_local %struct.submodule* @xmalloc(i32) #2

declare dso_local i32 @strbuf_addstr(%struct.strbuf*, i8*) #2

declare dso_local i32 @strbuf_detach(%struct.strbuf*, i32*) #2

declare dso_local i32 @oidcpy(i32*, %struct.object_id*) #2

declare dso_local i32 @cache_add(%struct.submodule_cache*, %struct.submodule*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
