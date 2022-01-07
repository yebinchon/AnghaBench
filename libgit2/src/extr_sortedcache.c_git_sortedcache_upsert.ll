; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_sortedcache.c_git_sortedcache_upsert.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_sortedcache.c_git_sortedcache_upsert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @git_sortedcache_upsert(i8** %0, %struct.TYPE_3__* %1, i8* %2) #0 {
  %4 = alloca i8**, align 8
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  store i8** %0, i8*** %4, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %5, align 8
  store i8* %2, i8** %6, align 8
  store i32 0, i32* %9, align 4
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = load i8*, i8** %6, align 8
  %16 = call i8* @git_strmap_get(i32 %14, i8* %15)
  store i8* %16, i8** %11, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %3
  br label %68

19:                                               ; preds = %3
  %20 = load i8*, i8** %6, align 8
  %21 = call i64 @strlen(i8* %20)
  store i64 %21, i64* %7, align 8
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* %7, align 8
  %26 = add i64 %24, %25
  %27 = add i64 %26, 1
  store i64 %27, i64* %8, align 8
  %28 = load i64, i64* %8, align 8
  %29 = add i64 %28, 7
  %30 = and i64 %29, -8
  store i64 %30, i64* %8, align 8
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 3
  %33 = load i64, i64* %8, align 8
  %34 = call i8* @git_pool_mallocz(i32* %32, i64 %33)
  store i8* %34, i8** %11, align 8
  %35 = icmp eq i8* %34, null
  br i1 %35, label %36, label %37

36:                                               ; preds = %19
  store i32 -1, i32* %9, align 4
  br label %68

37:                                               ; preds = %19
  %38 = load i8*, i8** %11, align 8
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = getelementptr inbounds i8, i8* %38, i64 %41
  store i8* %42, i8** %10, align 8
  %43 = load i8*, i8** %10, align 8
  %44 = load i8*, i8** %6, align 8
  %45 = load i64, i64* %7, align 8
  %46 = call i32 @memcpy(i8* %43, i8* %44, i64 %45)
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = load i8*, i8** %10, align 8
  %51 = load i8*, i8** %11, align 8
  %52 = call i32 @git_strmap_set(i32 %49, i8* %50, i8* %51)
  store i32 %52, i32* %9, align 4
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %37
  br label %68

55:                                               ; preds = %37
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 2
  %58 = load i8*, i8** %11, align 8
  %59 = call i32 @git_vector_insert(i32* %57, i8* %58)
  store i32 %59, i32* %9, align 4
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %61, label %67

61:                                               ; preds = %55
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = load i8*, i8** %10, align 8
  %66 = call i32 @git_strmap_delete(i32 %64, i8* %65)
  br label %67

67:                                               ; preds = %61, %55
  br label %68

68:                                               ; preds = %67, %54, %36, %18
  %69 = load i8**, i8*** %4, align 8
  %70 = icmp ne i8** %69, null
  br i1 %70, label %71, label %80

71:                                               ; preds = %68
  %72 = load i32, i32* %9, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %76, label %74

74:                                               ; preds = %71
  %75 = load i8*, i8** %11, align 8
  br label %77

76:                                               ; preds = %71
  br label %77

77:                                               ; preds = %76, %74
  %78 = phi i8* [ %75, %74 ], [ null, %76 ]
  %79 = load i8**, i8*** %4, align 8
  store i8* %78, i8** %79, align 8
  br label %80

80:                                               ; preds = %77, %68
  %81 = load i32, i32* %9, align 4
  ret i32 %81
}

declare dso_local i8* @git_strmap_get(i32, i8*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i8* @git_pool_mallocz(i32*, i64) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32 @git_strmap_set(i32, i8*, i8*) #1

declare dso_local i32 @git_vector_insert(i32*, i8*) #1

declare dso_local i32 @git_strmap_delete(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
