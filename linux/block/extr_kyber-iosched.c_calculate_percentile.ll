; ModuleID = '/home/carl/AnghaBench/linux/block/extr_kyber-iosched.c_calculate_percentile.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_kyber-iosched.c_calculate_percentile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kyber_queue_data = type { i32***, i32, i64* }

@KYBER_LATENCY_BUCKETS = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i64 0, align 8
@kyber_domain_names = common dso_local global i32* null, align 8
@kyber_latency_type_names = common dso_local global i32* null, align 8
@KYBER_LATENCY_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kyber_queue_data*, i32, i32, i32)* @calculate_percentile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @calculate_percentile(%struct.kyber_queue_data* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.kyber_queue_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.kyber_queue_data* %0, %struct.kyber_queue_data** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %14 = load %struct.kyber_queue_data*, %struct.kyber_queue_data** %6, align 8
  %15 = getelementptr inbounds %struct.kyber_queue_data, %struct.kyber_queue_data* %14, i32 0, i32 0
  %16 = load i32***, i32**** %15, align 8
  %17 = load i32, i32* %7, align 4
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds i32**, i32*** %16, i64 %18
  %20 = load i32**, i32*** %19, align 8
  %21 = load i32, i32* %8, align 4
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds i32*, i32** %20, i64 %22
  %24 = load i32*, i32** %23, align 8
  store i32* %24, i32** %10, align 8
  store i32 0, i32* %12, align 4
  store i32 0, i32* %11, align 4
  br label %25

25:                                               ; preds = %37, %4
  %26 = load i32, i32* %11, align 4
  %27 = load i32, i32* @KYBER_LATENCY_BUCKETS, align 4
  %28 = icmp ult i32 %26, %27
  br i1 %28, label %29, label %40

29:                                               ; preds = %25
  %30 = load i32*, i32** %10, align 8
  %31 = load i32, i32* %11, align 4
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* %12, align 4
  %36 = add i32 %35, %34
  store i32 %36, i32* %12, align 4
  br label %37

37:                                               ; preds = %29
  %38 = load i32, i32* %11, align 4
  %39 = add i32 %38, 1
  store i32 %39, i32* %11, align 4
  br label %25

40:                                               ; preds = %25
  %41 = load i32, i32* %12, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %40
  store i32 -1, i32* %5, align 4
  br label %138

44:                                               ; preds = %40
  %45 = load %struct.kyber_queue_data*, %struct.kyber_queue_data** %6, align 8
  %46 = getelementptr inbounds %struct.kyber_queue_data, %struct.kyber_queue_data* %45, i32 0, i32 2
  %47 = load i64*, i64** %46, align 8
  %48 = load i32, i32* %7, align 4
  %49 = zext i32 %48 to i64
  %50 = getelementptr inbounds i64, i64* %47, i64 %49
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %64, label %53

53:                                               ; preds = %44
  %54 = load i64, i64* @jiffies, align 8
  %55 = load i64, i64* @HZ, align 8
  %56 = add nsw i64 %54, %55
  %57 = call i64 @max(i64 %56, i64 1)
  %58 = load %struct.kyber_queue_data*, %struct.kyber_queue_data** %6, align 8
  %59 = getelementptr inbounds %struct.kyber_queue_data, %struct.kyber_queue_data* %58, i32 0, i32 2
  %60 = load i64*, i64** %59, align 8
  %61 = load i32, i32* %7, align 4
  %62 = zext i32 %61 to i64
  %63 = getelementptr inbounds i64, i64* %60, i64 %62
  store i64 %57, i64* %63, align 8
  br label %64

64:                                               ; preds = %53, %44
  %65 = load i32, i32* %12, align 4
  %66 = icmp ult i32 %65, 500
  br i1 %66, label %67, label %78

67:                                               ; preds = %64
  %68 = load %struct.kyber_queue_data*, %struct.kyber_queue_data** %6, align 8
  %69 = getelementptr inbounds %struct.kyber_queue_data, %struct.kyber_queue_data* %68, i32 0, i32 2
  %70 = load i64*, i64** %69, align 8
  %71 = load i32, i32* %7, align 4
  %72 = zext i32 %71 to i64
  %73 = getelementptr inbounds i64, i64* %70, i64 %72
  %74 = load i64, i64* %73, align 8
  %75 = call i64 @time_is_after_jiffies(i64 %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %67
  store i32 -1, i32* %5, align 4
  br label %138

78:                                               ; preds = %67, %64
  %79 = load %struct.kyber_queue_data*, %struct.kyber_queue_data** %6, align 8
  %80 = getelementptr inbounds %struct.kyber_queue_data, %struct.kyber_queue_data* %79, i32 0, i32 2
  %81 = load i64*, i64** %80, align 8
  %82 = load i32, i32* %7, align 4
  %83 = zext i32 %82 to i64
  %84 = getelementptr inbounds i64, i64* %81, i64 %83
  store i64 0, i64* %84, align 8
  %85 = load i32, i32* %12, align 4
  %86 = load i32, i32* %9, align 4
  %87 = mul i32 %85, %86
  %88 = call i32 @DIV_ROUND_UP(i32 %87, i32 100)
  store i32 %88, i32* %13, align 4
  store i32 0, i32* %11, align 4
  br label %89

89:                                               ; preds = %111, %78
  %90 = load i32, i32* %11, align 4
  %91 = load i32, i32* @KYBER_LATENCY_BUCKETS, align 4
  %92 = sub i32 %91, 1
  %93 = icmp ult i32 %90, %92
  br i1 %93, label %94, label %114

94:                                               ; preds = %89
  %95 = load i32*, i32** %10, align 8
  %96 = load i32, i32* %11, align 4
  %97 = zext i32 %96 to i64
  %98 = getelementptr inbounds i32, i32* %95, i64 %97
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* %13, align 4
  %101 = icmp uge i32 %99, %100
  br i1 %101, label %102, label %103

102:                                              ; preds = %94
  br label %114

103:                                              ; preds = %94
  %104 = load i32*, i32** %10, align 8
  %105 = load i32, i32* %11, align 4
  %106 = zext i32 %105 to i64
  %107 = getelementptr inbounds i32, i32* %104, i64 %106
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* %13, align 4
  %110 = sub i32 %109, %108
  store i32 %110, i32* %13, align 4
  br label %111

111:                                              ; preds = %103
  %112 = load i32, i32* %11, align 4
  %113 = add i32 %112, 1
  store i32 %113, i32* %11, align 4
  br label %89

114:                                              ; preds = %102, %89
  %115 = load i32*, i32** %10, align 8
  %116 = call i32 @memset(i32* %115, i32 0, i32 8)
  %117 = load %struct.kyber_queue_data*, %struct.kyber_queue_data** %6, align 8
  %118 = getelementptr inbounds %struct.kyber_queue_data, %struct.kyber_queue_data* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 8
  %120 = load i32*, i32** @kyber_domain_names, align 8
  %121 = load i32, i32* %7, align 4
  %122 = zext i32 %121 to i64
  %123 = getelementptr inbounds i32, i32* %120, i64 %122
  %124 = load i32, i32* %123, align 4
  %125 = load i32*, i32** @kyber_latency_type_names, align 8
  %126 = load i32, i32* %8, align 4
  %127 = zext i32 %126 to i64
  %128 = getelementptr inbounds i32, i32* %125, i64 %127
  %129 = load i32, i32* %128, align 4
  %130 = load i32, i32* %9, align 4
  %131 = load i32, i32* %11, align 4
  %132 = add i32 %131, 1
  %133 = load i32, i32* @KYBER_LATENCY_SHIFT, align 4
  %134 = shl i32 1, %133
  %135 = load i32, i32* %12, align 4
  %136 = call i32 @trace_kyber_latency(i32 %119, i32 %124, i32 %129, i32 %130, i32 %132, i32 %134, i32 %135)
  %137 = load i32, i32* %11, align 4
  store i32 %137, i32* %5, align 4
  br label %138

138:                                              ; preds = %114, %77, %43
  %139 = load i32, i32* %5, align 4
  ret i32 %139
}

declare dso_local i64 @max(i64, i64) #1

declare dso_local i64 @time_is_after_jiffies(i64) #1

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @trace_kyber_latency(i32, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
