; ModuleID = '/home/carl/AnghaBench/kphp-kdb/pmemcached/extr_pmemcached-data.c_zzmalloc.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/pmemcached/extr_pmemcached-data.c_zzmalloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@max_memory = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"Out of memory\0A\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"too much memory used: %lld of %lld\0A\00", align 1
@.str.2 = private unnamed_addr constant [100 x i8] c"memory distributes as follow: %lld to current, %lld to cache, %lld to metafiles, %lld to init data\0A\00", align 1
@entry_memory = common dso_local global i32 0, align 4
@cache_size = common dso_local global i32 0, align 4
@allocated_metafile_bytes = common dso_local global i32 0, align 4
@init_memory = common dso_local global i32 0, align 4
@MAX_ZMALLOC_MEM = common dso_local global i32 0, align 4
@PTRSIZE = common dso_local global i32 0, align 4
@zalloc_mem = common dso_local global i32 0, align 4
@malloc_mem = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @zzmalloc(i32 %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = icmp slt i32 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  store i8* null, i8** %2, align 8
  br label %72

8:                                                ; preds = %1
  %9 = call i64 (...) @get_memory_used()
  %10 = load i64, i64* @max_memory, align 8
  %11 = icmp sgt i64 %9, %10
  br i1 %11, label %12, label %15

12:                                               ; preds = %8
  %13 = load i32, i32* @stderr, align 4
  %14 = call i32 (i32, i8*, ...) @fprintf(i32 %13, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  br label %15

15:                                               ; preds = %12, %8
  %16 = call i64 (...) @get_memory_used()
  %17 = load i64, i64* @max_memory, align 8
  %18 = icmp sgt i64 %16, %17
  br i1 %18, label %19, label %30

19:                                               ; preds = %15
  %20 = load i32, i32* @stderr, align 4
  %21 = call i64 (...) @get_memory_used()
  %22 = load i64, i64* @max_memory, align 8
  %23 = call i32 (i32, i8*, ...) @fprintf(i32 %20, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i64 %21, i64 %22)
  %24 = load i32, i32* @stderr, align 4
  %25 = load i32, i32* @entry_memory, align 4
  %26 = load i32, i32* @cache_size, align 4
  %27 = load i32, i32* @allocated_metafile_bytes, align 4
  %28 = load i32, i32* @init_memory, align 4
  %29 = call i32 (i32, i8*, ...) @fprintf(i32 %24, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @.str.2, i64 0, i64 0), i32 %25, i32 %26, i32 %27, i32 %28)
  br label %30

30:                                               ; preds = %19, %15
  %31 = call i64 (...) @get_memory_used()
  %32 = load i64, i64* @max_memory, align 8
  %33 = icmp sle i64 %31, %32
  %34 = zext i1 %33 to i32
  %35 = sext i32 %34 to i64
  %36 = inttoptr i64 %35 to i8*
  %37 = call i32 @assert(i8* %36)
  %38 = load i32, i32* %3, align 4
  %39 = load i32, i32* @MAX_ZMALLOC_MEM, align 4
  %40 = icmp slt i32 %38, %39
  br i1 %40, label %41, label %55

41:                                               ; preds = %30
  %42 = load i32, i32* %3, align 4
  %43 = load i32, i32* @PTRSIZE, align 4
  %44 = call i8* @dyn_alloc(i32 %42, i32 %43)
  store i8* %44, i8** %4, align 8
  %45 = icmp ne i8* %44, null
  br i1 %45, label %49, label %46

46:                                               ; preds = %41
  %47 = load i32, i32* @stderr, align 4
  %48 = call i32 (i32, i8*, ...) @fprintf(i32 %47, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  br label %49

49:                                               ; preds = %46, %41
  %50 = load i8*, i8** %4, align 8
  %51 = call i32 @assert(i8* %50)
  %52 = load i32, i32* %3, align 4
  %53 = load i32, i32* @zalloc_mem, align 4
  %54 = add nsw i32 %53, %52
  store i32 %54, i32* @zalloc_mem, align 4
  br label %68

55:                                               ; preds = %30
  %56 = load i32, i32* %3, align 4
  %57 = call i8* @malloc(i32 %56)
  store i8* %57, i8** %4, align 8
  %58 = icmp ne i8* %57, null
  br i1 %58, label %62, label %59

59:                                               ; preds = %55
  %60 = load i32, i32* @stderr, align 4
  %61 = call i32 (i32, i8*, ...) @fprintf(i32 %60, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  br label %62

62:                                               ; preds = %59, %55
  %63 = load i8*, i8** %4, align 8
  %64 = call i32 @assert(i8* %63)
  %65 = load i32, i32* %3, align 4
  %66 = load i32, i32* @malloc_mem, align 4
  %67 = add nsw i32 %66, %65
  store i32 %67, i32* @malloc_mem, align 4
  br label %68

68:                                               ; preds = %62, %49
  %69 = load i8*, i8** %4, align 8
  %70 = call i32 @assert(i8* %69)
  %71 = load i8*, i8** %4, align 8
  store i8* %71, i8** %2, align 8
  br label %72

72:                                               ; preds = %68, %7
  %73 = load i8*, i8** %2, align 8
  ret i8* %73
}

declare dso_local i64 @get_memory_used(...) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @assert(i8*) #1

declare dso_local i8* @dyn_alloc(i32, i32) #1

declare dso_local i8* @malloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
