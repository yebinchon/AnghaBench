; ModuleID = '/home/carl/AnghaBench/kphp-kdb/cache/extr_cache-data.c_cache_do_delete_local_copy.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/cache/extr_cache-data.c_cache_do_delete_local_copy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32, i32 }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i8* }
%struct.cache_uri = type { i8 }
%struct.lev_cache_set_new_local_copy_short = type { i32 }
%struct.lev_cache_set_new_local_copy_long = type { i32, i32 }

@.str = private unnamed_addr constant [37 x i8] c"cache_do_delete_local_copy (%s, %s)\0A\00", align 1
@LC = common dso_local global %struct.TYPE_12__* null, align 8
@CACHE_MAX_LOCAL_COPIES = common dso_local global i32 0, align 4
@CACHE_LOCAL_COPY_FLAG_INT = common dso_local global i32 0, align 4
@LEV_CACHE_DELETE_LOCAL_COPY_SHORT = common dso_local global i64 0, align 8
@LEV_CACHE_DELETE_LOCAL_COPY_LONG = common dso_local global i64 0, align 8
@get_uri_f_last_md5 = common dso_local global %struct.TYPE_11__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cache_do_delete_local_copy(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.cache_uri*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.lev_cache_set_new_local_copy_short*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.lev_cache_set_new_local_copy_long*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %14 = load i8*, i8** %4, align 8
  %15 = load i8*, i8** %5, align 8
  %16 = call i32 @vkprintf(i32 3, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i8* %14, i8* %15)
  %17 = load i8*, i8** %4, align 8
  %18 = call %struct.cache_uri* @get_uri_f(i8* %17, i32 0)
  store %struct.cache_uri* %18, %struct.cache_uri** %6, align 8
  %19 = load %struct.cache_uri*, %struct.cache_uri** %6, align 8
  %20 = icmp eq %struct.cache_uri* %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %148

22:                                               ; preds = %2
  %23 = load %struct.cache_uri*, %struct.cache_uri** %6, align 8
  %24 = load %struct.TYPE_12__*, %struct.TYPE_12__** @LC, align 8
  %25 = load i32, i32* @CACHE_MAX_LOCAL_COPIES, align 4
  %26 = call i32 @cache_local_copy_unpack(%struct.cache_uri* %23, %struct.TYPE_12__* %24, i32 %25, i32 1, i32* %9)
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* %8, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %22
  store i32 -1, i32* %3, align 4
  br label %148

30:                                               ; preds = %22
  store i32 0, i32* %7, align 4
  br label %31

31:                                               ; preds = %47, %30
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* %8, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %35, label %50

35:                                               ; preds = %31
  %36 = load %struct.TYPE_12__*, %struct.TYPE_12__** @LC, align 8
  %37 = load i32, i32* %7, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %36, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = load i8*, i8** %5, align 8
  %43 = call i32 @strcmp(i32 %41, i8* %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %35
  br label %50

46:                                               ; preds = %35
  br label %47

47:                                               ; preds = %46
  %48 = load i32, i32* %7, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %7, align 4
  br label %31

50:                                               ; preds = %45, %31
  %51 = load i32, i32* %7, align 4
  %52 = load i32, i32* %8, align 4
  %53 = icmp sge i32 %51, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %50
  store i32 -1, i32* %3, align 4
  br label %148

55:                                               ; preds = %50
  %56 = load %struct.cache_uri*, %struct.cache_uri** %6, align 8
  %57 = call i32 @cache_get_unique_md5_bytes(%struct.cache_uri* %56)
  store i32 %57, i32* %10, align 4
  %58 = load i32, i32* %10, align 4
  %59 = icmp ne i32 %58, 0
  %60 = zext i1 %59 to i32
  %61 = call i32 @assert(i32 %60)
  %62 = load %struct.TYPE_12__*, %struct.TYPE_12__** @LC, align 8
  %63 = load i32, i32* %7, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %62, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @CACHE_LOCAL_COPY_FLAG_INT, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %90

71:                                               ; preds = %55
  %72 = load i32, i32* %10, align 4
  %73 = icmp eq i32 %72, 8
  br i1 %73, label %74, label %90

74:                                               ; preds = %71
  %75 = load i64, i64* @LEV_CACHE_DELETE_LOCAL_COPY_SHORT, align 8
  %76 = load %struct.TYPE_12__*, %struct.TYPE_12__** @LC, align 8
  %77 = load i32, i32* %7, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %76, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = call i8* @alloc_log_event(i64 %75, i32 4, i32 %81)
  %83 = bitcast i8* %82 to %struct.lev_cache_set_new_local_copy_short*
  store %struct.lev_cache_set_new_local_copy_short* %83, %struct.lev_cache_set_new_local_copy_short** %11, align 8
  %84 = load %struct.lev_cache_set_new_local_copy_short*, %struct.lev_cache_set_new_local_copy_short** %11, align 8
  %85 = getelementptr inbounds %struct.lev_cache_set_new_local_copy_short, %struct.lev_cache_set_new_local_copy_short* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.cache_uri*, %struct.cache_uri** %6, align 8
  %88 = getelementptr inbounds %struct.cache_uri, %struct.cache_uri* %87, i32 0, i32 0
  %89 = call i32 @memcpy(i32 %86, i8* %88, i32 8)
  br label %120

90:                                               ; preds = %71, %55
  %91 = load i8*, i8** %5, align 8
  %92 = call i32 @strlen(i8* %91)
  store i32 %92, i32* %12, align 4
  %93 = load i32, i32* %12, align 4
  %94 = icmp slt i32 %93, 256
  %95 = zext i1 %94 to i32
  %96 = call i32 @assert(i32 %95)
  %97 = load i64, i64* @LEV_CACHE_DELETE_LOCAL_COPY_LONG, align 8
  %98 = load i32, i32* %12, align 4
  %99 = sext i32 %98 to i64
  %100 = add nsw i64 %97, %99
  %101 = load i32, i32* %12, align 4
  %102 = sext i32 %101 to i64
  %103 = add i64 8, %102
  %104 = trunc i64 %103 to i32
  %105 = call i8* @alloc_log_event(i64 %100, i32 %104, i32 0)
  %106 = bitcast i8* %105 to %struct.lev_cache_set_new_local_copy_long*
  store %struct.lev_cache_set_new_local_copy_long* %106, %struct.lev_cache_set_new_local_copy_long** %13, align 8
  %107 = load %struct.cache_uri*, %struct.cache_uri** %6, align 8
  %108 = call i32 @compute_get_uri_f_last_md5(%struct.cache_uri* %107)
  %109 = load %struct.lev_cache_set_new_local_copy_long*, %struct.lev_cache_set_new_local_copy_long** %13, align 8
  %110 = getelementptr inbounds %struct.lev_cache_set_new_local_copy_long, %struct.lev_cache_set_new_local_copy_long* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = load i8*, i8** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @get_uri_f_last_md5, i32 0, i32 0, i32 0), align 8
  %113 = call i32 @memcpy(i32 %111, i8* %112, i32 16)
  %114 = load %struct.lev_cache_set_new_local_copy_long*, %struct.lev_cache_set_new_local_copy_long** %13, align 8
  %115 = getelementptr inbounds %struct.lev_cache_set_new_local_copy_long, %struct.lev_cache_set_new_local_copy_long* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = load i8*, i8** %5, align 8
  %118 = load i32, i32* %12, align 4
  %119 = call i32 @memcpy(i32 %116, i8* %117, i32 %118)
  br label %120

120:                                              ; preds = %90, %74
  %121 = load %struct.cache_uri*, %struct.cache_uri** %6, align 8
  %122 = load %struct.TYPE_12__*, %struct.TYPE_12__** @LC, align 8
  %123 = load i32, i32* %7, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %122, i64 %124
  %126 = call i32 @cache_uri_decr_server_stats(%struct.cache_uri* %121, %struct.TYPE_12__* %125)
  %127 = load i32, i32* %8, align 4
  %128 = add nsw i32 %127, -1
  store i32 %128, i32* %8, align 4
  %129 = load i32, i32* %7, align 4
  %130 = load i32, i32* %8, align 4
  %131 = icmp ne i32 %129, %130
  br i1 %131, label %132, label %142

132:                                              ; preds = %120
  %133 = load %struct.TYPE_12__*, %struct.TYPE_12__** @LC, align 8
  %134 = load i32, i32* %7, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %133, i64 %135
  %137 = load %struct.TYPE_12__*, %struct.TYPE_12__** @LC, align 8
  %138 = load i32, i32* %8, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %137, i64 %139
  %141 = call i32 @cache_local_copy_cpy(%struct.TYPE_12__* %136, %struct.TYPE_12__* %140)
  br label %142

142:                                              ; preds = %132, %120
  %143 = load %struct.cache_uri*, %struct.cache_uri** %6, align 8
  %144 = load %struct.TYPE_12__*, %struct.TYPE_12__** @LC, align 8
  %145 = load i32, i32* %8, align 4
  %146 = load i32, i32* %9, align 4
  %147 = call i32 @cache_uri_update_local_copy(%struct.cache_uri* %143, %struct.TYPE_12__* %144, i32 %145, i32 %146)
  store i32 0, i32* %3, align 4
  br label %148

148:                                              ; preds = %142, %54, %29, %21
  %149 = load i32, i32* %3, align 4
  ret i32 %149
}

declare dso_local i32 @vkprintf(i32, i8*, i8*, i8*) #1

declare dso_local %struct.cache_uri* @get_uri_f(i8*, i32) #1

declare dso_local i32 @cache_local_copy_unpack(%struct.cache_uri*, %struct.TYPE_12__*, i32, i32, i32*) #1

declare dso_local i32 @strcmp(i32, i8*) #1

declare dso_local i32 @cache_get_unique_md5_bytes(%struct.cache_uri*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i8* @alloc_log_event(i64, i32, i32) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @compute_get_uri_f_last_md5(%struct.cache_uri*) #1

declare dso_local i32 @cache_uri_decr_server_stats(%struct.cache_uri*, %struct.TYPE_12__*) #1

declare dso_local i32 @cache_local_copy_cpy(%struct.TYPE_12__*, %struct.TYPE_12__*) #1

declare dso_local i32 @cache_uri_update_local_copy(%struct.cache_uri*, %struct.TYPE_12__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
