; ModuleID = '/home/carl/AnghaBench/kphp-kdb/cache/extr_cache-data.c_cache_do_set_new_local_copy.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/cache/extr_cache-data.c_cache_do_set_new_local_copy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cache_local_copy = type { i32, i32, i64 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i8* }
%struct.cache_uri = type { i8 }
%union.cache_packed_local_copy_location = type { i32 }
%struct.lev_cache_set_new_local_copy_short = type { i32 }
%struct.lev_cache_set_new_local_copy_long = type { i32, i32 }

@.str = private unnamed_addr constant [38 x i8] c"cache_do_set_new_local_copy (%s, %s)\0A\00", align 1
@LC = common dso_local global %struct.cache_local_copy* null, align 8
@.str.1 = private unnamed_addr constant [71 x i8] c"Couldn't compute ${node_id},${server_id},${disk_id} for local uri: %s\0A\00", align 1
@CACHE_MAX_LOCAL_COPIES = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [84 x i8] c"cache_do_set_new_local_copy (global_uri: %s, local_uri: %s): ignore duplicate set.\0A\00", align 1
@LEV_CACHE_SET_NEW_LOCAL_COPY_SHORT = common dso_local global i64 0, align 8
@LEV_CACHE_SET_NEW_LOCAL_COPY_LONG = common dso_local global i64 0, align 8
@get_uri_f_last_md5 = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cache_do_set_new_local_copy(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.cache_uri*, align 8
  %7 = alloca %union.cache_packed_local_copy_location, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.cache_local_copy*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.lev_cache_set_new_local_copy_short*, align 8
  %15 = alloca %struct.lev_cache_set_new_local_copy_long*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %16 = load i8*, i8** %4, align 8
  %17 = load i8*, i8** %5, align 8
  %18 = call i32 (i32, i8*, i8*, ...) @vkprintf(i32 3, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i8* %16, i8* %17)
  %19 = load i8*, i8** %4, align 8
  %20 = call %struct.cache_uri* @get_uri_f(i8* %19, i32 0)
  store %struct.cache_uri* %20, %struct.cache_uri** %6, align 8
  %21 = load %struct.cache_uri*, %struct.cache_uri** %6, align 8
  %22 = icmp eq %struct.cache_uri* %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %152

24:                                               ; preds = %2
  %25 = load %struct.cache_local_copy*, %struct.cache_local_copy** @LC, align 8
  %26 = getelementptr inbounds %struct.cache_local_copy, %struct.cache_local_copy* %25, i64 0
  %27 = getelementptr inbounds %struct.cache_local_copy, %struct.cache_local_copy* %26, i32 0, i32 2
  store i64 0, i64* %27, align 8
  %28 = load %struct.cache_local_copy*, %struct.cache_local_copy** @LC, align 8
  %29 = getelementptr inbounds %struct.cache_local_copy, %struct.cache_local_copy* %28, i64 0
  %30 = getelementptr inbounds %struct.cache_local_copy, %struct.cache_local_copy* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load i8*, i8** %5, align 8
  %33 = call i32 @strcpy(i32 %31, i8* %32)
  %34 = load %struct.cache_local_copy*, %struct.cache_local_copy** @LC, align 8
  %35 = call i32 @cache_local_copy_compute_packed_location(%struct.cache_local_copy* %34, %union.cache_packed_local_copy_location* %7)
  %36 = bitcast %union.cache_packed_local_copy_location* %7 to i32*
  %37 = load i32, i32* %36, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %42, label %39

39:                                               ; preds = %24
  %40 = load i8*, i8** %5, align 8
  %41 = call i32 (i32, i8*, i8*, ...) @vkprintf(i32 2, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.1, i64 0, i64 0), i8* %40)
  store i32 -1, i32* %3, align 4
  br label %152

42:                                               ; preds = %24
  %43 = load %struct.cache_uri*, %struct.cache_uri** %6, align 8
  %44 = load %struct.cache_local_copy*, %struct.cache_local_copy** @LC, align 8
  %45 = load i32, i32* @CACHE_MAX_LOCAL_COPIES, align 4
  %46 = call i32 @cache_local_copy_unpack(%struct.cache_uri* %43, %struct.cache_local_copy* %44, i32 %45, i32 1, i32* %10)
  store i32 %46, i32* %9, align 4
  %47 = load i32, i32* %9, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %42
  store i32 -1, i32* %3, align 4
  br label %152

50:                                               ; preds = %42
  store i32 0, i32* %8, align 4
  br label %51

51:                                               ; preds = %70, %50
  %52 = load i32, i32* %8, align 4
  %53 = load i32, i32* %9, align 4
  %54 = icmp slt i32 %52, %53
  br i1 %54, label %55, label %73

55:                                               ; preds = %51
  %56 = load %struct.cache_local_copy*, %struct.cache_local_copy** @LC, align 8
  %57 = load i32, i32* %8, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.cache_local_copy, %struct.cache_local_copy* %56, i64 %58
  %60 = getelementptr inbounds %struct.cache_local_copy, %struct.cache_local_copy* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load i8*, i8** %5, align 8
  %63 = call i32 @strcmp(i32 %61, i8* %62)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %69, label %65

65:                                               ; preds = %55
  %66 = load i8*, i8** %4, align 8
  %67 = load i8*, i8** %5, align 8
  %68 = call i32 (i32, i8*, i8*, ...) @vkprintf(i32 2, i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.2, i64 0, i64 0), i8* %66, i8* %67)
  store i32 -1, i32* %3, align 4
  br label %152

69:                                               ; preds = %55
  br label %70

70:                                               ; preds = %69
  %71 = load i32, i32* %8, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %8, align 4
  br label %51

73:                                               ; preds = %51
  %74 = load %struct.cache_local_copy*, %struct.cache_local_copy** @LC, align 8
  %75 = load i32, i32* %9, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %9, align 4
  %77 = sext i32 %75 to i64
  %78 = getelementptr inbounds %struct.cache_local_copy, %struct.cache_local_copy* %74, i64 %77
  store %struct.cache_local_copy* %78, %struct.cache_local_copy** %11, align 8
  %79 = load %struct.cache_local_copy*, %struct.cache_local_copy** %11, align 8
  %80 = call i32 @cache_local_copy_init(%struct.cache_local_copy* %79)
  %81 = load i8*, i8** %5, align 8
  %82 = call i32 @strlen(i8* %81)
  store i32 %82, i32* %12, align 4
  %83 = load i32, i32* %12, align 4
  %84 = icmp slt i32 %83, 256
  %85 = zext i1 %84 to i32
  %86 = call i32 @assert(i32 %85)
  %87 = load %struct.cache_local_copy*, %struct.cache_local_copy** %11, align 8
  %88 = getelementptr inbounds %struct.cache_local_copy, %struct.cache_local_copy* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = load i8*, i8** %5, align 8
  %91 = call i32 @strcpy(i32 %89, i8* %90)
  %92 = load %struct.cache_uri*, %struct.cache_uri** %6, align 8
  %93 = call i32 @cache_get_unique_md5_bytes(%struct.cache_uri* %92)
  store i32 %93, i32* %13, align 4
  %94 = load i32, i32* %13, align 4
  %95 = icmp ne i32 %94, 0
  %96 = zext i1 %95 to i32
  %97 = call i32 @assert(i32 %96)
  %98 = load %struct.cache_uri*, %struct.cache_uri** %6, align 8
  %99 = load %struct.cache_local_copy*, %struct.cache_local_copy** %11, align 8
  %100 = call i32 @cache_local_copy_try_pack_location(%struct.cache_uri* %98, %struct.cache_local_copy* %99)
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %118, label %102

102:                                              ; preds = %73
  %103 = load i32, i32* %13, align 4
  %104 = icmp eq i32 %103, 8
  br i1 %104, label %105, label %118

105:                                              ; preds = %102
  %106 = load i64, i64* @LEV_CACHE_SET_NEW_LOCAL_COPY_SHORT, align 8
  %107 = load %struct.cache_local_copy*, %struct.cache_local_copy** %11, align 8
  %108 = getelementptr inbounds %struct.cache_local_copy, %struct.cache_local_copy* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = call i8* @alloc_log_event(i64 %106, i32 4, i32 %109)
  %111 = bitcast i8* %110 to %struct.lev_cache_set_new_local_copy_short*
  store %struct.lev_cache_set_new_local_copy_short* %111, %struct.lev_cache_set_new_local_copy_short** %14, align 8
  %112 = load %struct.lev_cache_set_new_local_copy_short*, %struct.lev_cache_set_new_local_copy_short** %14, align 8
  %113 = getelementptr inbounds %struct.lev_cache_set_new_local_copy_short, %struct.lev_cache_set_new_local_copy_short* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.cache_uri*, %struct.cache_uri** %6, align 8
  %116 = getelementptr inbounds %struct.cache_uri, %struct.cache_uri* %115, i32 0, i32 0
  %117 = call i32 @memcpy(i32 %114, i8* %116, i32 8)
  br label %142

118:                                              ; preds = %102, %73
  %119 = load i64, i64* @LEV_CACHE_SET_NEW_LOCAL_COPY_LONG, align 8
  %120 = load i32, i32* %12, align 4
  %121 = sext i32 %120 to i64
  %122 = add nsw i64 %119, %121
  %123 = load i32, i32* %12, align 4
  %124 = sext i32 %123 to i64
  %125 = add i64 8, %124
  %126 = trunc i64 %125 to i32
  %127 = call i8* @alloc_log_event(i64 %122, i32 %126, i32 0)
  %128 = bitcast i8* %127 to %struct.lev_cache_set_new_local_copy_long*
  store %struct.lev_cache_set_new_local_copy_long* %128, %struct.lev_cache_set_new_local_copy_long** %15, align 8
  %129 = load %struct.cache_uri*, %struct.cache_uri** %6, align 8
  %130 = call i32 @compute_get_uri_f_last_md5(%struct.cache_uri* %129)
  %131 = load %struct.lev_cache_set_new_local_copy_long*, %struct.lev_cache_set_new_local_copy_long** %15, align 8
  %132 = getelementptr inbounds %struct.lev_cache_set_new_local_copy_long, %struct.lev_cache_set_new_local_copy_long* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = load i8*, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @get_uri_f_last_md5, i32 0, i32 0, i32 0), align 8
  %135 = call i32 @memcpy(i32 %133, i8* %134, i32 16)
  %136 = load %struct.lev_cache_set_new_local_copy_long*, %struct.lev_cache_set_new_local_copy_long** %15, align 8
  %137 = getelementptr inbounds %struct.lev_cache_set_new_local_copy_long, %struct.lev_cache_set_new_local_copy_long* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = load i8*, i8** %5, align 8
  %140 = load i32, i32* %12, align 4
  %141 = call i32 @memcpy(i32 %138, i8* %139, i32 %140)
  br label %142

142:                                              ; preds = %118, %105
  %143 = load %struct.cache_uri*, %struct.cache_uri** %6, align 8
  %144 = getelementptr inbounds %union.cache_packed_local_copy_location, %union.cache_packed_local_copy_location* %7, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = call i32 @cache_uri_incr_server_stats0(%struct.cache_uri* %143, i32 %145)
  %147 = load %struct.cache_uri*, %struct.cache_uri** %6, align 8
  %148 = load %struct.cache_local_copy*, %struct.cache_local_copy** @LC, align 8
  %149 = load i32, i32* %9, align 4
  %150 = load i32, i32* %10, align 4
  %151 = call i32 @cache_uri_update_local_copy(%struct.cache_uri* %147, %struct.cache_local_copy* %148, i32 %149, i32 %150)
  store i32 0, i32* %3, align 4
  br label %152

152:                                              ; preds = %142, %65, %49, %39, %23
  %153 = load i32, i32* %3, align 4
  ret i32 %153
}

declare dso_local i32 @vkprintf(i32, i8*, i8*, ...) #1

declare dso_local %struct.cache_uri* @get_uri_f(i8*, i32) #1

declare dso_local i32 @strcpy(i32, i8*) #1

declare dso_local i32 @cache_local_copy_compute_packed_location(%struct.cache_local_copy*, %union.cache_packed_local_copy_location*) #1

declare dso_local i32 @cache_local_copy_unpack(%struct.cache_uri*, %struct.cache_local_copy*, i32, i32, i32*) #1

declare dso_local i32 @strcmp(i32, i8*) #1

declare dso_local i32 @cache_local_copy_init(%struct.cache_local_copy*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @cache_get_unique_md5_bytes(%struct.cache_uri*) #1

declare dso_local i32 @cache_local_copy_try_pack_location(%struct.cache_uri*, %struct.cache_local_copy*) #1

declare dso_local i8* @alloc_log_event(i64, i32, i32) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local i32 @compute_get_uri_f_last_md5(%struct.cache_uri*) #1

declare dso_local i32 @cache_uri_incr_server_stats0(%struct.cache_uri*, i32) #1

declare dso_local i32 @cache_uri_update_local_copy(%struct.cache_uri*, %struct.cache_local_copy*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
