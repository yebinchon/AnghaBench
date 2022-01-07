; ModuleID = '/home/carl/AnghaBench/kphp-kdb/vkext/extr_vkext_schema_memcache.c_tl_config_alloc.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/vkext/extr_vkext_schema_memcache.c_tl_config_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64, %struct.TYPE_10__*, %struct.TYPE_9__*, %struct.TYPE_8__*, %struct.TYPE_7__* }
%struct.TYPE_10__ = type { i32, i32, i8* }
%struct.TYPE_9__ = type { i32, i32, i8* }
%struct.TYPE_8__ = type { i32, i32, i8* }
%struct.TYPE_7__ = type { i32, i32, i8* }

@cur_config = common dso_local global %struct.TYPE_11__* null, align 8
@config_list_pos = common dso_local global i64 0, align 8
@CONFIG_LIST_SIZE = common dso_local global i64 0, align 8
@config_list = common dso_local global %struct.TYPE_11__** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tl_config_alloc() #0 {
  %1 = alloca i32, align 4
  %2 = call i8* @zzmalloc0(i32 40)
  %3 = bitcast i8* %2 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %3, %struct.TYPE_11__** @cur_config, align 8
  %4 = call i32 @ADD_PMALLOC(i32 40)
  %5 = load i64, i64* @config_list_pos, align 8
  %6 = add i64 %5, 1
  store i64 %6, i64* @config_list_pos, align 8
  %7 = load i64, i64* @config_list_pos, align 8
  %8 = load i64, i64* @CONFIG_LIST_SIZE, align 8
  %9 = icmp uge i64 %7, %8
  br i1 %9, label %10, label %14

10:                                               ; preds = %0
  %11 = load i64, i64* @CONFIG_LIST_SIZE, align 8
  %12 = load i64, i64* @config_list_pos, align 8
  %13 = sub i64 %12, %11
  store i64 %13, i64* @config_list_pos, align 8
  br label %14

14:                                               ; preds = %10, %0
  %15 = load %struct.TYPE_11__*, %struct.TYPE_11__** @cur_config, align 8
  %16 = load %struct.TYPE_11__**, %struct.TYPE_11__*** @config_list, align 8
  %17 = load i64, i64* @config_list_pos, align 8
  %18 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %16, i64 %17
  store %struct.TYPE_11__* %15, %struct.TYPE_11__** %18, align 8
  store i32 4, i32* %1, align 4
  %19 = load i32, i32* %1, align 4
  %20 = call i8* @zzmalloc(i32 %19)
  %21 = bitcast i8* %20 to %struct.TYPE_7__*
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** @cur_config, align 8
  %23 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %22, i32 0, i32 4
  store %struct.TYPE_7__* %21, %struct.TYPE_7__** %23, align 8
  %24 = load %struct.TYPE_11__*, %struct.TYPE_11__** @cur_config, align 8
  %25 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %24, i32 0, i32 4
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  store i32 4096, i32* %27, align 8
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** @cur_config, align 8
  %29 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %28, i32 0, i32 4
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 1
  store i32 4095, i32* %31, align 4
  %32 = call i8* @zzmalloc0(i32 32768)
  %33 = load %struct.TYPE_11__*, %struct.TYPE_11__** @cur_config, align 8
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %33, i32 0, i32 4
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 2
  store i8* %32, i8** %36, align 8
  %37 = load i32, i32* %1, align 4
  %38 = call i8* @zzmalloc(i32 %37)
  %39 = bitcast i8* %38 to %struct.TYPE_8__*
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** @cur_config, align 8
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %40, i32 0, i32 3
  store %struct.TYPE_8__* %39, %struct.TYPE_8__** %41, align 8
  %42 = load %struct.TYPE_11__*, %struct.TYPE_11__** @cur_config, align 8
  %43 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %42, i32 0, i32 3
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 0
  store i32 4096, i32* %45, align 8
  %46 = load %struct.TYPE_11__*, %struct.TYPE_11__** @cur_config, align 8
  %47 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %46, i32 0, i32 3
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 1
  store i32 4095, i32* %49, align 4
  %50 = call i8* @zzmalloc0(i32 32768)
  %51 = load %struct.TYPE_11__*, %struct.TYPE_11__** @cur_config, align 8
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %51, i32 0, i32 3
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 2
  store i8* %50, i8** %54, align 8
  %55 = load i32, i32* %1, align 4
  %56 = call i8* @zzmalloc(i32 %55)
  %57 = bitcast i8* %56 to %struct.TYPE_9__*
  %58 = load %struct.TYPE_11__*, %struct.TYPE_11__** @cur_config, align 8
  %59 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %58, i32 0, i32 2
  store %struct.TYPE_9__* %57, %struct.TYPE_9__** %59, align 8
  %60 = load %struct.TYPE_11__*, %struct.TYPE_11__** @cur_config, align 8
  %61 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %60, i32 0, i32 2
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 0
  store i32 4096, i32* %63, align 8
  %64 = load %struct.TYPE_11__*, %struct.TYPE_11__** @cur_config, align 8
  %65 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %64, i32 0, i32 2
  %66 = load %struct.TYPE_9__*, %struct.TYPE_9__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 1
  store i32 4095, i32* %67, align 4
  %68 = call i8* @zzmalloc0(i32 32768)
  %69 = load %struct.TYPE_11__*, %struct.TYPE_11__** @cur_config, align 8
  %70 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %69, i32 0, i32 2
  %71 = load %struct.TYPE_9__*, %struct.TYPE_9__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %71, i32 0, i32 2
  store i8* %68, i8** %72, align 8
  %73 = load i32, i32* %1, align 4
  %74 = call i8* @zzmalloc(i32 %73)
  %75 = bitcast i8* %74 to %struct.TYPE_10__*
  %76 = load %struct.TYPE_11__*, %struct.TYPE_11__** @cur_config, align 8
  %77 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %76, i32 0, i32 1
  store %struct.TYPE_10__* %75, %struct.TYPE_10__** %77, align 8
  %78 = load %struct.TYPE_11__*, %struct.TYPE_11__** @cur_config, align 8
  %79 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %78, i32 0, i32 1
  %80 = load %struct.TYPE_10__*, %struct.TYPE_10__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %80, i32 0, i32 0
  store i32 4096, i32* %81, align 8
  %82 = load %struct.TYPE_11__*, %struct.TYPE_11__** @cur_config, align 8
  %83 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %82, i32 0, i32 1
  %84 = load %struct.TYPE_10__*, %struct.TYPE_10__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %84, i32 0, i32 1
  store i32 4095, i32* %85, align 4
  %86 = call i8* @zzmalloc0(i32 32768)
  %87 = load %struct.TYPE_11__*, %struct.TYPE_11__** @cur_config, align 8
  %88 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %87, i32 0, i32 1
  %89 = load %struct.TYPE_10__*, %struct.TYPE_10__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %89, i32 0, i32 2
  store i8* %86, i8** %90, align 8
  %91 = load i64, i64* @config_list_pos, align 8
  %92 = load %struct.TYPE_11__*, %struct.TYPE_11__** @cur_config, align 8
  %93 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %92, i32 0, i32 0
  store i64 %91, i64* %93, align 8
  %94 = load i32, i32* %1, align 4
  %95 = mul nsw i32 %94, 4
  %96 = call i32 @ADD_PMALLOC(i32 %95)
  %97 = call i32 @ADD_PMALLOC(i32 131072)
  ret void
}

declare dso_local i8* @zzmalloc0(i32) #1

declare dso_local i32 @ADD_PMALLOC(i32) #1

declare dso_local i8* @zzmalloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
