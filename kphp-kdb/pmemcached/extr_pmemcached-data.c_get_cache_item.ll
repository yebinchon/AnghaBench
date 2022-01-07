; ModuleID = '/home/carl/AnghaBench/kphp-kdb/pmemcached/extr_pmemcached-data.c_get_cache_item.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/pmemcached/extr_pmemcached-data.c_get_cache_item.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.entry = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@verbosity = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"get_cache_item\0A\00", align 1
@HASH_TABLE_MASK = common dso_local global i64 0, align 8
@HASH_TABLE_SIZE = common dso_local global i32 0, align 4
@cache_next = common dso_local global i32* null, align 8
@cache = common dso_local global %struct.entry* null, align 8
@.str.1 = private unnamed_addr constant [49 x i8] c"cache found data_len=%d (key_len = %d key = %s)\0A\00", align 1
@.str.2 = private unnamed_addr constant [44 x i8] c"cache not found (key_len = %d key = %s)...\0A\00", align 1
@cache_free = common dso_local global i64 0, align 8
@cache_stack = common dso_local global i32* null, align 8
@cache_prev = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.entry* @get_cache_item(i8* %0, i32 %1) #0 {
  %3 = alloca %struct.entry*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.entry*, align 8
  %10 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load i32, i32* @verbosity, align 4
  %12 = icmp sge i32 %11, 4
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load i32, i32* @stderr, align 4
  %15 = call i32 (i32, i8*, ...) @fprintf(i32 %14, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  br label %16

16:                                               ; preds = %13, %2
  %17 = load i8*, i8** %4, align 8
  %18 = load i32, i32* %5, align 4
  %19 = call i64 @get_hash(i8* %17, i32 %18)
  store i64 %19, i64* %6, align 8
  %20 = load i64, i64* %6, align 8
  %21 = load i64, i64* @HASH_TABLE_MASK, align 8
  %22 = and i64 %20, %21
  %23 = trunc i64 %22 to i32
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* @HASH_TABLE_SIZE, align 4
  %26 = add nsw i32 %24, %25
  store i32 %26, i32* %8, align 4
  br label %27

27:                                               ; preds = %80, %16
  %28 = load i32*, i32** @cache_next, align 8
  %29 = load i32, i32* %8, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @HASH_TABLE_SIZE, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %35, label %86

35:                                               ; preds = %27
  %36 = load %struct.entry*, %struct.entry** @cache, align 8
  %37 = load i32*, i32** @cache_next, align 8
  %38 = load i32, i32* %8, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.entry, %struct.entry* %36, i64 %42
  store %struct.entry* %43, %struct.entry** %9, align 8
  %44 = load i32, i32* %5, align 4
  %45 = load %struct.entry*, %struct.entry** %9, align 8
  %46 = getelementptr inbounds %struct.entry, %struct.entry* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = icmp eq i32 %44, %47
  br i1 %48, label %49, label %80

49:                                               ; preds = %35
  %50 = load i32, i32* %5, align 4
  %51 = icmp sge i32 %50, 0
  br i1 %51, label %52, label %80

52:                                               ; preds = %49
  %53 = load i8*, i8** %4, align 8
  %54 = load %struct.entry*, %struct.entry** %9, align 8
  %55 = getelementptr inbounds %struct.entry, %struct.entry* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* %5, align 4
  %58 = call i32 @memcmp(i8* %53, i32 %56, i32 %57)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %80, label %60

60:                                               ; preds = %52
  %61 = load i32*, i32** @cache_next, align 8
  %62 = load i32, i32* %8, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %61, i64 %63
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @update_cache_use(i32 %65)
  %67 = load i32, i32* @verbosity, align 4
  %68 = icmp sge i32 %67, 4
  br i1 %68, label %69, label %78

69:                                               ; preds = %60
  %70 = load i32, i32* @stderr, align 4
  %71 = load %struct.entry*, %struct.entry** %9, align 8
  %72 = getelementptr inbounds %struct.entry, %struct.entry* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* %5, align 4
  %76 = load i8*, i8** %4, align 8
  %77 = call i32 (i32, i8*, ...) @fprintf(i32 %70, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i32 %74, i32 %75, i8* %76)
  br label %78

78:                                               ; preds = %69, %60
  %79 = load %struct.entry*, %struct.entry** %9, align 8
  store %struct.entry* %79, %struct.entry** %3, align 8
  br label %144

80:                                               ; preds = %52, %49, %35
  %81 = load i32*, i32** @cache_next, align 8
  %82 = load i32, i32* %8, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %81, i64 %83
  %85 = load i32, i32* %84, align 4
  store i32 %85, i32* %8, align 4
  br label %27

86:                                               ; preds = %27
  %87 = load i32, i32* @verbosity, align 4
  %88 = icmp sge i32 %87, 4
  br i1 %88, label %89, label %94

89:                                               ; preds = %86
  %90 = load i32, i32* @stderr, align 4
  %91 = load i32, i32* %5, align 4
  %92 = load i8*, i8** %4, align 8
  %93 = call i32 (i32, i8*, ...) @fprintf(i32 %90, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i32 %91, i8* %92)
  br label %94

94:                                               ; preds = %89, %86
  %95 = load i64, i64* @cache_free, align 8
  %96 = call i32 @assert(i64 %95)
  %97 = load i32*, i32** @cache_stack, align 8
  %98 = load i64, i64* @cache_free, align 8
  %99 = add i64 %98, -1
  store i64 %99, i64* @cache_free, align 8
  %100 = getelementptr inbounds i32, i32* %97, i64 %99
  %101 = load i32, i32* %100, align 4
  store i32 %101, i32* %10, align 4
  %102 = load i32*, i32** @cache_next, align 8
  %103 = load i32, i32* %8, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i32, i32* %102, i64 %104
  %106 = load i32, i32* %105, align 4
  %107 = load i32*, i32** @cache_next, align 8
  %108 = load i32, i32* %10, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i32, i32* %107, i64 %109
  store i32 %106, i32* %110, align 4
  %111 = load i32, i32* %10, align 4
  %112 = load i32*, i32** @cache_prev, align 8
  %113 = load i32*, i32** @cache_next, align 8
  %114 = load i32, i32* %10, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i32, i32* %113, i64 %115
  %117 = load i32, i32* %116, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i32, i32* %112, i64 %118
  store i32 %111, i32* %119, align 4
  %120 = load i32, i32* %8, align 4
  %121 = load i32*, i32** @cache_prev, align 8
  %122 = load i32, i32* %10, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i32, i32* %121, i64 %123
  store i32 %120, i32* %124, align 4
  %125 = load i32, i32* %10, align 4
  %126 = load i32*, i32** @cache_next, align 8
  %127 = load i32, i32* %8, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i32, i32* %126, i64 %128
  store i32 %125, i32* %129, align 4
  %130 = load %struct.entry*, %struct.entry** @cache, align 8
  %131 = load i32, i32* %10, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds %struct.entry, %struct.entry* %130, i64 %132
  %134 = load i8*, i8** %4, align 8
  %135 = load i32, i32* %5, align 4
  %136 = call i32 @create_new_cache_item(%struct.entry* %133, i8* %134, i32 %135)
  %137 = call i32 (...) @free_cache()
  %138 = load i32, i32* %10, align 4
  %139 = call i32 @add_cache_use(i32 %138)
  %140 = load %struct.entry*, %struct.entry** @cache, align 8
  %141 = load i32, i32* %10, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds %struct.entry, %struct.entry* %140, i64 %142
  store %struct.entry* %143, %struct.entry** %3, align 8
  br label %144

144:                                              ; preds = %94, %78
  %145 = load %struct.entry*, %struct.entry** %3, align 8
  ret %struct.entry* %145
}

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i64 @get_hash(i8*, i32) #1

declare dso_local i32 @memcmp(i8*, i32, i32) #1

declare dso_local i32 @update_cache_use(i32) #1

declare dso_local i32 @assert(i64) #1

declare dso_local i32 @create_new_cache_item(%struct.entry*, i8*, i32) #1

declare dso_local i32 @free_cache(...) #1

declare dso_local i32 @add_cache_use(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
