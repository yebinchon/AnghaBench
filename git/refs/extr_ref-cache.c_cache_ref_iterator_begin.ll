; ModuleID = '/home/carl/AnghaBench/git/refs/extr_ref-cache.c_cache_ref_iterator_begin.c'
source_filename = "/home/carl/AnghaBench/git/refs/extr_ref-cache.c_cache_ref_iterator_begin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ref_iterator = type { i32 }
%struct.ref_cache = type { i32 }
%struct.ref_dir = type { i32 }
%struct.cache_ref_iterator = type { i32, i32, %struct.cache_ref_iterator_level*, i32, %struct.ref_iterator }
%struct.cache_ref_iterator_level = type { i32, i32, %struct.ref_dir* }

@cache_ref_iterator_vtable = common dso_local global i32 0, align 4
@PREFIX_WITHIN_DIR = common dso_local global i32 0, align 4
@PREFIX_CONTAINS_DIR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ref_iterator* @cache_ref_iterator_begin(%struct.ref_cache* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.ref_iterator*, align 8
  %5 = alloca %struct.ref_cache*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ref_dir*, align 8
  %9 = alloca %struct.cache_ref_iterator*, align 8
  %10 = alloca %struct.ref_iterator*, align 8
  %11 = alloca %struct.cache_ref_iterator_level*, align 8
  store %struct.ref_cache* %0, %struct.ref_cache** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.ref_cache*, %struct.ref_cache** %5, align 8
  %13 = getelementptr inbounds %struct.ref_cache, %struct.ref_cache* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.ref_dir* @get_ref_dir(i32 %14)
  store %struct.ref_dir* %15, %struct.ref_dir** %8, align 8
  %16 = load i8*, i8** %6, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %18, label %27

18:                                               ; preds = %3
  %19 = load i8*, i8** %6, align 8
  %20 = load i8, i8* %19, align 1
  %21 = sext i8 %20 to i32
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %18
  %24 = load %struct.ref_dir*, %struct.ref_dir** %8, align 8
  %25 = load i8*, i8** %6, align 8
  %26 = call %struct.ref_dir* @find_containing_dir(%struct.ref_dir* %24, i8* %25, i32 0)
  store %struct.ref_dir* %26, %struct.ref_dir** %8, align 8
  br label %27

27:                                               ; preds = %23, %18, %3
  %28 = load %struct.ref_dir*, %struct.ref_dir** %8, align 8
  %29 = icmp ne %struct.ref_dir* %28, null
  br i1 %29, label %32, label %30

30:                                               ; preds = %27
  %31 = call %struct.ref_iterator* (...) @empty_ref_iterator_begin()
  store %struct.ref_iterator* %31, %struct.ref_iterator** %4, align 8
  br label %84

32:                                               ; preds = %27
  %33 = load i32, i32* %7, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %32
  %36 = load %struct.ref_dir*, %struct.ref_dir** %8, align 8
  %37 = load i8*, i8** %6, align 8
  %38 = call i32 @prime_ref_dir(%struct.ref_dir* %36, i8* %37)
  br label %39

39:                                               ; preds = %35, %32
  %40 = call %struct.cache_ref_iterator* @xcalloc(i32 1, i32 24)
  store %struct.cache_ref_iterator* %40, %struct.cache_ref_iterator** %9, align 8
  %41 = load %struct.cache_ref_iterator*, %struct.cache_ref_iterator** %9, align 8
  %42 = getelementptr inbounds %struct.cache_ref_iterator, %struct.cache_ref_iterator* %41, i32 0, i32 4
  store %struct.ref_iterator* %42, %struct.ref_iterator** %10, align 8
  %43 = load %struct.ref_iterator*, %struct.ref_iterator** %10, align 8
  %44 = call i32 @base_ref_iterator_init(%struct.ref_iterator* %43, i32* @cache_ref_iterator_vtable, i32 1)
  %45 = load %struct.cache_ref_iterator*, %struct.cache_ref_iterator** %9, align 8
  %46 = getelementptr inbounds %struct.cache_ref_iterator, %struct.cache_ref_iterator* %45, i32 0, i32 2
  %47 = load %struct.cache_ref_iterator_level*, %struct.cache_ref_iterator_level** %46, align 8
  %48 = load %struct.cache_ref_iterator*, %struct.cache_ref_iterator** %9, align 8
  %49 = getelementptr inbounds %struct.cache_ref_iterator, %struct.cache_ref_iterator* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @ALLOC_GROW(%struct.cache_ref_iterator_level* %47, i32 10, i32 %50)
  %52 = load %struct.cache_ref_iterator*, %struct.cache_ref_iterator** %9, align 8
  %53 = getelementptr inbounds %struct.cache_ref_iterator, %struct.cache_ref_iterator* %52, i32 0, i32 0
  store i32 1, i32* %53, align 8
  %54 = load %struct.cache_ref_iterator*, %struct.cache_ref_iterator** %9, align 8
  %55 = getelementptr inbounds %struct.cache_ref_iterator, %struct.cache_ref_iterator* %54, i32 0, i32 2
  %56 = load %struct.cache_ref_iterator_level*, %struct.cache_ref_iterator_level** %55, align 8
  %57 = getelementptr inbounds %struct.cache_ref_iterator_level, %struct.cache_ref_iterator_level* %56, i64 0
  store %struct.cache_ref_iterator_level* %57, %struct.cache_ref_iterator_level** %11, align 8
  %58 = load %struct.cache_ref_iterator_level*, %struct.cache_ref_iterator_level** %11, align 8
  %59 = getelementptr inbounds %struct.cache_ref_iterator_level, %struct.cache_ref_iterator_level* %58, i32 0, i32 0
  store i32 -1, i32* %59, align 8
  %60 = load %struct.ref_dir*, %struct.ref_dir** %8, align 8
  %61 = load %struct.cache_ref_iterator_level*, %struct.cache_ref_iterator_level** %11, align 8
  %62 = getelementptr inbounds %struct.cache_ref_iterator_level, %struct.cache_ref_iterator_level* %61, i32 0, i32 2
  store %struct.ref_dir* %60, %struct.ref_dir** %62, align 8
  %63 = load i8*, i8** %6, align 8
  %64 = icmp ne i8* %63, null
  br i1 %64, label %65, label %78

65:                                               ; preds = %39
  %66 = load i8*, i8** %6, align 8
  %67 = load i8, i8* %66, align 1
  %68 = sext i8 %67 to i32
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %78

70:                                               ; preds = %65
  %71 = load i8*, i8** %6, align 8
  %72 = call i32 @xstrdup(i8* %71)
  %73 = load %struct.cache_ref_iterator*, %struct.cache_ref_iterator** %9, align 8
  %74 = getelementptr inbounds %struct.cache_ref_iterator, %struct.cache_ref_iterator* %73, i32 0, i32 1
  store i32 %72, i32* %74, align 4
  %75 = load i32, i32* @PREFIX_WITHIN_DIR, align 4
  %76 = load %struct.cache_ref_iterator_level*, %struct.cache_ref_iterator_level** %11, align 8
  %77 = getelementptr inbounds %struct.cache_ref_iterator_level, %struct.cache_ref_iterator_level* %76, i32 0, i32 1
  store i32 %75, i32* %77, align 4
  br label %82

78:                                               ; preds = %65, %39
  %79 = load i32, i32* @PREFIX_CONTAINS_DIR, align 4
  %80 = load %struct.cache_ref_iterator_level*, %struct.cache_ref_iterator_level** %11, align 8
  %81 = getelementptr inbounds %struct.cache_ref_iterator_level, %struct.cache_ref_iterator_level* %80, i32 0, i32 1
  store i32 %79, i32* %81, align 4
  br label %82

82:                                               ; preds = %78, %70
  %83 = load %struct.ref_iterator*, %struct.ref_iterator** %10, align 8
  store %struct.ref_iterator* %83, %struct.ref_iterator** %4, align 8
  br label %84

84:                                               ; preds = %82, %30
  %85 = load %struct.ref_iterator*, %struct.ref_iterator** %4, align 8
  ret %struct.ref_iterator* %85
}

declare dso_local %struct.ref_dir* @get_ref_dir(i32) #1

declare dso_local %struct.ref_dir* @find_containing_dir(%struct.ref_dir*, i8*, i32) #1

declare dso_local %struct.ref_iterator* @empty_ref_iterator_begin(...) #1

declare dso_local i32 @prime_ref_dir(%struct.ref_dir*, i8*) #1

declare dso_local %struct.cache_ref_iterator* @xcalloc(i32, i32) #1

declare dso_local i32 @base_ref_iterator_init(%struct.ref_iterator*, i32*, i32) #1

declare dso_local i32 @ALLOC_GROW(%struct.cache_ref_iterator_level*, i32, i32) #1

declare dso_local i32 @xstrdup(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
