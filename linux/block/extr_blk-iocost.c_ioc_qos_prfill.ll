; ModuleID = '/home/carl/AnghaBench/linux/block/extr_blk-iocost.c_ioc_qos_prfill.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_blk-iocost.c_ioc_qos_prfill.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }
%struct.blkg_policy_data = type { i32 }
%struct.ioc = type { %struct.TYPE_3__, i64, i32 }
%struct.TYPE_3__ = type { i32* }
%struct.TYPE_4__ = type { %struct.ioc* }

@.str = private unnamed_addr constant [88 x i8] c"%s enable=%d ctrl=%s rpct=%u.%02u rlat=%u wpct=%u.%02u wlat=%u min=%u.%02u max=%u.%02u\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"user\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"auto\00", align 1
@QOS_RPPM = common dso_local global i64 0, align 8
@QOS_RLAT = common dso_local global i64 0, align 8
@QOS_WPPM = common dso_local global i64 0, align 8
@QOS_WLAT = common dso_local global i64 0, align 8
@QOS_MIN = common dso_local global i64 0, align 8
@QOS_MAX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, %struct.blkg_policy_data*, i32)* @ioc_qos_prfill to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ioc_qos_prfill(%struct.seq_file* %0, %struct.blkg_policy_data* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.seq_file*, align 8
  %6 = alloca %struct.blkg_policy_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.ioc*, align 8
  store %struct.seq_file* %0, %struct.seq_file** %5, align 8
  store %struct.blkg_policy_data* %1, %struct.blkg_policy_data** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.blkg_policy_data*, %struct.blkg_policy_data** %6, align 8
  %11 = getelementptr inbounds %struct.blkg_policy_data, %struct.blkg_policy_data* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i8* @blkg_dev_name(i32 %12)
  store i8* %13, i8** %8, align 8
  %14 = load %struct.blkg_policy_data*, %struct.blkg_policy_data** %6, align 8
  %15 = call %struct.TYPE_4__* @pd_to_iocg(%struct.blkg_policy_data* %14)
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load %struct.ioc*, %struct.ioc** %16, align 8
  store %struct.ioc* %17, %struct.ioc** %9, align 8
  %18 = load i8*, i8** %8, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %116

21:                                               ; preds = %3
  %22 = load %struct.seq_file*, %struct.seq_file** %5, align 8
  %23 = load i8*, i8** %8, align 8
  %24 = load %struct.ioc*, %struct.ioc** %9, align 8
  %25 = getelementptr inbounds %struct.ioc, %struct.ioc* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.ioc*, %struct.ioc** %9, align 8
  %28 = getelementptr inbounds %struct.ioc, %struct.ioc* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  %31 = zext i1 %30 to i64
  %32 = select i1 %30, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)
  %33 = load %struct.ioc*, %struct.ioc** %9, align 8
  %34 = getelementptr inbounds %struct.ioc, %struct.ioc* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = load i64, i64* @QOS_RPPM, align 8
  %38 = getelementptr inbounds i32, i32* %36, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = sdiv i32 %39, 10000
  %41 = load %struct.ioc*, %struct.ioc** %9, align 8
  %42 = getelementptr inbounds %struct.ioc, %struct.ioc* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = load i64, i64* @QOS_RPPM, align 8
  %46 = getelementptr inbounds i32, i32* %44, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = srem i32 %47, 10000
  %49 = sdiv i32 %48, 100
  %50 = load %struct.ioc*, %struct.ioc** %9, align 8
  %51 = getelementptr inbounds %struct.ioc, %struct.ioc* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = load i64, i64* @QOS_RLAT, align 8
  %55 = getelementptr inbounds i32, i32* %53, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.ioc*, %struct.ioc** %9, align 8
  %58 = getelementptr inbounds %struct.ioc, %struct.ioc* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  %60 = load i32*, i32** %59, align 8
  %61 = load i64, i64* @QOS_WPPM, align 8
  %62 = getelementptr inbounds i32, i32* %60, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = sdiv i32 %63, 10000
  %65 = load %struct.ioc*, %struct.ioc** %9, align 8
  %66 = getelementptr inbounds %struct.ioc, %struct.ioc* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 0
  %68 = load i32*, i32** %67, align 8
  %69 = load i64, i64* @QOS_WPPM, align 8
  %70 = getelementptr inbounds i32, i32* %68, i64 %69
  %71 = load i32, i32* %70, align 4
  %72 = srem i32 %71, 10000
  %73 = sdiv i32 %72, 100
  %74 = load %struct.ioc*, %struct.ioc** %9, align 8
  %75 = getelementptr inbounds %struct.ioc, %struct.ioc* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 0
  %77 = load i32*, i32** %76, align 8
  %78 = load i64, i64* @QOS_WLAT, align 8
  %79 = getelementptr inbounds i32, i32* %77, i64 %78
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.ioc*, %struct.ioc** %9, align 8
  %82 = getelementptr inbounds %struct.ioc, %struct.ioc* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 0
  %84 = load i32*, i32** %83, align 8
  %85 = load i64, i64* @QOS_MIN, align 8
  %86 = getelementptr inbounds i32, i32* %84, i64 %85
  %87 = load i32, i32* %86, align 4
  %88 = sdiv i32 %87, 10000
  %89 = load %struct.ioc*, %struct.ioc** %9, align 8
  %90 = getelementptr inbounds %struct.ioc, %struct.ioc* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 0
  %92 = load i32*, i32** %91, align 8
  %93 = load i64, i64* @QOS_MIN, align 8
  %94 = getelementptr inbounds i32, i32* %92, i64 %93
  %95 = load i32, i32* %94, align 4
  %96 = srem i32 %95, 10000
  %97 = sdiv i32 %96, 100
  %98 = load %struct.ioc*, %struct.ioc** %9, align 8
  %99 = getelementptr inbounds %struct.ioc, %struct.ioc* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %99, i32 0, i32 0
  %101 = load i32*, i32** %100, align 8
  %102 = load i64, i64* @QOS_MAX, align 8
  %103 = getelementptr inbounds i32, i32* %101, i64 %102
  %104 = load i32, i32* %103, align 4
  %105 = sdiv i32 %104, 10000
  %106 = load %struct.ioc*, %struct.ioc** %9, align 8
  %107 = getelementptr inbounds %struct.ioc, %struct.ioc* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %107, i32 0, i32 0
  %109 = load i32*, i32** %108, align 8
  %110 = load i64, i64* @QOS_MAX, align 8
  %111 = getelementptr inbounds i32, i32* %109, i64 %110
  %112 = load i32, i32* %111, align 4
  %113 = srem i32 %112, 10000
  %114 = sdiv i32 %113, 100
  %115 = call i32 @seq_printf(%struct.seq_file* %22, i8* getelementptr inbounds ([88 x i8], [88 x i8]* @.str, i64 0, i64 0), i8* %23, i32 %26, i8* %32, i32 %40, i32 %49, i32 %56, i32 %64, i32 %73, i32 %80, i32 %88, i32 %97, i32 %105, i32 %114)
  store i32 0, i32* %4, align 4
  br label %116

116:                                              ; preds = %21, %20
  %117 = load i32, i32* %4, align 4
  ret i32 %117
}

declare dso_local i8* @blkg_dev_name(i32) #1

declare dso_local %struct.TYPE_4__* @pd_to_iocg(%struct.blkg_policy_data*) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i8*, i32, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
