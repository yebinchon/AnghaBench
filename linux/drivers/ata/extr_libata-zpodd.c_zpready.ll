; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_libata-zpodd.c_zpready.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_libata-zpodd.c_zpready.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_device = type { %struct.TYPE_4__*, %struct.zpodd* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64* }
%struct.zpodd = type { i64 }

@NOT_READY = common dso_local global i64 0, align 8
@ODD_MECH_TYPE_SLOT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ata_device*)* @zpready to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zpready(%struct.ata_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ata_device*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.zpodd*, align 8
  store %struct.ata_device* %0, %struct.ata_device** %3, align 8
  %11 = load %struct.ata_device*, %struct.ata_device** %3, align 8
  %12 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %11, i32 0, i32 1
  %13 = load %struct.zpodd*, %struct.zpodd** %12, align 8
  store %struct.zpodd* %13, %struct.zpodd** %10, align 8
  %14 = load %struct.ata_device*, %struct.ata_device** %3, align 8
  %15 = call i32 @atapi_eh_tur(%struct.ata_device* %14, i64* %4)
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %1
  %19 = load i64, i64* %4, align 8
  %20 = load i64, i64* @NOT_READY, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %18, %1
  store i32 0, i32* %2, align 4
  br label %80

23:                                               ; preds = %18
  %24 = load %struct.ata_device*, %struct.ata_device** %3, align 8
  %25 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %24, i32 0, i32 0
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i64*, i64** %29, align 8
  store i64* %30, i64** %5, align 8
  %31 = load %struct.ata_device*, %struct.ata_device** %3, align 8
  %32 = load i64*, i64** %5, align 8
  %33 = load i64, i64* %4, align 8
  %34 = call i32 @atapi_eh_request_sense(%struct.ata_device* %31, i64* %32, i64 %33)
  store i32 %34, i32* %6, align 4
  %35 = load i32, i32* %6, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %23
  store i32 0, i32* %2, align 4
  br label %80

38:                                               ; preds = %23
  %39 = load i64*, i64** %5, align 8
  %40 = getelementptr inbounds i64, i64* %39, i64 0
  %41 = load i64, i64* %40, align 8
  %42 = and i64 %41, 127
  %43 = icmp ne i64 %42, 112
  br i1 %43, label %44, label %45

44:                                               ; preds = %38
  store i32 0, i32* %2, align 4
  br label %80

45:                                               ; preds = %38
  %46 = load i64*, i64** %5, align 8
  %47 = getelementptr inbounds i64, i64* %46, i64 7
  %48 = load i64, i64* %47, align 8
  %49 = trunc i64 %48 to i32
  store i32 %49, i32* %9, align 4
  %50 = load i32, i32* %9, align 4
  %51 = icmp ult i32 %50, 6
  br i1 %51, label %52, label %53

52:                                               ; preds = %45
  store i32 0, i32* %2, align 4
  br label %80

53:                                               ; preds = %45
  %54 = load i64*, i64** %5, align 8
  %55 = getelementptr inbounds i64, i64* %54, i64 12
  %56 = load i64, i64* %55, align 8
  %57 = trunc i64 %56 to i32
  store i32 %57, i32* %7, align 4
  %58 = load i64*, i64** %5, align 8
  %59 = getelementptr inbounds i64, i64* %58, i64 13
  %60 = load i64, i64* %59, align 8
  %61 = trunc i64 %60 to i32
  store i32 %61, i32* %8, align 4
  %62 = load %struct.zpodd*, %struct.zpodd** %10, align 8
  %63 = getelementptr inbounds %struct.zpodd, %struct.zpodd* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @ODD_MECH_TYPE_SLOT, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %71

67:                                               ; preds = %53
  %68 = load i32, i32* %7, align 4
  %69 = icmp eq i32 %68, 58
  %70 = zext i1 %69 to i32
  store i32 %70, i32* %2, align 4
  br label %80

71:                                               ; preds = %53
  %72 = load i32, i32* %7, align 4
  %73 = icmp eq i32 %72, 58
  br i1 %73, label %74, label %77

74:                                               ; preds = %71
  %75 = load i32, i32* %8, align 4
  %76 = icmp eq i32 %75, 1
  br label %77

77:                                               ; preds = %74, %71
  %78 = phi i1 [ false, %71 ], [ %76, %74 ]
  %79 = zext i1 %78 to i32
  store i32 %79, i32* %2, align 4
  br label %80

80:                                               ; preds = %77, %67, %52, %44, %37, %22
  %81 = load i32, i32* %2, align 4
  ret i32 %81
}

declare dso_local i32 @atapi_eh_tur(%struct.ata_device*, i64*) #1

declare dso_local i32 @atapi_eh_request_sense(%struct.ata_device*, i64*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
