; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/extr_pktcdvd.c_kobj_pkt_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/extr_pktcdvd.c_kobj_pkt_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kobject = type { i32 }
%struct.attribute = type { i32 }
%struct.pktcdvd_device = type { i32, i32, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i64, i64, i64, i64 }
%struct.TYPE_4__ = type { %struct.pktcdvd_device* }

@.str = private unnamed_addr constant [6 x i8] c"reset\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"congestion_off\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"congestion_on\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.kobject*, %struct.attribute*, i8*, i64)* @kobj_pkt_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @kobj_pkt_store(%struct.kobject* %0, %struct.attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca %struct.kobject*, align 8
  %6 = alloca %struct.attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.pktcdvd_device*, align 8
  %10 = alloca i32, align 4
  store %struct.kobject* %0, %struct.kobject** %5, align 8
  store %struct.attribute* %1, %struct.attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %11 = load %struct.kobject*, %struct.kobject** %5, align 8
  %12 = call %struct.TYPE_4__* @to_pktcdvdkobj(%struct.kobject* %11)
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load %struct.pktcdvd_device*, %struct.pktcdvd_device** %13, align 8
  store %struct.pktcdvd_device* %14, %struct.pktcdvd_device** %9, align 8
  %15 = load %struct.attribute*, %struct.attribute** %6, align 8
  %16 = getelementptr inbounds %struct.attribute, %struct.attribute* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i64 @strcmp(i32 %17, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %39

20:                                               ; preds = %4
  %21 = load i64, i64* %8, align 8
  %22 = icmp ugt i64 %21, 0
  br i1 %22, label %23, label %39

23:                                               ; preds = %20
  %24 = load %struct.pktcdvd_device*, %struct.pktcdvd_device** %9, align 8
  %25 = getelementptr inbounds %struct.pktcdvd_device, %struct.pktcdvd_device* %24, i32 0, i32 3
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 4
  store i64 0, i64* %26, align 8
  %27 = load %struct.pktcdvd_device*, %struct.pktcdvd_device** %9, align 8
  %28 = getelementptr inbounds %struct.pktcdvd_device, %struct.pktcdvd_device* %27, i32 0, i32 3
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 3
  store i64 0, i64* %29, align 8
  %30 = load %struct.pktcdvd_device*, %struct.pktcdvd_device** %9, align 8
  %31 = getelementptr inbounds %struct.pktcdvd_device, %struct.pktcdvd_device* %30, i32 0, i32 3
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 2
  store i64 0, i64* %32, align 8
  %33 = load %struct.pktcdvd_device*, %struct.pktcdvd_device** %9, align 8
  %34 = getelementptr inbounds %struct.pktcdvd_device, %struct.pktcdvd_device* %33, i32 0, i32 3
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 1
  store i64 0, i64* %35, align 8
  %36 = load %struct.pktcdvd_device*, %struct.pktcdvd_device** %9, align 8
  %37 = getelementptr inbounds %struct.pktcdvd_device, %struct.pktcdvd_device* %36, i32 0, i32 3
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  store i64 0, i64* %38, align 8
  br label %91

39:                                               ; preds = %20, %4
  %40 = load %struct.attribute*, %struct.attribute** %6, align 8
  %41 = getelementptr inbounds %struct.attribute, %struct.attribute* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i64 @strcmp(i32 %42, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %45, label %64

45:                                               ; preds = %39
  %46 = load i8*, i8** %7, align 8
  %47 = call i32 @sscanf(i8* %46, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32* %10)
  %48 = icmp eq i32 %47, 1
  br i1 %48, label %49, label %64

49:                                               ; preds = %45
  %50 = load %struct.pktcdvd_device*, %struct.pktcdvd_device** %9, align 8
  %51 = getelementptr inbounds %struct.pktcdvd_device, %struct.pktcdvd_device* %50, i32 0, i32 2
  %52 = call i32 @spin_lock(i32* %51)
  %53 = load i32, i32* %10, align 4
  %54 = load %struct.pktcdvd_device*, %struct.pktcdvd_device** %9, align 8
  %55 = getelementptr inbounds %struct.pktcdvd_device, %struct.pktcdvd_device* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 8
  %56 = load %struct.pktcdvd_device*, %struct.pktcdvd_device** %9, align 8
  %57 = getelementptr inbounds %struct.pktcdvd_device, %struct.pktcdvd_device* %56, i32 0, i32 0
  %58 = load %struct.pktcdvd_device*, %struct.pktcdvd_device** %9, align 8
  %59 = getelementptr inbounds %struct.pktcdvd_device, %struct.pktcdvd_device* %58, i32 0, i32 1
  %60 = call i32 @init_write_congestion_marks(i32* %57, i32* %59)
  %61 = load %struct.pktcdvd_device*, %struct.pktcdvd_device** %9, align 8
  %62 = getelementptr inbounds %struct.pktcdvd_device, %struct.pktcdvd_device* %61, i32 0, i32 2
  %63 = call i32 @spin_unlock(i32* %62)
  br label %90

64:                                               ; preds = %45, %39
  %65 = load %struct.attribute*, %struct.attribute** %6, align 8
  %66 = getelementptr inbounds %struct.attribute, %struct.attribute* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i64 @strcmp(i32 %67, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  %69 = icmp eq i64 %68, 0
  br i1 %69, label %70, label %89

70:                                               ; preds = %64
  %71 = load i8*, i8** %7, align 8
  %72 = call i32 @sscanf(i8* %71, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32* %10)
  %73 = icmp eq i32 %72, 1
  br i1 %73, label %74, label %89

74:                                               ; preds = %70
  %75 = load %struct.pktcdvd_device*, %struct.pktcdvd_device** %9, align 8
  %76 = getelementptr inbounds %struct.pktcdvd_device, %struct.pktcdvd_device* %75, i32 0, i32 2
  %77 = call i32 @spin_lock(i32* %76)
  %78 = load i32, i32* %10, align 4
  %79 = load %struct.pktcdvd_device*, %struct.pktcdvd_device** %9, align 8
  %80 = getelementptr inbounds %struct.pktcdvd_device, %struct.pktcdvd_device* %79, i32 0, i32 1
  store i32 %78, i32* %80, align 4
  %81 = load %struct.pktcdvd_device*, %struct.pktcdvd_device** %9, align 8
  %82 = getelementptr inbounds %struct.pktcdvd_device, %struct.pktcdvd_device* %81, i32 0, i32 0
  %83 = load %struct.pktcdvd_device*, %struct.pktcdvd_device** %9, align 8
  %84 = getelementptr inbounds %struct.pktcdvd_device, %struct.pktcdvd_device* %83, i32 0, i32 1
  %85 = call i32 @init_write_congestion_marks(i32* %82, i32* %84)
  %86 = load %struct.pktcdvd_device*, %struct.pktcdvd_device** %9, align 8
  %87 = getelementptr inbounds %struct.pktcdvd_device, %struct.pktcdvd_device* %86, i32 0, i32 2
  %88 = call i32 @spin_unlock(i32* %87)
  br label %89

89:                                               ; preds = %74, %70, %64
  br label %90

90:                                               ; preds = %89, %49
  br label %91

91:                                               ; preds = %90, %23
  %92 = load i64, i64* %8, align 8
  ret i64 %92
}

declare dso_local %struct.TYPE_4__* @to_pktcdvdkobj(%struct.kobject*) #1

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i32 @sscanf(i8*, i8*, i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @init_write_congestion_marks(i32*, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
