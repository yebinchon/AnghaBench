; ModuleID = '/home/carl/AnghaBench/linux/block/extr_bio.c_bio_free.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_bio.c_bio_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bio = type { i32, %struct.bio_set* }
%struct.bio_set = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bio*)* @bio_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bio_free(%struct.bio* %0) #0 {
  %2 = alloca %struct.bio*, align 8
  %3 = alloca %struct.bio_set*, align 8
  %4 = alloca i8*, align 8
  store %struct.bio* %0, %struct.bio** %2, align 8
  %5 = load %struct.bio*, %struct.bio** %2, align 8
  %6 = getelementptr inbounds %struct.bio, %struct.bio* %5, i32 0, i32 1
  %7 = load %struct.bio_set*, %struct.bio_set** %6, align 8
  store %struct.bio_set* %7, %struct.bio_set** %3, align 8
  %8 = load %struct.bio*, %struct.bio** %2, align 8
  %9 = call i32 @bio_uninit(%struct.bio* %8)
  %10 = load %struct.bio_set*, %struct.bio_set** %3, align 8
  %11 = icmp ne %struct.bio_set* %10, null
  br i1 %11, label %12, label %34

12:                                               ; preds = %1
  %13 = load %struct.bio_set*, %struct.bio_set** %3, align 8
  %14 = getelementptr inbounds %struct.bio_set, %struct.bio_set* %13, i32 0, i32 2
  %15 = load %struct.bio*, %struct.bio** %2, align 8
  %16 = getelementptr inbounds %struct.bio, %struct.bio* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.bio*, %struct.bio** %2, align 8
  %19 = call i32 @BVEC_POOL_IDX(%struct.bio* %18)
  %20 = call i32 @bvec_free(i32* %14, i32 %17, i32 %19)
  %21 = load %struct.bio*, %struct.bio** %2, align 8
  %22 = bitcast %struct.bio* %21 to i8*
  store i8* %22, i8** %4, align 8
  %23 = load %struct.bio_set*, %struct.bio_set** %3, align 8
  %24 = getelementptr inbounds %struct.bio_set, %struct.bio_set* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load i8*, i8** %4, align 8
  %27 = sext i32 %25 to i64
  %28 = sub i64 0, %27
  %29 = getelementptr i8, i8* %26, i64 %28
  store i8* %29, i8** %4, align 8
  %30 = load i8*, i8** %4, align 8
  %31 = load %struct.bio_set*, %struct.bio_set** %3, align 8
  %32 = getelementptr inbounds %struct.bio_set, %struct.bio_set* %31, i32 0, i32 0
  %33 = call i32 @mempool_free(i8* %30, i32* %32)
  br label %37

34:                                               ; preds = %1
  %35 = load %struct.bio*, %struct.bio** %2, align 8
  %36 = call i32 @kfree(%struct.bio* %35)
  br label %37

37:                                               ; preds = %34, %12
  ret void
}

declare dso_local i32 @bio_uninit(%struct.bio*) #1

declare dso_local i32 @bvec_free(i32*, i32, i32) #1

declare dso_local i32 @BVEC_POOL_IDX(%struct.bio*) #1

declare dso_local i32 @mempool_free(i8*, i32*) #1

declare dso_local i32 @kfree(%struct.bio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
