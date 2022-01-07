; ModuleID = '/home/carl/AnghaBench/kphp-kdb/cache/extr_cache-data.c_cache_do_set_yellow_light_remaining.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/cache/extr_cache-data.c_cache_do_set_yellow_light_remaining.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i8* }
%struct.cache_uri = type { i8 }
%struct.lev_cache_set_local_copy_yellow_light_short = type { i32, i32 }
%struct.lev_cache_set_local_copy_yellow_light_long = type { i32, i32 }

@.str = private unnamed_addr constant [65 x i8] c"cache_do_set_local_copy_yellow_light_remaining (\22%s\22, \22%s\22, %d)\0A\00", align 1
@MAX_YELLOW_LIGHT_DURATION = common dso_local global i32 0, align 4
@LC = common dso_local global %struct.TYPE_9__* null, align 8
@CACHE_MAX_LOCAL_COPIES = common dso_local global i32 0, align 4
@CACHE_LOCAL_COPY_FLAG_INT = common dso_local global i32 0, align 4
@LEV_CACHE_SET_LOCAL_COPY_YELLOW_LIGHT_SHORT = common dso_local global i64 0, align 8
@LEV_CACHE_SET_LOCAL_COPY_YELLOW_LIGHT_LONG = common dso_local global i64 0, align 8
@get_uri_f_last_md5 = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cache_do_set_yellow_light_remaining(i8* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.cache_uri*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.lev_cache_set_local_copy_yellow_light_short*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.lev_cache_set_local_copy_yellow_light_long*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %16 = load i8*, i8** %5, align 8
  %17 = load i8*, i8** %6, align 8
  %18 = load i32, i32* %7, align 4
  %19 = call i32 @vkprintf(i32 3, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str, i64 0, i64 0), i8* %16, i8* %17, i32 %18)
  %20 = load i32, i32* %7, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %26, label %22

22:                                               ; preds = %3
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* @MAX_YELLOW_LIGHT_DURATION, align 4
  %25 = icmp sgt i32 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %22, %3
  store i32 -1, i32* %4, align 4
  br label %147

27:                                               ; preds = %22
  %28 = load i8*, i8** %5, align 8
  %29 = call %struct.cache_uri* @get_uri_f(i8* %28, i32 0)
  store %struct.cache_uri* %29, %struct.cache_uri** %8, align 8
  %30 = load %struct.cache_uri*, %struct.cache_uri** %8, align 8
  %31 = icmp eq %struct.cache_uri* %30, null
  br i1 %31, label %32, label %33

32:                                               ; preds = %27
  store i32 -1, i32* %4, align 4
  br label %147

33:                                               ; preds = %27
  %34 = load %struct.cache_uri*, %struct.cache_uri** %8, align 8
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** @LC, align 8
  %36 = load i32, i32* @CACHE_MAX_LOCAL_COPIES, align 4
  %37 = call i32 @cache_local_copy_unpack(%struct.cache_uri* %34, %struct.TYPE_9__* %35, i32 %36, i32 1, i32* %11)
  store i32 %37, i32* %10, align 4
  %38 = load i32, i32* %10, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %33
  store i32 -1, i32* %4, align 4
  br label %147

41:                                               ; preds = %33
  store i32 0, i32* %9, align 4
  br label %42

42:                                               ; preds = %58, %41
  %43 = load i32, i32* %9, align 4
  %44 = load i32, i32* %10, align 4
  %45 = icmp slt i32 %43, %44
  br i1 %45, label %46, label %61

46:                                               ; preds = %42
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** @LC, align 8
  %48 = load i32, i32* %9, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = load i8*, i8** %6, align 8
  %54 = call i32 @strcmp(i32 %52, i8* %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %57, label %56

56:                                               ; preds = %46
  br label %61

57:                                               ; preds = %46
  br label %58

58:                                               ; preds = %57
  %59 = load i32, i32* %9, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %9, align 4
  br label %42

61:                                               ; preds = %56, %42
  %62 = load i32, i32* %9, align 4
  %63 = load i32, i32* %10, align 4
  %64 = icmp sge i32 %62, %63
  br i1 %64, label %65, label %66

65:                                               ; preds = %61
  store i32 -1, i32* %4, align 4
  br label %147

66:                                               ; preds = %61
  %67 = load %struct.cache_uri*, %struct.cache_uri** %8, align 8
  %68 = call i32 @cache_get_unique_md5_bytes(%struct.cache_uri* %67)
  store i32 %68, i32* %12, align 4
  %69 = load i32, i32* %12, align 4
  %70 = icmp ne i32 %69, 0
  %71 = zext i1 %70 to i32
  %72 = call i32 @assert(i32 %71)
  %73 = load %struct.TYPE_9__*, %struct.TYPE_9__** @LC, align 8
  %74 = load i32, i32* %9, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @CACHE_LOCAL_COPY_FLAG_INT, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %104

82:                                               ; preds = %66
  %83 = load i32, i32* %12, align 4
  %84 = icmp eq i32 %83, 8
  br i1 %84, label %85, label %104

85:                                               ; preds = %82
  %86 = load i64, i64* @LEV_CACHE_SET_LOCAL_COPY_YELLOW_LIGHT_SHORT, align 8
  %87 = load i32, i32* %7, align 4
  %88 = call i8* @alloc_log_event(i64 %86, i32 8, i32 %87)
  %89 = bitcast i8* %88 to %struct.lev_cache_set_local_copy_yellow_light_short*
  store %struct.lev_cache_set_local_copy_yellow_light_short* %89, %struct.lev_cache_set_local_copy_yellow_light_short** %13, align 8
  %90 = load %struct.TYPE_9__*, %struct.TYPE_9__** @LC, align 8
  %91 = load i32, i32* %9, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %90, i64 %92
  %94 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.lev_cache_set_local_copy_yellow_light_short*, %struct.lev_cache_set_local_copy_yellow_light_short** %13, align 8
  %97 = getelementptr inbounds %struct.lev_cache_set_local_copy_yellow_light_short, %struct.lev_cache_set_local_copy_yellow_light_short* %96, i32 0, i32 1
  store i32 %95, i32* %97, align 4
  %98 = load %struct.lev_cache_set_local_copy_yellow_light_short*, %struct.lev_cache_set_local_copy_yellow_light_short** %13, align 8
  %99 = getelementptr inbounds %struct.lev_cache_set_local_copy_yellow_light_short, %struct.lev_cache_set_local_copy_yellow_light_short* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.cache_uri*, %struct.cache_uri** %8, align 8
  %102 = getelementptr inbounds %struct.cache_uri, %struct.cache_uri* %101, i32 0, i32 0
  %103 = call i32 @memcpy(i32 %100, i8* %102, i32 8)
  br label %135

104:                                              ; preds = %82, %66
  %105 = load i8*, i8** %6, align 8
  %106 = call i32 @strlen(i8* %105)
  store i32 %106, i32* %14, align 4
  %107 = load i32, i32* %14, align 4
  %108 = icmp slt i32 %107, 256
  %109 = zext i1 %108 to i32
  %110 = call i32 @assert(i32 %109)
  %111 = load i64, i64* @LEV_CACHE_SET_LOCAL_COPY_YELLOW_LIGHT_LONG, align 8
  %112 = load i32, i32* %14, align 4
  %113 = sext i32 %112 to i64
  %114 = add nsw i64 %111, %113
  %115 = load i32, i32* %14, align 4
  %116 = sext i32 %115 to i64
  %117 = add i64 8, %116
  %118 = trunc i64 %117 to i32
  %119 = load i32, i32* %7, align 4
  %120 = call i8* @alloc_log_event(i64 %114, i32 %118, i32 %119)
  %121 = bitcast i8* %120 to %struct.lev_cache_set_local_copy_yellow_light_long*
  store %struct.lev_cache_set_local_copy_yellow_light_long* %121, %struct.lev_cache_set_local_copy_yellow_light_long** %15, align 8
  %122 = load %struct.cache_uri*, %struct.cache_uri** %8, align 8
  %123 = call i32 @compute_get_uri_f_last_md5(%struct.cache_uri* %122)
  %124 = load %struct.lev_cache_set_local_copy_yellow_light_long*, %struct.lev_cache_set_local_copy_yellow_light_long** %15, align 8
  %125 = getelementptr inbounds %struct.lev_cache_set_local_copy_yellow_light_long, %struct.lev_cache_set_local_copy_yellow_light_long* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = load i8*, i8** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @get_uri_f_last_md5, i32 0, i32 0, i32 0), align 8
  %128 = call i32 @memcpy(i32 %126, i8* %127, i32 16)
  %129 = load %struct.lev_cache_set_local_copy_yellow_light_long*, %struct.lev_cache_set_local_copy_yellow_light_long** %15, align 8
  %130 = getelementptr inbounds %struct.lev_cache_set_local_copy_yellow_light_long, %struct.lev_cache_set_local_copy_yellow_light_long* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = load i8*, i8** %6, align 8
  %133 = load i32, i32* %14, align 4
  %134 = call i32 @memcpy(i32 %131, i8* %132, i32 %133)
  br label %135

135:                                              ; preds = %104, %85
  %136 = load %struct.TYPE_9__*, %struct.TYPE_9__** @LC, align 8
  %137 = load i32, i32* %9, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %136, i64 %138
  %140 = load i32, i32* %7, align 4
  %141 = call i32 @cache_local_copy_set_yellow_light(%struct.TYPE_9__* %139, i32 %140)
  %142 = load %struct.cache_uri*, %struct.cache_uri** %8, align 8
  %143 = load %struct.TYPE_9__*, %struct.TYPE_9__** @LC, align 8
  %144 = load i32, i32* %10, align 4
  %145 = load i32, i32* %11, align 4
  %146 = call i32 @cache_uri_update_local_copy(%struct.cache_uri* %142, %struct.TYPE_9__* %143, i32 %144, i32 %145)
  store i32 0, i32* %4, align 4
  br label %147

147:                                              ; preds = %135, %65, %40, %32, %26
  %148 = load i32, i32* %4, align 4
  ret i32 %148
}

declare dso_local i32 @vkprintf(i32, i8*, i8*, i8*, i32) #1

declare dso_local %struct.cache_uri* @get_uri_f(i8*, i32) #1

declare dso_local i32 @cache_local_copy_unpack(%struct.cache_uri*, %struct.TYPE_9__*, i32, i32, i32*) #1

declare dso_local i32 @strcmp(i32, i8*) #1

declare dso_local i32 @cache_get_unique_md5_bytes(%struct.cache_uri*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i8* @alloc_log_event(i64, i32, i32) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @compute_get_uri_f_last_md5(%struct.cache_uri*) #1

declare dso_local i32 @cache_local_copy_set_yellow_light(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @cache_uri_update_local_copy(%struct.cache_uri*, %struct.TYPE_9__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
