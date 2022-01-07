; ModuleID = '/home/carl/AnghaBench/linux/block/extr_bio.c_bio_split.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_bio.c_bio_split.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bio = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.bio_set = type { i32 }

@BIO_TRACE_COMPLETION = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.bio* @bio_split(%struct.bio* %0, i32 %1, i32 %2, %struct.bio_set* %3) #0 {
  %5 = alloca %struct.bio*, align 8
  %6 = alloca %struct.bio*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.bio_set*, align 8
  %10 = alloca %struct.bio*, align 8
  store %struct.bio* %0, %struct.bio** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.bio_set* %3, %struct.bio_set** %9, align 8
  %11 = load i32, i32* %7, align 4
  %12 = icmp sle i32 %11, 0
  %13 = zext i1 %12 to i32
  %14 = call i32 @BUG_ON(i32 %13)
  %15 = load i32, i32* %7, align 4
  %16 = load %struct.bio*, %struct.bio** %6, align 8
  %17 = call i32 @bio_sectors(%struct.bio* %16)
  %18 = icmp sge i32 %15, %17
  %19 = zext i1 %18 to i32
  %20 = call i32 @BUG_ON(i32 %19)
  %21 = load %struct.bio*, %struct.bio** %6, align 8
  %22 = load i32, i32* %8, align 4
  %23 = load %struct.bio_set*, %struct.bio_set** %9, align 8
  %24 = call %struct.bio* @bio_clone_fast(%struct.bio* %21, i32 %22, %struct.bio_set* %23)
  store %struct.bio* %24, %struct.bio** %10, align 8
  %25 = load %struct.bio*, %struct.bio** %10, align 8
  %26 = icmp ne %struct.bio* %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %4
  store %struct.bio* null, %struct.bio** %5, align 8
  br label %57

28:                                               ; preds = %4
  %29 = load i32, i32* %7, align 4
  %30 = shl i32 %29, 9
  %31 = load %struct.bio*, %struct.bio** %10, align 8
  %32 = getelementptr inbounds %struct.bio, %struct.bio* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  store i32 %30, i32* %33, align 4
  %34 = load %struct.bio*, %struct.bio** %10, align 8
  %35 = call i64 @bio_integrity(%struct.bio* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %28
  %38 = load %struct.bio*, %struct.bio** %10, align 8
  %39 = call i32 @bio_integrity_trim(%struct.bio* %38)
  br label %40

40:                                               ; preds = %37, %28
  %41 = load %struct.bio*, %struct.bio** %6, align 8
  %42 = load %struct.bio*, %struct.bio** %10, align 8
  %43 = getelementptr inbounds %struct.bio, %struct.bio* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @bio_advance(%struct.bio* %41, i32 %45)
  %47 = load %struct.bio*, %struct.bio** %6, align 8
  %48 = load i32, i32* @BIO_TRACE_COMPLETION, align 4
  %49 = call i64 @bio_flagged(%struct.bio* %47, i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %40
  %52 = load %struct.bio*, %struct.bio** %10, align 8
  %53 = load i32, i32* @BIO_TRACE_COMPLETION, align 4
  %54 = call i32 @bio_set_flag(%struct.bio* %52, i32 %53)
  br label %55

55:                                               ; preds = %51, %40
  %56 = load %struct.bio*, %struct.bio** %10, align 8
  store %struct.bio* %56, %struct.bio** %5, align 8
  br label %57

57:                                               ; preds = %55, %27
  %58 = load %struct.bio*, %struct.bio** %5, align 8
  ret %struct.bio* %58
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @bio_sectors(%struct.bio*) #1

declare dso_local %struct.bio* @bio_clone_fast(%struct.bio*, i32, %struct.bio_set*) #1

declare dso_local i64 @bio_integrity(%struct.bio*) #1

declare dso_local i32 @bio_integrity_trim(%struct.bio*) #1

declare dso_local i32 @bio_advance(%struct.bio*, i32) #1

declare dso_local i64 @bio_flagged(%struct.bio*, i32) #1

declare dso_local i32 @bio_set_flag(%struct.bio*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
