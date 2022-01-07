; ModuleID = '/home/carl/AnghaBench/linux/block/extr_blk-throttle.c_tg_bps_limit.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_blk-throttle.c_tg_bps_limit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.throtl_grp = type { i64**, i64**, %struct.throtl_data* }
%struct.throtl_data = type { i64 }
%struct.blkcg_gq = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@io_cgrp_subsys = common dso_local global i32 0, align 4
@U64_MAX = common dso_local global i64 0, align 8
@LIMIT_LOW = common dso_local global i64 0, align 8
@MIN_THROTL_BPS = common dso_local global i64 0, align 8
@LIMIT_MAX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.throtl_grp*, i32)* @tg_bps_limit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @tg_bps_limit(%struct.throtl_grp* %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.throtl_grp*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.blkcg_gq*, align 8
  %7 = alloca %struct.throtl_data*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.throtl_grp* %0, %struct.throtl_grp** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.throtl_grp*, %struct.throtl_grp** %4, align 8
  %11 = call %struct.blkcg_gq* @tg_to_blkg(%struct.throtl_grp* %10)
  store %struct.blkcg_gq* %11, %struct.blkcg_gq** %6, align 8
  %12 = load i32, i32* @io_cgrp_subsys, align 4
  %13 = call i64 @cgroup_subsys_on_dfl(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %22

15:                                               ; preds = %2
  %16 = load %struct.blkcg_gq*, %struct.blkcg_gq** %6, align 8
  %17 = getelementptr inbounds %struct.blkcg_gq, %struct.blkcg_gq* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %15
  %21 = load i64, i64* @U64_MAX, align 8
  store i64 %21, i64* %3, align 8
  br label %139

22:                                               ; preds = %15, %2
  %23 = load %struct.throtl_grp*, %struct.throtl_grp** %4, align 8
  %24 = getelementptr inbounds %struct.throtl_grp, %struct.throtl_grp* %23, i32 0, i32 2
  %25 = load %struct.throtl_data*, %struct.throtl_data** %24, align 8
  store %struct.throtl_data* %25, %struct.throtl_data** %7, align 8
  %26 = load %struct.throtl_grp*, %struct.throtl_grp** %4, align 8
  %27 = getelementptr inbounds %struct.throtl_grp, %struct.throtl_grp* %26, i32 0, i32 0
  %28 = load i64**, i64*** %27, align 8
  %29 = load i32, i32* %5, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i64*, i64** %28, i64 %30
  %32 = load i64*, i64** %31, align 8
  %33 = load %struct.throtl_data*, %struct.throtl_data** %7, align 8
  %34 = getelementptr inbounds %struct.throtl_data, %struct.throtl_data* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = getelementptr inbounds i64, i64* %32, i64 %35
  %37 = load i64, i64* %36, align 8
  store i64 %37, i64* %8, align 8
  %38 = load i64, i64* %8, align 8
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %72

40:                                               ; preds = %22
  %41 = load %struct.throtl_data*, %struct.throtl_data** %7, align 8
  %42 = getelementptr inbounds %struct.throtl_data, %struct.throtl_data* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @LIMIT_LOW, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %72

46:                                               ; preds = %40
  %47 = load %struct.blkcg_gq*, %struct.blkcg_gq** %6, align 8
  %48 = getelementptr inbounds %struct.blkcg_gq, %struct.blkcg_gq* %47, i32 0, i32 0
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  %52 = call i32 @list_empty(i32* %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %68

54:                                               ; preds = %46
  %55 = load %struct.throtl_grp*, %struct.throtl_grp** %4, align 8
  %56 = getelementptr inbounds %struct.throtl_grp, %struct.throtl_grp* %55, i32 0, i32 1
  %57 = load i64**, i64*** %56, align 8
  %58 = load i32, i32* %5, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i64*, i64** %57, i64 %59
  %61 = load i64*, i64** %60, align 8
  %62 = load %struct.throtl_data*, %struct.throtl_data** %7, align 8
  %63 = getelementptr inbounds %struct.throtl_data, %struct.throtl_data* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = getelementptr inbounds i64, i64* %61, i64 %64
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %54, %46
  %69 = load i64, i64* @U64_MAX, align 8
  store i64 %69, i64* %3, align 8
  br label %139

70:                                               ; preds = %54
  %71 = load i64, i64* @MIN_THROTL_BPS, align 8
  store i64 %71, i64* %3, align 8
  br label %139

72:                                               ; preds = %40, %22
  %73 = load %struct.throtl_data*, %struct.throtl_data** %7, align 8
  %74 = getelementptr inbounds %struct.throtl_data, %struct.throtl_data* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @LIMIT_MAX, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %78, label %137

78:                                               ; preds = %72
  %79 = load %struct.throtl_grp*, %struct.throtl_grp** %4, align 8
  %80 = getelementptr inbounds %struct.throtl_grp, %struct.throtl_grp* %79, i32 0, i32 0
  %81 = load i64**, i64*** %80, align 8
  %82 = load i32, i32* %5, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i64*, i64** %81, i64 %83
  %85 = load i64*, i64** %84, align 8
  %86 = load i64, i64* @LIMIT_LOW, align 8
  %87 = getelementptr inbounds i64, i64* %85, i64 %86
  %88 = load i64, i64* %87, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %137

90:                                               ; preds = %78
  %91 = load %struct.throtl_grp*, %struct.throtl_grp** %4, align 8
  %92 = getelementptr inbounds %struct.throtl_grp, %struct.throtl_grp* %91, i32 0, i32 0
  %93 = load i64**, i64*** %92, align 8
  %94 = load i32, i32* %5, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i64*, i64** %93, i64 %95
  %97 = load i64*, i64** %96, align 8
  %98 = load i64, i64* @LIMIT_LOW, align 8
  %99 = getelementptr inbounds i64, i64* %97, i64 %98
  %100 = load i64, i64* %99, align 8
  %101 = load %struct.throtl_grp*, %struct.throtl_grp** %4, align 8
  %102 = getelementptr inbounds %struct.throtl_grp, %struct.throtl_grp* %101, i32 0, i32 0
  %103 = load i64**, i64*** %102, align 8
  %104 = load i32, i32* %5, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i64*, i64** %103, i64 %105
  %107 = load i64*, i64** %106, align 8
  %108 = load i64, i64* @LIMIT_MAX, align 8
  %109 = getelementptr inbounds i64, i64* %107, i64 %108
  %110 = load i64, i64* %109, align 8
  %111 = icmp ne i64 %100, %110
  br i1 %111, label %112, label %137

112:                                              ; preds = %90
  %113 = load %struct.throtl_grp*, %struct.throtl_grp** %4, align 8
  %114 = getelementptr inbounds %struct.throtl_grp, %struct.throtl_grp* %113, i32 0, i32 0
  %115 = load i64**, i64*** %114, align 8
  %116 = load i32, i32* %5, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i64*, i64** %115, i64 %117
  %119 = load i64*, i64** %118, align 8
  %120 = load i64, i64* @LIMIT_LOW, align 8
  %121 = getelementptr inbounds i64, i64* %119, i64 %120
  %122 = load i64, i64* %121, align 8
  %123 = load %struct.throtl_data*, %struct.throtl_data** %7, align 8
  %124 = call i64 @throtl_adjusted_limit(i64 %122, %struct.throtl_data* %123)
  store i64 %124, i64* %9, align 8
  %125 = load %struct.throtl_grp*, %struct.throtl_grp** %4, align 8
  %126 = getelementptr inbounds %struct.throtl_grp, %struct.throtl_grp* %125, i32 0, i32 0
  %127 = load i64**, i64*** %126, align 8
  %128 = load i32, i32* %5, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i64*, i64** %127, i64 %129
  %131 = load i64*, i64** %130, align 8
  %132 = load i64, i64* @LIMIT_MAX, align 8
  %133 = getelementptr inbounds i64, i64* %131, i64 %132
  %134 = load i64, i64* %133, align 8
  %135 = load i64, i64* %9, align 8
  %136 = call i64 @min(i64 %134, i64 %135)
  store i64 %136, i64* %8, align 8
  br label %137

137:                                              ; preds = %112, %90, %78, %72
  %138 = load i64, i64* %8, align 8
  store i64 %138, i64* %3, align 8
  br label %139

139:                                              ; preds = %137, %70, %68, %20
  %140 = load i64, i64* %3, align 8
  ret i64 %140
}

declare dso_local %struct.blkcg_gq* @tg_to_blkg(%struct.throtl_grp*) #1

declare dso_local i64 @cgroup_subsys_on_dfl(i32) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i64 @throtl_adjusted_limit(i64, %struct.throtl_data*) #1

declare dso_local i64 @min(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
