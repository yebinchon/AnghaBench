; ModuleID = '/home/carl/AnghaBench/kphp-kdb/memcached/extr_memcached-data.c_zzmalloc.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/memcached/extr_memcached-data.c_zzmalloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@max_memory = common dso_local global i64 0, align 8
@MAX_ZMALLOC_MEM = common dso_local global i32 0, align 4
@PTRSIZE = common dso_local global i32 0, align 4
@malloc_mem = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @zzmalloc(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  store i32 %0, i32* %2, align 4
  br label %4

4:                                                ; preds = %13, %1
  %5 = call i64 (...) @get_memory_used()
  %6 = load i64, i64* @max_memory, align 8
  %7 = icmp sgt i64 %5, %6
  br i1 %7, label %8, label %11

8:                                                ; preds = %4
  %9 = call i64 (...) @free_LRU()
  %10 = icmp eq i64 %9, 0
  br label %11

11:                                               ; preds = %8, %4
  %12 = phi i1 [ false, %4 ], [ %10, %8 ]
  br i1 %12, label %13, label %14

13:                                               ; preds = %11
  br label %4

14:                                               ; preds = %11
  %15 = call i64 (...) @get_memory_used()
  %16 = load i64, i64* @max_memory, align 8
  %17 = icmp sle i64 %15, %16
  %18 = zext i1 %17 to i32
  %19 = sext i32 %18 to i64
  %20 = inttoptr i64 %19 to i8*
  %21 = call i32 @assert(i8* %20)
  %22 = load i32, i32* %2, align 4
  %23 = load i32, i32* @MAX_ZMALLOC_MEM, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %38

25:                                               ; preds = %14
  br label %26

26:                                               ; preds = %36, %25
  %27 = load i32, i32* %2, align 4
  %28 = load i32, i32* @PTRSIZE, align 4
  %29 = call i8* @dyn_alloc(i32 %27, i32 %28)
  store i8* %29, i8** %3, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %26
  %32 = call i64 (...) @free_LRU()
  %33 = icmp eq i64 %32, 0
  br label %34

34:                                               ; preds = %31, %26
  %35 = phi i1 [ false, %26 ], [ %33, %31 ]
  br i1 %35, label %36, label %37

36:                                               ; preds = %34
  br label %26

37:                                               ; preds = %34
  br label %53

38:                                               ; preds = %14
  br label %39

39:                                               ; preds = %48, %38
  %40 = load i32, i32* %2, align 4
  %41 = call i8* @malloc(i32 %40)
  store i8* %41, i8** %3, align 8
  %42 = icmp ne i8* %41, null
  br i1 %42, label %46, label %43

43:                                               ; preds = %39
  %44 = call i64 (...) @free_LRU()
  %45 = icmp eq i64 %44, 0
  br label %46

46:                                               ; preds = %43, %39
  %47 = phi i1 [ false, %39 ], [ %45, %43 ]
  br i1 %47, label %48, label %49

48:                                               ; preds = %46
  br label %39

49:                                               ; preds = %46
  %50 = load i32, i32* %2, align 4
  %51 = load i32, i32* @malloc_mem, align 4
  %52 = add nsw i32 %51, %50
  store i32 %52, i32* @malloc_mem, align 4
  br label %53

53:                                               ; preds = %49, %37
  %54 = load i8*, i8** %3, align 8
  %55 = call i32 @assert(i8* %54)
  %56 = load i8*, i8** %3, align 8
  ret i8* %56
}

declare dso_local i64 @get_memory_used(...) #1

declare dso_local i64 @free_LRU(...) #1

declare dso_local i32 @assert(i8*) #1

declare dso_local i8* @dyn_alloc(i32, i32) #1

declare dso_local i8* @malloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
