; ModuleID = '/home/carl/AnghaBench/kphp-kdb/cache/extr_cache-data.c_cache_get_uri_by_md5.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/cache/extr_cache-data.c_cache_get_uri_by_md5.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cache_uri = type { %struct.cache_uri* }
%struct.TYPE_4__ = type { i32* }

@uri_hash_prime = common dso_local global i32 0, align 4
@H = common dso_local global %struct.cache_uri** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.cache_uri* @cache_get_uri_by_md5(%struct.TYPE_4__* %0, i32 %1) #0 {
  %3 = alloca %struct.cache_uri*, align 8
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.cache_uri**, align 8
  %8 = alloca %struct.cache_uri*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = icmp eq i32 %9, 8
  br i1 %10, label %14, label %11

11:                                               ; preds = %2
  %12 = load i32, i32* %5, align 4
  %13 = icmp eq i32 %12, 16
  br label %14

14:                                               ; preds = %11, %2
  %15 = phi i1 [ true, %2 ], [ %13, %11 ]
  %16 = zext i1 %15 to i32
  %17 = call i32 @assert(i32 %16)
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @uri_hash_prime, align 4
  %24 = srem i32 %22, %23
  store i32 %24, i32* %6, align 4
  %25 = load %struct.cache_uri**, %struct.cache_uri*** @H, align 8
  %26 = load i32, i32* %6, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.cache_uri*, %struct.cache_uri** %25, i64 %27
  store %struct.cache_uri** %28, %struct.cache_uri*** %7, align 8
  br label %29

29:                                               ; preds = %59, %14
  %30 = load %struct.cache_uri**, %struct.cache_uri*** %7, align 8
  %31 = load %struct.cache_uri*, %struct.cache_uri** %30, align 8
  %32 = icmp ne %struct.cache_uri* %31, null
  br i1 %32, label %33, label %62

33:                                               ; preds = %29
  %34 = load %struct.cache_uri**, %struct.cache_uri*** %7, align 8
  %35 = load %struct.cache_uri*, %struct.cache_uri** %34, align 8
  store %struct.cache_uri* %35, %struct.cache_uri** %8, align 8
  %36 = load %struct.cache_uri*, %struct.cache_uri** %8, align 8
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %38 = load i32, i32* %5, align 4
  %39 = call i64 @cache_uri_match_md5(%struct.cache_uri* %36, %struct.TYPE_4__* %37, i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %59

41:                                               ; preds = %33
  %42 = load %struct.cache_uri*, %struct.cache_uri** %8, align 8
  %43 = getelementptr inbounds %struct.cache_uri, %struct.cache_uri* %42, i32 0, i32 0
  %44 = load %struct.cache_uri*, %struct.cache_uri** %43, align 8
  %45 = load %struct.cache_uri**, %struct.cache_uri*** %7, align 8
  store %struct.cache_uri* %44, %struct.cache_uri** %45, align 8
  %46 = load %struct.cache_uri**, %struct.cache_uri*** @H, align 8
  %47 = load i32, i32* %6, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.cache_uri*, %struct.cache_uri** %46, i64 %48
  %50 = load %struct.cache_uri*, %struct.cache_uri** %49, align 8
  %51 = load %struct.cache_uri*, %struct.cache_uri** %8, align 8
  %52 = getelementptr inbounds %struct.cache_uri, %struct.cache_uri* %51, i32 0, i32 0
  store %struct.cache_uri* %50, %struct.cache_uri** %52, align 8
  %53 = load %struct.cache_uri*, %struct.cache_uri** %8, align 8
  %54 = load %struct.cache_uri**, %struct.cache_uri*** @H, align 8
  %55 = load i32, i32* %6, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.cache_uri*, %struct.cache_uri** %54, i64 %56
  store %struct.cache_uri* %53, %struct.cache_uri** %57, align 8
  %58 = load %struct.cache_uri*, %struct.cache_uri** %8, align 8
  store %struct.cache_uri* %58, %struct.cache_uri** %3, align 8
  br label %63

59:                                               ; preds = %33
  %60 = load %struct.cache_uri*, %struct.cache_uri** %8, align 8
  %61 = getelementptr inbounds %struct.cache_uri, %struct.cache_uri* %60, i32 0, i32 0
  store %struct.cache_uri** %61, %struct.cache_uri*** %7, align 8
  br label %29

62:                                               ; preds = %29
  store %struct.cache_uri* null, %struct.cache_uri** %3, align 8
  br label %63

63:                                               ; preds = %62, %41
  %64 = load %struct.cache_uri*, %struct.cache_uri** %3, align 8
  ret %struct.cache_uri* %64
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @cache_uri_match_md5(%struct.cache_uri*, %struct.TYPE_4__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
