; ModuleID = '/home/carl/AnghaBench/kphp-kdb/pmemcached/extr_pmemcached-data.c_pmemcached_store_current.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/pmemcached/extr_pmemcached-data.c_pmemcached_store_current.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i8*, i32, %struct.TYPE_10__*, %struct.TYPE_9__ }
%struct.TYPE_10__ = type { i32, i8*, i8*, i32, i32, i32, i32 }
%struct.TYPE_9__ = type { i32 }

@verbosity = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"data_len=%d\0A\00", align 1
@current_cache = common dso_local global %struct.TYPE_11__* null, align 8
@pmct_add = common dso_local global i32 0, align 4
@pmct_replace = common dso_local global i32 0, align 4
@entry_memory = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pmemcached_store_current(i32 %0, i8* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_10__*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  store i32 %0, i32* %7, align 4
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %15 = load i32, i32* @verbosity, align 4
  %16 = icmp sge i32 %15, 4
  br i1 %16, label %17, label %24

17:                                               ; preds = %5
  %18 = load i32, i32* @stderr, align 4
  %19 = load %struct.TYPE_11__*, %struct.TYPE_11__** @current_cache, align 8
  %20 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %19, i32 0, i32 3
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @fprintf(i32 %18, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %22)
  br label %24

24:                                               ; preds = %17, %5
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* @pmct_add, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %35

28:                                               ; preds = %24
  %29 = load %struct.TYPE_11__*, %struct.TYPE_11__** @current_cache, align 8
  %30 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %29, i32 0, i32 3
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp ne i32 %32, -1
  br i1 %33, label %34, label %35

34:                                               ; preds = %28
  store i32 0, i32* %6, align 4
  br label %159

35:                                               ; preds = %28, %24
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* @pmct_replace, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %46

39:                                               ; preds = %35
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** @current_cache, align 8
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %40, i32 0, i32 3
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = icmp eq i32 %43, -1
  br i1 %44, label %45, label %46

45:                                               ; preds = %39
  store i32 0, i32* %6, align 4
  br label %159

46:                                               ; preds = %39, %35
  %47 = load %struct.TYPE_11__*, %struct.TYPE_11__** @current_cache, align 8
  %48 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %47, i32 0, i32 0
  %49 = load i8*, i8** %48, align 8
  %50 = load %struct.TYPE_11__*, %struct.TYPE_11__** @current_cache, align 8
  %51 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @on_value_change(i8* %49, i32 %52)
  %54 = load %struct.TYPE_11__*, %struct.TYPE_11__** @current_cache, align 8
  %55 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %54, i32 0, i32 2
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** %55, align 8
  store %struct.TYPE_10__* %56, %struct.TYPE_10__** %12, align 8
  %57 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %58 = icmp ne %struct.TYPE_10__* %57, null
  br i1 %58, label %59, label %82

59:                                               ; preds = %46
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = icmp sge i32 %62, 0
  br i1 %63, label %64, label %81

64:                                               ; preds = %59
  %65 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 1
  %67 = load i8*, i8** %66, align 8
  %68 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = add nsw i32 %70, 1
  %72 = call i32 @zzfree(i8* %67, i32 %71)
  %73 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %74 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = add nsw i32 %75, 1
  %77 = load i32, i32* @entry_memory, align 4
  %78 = sub nsw i32 %77, %76
  store i32 %78, i32* @entry_memory, align 4
  %79 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %80 = call i32 @del_entry_time(%struct.TYPE_10__* %79)
  br label %81

81:                                               ; preds = %64, %59
  br label %119

82:                                               ; preds = %46
  %83 = call %struct.TYPE_10__* (...) @get_new_entry()
  store %struct.TYPE_10__* %83, %struct.TYPE_10__** %12, align 8
  %84 = load %struct.TYPE_11__*, %struct.TYPE_11__** @current_cache, align 8
  %85 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 8
  %87 = add nsw i32 %86, 1
  %88 = call i8* @zzmalloc(i32 %87)
  store i8* %88, i8** %13, align 8
  %89 = load i8*, i8** %13, align 8
  %90 = load %struct.TYPE_11__*, %struct.TYPE_11__** @current_cache, align 8
  %91 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %90, i32 0, i32 0
  %92 = load i8*, i8** %91, align 8
  %93 = load %struct.TYPE_11__*, %struct.TYPE_11__** @current_cache, align 8
  %94 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 8
  %96 = call i32 @memcpy(i8* %89, i8* %92, i32 %95)
  %97 = load i8*, i8** %13, align 8
  %98 = load %struct.TYPE_11__*, %struct.TYPE_11__** @current_cache, align 8
  %99 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 8
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i8, i8* %97, i64 %101
  store i8 0, i8* %102, align 1
  %103 = load %struct.TYPE_11__*, %struct.TYPE_11__** @current_cache, align 8
  %104 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 8
  %106 = add nsw i32 %105, 1
  %107 = load i32, i32* @entry_memory, align 4
  %108 = add nsw i32 %107, %106
  store i32 %108, i32* @entry_memory, align 4
  %109 = load i8*, i8** %13, align 8
  %110 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %111 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %110, i32 0, i32 2
  store i8* %109, i8** %111, align 8
  %112 = load %struct.TYPE_11__*, %struct.TYPE_11__** @current_cache, align 8
  %113 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 8
  %115 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %116 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %115, i32 0, i32 3
  store i32 %114, i32* %116, align 8
  %117 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %118 = call i32 @add_entry(%struct.TYPE_10__* %117)
  br label %119

119:                                              ; preds = %82, %81
  store i8* null, i8** %14, align 8
  %120 = load i32, i32* %9, align 4
  %121 = icmp sge i32 %120, 0
  br i1 %121, label %122, label %139

122:                                              ; preds = %119
  %123 = load i32, i32* %9, align 4
  %124 = add nsw i32 %123, 1
  %125 = call i8* @zzmalloc(i32 %124)
  store i8* %125, i8** %14, align 8
  %126 = call i32 @assert(i8* %125)
  %127 = load i8*, i8** %14, align 8
  %128 = load i8*, i8** %8, align 8
  %129 = load i32, i32* %9, align 4
  %130 = call i32 @memcpy(i8* %127, i8* %128, i32 %129)
  %131 = load i8*, i8** %14, align 8
  %132 = load i32, i32* %9, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i8, i8* %131, i64 %133
  store i8 0, i8* %134, align 1
  %135 = load i32, i32* %9, align 4
  %136 = add nsw i32 %135, 1
  %137 = load i32, i32* @entry_memory, align 4
  %138 = add nsw i32 %137, %136
  store i32 %138, i32* @entry_memory, align 4
  br label %139

139:                                              ; preds = %122, %119
  %140 = load i8*, i8** %14, align 8
  %141 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %142 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %141, i32 0, i32 1
  store i8* %140, i8** %142, align 8
  %143 = load i32, i32* %9, align 4
  %144 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %145 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %144, i32 0, i32 0
  store i32 %143, i32* %145, align 8
  %146 = load i32, i32* %10, align 4
  %147 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %148 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %147, i32 0, i32 4
  store i32 %146, i32* %148, align 4
  %149 = load i32, i32* %11, align 4
  %150 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %151 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %150, i32 0, i32 5
  store i32 %149, i32* %151, align 8
  %152 = call i32 (...) @local_clock()
  %153 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %154 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %153, i32 0, i32 6
  store i32 %152, i32* %154, align 4
  %155 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %156 = call i32 @add_entry_time(%struct.TYPE_10__* %155)
  %157 = load %struct.TYPE_11__*, %struct.TYPE_11__** @current_cache, align 8
  %158 = call i32 @cache_reload(%struct.TYPE_11__* %157)
  store i32 1, i32* %6, align 4
  br label %159

159:                                              ; preds = %139, %45, %34
  %160 = load i32, i32* %6, align 4
  ret i32 %160
}

declare dso_local i32 @fprintf(i32, i8*, i32) #1

declare dso_local i32 @on_value_change(i8*, i32) #1

declare dso_local i32 @zzfree(i8*, i32) #1

declare dso_local i32 @del_entry_time(%struct.TYPE_10__*) #1

declare dso_local %struct.TYPE_10__* @get_new_entry(...) #1

declare dso_local i8* @zzmalloc(i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @add_entry(%struct.TYPE_10__*) #1

declare dso_local i32 @assert(i8*) #1

declare dso_local i32 @local_clock(...) #1

declare dso_local i32 @add_entry_time(%struct.TYPE_10__*) #1

declare dso_local i32 @cache_reload(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
