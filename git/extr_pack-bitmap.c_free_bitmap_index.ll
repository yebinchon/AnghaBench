; ModuleID = '/home/carl/AnghaBench/git/extr_pack-bitmap.c_free_bitmap_index.c'
source_filename = "/home/carl/AnghaBench/git/extr_pack-bitmap.c_free_bitmap_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bitmap_index = type { i32, i32, %struct.TYPE_2__, i32, i32, i32, i32, i32, i32, i64 }
%struct.TYPE_2__ = type { %struct.bitmap_index*, %struct.bitmap_index* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @free_bitmap_index(%struct.bitmap_index* %0) #0 {
  %2 = alloca %struct.bitmap_index*, align 8
  store %struct.bitmap_index* %0, %struct.bitmap_index** %2, align 8
  %3 = load %struct.bitmap_index*, %struct.bitmap_index** %2, align 8
  %4 = icmp ne %struct.bitmap_index* %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  br label %60

6:                                                ; preds = %1
  %7 = load %struct.bitmap_index*, %struct.bitmap_index** %2, align 8
  %8 = getelementptr inbounds %struct.bitmap_index, %struct.bitmap_index* %7, i32 0, i32 9
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %19

11:                                               ; preds = %6
  %12 = load %struct.bitmap_index*, %struct.bitmap_index** %2, align 8
  %13 = getelementptr inbounds %struct.bitmap_index, %struct.bitmap_index* %12, i32 0, i32 9
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.bitmap_index*, %struct.bitmap_index** %2, align 8
  %16 = getelementptr inbounds %struct.bitmap_index, %struct.bitmap_index* %15, i32 0, i32 8
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @munmap(i64 %14, i32 %17)
  br label %19

19:                                               ; preds = %11, %6
  %20 = load %struct.bitmap_index*, %struct.bitmap_index** %2, align 8
  %21 = getelementptr inbounds %struct.bitmap_index, %struct.bitmap_index* %20, i32 0, i32 7
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @ewah_pool_free(i32 %22)
  %24 = load %struct.bitmap_index*, %struct.bitmap_index** %2, align 8
  %25 = getelementptr inbounds %struct.bitmap_index, %struct.bitmap_index* %24, i32 0, i32 6
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @ewah_pool_free(i32 %26)
  %28 = load %struct.bitmap_index*, %struct.bitmap_index** %2, align 8
  %29 = getelementptr inbounds %struct.bitmap_index, %struct.bitmap_index* %28, i32 0, i32 5
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @ewah_pool_free(i32 %30)
  %32 = load %struct.bitmap_index*, %struct.bitmap_index** %2, align 8
  %33 = getelementptr inbounds %struct.bitmap_index, %struct.bitmap_index* %32, i32 0, i32 4
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @ewah_pool_free(i32 %34)
  %36 = load %struct.bitmap_index*, %struct.bitmap_index** %2, align 8
  %37 = getelementptr inbounds %struct.bitmap_index, %struct.bitmap_index* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @kh_destroy_oid_map(i32 %38)
  %40 = load %struct.bitmap_index*, %struct.bitmap_index** %2, align 8
  %41 = getelementptr inbounds %struct.bitmap_index, %struct.bitmap_index* %40, i32 0, i32 2
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 1
  %43 = load %struct.bitmap_index*, %struct.bitmap_index** %42, align 8
  %44 = call i32 @free(%struct.bitmap_index* %43)
  %45 = load %struct.bitmap_index*, %struct.bitmap_index** %2, align 8
  %46 = getelementptr inbounds %struct.bitmap_index, %struct.bitmap_index* %45, i32 0, i32 2
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load %struct.bitmap_index*, %struct.bitmap_index** %47, align 8
  %49 = call i32 @free(%struct.bitmap_index* %48)
  %50 = load %struct.bitmap_index*, %struct.bitmap_index** %2, align 8
  %51 = getelementptr inbounds %struct.bitmap_index, %struct.bitmap_index* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @bitmap_free(i32 %52)
  %54 = load %struct.bitmap_index*, %struct.bitmap_index** %2, align 8
  %55 = getelementptr inbounds %struct.bitmap_index, %struct.bitmap_index* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @bitmap_free(i32 %56)
  %58 = load %struct.bitmap_index*, %struct.bitmap_index** %2, align 8
  %59 = call i32 @free(%struct.bitmap_index* %58)
  br label %60

60:                                               ; preds = %19, %5
  ret void
}

declare dso_local i32 @munmap(i64, i32) #1

declare dso_local i32 @ewah_pool_free(i32) #1

declare dso_local i32 @kh_destroy_oid_map(i32) #1

declare dso_local i32 @free(%struct.bitmap_index*) #1

declare dso_local i32 @bitmap_free(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
