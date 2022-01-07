; ModuleID = '/home/carl/AnghaBench/kphp-kdb/pmemcached/extr_pmemcached-engine.c_memcache_get.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/pmemcached/extr_pmemcached-engine.c_memcache_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connection = type { i32 }
%struct.data = type { i32, i8*, i32 }

@verbosity = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"memcache_get: key='%s'\0A\00", align 1
@stats_buff = common dso_local global i32 0, align 4
@protected_mode = common dso_local global i64 0, align 8
@cmd_get = common dso_local global i32 0, align 4
@disable_wildcard = common dso_local global i32 0, align 4
@get_hits = common dso_local global i32 0, align 4
@return_false_if_not_found = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"b:0;\00", align 1
@get_missed = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @memcache_get(%struct.connection* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.connection*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.data, align 8
  store %struct.connection* %0, %struct.connection** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* @verbosity, align 4
  %11 = icmp sge i32 %10, 3
  br i1 %11, label %12, label %16

12:                                               ; preds = %3
  %13 = load i32, i32* @stderr, align 4
  %14 = load i8*, i8** %6, align 8
  %15 = call i32 @fprintf(i32 %13, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i8* %14)
  br label %16

16:                                               ; preds = %12, %3
  %17 = load i8*, i8** %6, align 8
  %18 = load i32, i32* %7, align 4
  %19 = call i64 @pmemcache_match_stats_key(i8* %17, i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %29

21:                                               ; preds = %16
  %22 = load %struct.connection*, %struct.connection** %5, align 8
  %23 = call i32 @pmemcache_prepare_stats(%struct.connection* %22)
  store i32 %23, i32* %8, align 4
  %24 = load %struct.connection*, %struct.connection** %5, align 8
  %25 = load i8*, i8** %6, align 8
  %26 = load i32, i32* @stats_buff, align 4
  %27 = load i32, i32* %8, align 4
  %28 = call i32 @return_one_key(%struct.connection* %24, i8* %25, i32 %26, i32 %27)
  store i32 0, i32* %4, align 4
  br label %109

29:                                               ; preds = %16
  %30 = load i64, i64* @protected_mode, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %29
  store i32 0, i32* %4, align 4
  br label %109

33:                                               ; preds = %29
  %34 = load i32, i32* @cmd_get, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* @cmd_get, align 4
  %36 = load i32, i32* @disable_wildcard, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %61, label %38

38:                                               ; preds = %33
  %39 = load i8*, i8** %6, align 8
  %40 = load i32, i32* %7, align 4
  %41 = sub nsw i32 %40, 1
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i8, i8* %39, i64 %42
  %44 = load i8, i8* %43, align 1
  %45 = sext i8 %44 to i32
  %46 = icmp eq i32 %45, 42
  br i1 %46, label %56, label %47

47:                                               ; preds = %38
  %48 = load i8*, i8** %6, align 8
  %49 = load i32, i32* %7, align 4
  %50 = sub nsw i32 %49, 1
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i8, i8* %48, i64 %51
  %53 = load i8, i8* %52, align 1
  %54 = sext i8 %53 to i32
  %55 = icmp eq i32 %54, 35
  br i1 %55, label %56, label %61

56:                                               ; preds = %47, %38
  %57 = load %struct.connection*, %struct.connection** %5, align 8
  %58 = load i8*, i8** %6, align 8
  %59 = load i32, i32* %7, align 4
  %60 = call i32 @memcache_get_wildcard(%struct.connection* %57, i8* %58, i32 %59)
  store i32 %60, i32* %4, align 4
  br label %109

61:                                               ; preds = %47, %33
  %62 = load i8*, i8** %6, align 8
  %63 = load i32, i32* %7, align 4
  %64 = call i32 @do_pmemcached_preload(i8* %62, i32 %63, i32 1)
  %65 = icmp eq i32 %64, -2
  br i1 %65, label %66, label %69

66:                                               ; preds = %61
  %67 = load %struct.connection*, %struct.connection** %5, align 8
  %68 = call i32 @memcache_wait(%struct.connection* %67)
  store i32 0, i32* %4, align 4
  br label %109

69:                                               ; preds = %61
  %70 = load i8*, i8** %6, align 8
  %71 = load i32, i32* %7, align 4
  call void @do_pmemcached_get(%struct.data* sret %9, i8* %70, i32 %71)
  %72 = getelementptr inbounds %struct.data, %struct.data* %9, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = icmp sge i32 %73, 0
  br i1 %74, label %75, label %87

75:                                               ; preds = %69
  %76 = load i32, i32* @get_hits, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* @get_hits, align 4
  %78 = load %struct.connection*, %struct.connection** %5, align 8
  %79 = load i8*, i8** %6, align 8
  %80 = getelementptr inbounds %struct.data, %struct.data* %9, i32 0, i32 1
  %81 = load i8*, i8** %80, align 8
  %82 = getelementptr inbounds %struct.data, %struct.data* %9, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = getelementptr inbounds %struct.data, %struct.data* %9, i32 0, i32 2
  %85 = load i32, i32* %84, align 8
  %86 = call i32 @return_one_key_flags(%struct.connection* %78, i8* %79, i8* %81, i32 %83, i32 %85)
  br label %108

87:                                               ; preds = %69
  %88 = getelementptr inbounds %struct.data, %struct.data* %9, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = icmp eq i32 %89, -1
  br i1 %90, label %95, label %91

91:                                               ; preds = %87
  %92 = getelementptr inbounds %struct.data, %struct.data* %9, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = icmp eq i32 %93, -2
  br i1 %94, label %95, label %105

95:                                               ; preds = %91, %87
  %96 = load i64, i64* @return_false_if_not_found, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %102

98:                                               ; preds = %95
  %99 = load %struct.connection*, %struct.connection** %5, align 8
  %100 = load i8*, i8** %6, align 8
  %101 = call i32 @return_one_key_flags(%struct.connection* %99, i8* %100, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 4, i32 1)
  br label %102

102:                                              ; preds = %98, %95
  %103 = load i32, i32* @get_missed, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* @get_missed, align 4
  br label %107

105:                                              ; preds = %91
  %106 = call i32 @assert(i32 0)
  br label %107

107:                                              ; preds = %105, %102
  br label %108

108:                                              ; preds = %107, %75
  store i32 0, i32* %4, align 4
  br label %109

109:                                              ; preds = %108, %66, %56, %32, %21
  %110 = load i32, i32* %4, align 4
  ret i32 %110
}

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local i64 @pmemcache_match_stats_key(i8*, i32) #1

declare dso_local i32 @pmemcache_prepare_stats(%struct.connection*) #1

declare dso_local i32 @return_one_key(%struct.connection*, i8*, i32, i32) #1

declare dso_local i32 @memcache_get_wildcard(%struct.connection*, i8*, i32) #1

declare dso_local i32 @do_pmemcached_preload(i8*, i32, i32) #1

declare dso_local i32 @memcache_wait(%struct.connection*) #1

declare dso_local void @do_pmemcached_get(%struct.data* sret, i8*, i32) #1

declare dso_local i32 @return_one_key_flags(%struct.connection*, i8*, i8*, i32, i32) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
