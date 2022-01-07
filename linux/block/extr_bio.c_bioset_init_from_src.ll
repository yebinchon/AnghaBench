; ModuleID = '/home/carl/AnghaBench/linux/block/extr_bio.c_bioset_init_from_src.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_bio.c_bioset_init_from_src.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bio_set = type { i32, %struct.TYPE_4__, i64, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i64 }

@BIOSET_NEED_BVECS = common dso_local global i32 0, align 4
@BIOSET_NEED_RESCUER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bioset_init_from_src(%struct.bio_set* %0, %struct.bio_set* %1) #0 {
  %3 = alloca %struct.bio_set*, align 8
  %4 = alloca %struct.bio_set*, align 8
  %5 = alloca i32, align 4
  store %struct.bio_set* %0, %struct.bio_set** %3, align 8
  store %struct.bio_set* %1, %struct.bio_set** %4, align 8
  store i32 0, i32* %5, align 4
  %6 = load %struct.bio_set*, %struct.bio_set** %4, align 8
  %7 = getelementptr inbounds %struct.bio_set, %struct.bio_set* %6, i32 0, i32 3
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %2
  %12 = load i32, i32* @BIOSET_NEED_BVECS, align 4
  %13 = load i32, i32* %5, align 4
  %14 = or i32 %13, %12
  store i32 %14, i32* %5, align 4
  br label %15

15:                                               ; preds = %11, %2
  %16 = load %struct.bio_set*, %struct.bio_set** %4, align 8
  %17 = getelementptr inbounds %struct.bio_set, %struct.bio_set* %16, i32 0, i32 2
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %15
  %21 = load i32, i32* @BIOSET_NEED_RESCUER, align 4
  %22 = load i32, i32* %5, align 4
  %23 = or i32 %22, %21
  store i32 %23, i32* %5, align 4
  br label %24

24:                                               ; preds = %20, %15
  %25 = load %struct.bio_set*, %struct.bio_set** %3, align 8
  %26 = load %struct.bio_set*, %struct.bio_set** %4, align 8
  %27 = getelementptr inbounds %struct.bio_set, %struct.bio_set* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.bio_set*, %struct.bio_set** %4, align 8
  %31 = getelementptr inbounds %struct.bio_set, %struct.bio_set* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* %5, align 4
  %34 = call i32 @bioset_init(%struct.bio_set* %25, i32 %29, i32 %32, i32 %33)
  ret i32 %34
}

declare dso_local i32 @bioset_init(%struct.bio_set*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
