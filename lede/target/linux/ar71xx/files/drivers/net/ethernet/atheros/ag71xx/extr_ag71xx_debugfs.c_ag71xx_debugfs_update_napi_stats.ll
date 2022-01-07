; ModuleID = '/home/carl/AnghaBench/lede/target/linux/ar71xx/files/drivers/net/ethernet/atheros/ag71xx/extr_ag71xx_debugfs.c_ag71xx_debugfs_update_napi_stats.c'
source_filename = "/home/carl/AnghaBench/lede/target/linux/ar71xx/files/drivers/net/ethernet/atheros/ag71xx/extr_ag71xx_debugfs.c_ag71xx_debugfs_update_napi_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ag71xx = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.ag71xx_napi_stats }
%struct.ag71xx_napi_stats = type { i32, i32, i32, i32, i32*, i32, i32*, i32 }

@AG71XX_NAPI_WEIGHT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ag71xx_debugfs_update_napi_stats(%struct.ag71xx* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.ag71xx*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.ag71xx_napi_stats*, align 8
  store %struct.ag71xx* %0, %struct.ag71xx** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.ag71xx*, %struct.ag71xx** %4, align 8
  %9 = getelementptr inbounds %struct.ag71xx, %struct.ag71xx* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  store %struct.ag71xx_napi_stats* %10, %struct.ag71xx_napi_stats** %7, align 8
  %11 = load i32, i32* %5, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %46

13:                                               ; preds = %3
  %14 = load %struct.ag71xx_napi_stats*, %struct.ag71xx_napi_stats** %7, align 8
  %15 = getelementptr inbounds %struct.ag71xx_napi_stats, %struct.ag71xx_napi_stats* %14, i32 0, i32 7
  %16 = load i32, i32* %15, align 8
  %17 = add nsw i32 %16, 1
  store i32 %17, i32* %15, align 8
  %18 = load i32, i32* %5, align 4
  %19 = load %struct.ag71xx_napi_stats*, %struct.ag71xx_napi_stats** %7, align 8
  %20 = getelementptr inbounds %struct.ag71xx_napi_stats, %struct.ag71xx_napi_stats* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = add nsw i32 %21, %18
  store i32 %22, i32* %20, align 8
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* @AG71XX_NAPI_WEIGHT, align 4
  %25 = icmp sle i32 %23, %24
  br i1 %25, label %26, label %35

26:                                               ; preds = %13
  %27 = load %struct.ag71xx_napi_stats*, %struct.ag71xx_napi_stats** %7, align 8
  %28 = getelementptr inbounds %struct.ag71xx_napi_stats, %struct.ag71xx_napi_stats* %27, i32 0, i32 6
  %29 = load i32*, i32** %28, align 8
  %30 = load i32, i32* %5, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %29, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %32, align 4
  br label %35

35:                                               ; preds = %26, %13
  %36 = load i32, i32* %5, align 4
  %37 = load %struct.ag71xx_napi_stats*, %struct.ag71xx_napi_stats** %7, align 8
  %38 = getelementptr inbounds %struct.ag71xx_napi_stats, %struct.ag71xx_napi_stats* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = icmp sgt i32 %36, %39
  br i1 %40, label %41, label %45

41:                                               ; preds = %35
  %42 = load i32, i32* %5, align 4
  %43 = load %struct.ag71xx_napi_stats*, %struct.ag71xx_napi_stats** %7, align 8
  %44 = getelementptr inbounds %struct.ag71xx_napi_stats, %struct.ag71xx_napi_stats* %43, i32 0, i32 1
  store i32 %42, i32* %44, align 4
  br label %45

45:                                               ; preds = %41, %35
  br label %46

46:                                               ; preds = %45, %3
  %47 = load i32, i32* %6, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %82

49:                                               ; preds = %46
  %50 = load %struct.ag71xx_napi_stats*, %struct.ag71xx_napi_stats** %7, align 8
  %51 = getelementptr inbounds %struct.ag71xx_napi_stats, %struct.ag71xx_napi_stats* %50, i32 0, i32 5
  %52 = load i32, i32* %51, align 8
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %51, align 8
  %54 = load i32, i32* %6, align 4
  %55 = load %struct.ag71xx_napi_stats*, %struct.ag71xx_napi_stats** %7, align 8
  %56 = getelementptr inbounds %struct.ag71xx_napi_stats, %struct.ag71xx_napi_stats* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = add nsw i32 %57, %54
  store i32 %58, i32* %56, align 8
  %59 = load i32, i32* %6, align 4
  %60 = load i32, i32* @AG71XX_NAPI_WEIGHT, align 4
  %61 = icmp sle i32 %59, %60
  br i1 %61, label %62, label %71

62:                                               ; preds = %49
  %63 = load %struct.ag71xx_napi_stats*, %struct.ag71xx_napi_stats** %7, align 8
  %64 = getelementptr inbounds %struct.ag71xx_napi_stats, %struct.ag71xx_napi_stats* %63, i32 0, i32 4
  %65 = load i32*, i32** %64, align 8
  %66 = load i32, i32* %6, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %65, i64 %67
  %69 = load i32, i32* %68, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %68, align 4
  br label %71

71:                                               ; preds = %62, %49
  %72 = load i32, i32* %6, align 4
  %73 = load %struct.ag71xx_napi_stats*, %struct.ag71xx_napi_stats** %7, align 8
  %74 = getelementptr inbounds %struct.ag71xx_napi_stats, %struct.ag71xx_napi_stats* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 4
  %76 = icmp sgt i32 %72, %75
  br i1 %76, label %77, label %81

77:                                               ; preds = %71
  %78 = load i32, i32* %6, align 4
  %79 = load %struct.ag71xx_napi_stats*, %struct.ag71xx_napi_stats** %7, align 8
  %80 = getelementptr inbounds %struct.ag71xx_napi_stats, %struct.ag71xx_napi_stats* %79, i32 0, i32 3
  store i32 %78, i32* %80, align 4
  br label %81

81:                                               ; preds = %77, %71
  br label %82

82:                                               ; preds = %81, %46
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
