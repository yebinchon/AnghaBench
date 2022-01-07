; ModuleID = '/home/carl/AnghaBench/linux/block/extr_blk-zoned.c_blk_report_zones.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_blk-zoned.c_blk_report_zones.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gendisk = type { %struct.TYPE_2__*, %struct.request_queue* }
%struct.TYPE_2__ = type { {}* }
%struct.request_queue = type { i32 }
%struct.blk_zone = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gendisk*, i64, %struct.blk_zone*, i32*)* @blk_report_zones to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @blk_report_zones(%struct.gendisk* %0, i64 %1, %struct.blk_zone* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.gendisk*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.blk_zone*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.request_queue*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store %struct.gendisk* %0, %struct.gendisk** %6, align 8
  store i64 %1, i64* %7, align 8
  store %struct.blk_zone* %2, %struct.blk_zone** %8, align 8
  store i32* %3, i32** %9, align 8
  %16 = load %struct.gendisk*, %struct.gendisk** %6, align 8
  %17 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %16, i32 0, i32 1
  %18 = load %struct.request_queue*, %struct.request_queue** %17, align 8
  store %struct.request_queue* %18, %struct.request_queue** %10, align 8
  store i32 0, i32* %11, align 4
  %19 = load i32*, i32** %9, align 8
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %13, align 4
  %21 = load %struct.gendisk*, %struct.gendisk** %6, align 8
  %22 = call i64 @get_capacity(%struct.gendisk* %21)
  store i64 %22, i64* %14, align 8
  br label %23

23:                                               ; preds = %58, %4
  %24 = load i32, i32* %11, align 4
  %25 = load i32, i32* %13, align 4
  %26 = icmp ult i32 %24, %25
  br i1 %26, label %27, label %31

27:                                               ; preds = %23
  %28 = load i64, i64* %7, align 8
  %29 = load i64, i64* %14, align 8
  %30 = icmp slt i64 %28, %29
  br label %31

31:                                               ; preds = %27, %23
  %32 = phi i1 [ false, %23 ], [ %30, %27 ]
  br i1 %32, label %33, label %69

33:                                               ; preds = %31
  %34 = load i32, i32* %13, align 4
  %35 = load i32, i32* %11, align 4
  %36 = sub i32 %34, %35
  store i32 %36, i32* %12, align 4
  %37 = load %struct.gendisk*, %struct.gendisk** %6, align 8
  %38 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %37, i32 0, i32 0
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = bitcast {}** %40 to i32 (%struct.gendisk*, i64, %struct.blk_zone*, i32*)**
  %42 = load i32 (%struct.gendisk*, i64, %struct.blk_zone*, i32*)*, i32 (%struct.gendisk*, i64, %struct.blk_zone*, i32*)** %41, align 8
  %43 = load %struct.gendisk*, %struct.gendisk** %6, align 8
  %44 = load i64, i64* %7, align 8
  %45 = load %struct.blk_zone*, %struct.blk_zone** %8, align 8
  %46 = load i32, i32* %11, align 4
  %47 = zext i32 %46 to i64
  %48 = getelementptr inbounds %struct.blk_zone, %struct.blk_zone* %45, i64 %47
  %49 = call i32 %42(%struct.gendisk* %43, i64 %44, %struct.blk_zone* %48, i32* %12)
  store i32 %49, i32* %15, align 4
  %50 = load i32, i32* %15, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %33
  %53 = load i32, i32* %15, align 4
  store i32 %53, i32* %5, align 4
  br label %78

54:                                               ; preds = %33
  %55 = load i32, i32* %12, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %58, label %57

57:                                               ; preds = %54
  br label %69

58:                                               ; preds = %54
  %59 = load %struct.request_queue*, %struct.request_queue** %10, align 8
  %60 = call i32 @blk_queue_zone_sectors(%struct.request_queue* %59)
  %61 = load i32, i32* %12, align 4
  %62 = mul i32 %60, %61
  %63 = zext i32 %62 to i64
  %64 = load i64, i64* %7, align 8
  %65 = add nsw i64 %64, %63
  store i64 %65, i64* %7, align 8
  %66 = load i32, i32* %12, align 4
  %67 = load i32, i32* %11, align 4
  %68 = add i32 %67, %66
  store i32 %68, i32* %11, align 4
  br label %23

69:                                               ; preds = %57, %31
  %70 = load i32, i32* %11, align 4
  %71 = load i32*, i32** %9, align 8
  %72 = load i32, i32* %71, align 4
  %73 = icmp ugt i32 %70, %72
  %74 = zext i1 %73 to i32
  %75 = call i32 @WARN_ON(i32 %74)
  %76 = load i32, i32* %11, align 4
  %77 = load i32*, i32** %9, align 8
  store i32 %76, i32* %77, align 4
  store i32 0, i32* %5, align 4
  br label %78

78:                                               ; preds = %69, %52
  %79 = load i32, i32* %5, align 4
  ret i32 %79
}

declare dso_local i64 @get_capacity(%struct.gendisk*) #1

declare dso_local i32 @blk_queue_zone_sectors(%struct.request_queue*) #1

declare dso_local i32 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
