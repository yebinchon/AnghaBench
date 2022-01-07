; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_transaction.c_dup_reflog.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_transaction.c_dup_reflog.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, %struct.TYPE_9__*, i32, i32, %struct.TYPE_10__, %struct.TYPE_9__* }
%struct.TYPE_10__ = type { i64, %struct.TYPE_9__** }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__**, %struct.TYPE_9__*, i32*)* @dup_reflog to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dup_reflog(%struct.TYPE_9__** %0, %struct.TYPE_9__* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_9__**, align 8
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_9__*, align 8
  %9 = alloca %struct.TYPE_9__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_9__*, align 8
  %13 = alloca %struct.TYPE_9__*, align 8
  store %struct.TYPE_9__** %0, %struct.TYPE_9__*** %5, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %6, align 8
  store i32* %2, i32** %7, align 8
  %14 = load i32*, i32** %7, align 8
  %15 = call i8* @git_pool_mallocz(i32* %14, i64 48)
  %16 = bitcast i8* %15 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %16, %struct.TYPE_9__** %8, align 8
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %18 = call i32 @GIT_ERROR_CHECK_ALLOC(%struct.TYPE_9__* %17)
  %19 = load i32*, i32** %7, align 8
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 5
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %21, align 8
  %23 = call i8* @git_pool_strdup(i32* %19, %struct.TYPE_9__* %22)
  %24 = bitcast i8* %23 to %struct.TYPE_9__*
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 5
  store %struct.TYPE_9__* %24, %struct.TYPE_9__** %26, align 8
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 5
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %28, align 8
  %30 = call i32 @GIT_ERROR_CHECK_ALLOC(%struct.TYPE_9__* %29)
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 4
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  store i64 %34, i64* %10, align 8
  %35 = load i64, i64* %10, align 8
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 4
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 0
  store i64 %35, i64* %38, align 8
  %39 = load i32*, i32** %7, align 8
  %40 = load i64, i64* %10, align 8
  %41 = mul i64 %40, 8
  %42 = call i8* @git_pool_mallocz(i32* %39, i64 %41)
  %43 = bitcast i8* %42 to %struct.TYPE_9__**
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 4
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 1
  store %struct.TYPE_9__** %43, %struct.TYPE_9__*** %46, align 8
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 4
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 1
  %50 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %49, align 8
  %51 = bitcast %struct.TYPE_9__** %50 to %struct.TYPE_9__*
  %52 = call i32 @GIT_ERROR_CHECK_ALLOC(%struct.TYPE_9__* %51)
  %53 = load i32*, i32** %7, align 8
  %54 = load i64, i64* %10, align 8
  %55 = mul i64 %54, 48
  %56 = call i8* @git_pool_mallocz(i32* %53, i64 %55)
  %57 = bitcast i8* %56 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %57, %struct.TYPE_9__** %9, align 8
  %58 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %59 = call i32 @GIT_ERROR_CHECK_ALLOC(%struct.TYPE_9__* %58)
  store i64 0, i64* %11, align 8
  br label %60

60:                                               ; preds = %111, %3
  %61 = load i64, i64* %11, align 8
  %62 = load i64, i64* %10, align 8
  %63 = icmp ult i64 %61, %62
  br i1 %63, label %64, label %114

64:                                               ; preds = %60
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %66 = load i64, i64* %11, align 8
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i64 %66
  store %struct.TYPE_9__* %67, %struct.TYPE_9__** %13, align 8
  %68 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %69 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 4
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %70, i32 0, i32 1
  %72 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %71, align 8
  %73 = load i64, i64* %11, align 8
  %74 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %72, i64 %73
  store %struct.TYPE_9__* %68, %struct.TYPE_9__** %74, align 8
  %75 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 4
  %77 = load i64, i64* %11, align 8
  %78 = call %struct.TYPE_9__* @git_vector_get(%struct.TYPE_10__* %76, i64 %77)
  store %struct.TYPE_9__* %78, %struct.TYPE_9__** %12, align 8
  %79 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %80 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %79, i32 0, i32 3
  %81 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %82 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %81, i32 0, i32 3
  %83 = call i32 @git_oid_cpy(i32* %80, i32* %82)
  %84 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %84, i32 0, i32 2
  %86 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %87 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %86, i32 0, i32 2
  %88 = call i32 @git_oid_cpy(i32* %85, i32* %87)
  %89 = load i32*, i32** %7, align 8
  %90 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %91 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %90, i32 0, i32 1
  %92 = load %struct.TYPE_9__*, %struct.TYPE_9__** %91, align 8
  %93 = call i8* @git_pool_strdup(i32* %89, %struct.TYPE_9__* %92)
  %94 = bitcast i8* %93 to %struct.TYPE_9__*
  %95 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %96 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %95, i32 0, i32 1
  store %struct.TYPE_9__* %94, %struct.TYPE_9__** %96, align 8
  %97 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %98 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %97, i32 0, i32 1
  %99 = load %struct.TYPE_9__*, %struct.TYPE_9__** %98, align 8
  %100 = call i32 @GIT_ERROR_CHECK_ALLOC(%struct.TYPE_9__* %99)
  %101 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %102 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %101, i32 0, i32 0
  %103 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %104 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = load i32*, i32** %7, align 8
  %107 = call i64 @git_signature__pdup(i32* %102, i32 %105, i32* %106)
  %108 = icmp slt i64 %107, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %64
  store i32 -1, i32* %4, align 4
  br label %117

110:                                              ; preds = %64
  br label %111

111:                                              ; preds = %110
  %112 = load i64, i64* %11, align 8
  %113 = add i64 %112, 1
  store i64 %113, i64* %11, align 8
  br label %60

114:                                              ; preds = %60
  %115 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %116 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %5, align 8
  store %struct.TYPE_9__* %115, %struct.TYPE_9__** %116, align 8
  store i32 0, i32* %4, align 4
  br label %117

117:                                              ; preds = %114, %109
  %118 = load i32, i32* %4, align 4
  ret i32 %118
}

declare dso_local i8* @git_pool_mallocz(i32*, i64) #1

declare dso_local i32 @GIT_ERROR_CHECK_ALLOC(%struct.TYPE_9__*) #1

declare dso_local i8* @git_pool_strdup(i32*, %struct.TYPE_9__*) #1

declare dso_local %struct.TYPE_9__* @git_vector_get(%struct.TYPE_10__*, i64) #1

declare dso_local i32 @git_oid_cpy(i32*, i32*) #1

declare dso_local i64 @git_signature__pdup(i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
