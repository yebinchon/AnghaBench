; ModuleID = '/home/carl/AnghaBench/kphp-kdb/seqmap/extr_seqmap-data.c_zzmalloc.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/seqmap/extr_seqmap-data.c_zzmalloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@max_memory = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"too much memory used: %lld of %lld\0A\00", align 1
@MAX_ZMALLOC_MEM = common dso_local global i32 0, align 4
@PTRSIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"Out of memory\0A\00", align 1
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
  br label %59

8:                                                ; preds = %1
  %9 = call i64 (...) @get_memory_used()
  %10 = load i64, i64* @max_memory, align 8
  %11 = icmp sgt i64 %9, %10
  br i1 %11, label %12, label %17

12:                                               ; preds = %8
  %13 = load i32, i32* @stderr, align 4
  %14 = call i64 (...) @get_memory_used()
  %15 = load i64, i64* @max_memory, align 8
  %16 = call i32 (i32, i8*, ...) @fprintf(i32 %13, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i64 %14, i64 %15)
  br label %17

17:                                               ; preds = %12, %8
  %18 = call i64 (...) @get_memory_used()
  %19 = load i64, i64* @max_memory, align 8
  %20 = icmp sle i64 %18, %19
  %21 = zext i1 %20 to i32
  %22 = sext i32 %21 to i64
  %23 = inttoptr i64 %22 to i8*
  %24 = call i32 @assert(i8* %23)
  %25 = load i32, i32* %3, align 4
  %26 = load i32, i32* @MAX_ZMALLOC_MEM, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %42

28:                                               ; preds = %17
  %29 = load i32, i32* %3, align 4
  %30 = load i32, i32* @PTRSIZE, align 4
  %31 = call i8* @dyn_alloc(i32 %29, i32 %30)
  store i8* %31, i8** %4, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %36, label %33

33:                                               ; preds = %28
  %34 = load i32, i32* @stderr, align 4
  %35 = call i32 (i32, i8*, ...) @fprintf(i32 %34, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  br label %36

36:                                               ; preds = %33, %28
  %37 = load i8*, i8** %4, align 8
  %38 = call i32 @assert(i8* %37)
  %39 = load i32, i32* %3, align 4
  %40 = load i32, i32* @zalloc_mem, align 4
  %41 = add nsw i32 %40, %39
  store i32 %41, i32* @zalloc_mem, align 4
  br label %55

42:                                               ; preds = %17
  %43 = load i32, i32* %3, align 4
  %44 = call i8* @malloc(i32 %43)
  store i8* %44, i8** %4, align 8
  %45 = icmp ne i8* %44, null
  br i1 %45, label %49, label %46

46:                                               ; preds = %42
  %47 = load i32, i32* @stderr, align 4
  %48 = call i32 (i32, i8*, ...) @fprintf(i32 %47, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  br label %49

49:                                               ; preds = %46, %42
  %50 = load i8*, i8** %4, align 8
  %51 = call i32 @assert(i8* %50)
  %52 = load i32, i32* %3, align 4
  %53 = load i32, i32* @malloc_mem, align 4
  %54 = add nsw i32 %53, %52
  store i32 %54, i32* @malloc_mem, align 4
  br label %55

55:                                               ; preds = %49, %36
  %56 = load i8*, i8** %4, align 8
  %57 = call i32 @assert(i8* %56)
  %58 = load i8*, i8** %4, align 8
  store i8* %58, i8** %2, align 8
  br label %59

59:                                               ; preds = %55, %7
  %60 = load i8*, i8** %2, align 8
  ret i8* %60
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
