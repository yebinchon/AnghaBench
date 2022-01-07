; ModuleID = '/home/carl/AnghaBench/linux/block/extr_blk-merge.c_blk_bio_discard_split.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_blk-merge.c_blk_bio_discard_split.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request_queue = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32 }
%struct.bio = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.bio_set = type { i32 }

@GFP_NOIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.bio* (%struct.request_queue*, %struct.bio*, %struct.bio_set*, i32*)* @blk_bio_discard_split to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.bio* @blk_bio_discard_split(%struct.request_queue* %0, %struct.bio* %1, %struct.bio_set* %2, i32* %3) #0 {
  %5 = alloca %struct.bio*, align 8
  %6 = alloca %struct.request_queue*, align 8
  %7 = alloca %struct.bio*, align 8
  %8 = alloca %struct.bio_set*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.request_queue* %0, %struct.request_queue** %6, align 8
  store %struct.bio* %1, %struct.bio** %7, align 8
  store %struct.bio_set* %2, %struct.bio_set** %8, align 8
  store i32* %3, i32** %9, align 8
  %15 = load i32*, i32** %9, align 8
  store i32 1, i32* %15, align 4
  %16 = load %struct.request_queue*, %struct.request_queue** %6, align 8
  %17 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = ashr i32 %19, 9
  %21 = call i32 @max(i32 %20, i32 1)
  store i32 %21, i32* %11, align 4
  %22 = load %struct.request_queue*, %struct.request_queue** %6, align 8
  %23 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.request_queue*, %struct.request_queue** %6, align 8
  %27 = call i32 @bio_allowed_max_sectors(%struct.request_queue* %26)
  %28 = call i32 @min(i32 %25, i32 %27)
  store i32 %28, i32* %10, align 4
  %29 = load i32, i32* %10, align 4
  %30 = load i32, i32* %11, align 4
  %31 = urem i32 %29, %30
  %32 = load i32, i32* %10, align 4
  %33 = sub i32 %32, %31
  store i32 %33, i32* %10, align 4
  %34 = load i32, i32* %10, align 4
  %35 = icmp ne i32 %34, 0
  %36 = xor i1 %35, true
  %37 = zext i1 %36 to i32
  %38 = call i64 @unlikely(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %4
  store %struct.bio* null, %struct.bio** %5, align 8
  br label %80

41:                                               ; preds = %4
  %42 = load %struct.bio*, %struct.bio** %7, align 8
  %43 = call i32 @bio_sectors(%struct.bio* %42)
  %44 = load i32, i32* %10, align 4
  %45 = icmp ule i32 %43, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %41
  store %struct.bio* null, %struct.bio** %5, align 8
  br label %80

47:                                               ; preds = %41
  %48 = load i32, i32* %10, align 4
  store i32 %48, i32* %14, align 4
  %49 = load %struct.request_queue*, %struct.request_queue** %6, align 8
  %50 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = ashr i32 %52, 9
  %54 = load i32, i32* %11, align 4
  %55 = urem i32 %53, %54
  store i32 %55, i32* %12, align 4
  %56 = load %struct.bio*, %struct.bio** %7, align 8
  %57 = getelementptr inbounds %struct.bio, %struct.bio* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* %14, align 4
  %61 = add i32 %59, %60
  %62 = load i32, i32* %12, align 4
  %63 = sub i32 %61, %62
  store i32 %63, i32* %13, align 4
  %64 = load i32, i32* %13, align 4
  %65 = load i32, i32* %11, align 4
  %66 = call i32 @sector_div(i32 %64, i32 %65)
  store i32 %66, i32* %13, align 4
  %67 = load i32, i32* %14, align 4
  %68 = load i32, i32* %13, align 4
  %69 = icmp ugt i32 %67, %68
  br i1 %69, label %70, label %74

70:                                               ; preds = %47
  %71 = load i32, i32* %13, align 4
  %72 = load i32, i32* %14, align 4
  %73 = sub i32 %72, %71
  store i32 %73, i32* %14, align 4
  br label %74

74:                                               ; preds = %70, %47
  %75 = load %struct.bio*, %struct.bio** %7, align 8
  %76 = load i32, i32* %14, align 4
  %77 = load i32, i32* @GFP_NOIO, align 4
  %78 = load %struct.bio_set*, %struct.bio_set** %8, align 8
  %79 = call %struct.bio* @bio_split(%struct.bio* %75, i32 %76, i32 %77, %struct.bio_set* %78)
  store %struct.bio* %79, %struct.bio** %5, align 8
  br label %80

80:                                               ; preds = %74, %46, %40
  %81 = load %struct.bio*, %struct.bio** %5, align 8
  ret %struct.bio* %81
}

declare dso_local i32 @max(i32, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @bio_allowed_max_sectors(%struct.request_queue*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @bio_sectors(%struct.bio*) #1

declare dso_local i32 @sector_div(i32, i32) #1

declare dso_local %struct.bio* @bio_split(%struct.bio*, i32, i32, %struct.bio_set*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
