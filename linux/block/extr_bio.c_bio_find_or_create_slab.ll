; ModuleID = '/home/carl/AnghaBench/linux/block/extr_bio.c_bio_find_or_create_slab.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_bio.c_bio_find_or_create_slab.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bio_slab = type { i32, i32, %struct.kmem_cache*, i32 }
%struct.kmem_cache = type { i32 }

@bio_slab_lock = common dso_local global i32 0, align 4
@bio_slab_nr = common dso_local global i32 0, align 4
@bio_slabs = common dso_local global %struct.bio_slab* null, align 8
@bio_slab_max = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"bio-%d\00", align 1
@ARCH_KMALLOC_MINALIGN = common dso_local global i32 0, align 4
@SLAB_HWCACHE_ALIGN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.kmem_cache* (i32)* @bio_find_or_create_slab to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.kmem_cache* @bio_find_or_create_slab(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.kmem_cache*, align 8
  %5 = alloca %struct.bio_slab*, align 8
  %6 = alloca %struct.bio_slab*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %10 = load i32, i32* %2, align 4
  %11 = zext i32 %10 to i64
  %12 = add i64 4, %11
  %13 = trunc i64 %12 to i32
  store i32 %13, i32* %3, align 4
  store %struct.kmem_cache* null, %struct.kmem_cache** %4, align 8
  store i32 -1, i32* %9, align 4
  %14 = call i32 @mutex_lock(i32* @bio_slab_lock)
  store i32 0, i32* %8, align 4
  br label %15

15:                                               ; preds = %48, %1
  %16 = load i32, i32* %8, align 4
  %17 = load i32, i32* @bio_slab_nr, align 4
  %18 = icmp ult i32 %16, %17
  br i1 %18, label %19, label %51

19:                                               ; preds = %15
  %20 = load %struct.bio_slab*, %struct.bio_slab** @bio_slabs, align 8
  %21 = load i32, i32* %8, align 4
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds %struct.bio_slab, %struct.bio_slab* %20, i64 %22
  store %struct.bio_slab* %23, %struct.bio_slab** %5, align 8
  %24 = load %struct.bio_slab*, %struct.bio_slab** %5, align 8
  %25 = getelementptr inbounds %struct.bio_slab, %struct.bio_slab* %24, i32 0, i32 2
  %26 = load %struct.kmem_cache*, %struct.kmem_cache** %25, align 8
  %27 = icmp ne %struct.kmem_cache* %26, null
  br i1 %27, label %33, label %28

28:                                               ; preds = %19
  %29 = load i32, i32* %9, align 4
  %30 = icmp eq i32 %29, -1
  br i1 %30, label %31, label %33

31:                                               ; preds = %28
  %32 = load i32, i32* %8, align 4
  store i32 %32, i32* %9, align 4
  br label %48

33:                                               ; preds = %28, %19
  %34 = load %struct.bio_slab*, %struct.bio_slab** %5, align 8
  %35 = getelementptr inbounds %struct.bio_slab, %struct.bio_slab* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* %3, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %47

39:                                               ; preds = %33
  %40 = load %struct.bio_slab*, %struct.bio_slab** %5, align 8
  %41 = getelementptr inbounds %struct.bio_slab, %struct.bio_slab* %40, i32 0, i32 2
  %42 = load %struct.kmem_cache*, %struct.kmem_cache** %41, align 8
  store %struct.kmem_cache* %42, %struct.kmem_cache** %4, align 8
  %43 = load %struct.bio_slab*, %struct.bio_slab** %5, align 8
  %44 = getelementptr inbounds %struct.bio_slab, %struct.bio_slab* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %44, align 4
  br label %51

47:                                               ; preds = %33
  br label %48

48:                                               ; preds = %47, %31
  %49 = load i32, i32* %8, align 4
  %50 = add i32 %49, 1
  store i32 %50, i32* %8, align 4
  br label %15

51:                                               ; preds = %39, %15
  %52 = load %struct.kmem_cache*, %struct.kmem_cache** %4, align 8
  %53 = icmp ne %struct.kmem_cache* %52, null
  br i1 %53, label %54, label %55

54:                                               ; preds = %51
  br label %113

55:                                               ; preds = %51
  %56 = load i32, i32* @bio_slab_nr, align 4
  %57 = load i32, i32* @bio_slab_max, align 4
  %58 = icmp eq i32 %56, %57
  br i1 %58, label %59, label %78

59:                                               ; preds = %55
  %60 = load i32, i32* %9, align 4
  %61 = icmp eq i32 %60, -1
  br i1 %61, label %62, label %78

62:                                               ; preds = %59
  %63 = load i32, i32* @bio_slab_max, align 4
  %64 = shl i32 %63, 1
  store i32 %64, i32* %7, align 4
  %65 = load %struct.bio_slab*, %struct.bio_slab** @bio_slabs, align 8
  %66 = load i32, i32* %7, align 4
  %67 = zext i32 %66 to i64
  %68 = mul i64 %67, 24
  %69 = trunc i64 %68 to i32
  %70 = load i32, i32* @GFP_KERNEL, align 4
  %71 = call %struct.bio_slab* @krealloc(%struct.bio_slab* %65, i32 %69, i32 %70)
  store %struct.bio_slab* %71, %struct.bio_slab** %6, align 8
  %72 = load %struct.bio_slab*, %struct.bio_slab** %6, align 8
  %73 = icmp ne %struct.bio_slab* %72, null
  br i1 %73, label %75, label %74

74:                                               ; preds = %62
  br label %113

75:                                               ; preds = %62
  %76 = load i32, i32* %7, align 4
  store i32 %76, i32* @bio_slab_max, align 4
  %77 = load %struct.bio_slab*, %struct.bio_slab** %6, align 8
  store %struct.bio_slab* %77, %struct.bio_slab** @bio_slabs, align 8
  br label %78

78:                                               ; preds = %75, %59, %55
  %79 = load i32, i32* %9, align 4
  %80 = icmp eq i32 %79, -1
  br i1 %80, label %81, label %84

81:                                               ; preds = %78
  %82 = load i32, i32* @bio_slab_nr, align 4
  %83 = add i32 %82, 1
  store i32 %83, i32* @bio_slab_nr, align 4
  store i32 %82, i32* %9, align 4
  br label %84

84:                                               ; preds = %81, %78
  %85 = load %struct.bio_slab*, %struct.bio_slab** @bio_slabs, align 8
  %86 = load i32, i32* %9, align 4
  %87 = zext i32 %86 to i64
  %88 = getelementptr inbounds %struct.bio_slab, %struct.bio_slab* %85, i64 %87
  store %struct.bio_slab* %88, %struct.bio_slab** %5, align 8
  %89 = load %struct.bio_slab*, %struct.bio_slab** %5, align 8
  %90 = getelementptr inbounds %struct.bio_slab, %struct.bio_slab* %89, i32 0, i32 3
  %91 = load i32, i32* %90, align 8
  %92 = load i32, i32* %9, align 4
  %93 = call i32 @snprintf(i32 %91, i32 4, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %92)
  %94 = load %struct.bio_slab*, %struct.bio_slab** %5, align 8
  %95 = getelementptr inbounds %struct.bio_slab, %struct.bio_slab* %94, i32 0, i32 3
  %96 = load i32, i32* %95, align 8
  %97 = load i32, i32* %3, align 4
  %98 = load i32, i32* @ARCH_KMALLOC_MINALIGN, align 4
  %99 = load i32, i32* @SLAB_HWCACHE_ALIGN, align 4
  %100 = call %struct.kmem_cache* @kmem_cache_create(i32 %96, i32 %97, i32 %98, i32 %99, i32* null)
  store %struct.kmem_cache* %100, %struct.kmem_cache** %4, align 8
  %101 = load %struct.kmem_cache*, %struct.kmem_cache** %4, align 8
  %102 = icmp ne %struct.kmem_cache* %101, null
  br i1 %102, label %104, label %103

103:                                              ; preds = %84
  br label %113

104:                                              ; preds = %84
  %105 = load %struct.kmem_cache*, %struct.kmem_cache** %4, align 8
  %106 = load %struct.bio_slab*, %struct.bio_slab** %5, align 8
  %107 = getelementptr inbounds %struct.bio_slab, %struct.bio_slab* %106, i32 0, i32 2
  store %struct.kmem_cache* %105, %struct.kmem_cache** %107, align 8
  %108 = load %struct.bio_slab*, %struct.bio_slab** %5, align 8
  %109 = getelementptr inbounds %struct.bio_slab, %struct.bio_slab* %108, i32 0, i32 1
  store i32 1, i32* %109, align 4
  %110 = load i32, i32* %3, align 4
  %111 = load %struct.bio_slab*, %struct.bio_slab** %5, align 8
  %112 = getelementptr inbounds %struct.bio_slab, %struct.bio_slab* %111, i32 0, i32 0
  store i32 %110, i32* %112, align 8
  br label %113

113:                                              ; preds = %104, %103, %74, %54
  %114 = call i32 @mutex_unlock(i32* @bio_slab_lock)
  %115 = load %struct.kmem_cache*, %struct.kmem_cache** %4, align 8
  ret %struct.kmem_cache* %115
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.bio_slab* @krealloc(%struct.bio_slab*, i32, i32) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i32) #1

declare dso_local %struct.kmem_cache* @kmem_cache_create(i32, i32, i32, i32, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
