; ModuleID = '/home/carl/AnghaBench/linux/block/extr_blk-throttle.c_tg_with_in_iops_limit.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_blk-throttle.c_tg_with_in_iops_limit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.throtl_grp = type { i64*, i32*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.bio = type { i32 }

@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@UINT_MAX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.throtl_grp*, %struct.bio*, i64*)* @tg_with_in_iops_limit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tg_with_in_iops_limit(%struct.throtl_grp* %0, %struct.bio* %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.throtl_grp*, align 8
  %6 = alloca %struct.bio*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.throtl_grp* %0, %struct.throtl_grp** %5, align 8
  store %struct.bio* %1, %struct.bio** %6, align 8
  store i64* %2, i64** %7, align 8
  %14 = load %struct.bio*, %struct.bio** %6, align 8
  %15 = call i32 @bio_data_dir(%struct.bio* %14)
  store i32 %15, i32* %8, align 4
  %16 = load i64, i64* @jiffies, align 8
  %17 = load %struct.throtl_grp*, %struct.throtl_grp** %5, align 8
  %18 = getelementptr inbounds %struct.throtl_grp, %struct.throtl_grp* %17, i32 0, i32 0
  %19 = load i64*, i64** %18, align 8
  %20 = load i32, i32* %8, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i64, i64* %19, i64 %21
  %23 = load i64, i64* %22, align 8
  %24 = sub i64 %16, %23
  store i64 %24, i64* %10, align 8
  %25 = load i64, i64* %10, align 8
  %26 = add i64 %25, 1
  %27 = load %struct.throtl_grp*, %struct.throtl_grp** %5, align 8
  %28 = getelementptr inbounds %struct.throtl_grp, %struct.throtl_grp* %27, i32 0, i32 2
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i64 @roundup(i64 %26, i32 %31)
  store i64 %32, i64* %12, align 8
  %33 = load %struct.throtl_grp*, %struct.throtl_grp** %5, align 8
  %34 = load i32, i32* %8, align 4
  %35 = call i64 @tg_iops_limit(%struct.throtl_grp* %33, i32 %34)
  %36 = load i64, i64* %12, align 8
  %37 = mul i64 %35, %36
  store i64 %37, i64* %13, align 8
  %38 = load i64, i64* %13, align 8
  %39 = load i32, i32* @HZ, align 4
  %40 = call i32 @do_div(i64 %38, i32 %39)
  %41 = load i64, i64* %13, align 8
  %42 = load i64, i64* @UINT_MAX, align 8
  %43 = icmp ugt i64 %41, %42
  br i1 %43, label %44, label %47

44:                                               ; preds = %3
  %45 = load i64, i64* @UINT_MAX, align 8
  %46 = trunc i64 %45 to i32
  store i32 %46, i32* %9, align 4
  br label %50

47:                                               ; preds = %3
  %48 = load i64, i64* %13, align 8
  %49 = trunc i64 %48 to i32
  store i32 %49, i32* %9, align 4
  br label %50

50:                                               ; preds = %47, %44
  %51 = load %struct.throtl_grp*, %struct.throtl_grp** %5, align 8
  %52 = getelementptr inbounds %struct.throtl_grp, %struct.throtl_grp* %51, i32 0, i32 1
  %53 = load i32*, i32** %52, align 8
  %54 = load i32, i32* %8, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %53, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = add nsw i32 %57, 1
  %59 = load i32, i32* %9, align 4
  %60 = icmp ule i32 %58, %59
  br i1 %60, label %61, label %67

61:                                               ; preds = %50
  %62 = load i64*, i64** %7, align 8
  %63 = icmp ne i64* %62, null
  br i1 %63, label %64, label %66

64:                                               ; preds = %61
  %65 = load i64*, i64** %7, align 8
  store i64 0, i64* %65, align 8
  br label %66

66:                                               ; preds = %64, %61
  store i32 1, i32* %4, align 4
  br label %77

67:                                               ; preds = %50
  %68 = load i64, i64* %12, align 8
  %69 = load i64, i64* %10, align 8
  %70 = sub i64 %68, %69
  store i64 %70, i64* %11, align 8
  %71 = load i64*, i64** %7, align 8
  %72 = icmp ne i64* %71, null
  br i1 %72, label %73, label %76

73:                                               ; preds = %67
  %74 = load i64, i64* %11, align 8
  %75 = load i64*, i64** %7, align 8
  store i64 %74, i64* %75, align 8
  br label %76

76:                                               ; preds = %73, %67
  store i32 0, i32* %4, align 4
  br label %77

77:                                               ; preds = %76, %66
  %78 = load i32, i32* %4, align 4
  ret i32 %78
}

declare dso_local i32 @bio_data_dir(%struct.bio*) #1

declare dso_local i64 @roundup(i64, i32) #1

declare dso_local i64 @tg_iops_limit(%struct.throtl_grp*, i32) #1

declare dso_local i32 @do_div(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
