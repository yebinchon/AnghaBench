; ModuleID = '/home/carl/AnghaBench/h2o/t/00unit/lib/common/extr_cache.c_test_lib__common__cache_c.c'
source_filename = "/home/carl/AnghaBench/h2o/t/00unit/lib/common/extr_cache.c_test_lib__common__cache_c.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }
%struct.TYPE_11__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i32 }

@H2O_CACHE_FLAG_EARLY_UPDATE = common dso_local global i32 0, align 4
@on_destroy = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"key\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"value\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"value2\00", align 1
@bytes_destroyed = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_lib__common__cache_c() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_10__, align 4
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = load i32, i32* @H2O_CACHE_FLAG_EARLY_UPDATE, align 4
  %6 = load i32, i32* @on_destroy, align 4
  %7 = call i32* @h2o_cache_create(i32 %5, i32 1024, i32 1000, i32 %6)
  store i32* %7, i32** %1, align 8
  store i32 0, i32* %2, align 4
  %8 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %3, i32 0, i32 0
  %9 = call i32 @H2O_STRLIT(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  store i32 %9, i32* %8, align 4
  %10 = load i32*, i32** %1, align 8
  %11 = load i32, i32* %2, align 4
  %12 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %3, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.TYPE_11__* @h2o_cache_fetch(i32* %10, i32 %11, i32 %13, i32 0)
  store %struct.TYPE_11__* %14, %struct.TYPE_11__** %4, align 8
  %15 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %16 = icmp eq %struct.TYPE_11__* %15, null
  %17 = zext i1 %16 to i32
  %18 = call i32 @ok(i32 %17)
  %19 = load i32*, i32** %1, align 8
  %20 = load i32, i32* %2, align 4
  %21 = call i32 @H2O_STRLIT(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %22 = call i32 @h2o_iovec_init(i32 %21)
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %3, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @h2o_cache_set(i32* %19, i32 %20, i32 %24, i32 0, i32 %22)
  %26 = load i32*, i32** %1, align 8
  %27 = load i32, i32* %2, align 4
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %3, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @h2o_cache_delete(i32* %26, i32 %27, i32 %29, i32 0)
  %31 = load i32*, i32** %1, align 8
  %32 = load i32, i32* %2, align 4
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %3, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call %struct.TYPE_11__* @h2o_cache_fetch(i32* %31, i32 %32, i32 %34, i32 0)
  store %struct.TYPE_11__* %35, %struct.TYPE_11__** %4, align 8
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %37 = icmp eq %struct.TYPE_11__* %36, null
  %38 = zext i1 %37 to i32
  %39 = call i32 @ok(i32 %38)
  %40 = load i32*, i32** %1, align 8
  %41 = load i32, i32* %2, align 4
  %42 = call i32 @H2O_STRLIT(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %43 = call i32 @h2o_iovec_init(i32 %42)
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %3, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @h2o_cache_set(i32* %40, i32 %41, i32 %45, i32 0, i32 %43)
  %47 = load i32*, i32** %1, align 8
  %48 = load i32, i32* %2, align 4
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %3, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call %struct.TYPE_11__* @h2o_cache_fetch(i32* %47, i32 %48, i32 %50, i32 0)
  store %struct.TYPE_11__* %51, %struct.TYPE_11__** %4, align 8
  %52 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @H2O_STRLIT(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %61 = call i32 @h2o_memis(i32 %55, i32 %59, i32 %60)
  %62 = call i32 @ok(i32 %61)
  %63 = load i32*, i32** %1, align 8
  %64 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %65 = call i32 @h2o_cache_release(i32* %63, %struct.TYPE_11__* %64)
  %66 = load i32, i32* %2, align 4
  %67 = add nsw i32 %66, 999
  store i32 %67, i32* %2, align 4
  %68 = load i32*, i32** %1, align 8
  %69 = load i32, i32* %2, align 4
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %3, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call %struct.TYPE_11__* @h2o_cache_fetch(i32* %68, i32 %69, i32 %71, i32 0)
  store %struct.TYPE_11__* %72, %struct.TYPE_11__** %4, align 8
  %73 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %74 = icmp eq %struct.TYPE_11__* %73, null
  %75 = zext i1 %74 to i32
  %76 = call i32 @ok(i32 %75)
  %77 = load i32*, i32** %1, align 8
  %78 = load i32, i32* %2, align 4
  %79 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %3, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = call %struct.TYPE_11__* @h2o_cache_fetch(i32* %77, i32 %78, i32 %80, i32 0)
  store %struct.TYPE_11__* %81, %struct.TYPE_11__** %4, align 8
  %82 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %83 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %87 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @H2O_STRLIT(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %91 = call i32 @h2o_memis(i32 %85, i32 %89, i32 %90)
  %92 = call i32 @ok(i32 %91)
  %93 = load i32*, i32** %1, align 8
  %94 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %95 = call i32 @h2o_cache_release(i32* %93, %struct.TYPE_11__* %94)
  %96 = load i32*, i32** %1, align 8
  %97 = load i32, i32* %2, align 4
  %98 = call i32 @H2O_STRLIT(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %99 = call i32 @h2o_iovec_init(i32 %98)
  %100 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %3, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @h2o_cache_set(i32* %96, i32 %97, i32 %101, i32 0, i32 %99)
  %103 = load i32*, i32** %1, align 8
  %104 = load i32, i32* %2, align 4
  %105 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %3, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = call %struct.TYPE_11__* @h2o_cache_fetch(i32* %103, i32 %104, i32 %106, i32 0)
  store %struct.TYPE_11__* %107, %struct.TYPE_11__** %4, align 8
  %108 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %109 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %113 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @H2O_STRLIT(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %117 = call i32 @h2o_memis(i32 %111, i32 %115, i32 %116)
  %118 = call i32 @ok(i32 %117)
  %119 = load i32*, i32** %1, align 8
  %120 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %121 = call i32 @h2o_cache_release(i32* %119, %struct.TYPE_11__* %120)
  %122 = load i32, i32* @bytes_destroyed, align 4
  %123 = icmp eq i32 %122, 10
  %124 = zext i1 %123 to i32
  %125 = call i32 @ok(i32 %124)
  %126 = load i32*, i32** %1, align 8
  %127 = call i32 @h2o_cache_destroy(i32* %126)
  %128 = load i32, i32* @bytes_destroyed, align 4
  %129 = icmp eq i32 %128, 16
  %130 = zext i1 %129 to i32
  %131 = call i32 @ok(i32 %130)
  ret void
}

declare dso_local i32* @h2o_cache_create(i32, i32, i32, i32) #1

declare dso_local i32 @H2O_STRLIT(i8*) #1

declare dso_local %struct.TYPE_11__* @h2o_cache_fetch(i32*, i32, i32, i32) #1

declare dso_local i32 @ok(i32) #1

declare dso_local i32 @h2o_cache_set(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @h2o_iovec_init(i32) #1

declare dso_local i32 @h2o_cache_delete(i32*, i32, i32, i32) #1

declare dso_local i32 @h2o_memis(i32, i32, i32) #1

declare dso_local i32 @h2o_cache_release(i32*, %struct.TYPE_11__*) #1

declare dso_local i32 @h2o_cache_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
