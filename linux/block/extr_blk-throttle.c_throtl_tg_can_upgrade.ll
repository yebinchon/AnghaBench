; ModuleID = '/home/carl/AnghaBench/linux/block/extr_blk-throttle.c_throtl_tg_can_upgrade.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_blk-throttle.c_throtl_tg_can_upgrade.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.throtl_grp = type { %struct.TYPE_2__*, i64**, i64**, %struct.throtl_service_queue }
%struct.TYPE_2__ = type { i64 }
%struct.throtl_service_queue = type { i64* }

@READ = common dso_local global i64 0, align 8
@LIMIT_LOW = common dso_local global i64 0, align 8
@WRITE = common dso_local global i64 0, align 8
@jiffies = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.throtl_grp*)* @throtl_tg_can_upgrade to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @throtl_tg_can_upgrade(%struct.throtl_grp* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.throtl_grp*, align 8
  %4 = alloca %struct.throtl_service_queue*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.throtl_grp* %0, %struct.throtl_grp** %3, align 8
  %7 = load %struct.throtl_grp*, %struct.throtl_grp** %3, align 8
  %8 = getelementptr inbounds %struct.throtl_grp, %struct.throtl_grp* %7, i32 0, i32 3
  store %struct.throtl_service_queue* %8, %struct.throtl_service_queue** %4, align 8
  %9 = load %struct.throtl_grp*, %struct.throtl_grp** %3, align 8
  %10 = getelementptr inbounds %struct.throtl_grp, %struct.throtl_grp* %9, i32 0, i32 2
  %11 = load i64**, i64*** %10, align 8
  %12 = load i64, i64* @READ, align 8
  %13 = getelementptr inbounds i64*, i64** %11, i64 %12
  %14 = load i64*, i64** %13, align 8
  %15 = load i64, i64* @LIMIT_LOW, align 8
  %16 = getelementptr inbounds i64, i64* %14, i64 %15
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %30, label %19

19:                                               ; preds = %1
  %20 = load %struct.throtl_grp*, %struct.throtl_grp** %3, align 8
  %21 = getelementptr inbounds %struct.throtl_grp, %struct.throtl_grp* %20, i32 0, i32 1
  %22 = load i64**, i64*** %21, align 8
  %23 = load i64, i64* @READ, align 8
  %24 = getelementptr inbounds i64*, i64** %22, i64 %23
  %25 = load i64*, i64** %24, align 8
  %26 = load i64, i64* @LIMIT_LOW, align 8
  %27 = getelementptr inbounds i64, i64* %25, i64 %26
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br label %30

30:                                               ; preds = %19, %1
  %31 = phi i1 [ true, %1 ], [ %29, %19 ]
  %32 = zext i1 %31 to i32
  store i32 %32, i32* %5, align 4
  %33 = load %struct.throtl_grp*, %struct.throtl_grp** %3, align 8
  %34 = getelementptr inbounds %struct.throtl_grp, %struct.throtl_grp* %33, i32 0, i32 2
  %35 = load i64**, i64*** %34, align 8
  %36 = load i64, i64* @WRITE, align 8
  %37 = getelementptr inbounds i64*, i64** %35, i64 %36
  %38 = load i64*, i64** %37, align 8
  %39 = load i64, i64* @LIMIT_LOW, align 8
  %40 = getelementptr inbounds i64, i64* %38, i64 %39
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %54, label %43

43:                                               ; preds = %30
  %44 = load %struct.throtl_grp*, %struct.throtl_grp** %3, align 8
  %45 = getelementptr inbounds %struct.throtl_grp, %struct.throtl_grp* %44, i32 0, i32 1
  %46 = load i64**, i64*** %45, align 8
  %47 = load i64, i64* @WRITE, align 8
  %48 = getelementptr inbounds i64*, i64** %46, i64 %47
  %49 = load i64*, i64** %48, align 8
  %50 = load i64, i64* @LIMIT_LOW, align 8
  %51 = getelementptr inbounds i64, i64* %49, i64 %50
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br label %54

54:                                               ; preds = %43, %30
  %55 = phi i1 [ true, %30 ], [ %53, %43 ]
  %56 = zext i1 %55 to i32
  store i32 %56, i32* %6, align 4
  %57 = load i32, i32* %5, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %63, label %59

59:                                               ; preds = %54
  %60 = load i32, i32* %6, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %63, label %62

62:                                               ; preds = %59
  store i32 1, i32* %2, align 4
  br label %127

63:                                               ; preds = %59, %54
  %64 = load i32, i32* %5, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %86

66:                                               ; preds = %63
  %67 = load %struct.throtl_service_queue*, %struct.throtl_service_queue** %4, align 8
  %68 = getelementptr inbounds %struct.throtl_service_queue, %struct.throtl_service_queue* %67, i32 0, i32 0
  %69 = load i64*, i64** %68, align 8
  %70 = load i64, i64* @READ, align 8
  %71 = getelementptr inbounds i64, i64* %69, i64 %70
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %86

74:                                               ; preds = %66
  %75 = load i32, i32* %6, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %85

77:                                               ; preds = %74
  %78 = load %struct.throtl_service_queue*, %struct.throtl_service_queue** %4, align 8
  %79 = getelementptr inbounds %struct.throtl_service_queue, %struct.throtl_service_queue* %78, i32 0, i32 0
  %80 = load i64*, i64** %79, align 8
  %81 = load i64, i64* @WRITE, align 8
  %82 = getelementptr inbounds i64, i64* %80, i64 %81
  %83 = load i64, i64* %82, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %77, %74
  store i32 1, i32* %2, align 4
  br label %127

86:                                               ; preds = %77, %66, %63
  %87 = load i32, i32* %6, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %109

89:                                               ; preds = %86
  %90 = load %struct.throtl_service_queue*, %struct.throtl_service_queue** %4, align 8
  %91 = getelementptr inbounds %struct.throtl_service_queue, %struct.throtl_service_queue* %90, i32 0, i32 0
  %92 = load i64*, i64** %91, align 8
  %93 = load i64, i64* @WRITE, align 8
  %94 = getelementptr inbounds i64, i64* %92, i64 %93
  %95 = load i64, i64* %94, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %109

97:                                               ; preds = %89
  %98 = load i32, i32* %5, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %108

100:                                              ; preds = %97
  %101 = load %struct.throtl_service_queue*, %struct.throtl_service_queue** %4, align 8
  %102 = getelementptr inbounds %struct.throtl_service_queue, %struct.throtl_service_queue* %101, i32 0, i32 0
  %103 = load i64*, i64** %102, align 8
  %104 = load i64, i64* @READ, align 8
  %105 = getelementptr inbounds i64, i64* %103, i64 %104
  %106 = load i64, i64* %105, align 8
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %109

108:                                              ; preds = %100, %97
  store i32 1, i32* %2, align 4
  br label %127

109:                                              ; preds = %100, %89, %86
  %110 = load i32, i32* @jiffies, align 4
  %111 = load %struct.throtl_grp*, %struct.throtl_grp** %3, align 8
  %112 = call i64 @tg_last_low_overflow_time(%struct.throtl_grp* %111)
  %113 = load %struct.throtl_grp*, %struct.throtl_grp** %3, align 8
  %114 = getelementptr inbounds %struct.throtl_grp, %struct.throtl_grp* %113, i32 0, i32 0
  %115 = load %struct.TYPE_2__*, %struct.TYPE_2__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = add nsw i64 %112, %117
  %119 = call i64 @time_after_eq(i32 %110, i64 %118)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %126

121:                                              ; preds = %109
  %122 = load %struct.throtl_grp*, %struct.throtl_grp** %3, align 8
  %123 = call i64 @throtl_tg_is_idle(%struct.throtl_grp* %122)
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %126

125:                                              ; preds = %121
  store i32 1, i32* %2, align 4
  br label %127

126:                                              ; preds = %121, %109
  store i32 0, i32* %2, align 4
  br label %127

127:                                              ; preds = %126, %125, %108, %85, %62
  %128 = load i32, i32* %2, align 4
  ret i32 %128
}

declare dso_local i64 @time_after_eq(i32, i64) #1

declare dso_local i64 @tg_last_low_overflow_time(%struct.throtl_grp*) #1

declare dso_local i64 @throtl_tg_is_idle(%struct.throtl_grp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
