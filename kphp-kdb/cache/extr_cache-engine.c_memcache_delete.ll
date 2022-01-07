; ModuleID = '/home/carl/AnghaBench/kphp-kdb/cache/extr_cache-engine.c_memcache_delete.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/cache/extr_cache-engine.c_memcache_delete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connection = type { i32 }

@delete_queries = common dso_local global i32 0, align 4
@binlog_disabled = common dso_local global i64 0, align 8
@cache_features_mask = common dso_local global i32 0, align 4
@CACHE_FEATURE_LONG_QUERIES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"remote_server\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"%d,%d,%d\00", align 1
@cache_id = common dso_local global i32 0, align 4
@delete_remote_server_queries = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [10 x i8] c"DELETED\0D\0A\00", align 1
@.str.3 = private unnamed_addr constant [68 x i8] c"cache_do_delete_remote_disk (node_id:%d, server_id:%d) retuned %d.\0A\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"remote_disk\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"%d,%d,%d,%d\00", align 1
@delete_remote_disk_queries = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @memcache_delete(%struct.connection* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.connection*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.connection* %0, %struct.connection** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %14 = load i32, i32* @delete_queries, align 4
  %15 = add nsw i32 %14, 1
  store i32 %15, i32* @delete_queries, align 4
  %16 = load i64, i64* @binlog_disabled, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %3
  %19 = load %struct.connection*, %struct.connection** %5, align 8
  %20 = call i32 @not_found(%struct.connection* %19)
  store i32 %20, i32* %4, align 4
  br label %97

21:                                               ; preds = %3
  %22 = load i32, i32* @cache_features_mask, align 4
  %23 = load i32, i32* @CACHE_FEATURE_LONG_QUERIES, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %59

26:                                               ; preds = %21
  %27 = load i32, i32* %7, align 4
  %28 = icmp sge i32 %27, 13
  br i1 %28, label %29, label %59

29:                                               ; preds = %26
  %30 = load i8*, i8** %6, align 8
  %31 = call i32 @memcmp(i8* %30, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 13)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %59, label %33

33:                                               ; preds = %29
  %34 = load i8*, i8** %6, align 8
  %35 = getelementptr inbounds i8, i8* %34, i64 13
  %36 = call i32 (i8*, i8*, i32*, i32*, i32*, ...) @sscanf(i8* %35, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32* %8, i32* %9, i32* %10)
  %37 = icmp eq i32 %36, 3
  br i1 %37, label %38, label %59

38:                                               ; preds = %33
  %39 = load i32, i32* @cache_id, align 4
  %40 = load i32, i32* %8, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %59

42:                                               ; preds = %38
  %43 = load i32, i32* @delete_remote_server_queries, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* @delete_remote_server_queries, align 4
  %45 = load i32, i32* %9, align 4
  %46 = load i32, i32* %10, align 4
  %47 = call i32 @cache_do_delete_remote_disk(i32 %45, i32 %46, i32 0)
  store i32 %47, i32* %11, align 4
  %48 = load i32, i32* %11, align 4
  %49 = icmp sgt i32 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %42
  %51 = load %struct.connection*, %struct.connection** %5, align 8
  %52 = getelementptr inbounds %struct.connection, %struct.connection* %51, i32 0, i32 0
  %53 = call i32 @write_out(i32* %52, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 9)
  store i32 0, i32* %4, align 4
  br label %97

54:                                               ; preds = %42
  %55 = load i32, i32* %9, align 4
  %56 = load i32, i32* %10, align 4
  %57 = load i32, i32* %11, align 4
  %58 = call i32 @vkprintf(i32 2, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.3, i64 0, i64 0), i32 %55, i32 %56, i32 %57)
  br label %59

59:                                               ; preds = %54, %38, %33, %29, %26, %21
  %60 = load i32, i32* @cache_features_mask, align 4
  %61 = load i32, i32* @CACHE_FEATURE_LONG_QUERIES, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %94

64:                                               ; preds = %59
  %65 = load i32, i32* %7, align 4
  %66 = icmp sge i32 %65, 11
  br i1 %66, label %67, label %94

67:                                               ; preds = %64
  %68 = load i8*, i8** %6, align 8
  %69 = call i32 @memcmp(i8* %68, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i32 11)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %94, label %71

71:                                               ; preds = %67
  %72 = load i8*, i8** %6, align 8
  %73 = getelementptr inbounds i8, i8* %72, i64 11
  %74 = call i32 (i8*, i8*, i32*, i32*, i32*, ...) @sscanf(i8* %73, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i32* %8, i32* %9, i32* %10, i32* %12)
  %75 = icmp eq i32 %74, 4
  br i1 %75, label %76, label %94

76:                                               ; preds = %71
  %77 = load i32, i32* @cache_id, align 4
  %78 = load i32, i32* %8, align 4
  %79 = icmp eq i32 %77, %78
  br i1 %79, label %80, label %94

80:                                               ; preds = %76
  %81 = load i32, i32* @delete_remote_disk_queries, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* @delete_remote_disk_queries, align 4
  %83 = load i32, i32* %9, align 4
  %84 = load i32, i32* %10, align 4
  %85 = load i32, i32* %12, align 4
  %86 = call i32 @cache_do_delete_remote_disk(i32 %83, i32 %84, i32 %85)
  store i32 %86, i32* %13, align 4
  %87 = load i32, i32* %13, align 4
  %88 = icmp sgt i32 %87, 0
  br i1 %88, label %89, label %93

89:                                               ; preds = %80
  %90 = load %struct.connection*, %struct.connection** %5, align 8
  %91 = getelementptr inbounds %struct.connection, %struct.connection* %90, i32 0, i32 0
  %92 = call i32 @write_out(i32* %91, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 9)
  store i32 0, i32* %4, align 4
  br label %97

93:                                               ; preds = %80
  br label %94

94:                                               ; preds = %93, %76, %71, %67, %64, %59
  %95 = load %struct.connection*, %struct.connection** %5, align 8
  %96 = call i32 @not_found(%struct.connection* %95)
  store i32 %96, i32* %4, align 4
  br label %97

97:                                               ; preds = %94, %89, %50, %18
  %98 = load i32, i32* %4, align 4
  ret i32 %98
}

declare dso_local i32 @not_found(%struct.connection*) #1

declare dso_local i32 @memcmp(i8*, i8*, i32) #1

declare dso_local i32 @sscanf(i8*, i8*, i32*, i32*, i32*, ...) #1

declare dso_local i32 @cache_do_delete_remote_disk(i32, i32, i32) #1

declare dso_local i32 @write_out(i32*, i8*, i32) #1

declare dso_local i32 @vkprintf(i32, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
