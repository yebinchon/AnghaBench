; ModuleID = '/home/carl/AnghaBench/kphp-kdb/pmemcached/extr_pmemcached-engine.c_memcache_get_wildcard.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/pmemcached/extr_pmemcached-engine.c_memcache_get_wildcard.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connection = type { i32, i32 }
%struct.TYPE_2__ = type { i32, i8*, i32, i32, i8*, i64 }
%struct.data = type { i32, i32, i32 }

@.str = private unnamed_addr constant [33 x i8] c"memcache_get_wildcard. key = %s\0A\00", align 1
@wildcard_engine_mc_report = common dso_local global i32 0, align 4
@wildcard_engine_report = common dso_local global i32 0, align 4
@C_INTIMEOUT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"read_last_kept = %d\0A\00", align 1
@wildcard_type = common dso_local global i8 0, align 1
@wildcard_ptr = common dso_local global i8* null, align 8
@wildcard_last_key = common dso_local global i8* null, align 8
@wildcard_last_key_len = common dso_local global i32 0, align 4
@wildcard_connection = common dso_local global %struct.connection* null, align 8
@wildcard_total_data_sent = common dso_local global i32 0, align 4
@wildcard_total_keys_sent = common dso_local global i64 0, align 8
@metafile_mode = common dso_local global i64 0, align 8
@MAX_WILDCARD_LEN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [14 x i8] c"a:000000000:{\00", align 1
@wildcard_arrays_allocated = common dso_local global i32 0, align 4
@memcache_get_wildcard.buff = internal global [65536 x i8] zeroinitializer, align 16
@.str.3 = private unnamed_addr constant [7 x i8] c"VALUE \00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c" 1 \00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"000000000\0D\0Aa:000000000:{\00", align 1
@wildcard_prefix_len = common dso_local global i32 0, align 4
@mc_store = common dso_local global %struct.TYPE_2__* null, align 8
@.str.6 = private unnamed_addr constant [44 x i8] c"do_pmemcached_get_all_next_keys result: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @memcache_get_wildcard(%struct.connection* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.connection*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.data, align 4
  %10 = alloca { i64, i32 }, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.connection* %0, %struct.connection** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load i8*, i8** %6, align 8
  %14 = call i32 (i32, i8*, ...) @vkprintf(i32 3, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i8* %13)
  %15 = load i32, i32* @wildcard_engine_mc_report, align 4
  store i32 %15, i32* @wildcard_engine_report, align 4
  %16 = load %struct.connection*, %struct.connection** %5, align 8
  %17 = getelementptr inbounds %struct.connection, %struct.connection* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @C_INTIMEOUT, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %159

23:                                               ; preds = %3
  %24 = load %struct.connection*, %struct.connection** %5, align 8
  %25 = call i32 @read_last_kept(%struct.connection* %24, i32 1)
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %8, align 4
  %27 = call i32 (i32, i8*, ...) @vkprintf(i32 3, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %26)
  %28 = load i8*, i8** %6, align 8
  %29 = load i32, i32* %7, align 4
  %30 = sub nsw i32 %29, 1
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i8, i8* %28, i64 %31
  %33 = load i8, i8* %32, align 1
  store i8 %33, i8* @wildcard_type, align 1
  store i8* null, i8** @wildcard_ptr, align 8
  %34 = load i8*, i8** %6, align 8
  store i8* %34, i8** @wildcard_last_key, align 8
  %35 = load i32, i32* %7, align 4
  %36 = sub nsw i32 %35, 1
  store i32 %36, i32* @wildcard_last_key_len, align 4
  %37 = load %struct.connection*, %struct.connection** %5, align 8
  store %struct.connection* %37, %struct.connection** @wildcard_connection, align 8
  %38 = load i32, i32* %8, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %111, label %40

40:                                               ; preds = %23
  %41 = load i8, i8* @wildcard_type, align 1
  %42 = sext i8 %41 to i32
  %43 = icmp eq i32 %42, 35
  br i1 %43, label %44, label %66

44:                                               ; preds = %40
  %45 = load i8*, i8** %6, align 8
  %46 = load i32, i32* %7, align 4
  %47 = sub nsw i32 %46, 1
  %48 = call { i64, i32 } @wildcard_get_value(i8* %45, i32 %47)
  store { i64, i32 } %48, { i64, i32 }* %10, align 8
  %49 = bitcast { i64, i32 }* %10 to i8*
  %50 = bitcast %struct.data* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %50, i8* align 8 %49, i64 12, i1 false)
  %51 = getelementptr inbounds %struct.data, %struct.data* %9, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = icmp ne i32 %52, -1
  br i1 %53, label %54, label %65

54:                                               ; preds = %44
  %55 = load %struct.connection*, %struct.connection** %5, align 8
  %56 = load i8*, i8** %6, align 8
  %57 = load i32, i32* %7, align 4
  %58 = getelementptr inbounds %struct.data, %struct.data* %9, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = getelementptr inbounds %struct.data, %struct.data* %9, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = getelementptr inbounds %struct.data, %struct.data* %9, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @return_one_key_flags_len(%struct.connection* %55, i8* %56, i32 %57, i32 %59, i32 %61, i32 %63)
  store i32 0, i32* %4, align 4
  br label %159

65:                                               ; preds = %44
  br label %66

66:                                               ; preds = %65, %40
  store i32 0, i32* @wildcard_total_data_sent, align 4
  store i64 0, i64* @wildcard_total_keys_sent, align 8
  %67 = load i8, i8* @wildcard_type, align 1
  %68 = sext i8 %67 to i32
  %69 = icmp eq i32 %68, 35
  br i1 %69, label %70, label %108

70:                                               ; preds = %66
  %71 = load i64, i64* @metafile_mode, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %80

73:                                               ; preds = %70
  %74 = load i32, i32* @MAX_WILDCARD_LEN, align 4
  %75 = call i8* @malloc(i32 %74)
  store i8* %75, i8** @wildcard_ptr, align 8
  %76 = load i8*, i8** @wildcard_ptr, align 8
  %77 = call i32 @memcpy(i8* %76, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i32 13)
  store i32 13, i32* @wildcard_total_data_sent, align 4
  %78 = load i32, i32* @wildcard_arrays_allocated, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* @wildcard_arrays_allocated, align 4
  br label %107

80:                                               ; preds = %70
  %81 = call i32 @sprintf(i8* getelementptr inbounds ([65536 x i8], [65536 x i8]* @memcache_get_wildcard.buff, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  store i32 %81, i32* %11, align 4
  %82 = load i32, i32* %11, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i8, i8* getelementptr inbounds ([65536 x i8], [65536 x i8]* @memcache_get_wildcard.buff, i64 0, i64 0), i64 %83
  %85 = load i8*, i8** %6, align 8
  %86 = load i32, i32* %7, align 4
  %87 = call i32 @memcpy(i8* %84, i8* %85, i32 %86)
  %88 = load i32, i32* %7, align 4
  %89 = load i32, i32* %11, align 4
  %90 = add nsw i32 %89, %88
  store i32 %90, i32* %11, align 4
  %91 = load i32, i32* %11, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i8, i8* getelementptr inbounds ([65536 x i8], [65536 x i8]* @memcache_get_wildcard.buff, i64 0, i64 0), i64 %92
  %94 = call i32 @sprintf(i8* %93, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  %95 = load i32, i32* %11, align 4
  %96 = add nsw i32 %95, %94
  store i32 %96, i32* %11, align 4
  %97 = load %struct.connection*, %struct.connection** %5, align 8
  %98 = getelementptr inbounds %struct.connection, %struct.connection* %97, i32 0, i32 1
  %99 = load i32, i32* %11, align 4
  %100 = call i32 @write_out(i32* %98, i8* getelementptr inbounds ([65536 x i8], [65536 x i8]* @memcache_get_wildcard.buff, i64 0, i64 0), i32 %99)
  %101 = load %struct.connection*, %struct.connection** %5, align 8
  %102 = getelementptr inbounds %struct.connection, %struct.connection* %101, i32 0, i32 1
  %103 = call i8* @get_write_ptr(i32* %102, i32 50)
  store i8* %103, i8** @wildcard_ptr, align 8
  %104 = load %struct.connection*, %struct.connection** %5, align 8
  %105 = getelementptr inbounds %struct.connection, %struct.connection* %104, i32 0, i32 1
  %106 = call i32 @write_out(i32* %105, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0), i32 24)
  store i32 13, i32* @wildcard_total_data_sent, align 4
  br label %107

107:                                              ; preds = %80, %73
  br label %108

108:                                              ; preds = %107, %66
  %109 = load i32, i32* %7, align 4
  %110 = sub nsw i32 %109, 1
  store i32 %110, i32* @wildcard_prefix_len, align 4
  br label %132

111:                                              ; preds = %23
  %112 = load i64, i64* @metafile_mode, align 8
  %113 = call i32 @assert(i64 %112)
  %114 = load %struct.TYPE_2__*, %struct.TYPE_2__** @mc_store, align 8
  %115 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  store i32 %116, i32* @wildcard_last_key_len, align 4
  %117 = load %struct.TYPE_2__*, %struct.TYPE_2__** @mc_store, align 8
  %118 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %117, i32 0, i32 1
  %119 = load i8*, i8** %118, align 8
  store i8* %119, i8** @wildcard_last_key, align 8
  %120 = load %struct.TYPE_2__*, %struct.TYPE_2__** @mc_store, align 8
  %121 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 8
  store i32 %122, i32* @wildcard_prefix_len, align 4
  %123 = load %struct.TYPE_2__*, %struct.TYPE_2__** @mc_store, align 8
  %124 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %123, i32 0, i32 3
  %125 = load i32, i32* %124, align 4
  store i32 %125, i32* @wildcard_total_data_sent, align 4
  %126 = load %struct.TYPE_2__*, %struct.TYPE_2__** @mc_store, align 8
  %127 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %126, i32 0, i32 5
  %128 = load i64, i64* %127, align 8
  store i64 %128, i64* @wildcard_total_keys_sent, align 8
  %129 = load %struct.TYPE_2__*, %struct.TYPE_2__** @mc_store, align 8
  %130 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %129, i32 0, i32 4
  %131 = load i8*, i8** %130, align 8
  store i8* %131, i8** @wildcard_ptr, align 8
  br label %132

132:                                              ; preds = %111, %108
  %133 = load i8*, i8** @wildcard_last_key, align 8
  %134 = load i32, i32* @wildcard_last_key_len, align 4
  %135 = load i32, i32* @wildcard_prefix_len, align 4
  %136 = load i64, i64* @wildcard_total_keys_sent, align 8
  %137 = call i32 @do_pmemcached_get_all_next_keys(i8* %133, i32 %134, i32 %135, i64 %136)
  store i32 %137, i32* %12, align 4
  %138 = load i32, i32* %12, align 4
  %139 = call i32 (i32, i8*, ...) @vkprintf(i32 3, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.6, i64 0, i64 0), i32 %138)
  %140 = load i32, i32* %12, align 4
  %141 = icmp eq i32 %140, -2
  br i1 %141, label %142, label %155

142:                                              ; preds = %132
  %143 = load i64, i64* @metafile_mode, align 8
  %144 = call i32 @assert(i64 %143)
  %145 = load %struct.connection*, %struct.connection** %5, align 8
  %146 = load i8*, i8** @wildcard_last_key, align 8
  %147 = load i32, i32* @wildcard_last_key_len, align 4
  %148 = load i32, i32* @wildcard_prefix_len, align 4
  %149 = load i32, i32* @wildcard_total_data_sent, align 4
  %150 = load i64, i64* @wildcard_total_keys_sent, align 8
  %151 = load i8*, i8** @wildcard_ptr, align 8
  %152 = call i32 @write_last_kept(%struct.connection* %145, i8* %146, i32 %147, i32 %148, i32 %149, i64 %150, i8* %151)
  %153 = load %struct.connection*, %struct.connection** %5, align 8
  %154 = call i32 @memcache_wait(%struct.connection* %153)
  store i32 0, i32* %4, align 4
  br label %159

155:                                              ; preds = %132
  %156 = load i8*, i8** %6, align 8
  %157 = load i32, i32* %7, align 4
  %158 = call i32 @wildcard_report_finish(i8* %156, i32 %157)
  store i32 0, i32* %4, align 4
  br label %159

159:                                              ; preds = %155, %142, %54, %22
  %160 = load i32, i32* %4, align 4
  ret i32 %160
}

declare dso_local i32 @vkprintf(i32, i8*, ...) #1

declare dso_local i32 @read_last_kept(%struct.connection*, i32) #1

declare dso_local { i64, i32 } @wildcard_get_value(i8*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @return_one_key_flags_len(%struct.connection*, i8*, i32, i32, i32, i32) #1

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @sprintf(i8*, i8*) #1

declare dso_local i32 @write_out(i32*, i8*, i32) #1

declare dso_local i8* @get_write_ptr(i32*, i32) #1

declare dso_local i32 @assert(i64) #1

declare dso_local i32 @do_pmemcached_get_all_next_keys(i8*, i32, i32, i64) #1

declare dso_local i32 @write_last_kept(%struct.connection*, i8*, i32, i32, i32, i64, i8*) #1

declare dso_local i32 @memcache_wait(%struct.connection*) #1

declare dso_local i32 @wildcard_report_finish(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
