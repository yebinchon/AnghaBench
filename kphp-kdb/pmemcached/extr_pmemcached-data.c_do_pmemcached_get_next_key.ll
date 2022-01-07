; ModuleID = '/home/carl/AnghaBench/kphp-kdb/pmemcached/extr_pmemcached-data.c_do_pmemcached_get_next_key.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/pmemcached/extr_pmemcached-data.c_do_pmemcached_get_next_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hash_entry = type { i32, i8* }
%struct.index_entry = type { i32, i8*, i32 }

@.str = private unnamed_addr constant [39 x i8] c"next in index: %d, next in memory: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @do_pmemcached_get_next_key(i8* %0, i32 %1, i8** %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8**, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.hash_entry*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.index_entry*, align 8
  %15 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8** %2, i8*** %8, align 8
  store i32* %3, i32** %9, align 8
  store i8* null, i8** %10, align 8
  store i32 0, i32* %11, align 4
  %16 = load i8*, i8** %6, align 8
  %17 = load i32, i32* %7, align 4
  %18 = call %struct.hash_entry* @get_next_entry(i8* %16, i32 %17)
  store %struct.hash_entry* %18, %struct.hash_entry** %12, align 8
  store i32 -1, i32* %13, align 4
  %19 = load %struct.hash_entry*, %struct.hash_entry** %12, align 8
  %20 = icmp ne %struct.hash_entry* %19, null
  br i1 %20, label %21, label %28

21:                                               ; preds = %4
  %22 = load %struct.hash_entry*, %struct.hash_entry** %12, align 8
  %23 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  store i32 %24, i32* %11, align 4
  %25 = load %struct.hash_entry*, %struct.hash_entry** %12, align 8
  %26 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %25, i32 0, i32 1
  %27 = load i8*, i8** %26, align 8
  store i8* %27, i8** %10, align 8
  store i32 0, i32* %13, align 4
  br label %28

28:                                               ; preds = %21, %4
  %29 = load i8*, i8** %6, align 8
  %30 = load i32, i32* %7, align 4
  %31 = call %struct.index_entry* @index_get_next(i8* %29, i32 %30)
  store %struct.index_entry* %31, %struct.index_entry** %14, align 8
  %32 = load %struct.index_entry*, %struct.index_entry** %14, align 8
  %33 = icmp ne %struct.index_entry* %32, null
  br i1 %33, label %35, label %34

34:                                               ; preds = %28
  store i32 -2, i32* %5, align 4
  br label %111

35:                                               ; preds = %28
  %36 = load %struct.index_entry*, %struct.index_entry** %14, align 8
  %37 = getelementptr inbounds %struct.index_entry, %struct.index_entry* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = icmp ne i32 %38, -1
  %40 = zext i1 %39 to i32
  %41 = load i32, i32* %13, align 4
  %42 = icmp ne i32 %41, -1
  %43 = zext i1 %42 to i32
  %44 = call i32 @vkprintf(i32 4, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %40, i32 %43)
  %45 = load %struct.index_entry*, %struct.index_entry** %14, align 8
  %46 = getelementptr inbounds %struct.index_entry, %struct.index_entry* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = icmp eq i32 %47, -1
  br i1 %48, label %49, label %53

49:                                               ; preds = %35
  %50 = load i32, i32* %13, align 4
  %51 = icmp eq i32 %50, -1
  br i1 %51, label %52, label %53

52:                                               ; preds = %49
  store i32 -1, i32* %5, align 4
  br label %111

53:                                               ; preds = %49, %35
  %54 = load %struct.index_entry*, %struct.index_entry** %14, align 8
  %55 = getelementptr inbounds %struct.index_entry, %struct.index_entry* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = icmp eq i32 %56, -1
  br i1 %57, label %58, label %59

58:                                               ; preds = %53
  store i32 -1, i32* %15, align 4
  br label %74

59:                                               ; preds = %53
  %60 = load i8*, i8** %10, align 8
  %61 = icmp ne i8* %60, null
  br i1 %61, label %63, label %62

62:                                               ; preds = %59
  store i32 1, i32* %15, align 4
  br label %73

63:                                               ; preds = %59
  %64 = load i8*, i8** %10, align 8
  %65 = load i32, i32* %11, align 4
  %66 = load %struct.index_entry*, %struct.index_entry** %14, align 8
  %67 = getelementptr inbounds %struct.index_entry, %struct.index_entry* %66, i32 0, i32 1
  %68 = load i8*, i8** %67, align 8
  %69 = load %struct.index_entry*, %struct.index_entry** %14, align 8
  %70 = getelementptr inbounds %struct.index_entry, %struct.index_entry* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @mystrcmp(i8* %64, i32 %65, i8* %68, i32 %71)
  store i32 %72, i32* %15, align 4
  br label %73

73:                                               ; preds = %63, %62
  br label %74

74:                                               ; preds = %73, %58
  %75 = load i32, i32* %15, align 4
  %76 = icmp sle i32 %75, 0
  br i1 %76, label %77, label %82

77:                                               ; preds = %74
  %78 = load i8*, i8** %10, align 8
  %79 = load i8**, i8*** %8, align 8
  store i8* %78, i8** %79, align 8
  %80 = load i32, i32* %11, align 4
  %81 = load i32*, i32** %9, align 8
  store i32 %80, i32* %81, align 4
  br label %91

82:                                               ; preds = %74
  %83 = load %struct.index_entry*, %struct.index_entry** %14, align 8
  %84 = getelementptr inbounds %struct.index_entry, %struct.index_entry* %83, i32 0, i32 1
  %85 = load i8*, i8** %84, align 8
  %86 = load i8**, i8*** %8, align 8
  store i8* %85, i8** %86, align 8
  %87 = load %struct.index_entry*, %struct.index_entry** %14, align 8
  %88 = getelementptr inbounds %struct.index_entry, %struct.index_entry* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 8
  %90 = load i32*, i32** %9, align 8
  store i32 %89, i32* %90, align 4
  br label %91

91:                                               ; preds = %82, %77
  %92 = load i8**, i8*** %8, align 8
  %93 = load i8*, i8** %92, align 8
  %94 = load i32*, i32** %9, align 8
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* %15, align 4
  %97 = icmp sle i32 %96, 0
  br i1 %97, label %98, label %100

98:                                               ; preds = %91
  %99 = load %struct.hash_entry*, %struct.hash_entry** %12, align 8
  br label %101

100:                                              ; preds = %91
  br label %101

101:                                              ; preds = %100, %98
  %102 = phi %struct.hash_entry* [ %99, %98 ], [ null, %100 ]
  %103 = load i32, i32* %15, align 4
  %104 = icmp sge i32 %103, 0
  br i1 %104, label %105, label %107

105:                                              ; preds = %101
  %106 = load %struct.index_entry*, %struct.index_entry** %14, align 8
  br label %108

107:                                              ; preds = %101
  br label %108

108:                                              ; preds = %107, %105
  %109 = phi %struct.index_entry* [ %106, %105 ], [ null, %107 ]
  %110 = call i32 @cache_load_local(i8* %93, i32 %95, %struct.hash_entry* %102, %struct.index_entry* %109)
  store i32 0, i32* %5, align 4
  br label %111

111:                                              ; preds = %108, %52, %34
  %112 = load i32, i32* %5, align 4
  ret i32 %112
}

declare dso_local %struct.hash_entry* @get_next_entry(i8*, i32) #1

declare dso_local %struct.index_entry* @index_get_next(i8*, i32) #1

declare dso_local i32 @vkprintf(i32, i8*, i32, i32) #1

declare dso_local i32 @mystrcmp(i8*, i32, i8*, i32) #1

declare dso_local i32 @cache_load_local(i8*, i32, %struct.hash_entry*, %struct.index_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
