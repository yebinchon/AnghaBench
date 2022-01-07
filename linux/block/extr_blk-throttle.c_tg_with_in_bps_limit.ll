; ModuleID = '/home/carl/AnghaBench/linux/block/extr_blk-throttle.c_tg_with_in_bps_limit.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_blk-throttle.c_tg_with_in_bps_limit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.throtl_grp = type { i64*, i32*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.bio = type { i32 }

@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.throtl_grp*, %struct.bio*, i64*)* @tg_with_in_bps_limit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tg_with_in_bps_limit(%struct.throtl_grp* %0, %struct.bio* %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.throtl_grp*, align 8
  %6 = alloca %struct.bio*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store %struct.throtl_grp* %0, %struct.throtl_grp** %5, align 8
  store %struct.bio* %1, %struct.bio** %6, align 8
  store i64* %2, i64** %7, align 8
  %16 = load %struct.bio*, %struct.bio** %6, align 8
  %17 = call i32 @bio_data_dir(%struct.bio* %16)
  store i32 %17, i32* %8, align 4
  %18 = load %struct.bio*, %struct.bio** %6, align 8
  %19 = call i32 @throtl_bio_data_size(%struct.bio* %18)
  store i32 %19, i32* %15, align 4
  %20 = load i64, i64* @jiffies, align 8
  %21 = load %struct.throtl_grp*, %struct.throtl_grp** %5, align 8
  %22 = getelementptr inbounds %struct.throtl_grp, %struct.throtl_grp* %21, i32 0, i32 0
  %23 = load i64*, i64** %22, align 8
  %24 = load i32, i32* %8, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i64, i64* %23, i64 %25
  %27 = load i64, i64* %26, align 8
  %28 = sub i64 %20, %27
  store i64 %28, i64* %14, align 8
  store i64 %28, i64* %12, align 8
  %29 = load i64, i64* %12, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %37, label %31

31:                                               ; preds = %3
  %32 = load %struct.throtl_grp*, %struct.throtl_grp** %5, align 8
  %33 = getelementptr inbounds %struct.throtl_grp, %struct.throtl_grp* %32, i32 0, i32 2
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  store i64 %36, i64* %14, align 8
  br label %37

37:                                               ; preds = %31, %3
  %38 = load i64, i64* %14, align 8
  %39 = load %struct.throtl_grp*, %struct.throtl_grp** %5, align 8
  %40 = getelementptr inbounds %struct.throtl_grp, %struct.throtl_grp* %39, i32 0, i32 2
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = call i64 @roundup(i64 %38, i64 %43)
  store i64 %44, i64* %14, align 8
  %45 = load %struct.throtl_grp*, %struct.throtl_grp** %5, align 8
  %46 = load i32, i32* %8, align 4
  %47 = call i64 @tg_bps_limit(%struct.throtl_grp* %45, i32 %46)
  %48 = load i64, i64* %14, align 8
  %49 = mul i64 %47, %48
  %50 = trunc i64 %49 to i32
  store i32 %50, i32* %11, align 4
  %51 = load i32, i32* %11, align 4
  %52 = load i32, i32* @HZ, align 4
  %53 = call i32 @do_div(i32 %51, i32 %52)
  %54 = load i32, i32* %11, align 4
  store i32 %54, i32* %9, align 4
  %55 = load %struct.throtl_grp*, %struct.throtl_grp** %5, align 8
  %56 = getelementptr inbounds %struct.throtl_grp, %struct.throtl_grp* %55, i32 0, i32 1
  %57 = load i32*, i32** %56, align 8
  %58 = load i32, i32* %8, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* %15, align 4
  %63 = add i32 %61, %62
  %64 = load i32, i32* %9, align 4
  %65 = icmp ule i32 %63, %64
  br i1 %65, label %66, label %72

66:                                               ; preds = %37
  %67 = load i64*, i64** %7, align 8
  %68 = icmp ne i64* %67, null
  br i1 %68, label %69, label %71

69:                                               ; preds = %66
  %70 = load i64*, i64** %7, align 8
  store i64 0, i64* %70, align 8
  br label %71

71:                                               ; preds = %69, %66
  store i32 1, i32* %4, align 4
  br label %106

72:                                               ; preds = %37
  %73 = load %struct.throtl_grp*, %struct.throtl_grp** %5, align 8
  %74 = getelementptr inbounds %struct.throtl_grp, %struct.throtl_grp* %73, i32 0, i32 1
  %75 = load i32*, i32** %74, align 8
  %76 = load i32, i32* %8, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %75, i64 %77
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* %15, align 4
  %81 = add i32 %79, %80
  %82 = load i32, i32* %9, align 4
  %83 = sub i32 %81, %82
  store i32 %83, i32* %10, align 4
  %84 = load i32, i32* %10, align 4
  %85 = load i32, i32* @HZ, align 4
  %86 = mul i32 %84, %85
  %87 = load %struct.throtl_grp*, %struct.throtl_grp** %5, align 8
  %88 = load i32, i32* %8, align 4
  %89 = call i64 @tg_bps_limit(%struct.throtl_grp* %87, i32 %88)
  %90 = call i64 @div64_u64(i32 %86, i64 %89)
  store i64 %90, i64* %13, align 8
  %91 = load i64, i64* %13, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %94, label %93

93:                                               ; preds = %72
  store i64 1, i64* %13, align 8
  br label %94

94:                                               ; preds = %93, %72
  %95 = load i64, i64* %13, align 8
  %96 = load i64, i64* %14, align 8
  %97 = load i64, i64* %12, align 8
  %98 = sub i64 %96, %97
  %99 = add i64 %95, %98
  store i64 %99, i64* %13, align 8
  %100 = load i64*, i64** %7, align 8
  %101 = icmp ne i64* %100, null
  br i1 %101, label %102, label %105

102:                                              ; preds = %94
  %103 = load i64, i64* %13, align 8
  %104 = load i64*, i64** %7, align 8
  store i64 %103, i64* %104, align 8
  br label %105

105:                                              ; preds = %102, %94
  store i32 0, i32* %4, align 4
  br label %106

106:                                              ; preds = %105, %71
  %107 = load i32, i32* %4, align 4
  ret i32 %107
}

declare dso_local i32 @bio_data_dir(%struct.bio*) #1

declare dso_local i32 @throtl_bio_data_size(%struct.bio*) #1

declare dso_local i64 @roundup(i64, i64) #1

declare dso_local i64 @tg_bps_limit(%struct.throtl_grp*, i32) #1

declare dso_local i32 @do_div(i32, i32) #1

declare dso_local i64 @div64_u64(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
