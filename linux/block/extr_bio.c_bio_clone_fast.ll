; ModuleID = '/home/carl/AnghaBench/linux/block/extr_bio.c_bio_clone_fast.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_bio.c_bio_clone_fast.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bio = type { i32 }
%struct.bio_set = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.bio* @bio_clone_fast(%struct.bio* %0, i32 %1, %struct.bio_set* %2) #0 {
  %4 = alloca %struct.bio*, align 8
  %5 = alloca %struct.bio*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.bio_set*, align 8
  %8 = alloca %struct.bio*, align 8
  %9 = alloca i32, align 4
  store %struct.bio* %0, %struct.bio** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.bio_set* %2, %struct.bio_set** %7, align 8
  %10 = load i32, i32* %6, align 4
  %11 = load %struct.bio_set*, %struct.bio_set** %7, align 8
  %12 = call %struct.bio* @bio_alloc_bioset(i32 %10, i32 0, %struct.bio_set* %11)
  store %struct.bio* %12, %struct.bio** %8, align 8
  %13 = load %struct.bio*, %struct.bio** %8, align 8
  %14 = icmp ne %struct.bio* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %3
  store %struct.bio* null, %struct.bio** %4, align 8
  br label %36

16:                                               ; preds = %3
  %17 = load %struct.bio*, %struct.bio** %8, align 8
  %18 = load %struct.bio*, %struct.bio** %5, align 8
  %19 = call i32 @__bio_clone_fast(%struct.bio* %17, %struct.bio* %18)
  %20 = load %struct.bio*, %struct.bio** %5, align 8
  %21 = call i64 @bio_integrity(%struct.bio* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %34

23:                                               ; preds = %16
  %24 = load %struct.bio*, %struct.bio** %8, align 8
  %25 = load %struct.bio*, %struct.bio** %5, align 8
  %26 = load i32, i32* %6, align 4
  %27 = call i32 @bio_integrity_clone(%struct.bio* %24, %struct.bio* %25, i32 %26)
  store i32 %27, i32* %9, align 4
  %28 = load i32, i32* %9, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %23
  %31 = load %struct.bio*, %struct.bio** %8, align 8
  %32 = call i32 @bio_put(%struct.bio* %31)
  store %struct.bio* null, %struct.bio** %4, align 8
  br label %36

33:                                               ; preds = %23
  br label %34

34:                                               ; preds = %33, %16
  %35 = load %struct.bio*, %struct.bio** %8, align 8
  store %struct.bio* %35, %struct.bio** %4, align 8
  br label %36

36:                                               ; preds = %34, %30, %15
  %37 = load %struct.bio*, %struct.bio** %4, align 8
  ret %struct.bio* %37
}

declare dso_local %struct.bio* @bio_alloc_bioset(i32, i32, %struct.bio_set*) #1

declare dso_local i32 @__bio_clone_fast(%struct.bio*, %struct.bio*) #1

declare dso_local i64 @bio_integrity(%struct.bio*) #1

declare dso_local i32 @bio_integrity_clone(%struct.bio*, %struct.bio*, i32) #1

declare dso_local i32 @bio_put(%struct.bio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
