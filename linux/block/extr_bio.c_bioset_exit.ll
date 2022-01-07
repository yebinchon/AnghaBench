; ModuleID = '/home/carl/AnghaBench/linux/block/extr_bio.c_bioset_exit.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_bio.c_bioset_exit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bio_set = type { i32*, i32, i32, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bioset_exit(%struct.bio_set* %0) #0 {
  %2 = alloca %struct.bio_set*, align 8
  store %struct.bio_set* %0, %struct.bio_set** %2, align 8
  %3 = load %struct.bio_set*, %struct.bio_set** %2, align 8
  %4 = getelementptr inbounds %struct.bio_set, %struct.bio_set* %3, i32 0, i32 3
  %5 = load i32*, i32** %4, align 8
  %6 = icmp ne i32* %5, null
  br i1 %6, label %7, label %12

7:                                                ; preds = %1
  %8 = load %struct.bio_set*, %struct.bio_set** %2, align 8
  %9 = getelementptr inbounds %struct.bio_set, %struct.bio_set* %8, i32 0, i32 3
  %10 = load i32*, i32** %9, align 8
  %11 = call i32 @destroy_workqueue(i32* %10)
  br label %12

12:                                               ; preds = %7, %1
  %13 = load %struct.bio_set*, %struct.bio_set** %2, align 8
  %14 = getelementptr inbounds %struct.bio_set, %struct.bio_set* %13, i32 0, i32 3
  store i32* null, i32** %14, align 8
  %15 = load %struct.bio_set*, %struct.bio_set** %2, align 8
  %16 = getelementptr inbounds %struct.bio_set, %struct.bio_set* %15, i32 0, i32 2
  %17 = call i32 @mempool_exit(i32* %16)
  %18 = load %struct.bio_set*, %struct.bio_set** %2, align 8
  %19 = getelementptr inbounds %struct.bio_set, %struct.bio_set* %18, i32 0, i32 1
  %20 = call i32 @mempool_exit(i32* %19)
  %21 = load %struct.bio_set*, %struct.bio_set** %2, align 8
  %22 = call i32 @bioset_integrity_free(%struct.bio_set* %21)
  %23 = load %struct.bio_set*, %struct.bio_set** %2, align 8
  %24 = getelementptr inbounds %struct.bio_set, %struct.bio_set* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %27, label %30

27:                                               ; preds = %12
  %28 = load %struct.bio_set*, %struct.bio_set** %2, align 8
  %29 = call i32 @bio_put_slab(%struct.bio_set* %28)
  br label %30

30:                                               ; preds = %27, %12
  %31 = load %struct.bio_set*, %struct.bio_set** %2, align 8
  %32 = getelementptr inbounds %struct.bio_set, %struct.bio_set* %31, i32 0, i32 0
  store i32* null, i32** %32, align 8
  ret void
}

declare dso_local i32 @destroy_workqueue(i32*) #1

declare dso_local i32 @mempool_exit(i32*) #1

declare dso_local i32 @bioset_integrity_free(%struct.bio_set*) #1

declare dso_local i32 @bio_put_slab(%struct.bio_set*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
