; ModuleID = '/home/carl/AnghaBench/git/extr_dir-iterator.c_dir_iterator_begin.c'
source_filename = "/home/carl/AnghaBench/git/extr_dir-iterator.c_dir_iterator_begin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dir_iterator = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.dir_iterator_int = type { i32, %struct.dir_iterator, i64, i32, i32 }

@PATH_MAX = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@ENOTDIR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.dir_iterator* @dir_iterator_begin(i8* %0, i32 %1) #0 {
  %3 = alloca %struct.dir_iterator*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.dir_iterator_int*, align 8
  %7 = alloca %struct.dir_iterator*, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = call %struct.dir_iterator_int* @xcalloc(i32 1, i32 32)
  store %struct.dir_iterator_int* %9, %struct.dir_iterator_int** %6, align 8
  %10 = load %struct.dir_iterator_int*, %struct.dir_iterator_int** %6, align 8
  %11 = getelementptr inbounds %struct.dir_iterator_int, %struct.dir_iterator_int* %10, i32 0, i32 1
  store %struct.dir_iterator* %11, %struct.dir_iterator** %7, align 8
  %12 = load %struct.dir_iterator_int*, %struct.dir_iterator_int** %6, align 8
  %13 = getelementptr inbounds %struct.dir_iterator_int, %struct.dir_iterator_int* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.dir_iterator, %struct.dir_iterator* %13, i32 0, i32 1
  %15 = load i32, i32* @PATH_MAX, align 4
  %16 = call i32 @strbuf_init(%struct.TYPE_4__* %14, i32 %15)
  %17 = load %struct.dir_iterator_int*, %struct.dir_iterator_int** %6, align 8
  %18 = getelementptr inbounds %struct.dir_iterator_int, %struct.dir_iterator_int* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.dir_iterator, %struct.dir_iterator* %18, i32 0, i32 1
  %20 = load i8*, i8** %4, align 8
  %21 = call i32 @strbuf_addstr(%struct.TYPE_4__* %19, i8* %20)
  %22 = load %struct.dir_iterator_int*, %struct.dir_iterator_int** %6, align 8
  %23 = getelementptr inbounds %struct.dir_iterator_int, %struct.dir_iterator_int* %22, i32 0, i32 4
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.dir_iterator_int*, %struct.dir_iterator_int** %6, align 8
  %26 = getelementptr inbounds %struct.dir_iterator_int, %struct.dir_iterator_int* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @ALLOC_GROW(i32 %24, i32 10, i32 %27)
  %29 = load %struct.dir_iterator_int*, %struct.dir_iterator_int** %6, align 8
  %30 = getelementptr inbounds %struct.dir_iterator_int, %struct.dir_iterator_int* %29, i32 0, i32 2
  store i64 0, i64* %30, align 8
  %31 = load i32, i32* %5, align 4
  %32 = load %struct.dir_iterator_int*, %struct.dir_iterator_int** %6, align 8
  %33 = getelementptr inbounds %struct.dir_iterator_int, %struct.dir_iterator_int* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 8
  %34 = load %struct.dir_iterator_int*, %struct.dir_iterator_int** %6, align 8
  %35 = getelementptr inbounds %struct.dir_iterator_int, %struct.dir_iterator_int* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.dir_iterator, %struct.dir_iterator* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.dir_iterator_int*, %struct.dir_iterator_int** %6, align 8
  %40 = getelementptr inbounds %struct.dir_iterator_int, %struct.dir_iterator_int* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.dir_iterator, %struct.dir_iterator* %40, i32 0, i32 0
  %42 = call i64 @stat(i32 %38, %struct.TYPE_5__* %41)
  %43 = icmp slt i64 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %2
  %45 = load i32, i32* @errno, align 4
  store i32 %45, i32* %8, align 4
  br label %58

46:                                               ; preds = %2
  %47 = load %struct.dir_iterator_int*, %struct.dir_iterator_int** %6, align 8
  %48 = getelementptr inbounds %struct.dir_iterator_int, %struct.dir_iterator_int* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.dir_iterator, %struct.dir_iterator* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @S_ISDIR(i32 %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %56, label %54

54:                                               ; preds = %46
  %55 = load i32, i32* @ENOTDIR, align 4
  store i32 %55, i32* %8, align 4
  br label %58

56:                                               ; preds = %46
  %57 = load %struct.dir_iterator*, %struct.dir_iterator** %7, align 8
  store %struct.dir_iterator* %57, %struct.dir_iterator** %3, align 8
  br label %62

58:                                               ; preds = %54, %44
  %59 = load %struct.dir_iterator*, %struct.dir_iterator** %7, align 8
  %60 = call i32 @dir_iterator_abort(%struct.dir_iterator* %59)
  %61 = load i32, i32* %8, align 4
  store i32 %61, i32* @errno, align 4
  store %struct.dir_iterator* null, %struct.dir_iterator** %3, align 8
  br label %62

62:                                               ; preds = %58, %56
  %63 = load %struct.dir_iterator*, %struct.dir_iterator** %3, align 8
  ret %struct.dir_iterator* %63
}

declare dso_local %struct.dir_iterator_int* @xcalloc(i32, i32) #1

declare dso_local i32 @strbuf_init(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @strbuf_addstr(%struct.TYPE_4__*, i8*) #1

declare dso_local i32 @ALLOC_GROW(i32, i32, i32) #1

declare dso_local i64 @stat(i32, %struct.TYPE_5__*) #1

declare dso_local i32 @S_ISDIR(i32) #1

declare dso_local i32 @dir_iterator_abort(%struct.dir_iterator*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
