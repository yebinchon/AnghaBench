; ModuleID = '/home/carl/AnghaBench/linux/block/extr_bio-integrity.c_bioset_integrity_create.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_bio-integrity.c_bioset_integrity_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bio_set = type { i32, i32 }

@bip_slab = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bioset_integrity_create(%struct.bio_set* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bio_set*, align 8
  %5 = alloca i32, align 4
  store %struct.bio_set* %0, %struct.bio_set** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.bio_set*, %struct.bio_set** %4, align 8
  %7 = getelementptr inbounds %struct.bio_set, %struct.bio_set* %6, i32 0, i32 0
  %8 = call i64 @mempool_initialized(i32* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %30

11:                                               ; preds = %2
  %12 = load %struct.bio_set*, %struct.bio_set** %4, align 8
  %13 = getelementptr inbounds %struct.bio_set, %struct.bio_set* %12, i32 0, i32 0
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* @bip_slab, align 4
  %16 = call i64 @mempool_init_slab_pool(i32* %13, i32 %14, i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %11
  store i32 -1, i32* %3, align 4
  br label %30

19:                                               ; preds = %11
  %20 = load %struct.bio_set*, %struct.bio_set** %4, align 8
  %21 = getelementptr inbounds %struct.bio_set, %struct.bio_set* %20, i32 0, i32 1
  %22 = load i32, i32* %5, align 4
  %23 = call i64 @biovec_init_pool(i32* %21, i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %19
  %26 = load %struct.bio_set*, %struct.bio_set** %4, align 8
  %27 = getelementptr inbounds %struct.bio_set, %struct.bio_set* %26, i32 0, i32 0
  %28 = call i32 @mempool_exit(i32* %27)
  store i32 -1, i32* %3, align 4
  br label %30

29:                                               ; preds = %19
  store i32 0, i32* %3, align 4
  br label %30

30:                                               ; preds = %29, %25, %18, %10
  %31 = load i32, i32* %3, align 4
  ret i32 %31
}

declare dso_local i64 @mempool_initialized(i32*) #1

declare dso_local i64 @mempool_init_slab_pool(i32*, i32, i32) #1

declare dso_local i64 @biovec_init_pool(i32*, i32) #1

declare dso_local i32 @mempool_exit(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
