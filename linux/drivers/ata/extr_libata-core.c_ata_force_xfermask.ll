; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_libata-core.c_ata_force_xfermask.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_libata-core.c_ata_force_xfermask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_force_ent = type { i32, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }
%struct.ata_device = type { i32, i64, i64, i64, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@ata_force_tbl_size = common dso_local global i32 0, align 4
@ata_force_tbl = common dso_local global %struct.ata_force_ent* null, align 8
@.str = private unnamed_addr constant [28 x i8] c"FORCE: xfer_mask set to %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ata_device*)* @ata_force_xfermask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ata_force_xfermask(%struct.ata_device* %0) #0 {
  %2 = alloca %struct.ata_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.ata_force_ent*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.ata_device* %0, %struct.ata_device** %2, align 8
  %10 = load %struct.ata_device*, %struct.ata_device** %2, align 8
  %11 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %10, i32 0, i32 4
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load %struct.ata_device*, %struct.ata_device** %2, align 8
  %16 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = add nsw i32 %14, %17
  store i32 %18, i32* %3, align 4
  %19 = load i32, i32* %3, align 4
  store i32 %19, i32* %4, align 4
  %20 = load %struct.ata_device*, %struct.ata_device** %2, align 8
  %21 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %20, i32 0, i32 4
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %21, align 8
  %23 = call i64 @ata_is_host_link(%struct.TYPE_6__* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %1
  %26 = load i32, i32* %4, align 4
  %27 = add nsw i32 %26, 15
  store i32 %27, i32* %4, align 4
  br label %28

28:                                               ; preds = %25, %1
  %29 = load i32, i32* @ata_force_tbl_size, align 4
  %30 = sub nsw i32 %29, 1
  store i32 %30, i32* %5, align 4
  br label %31

31:                                               ; preds = %118, %28
  %32 = load i32, i32* %5, align 4
  %33 = icmp sge i32 %32, 0
  br i1 %33, label %34, label %121

34:                                               ; preds = %31
  %35 = load %struct.ata_force_ent*, %struct.ata_force_ent** @ata_force_tbl, align 8
  %36 = load i32, i32* %5, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.ata_force_ent, %struct.ata_force_ent* %35, i64 %37
  store %struct.ata_force_ent* %38, %struct.ata_force_ent** %6, align 8
  %39 = load %struct.ata_force_ent*, %struct.ata_force_ent** %6, align 8
  %40 = getelementptr inbounds %struct.ata_force_ent, %struct.ata_force_ent* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = icmp ne i32 %41, -1
  br i1 %42, label %43, label %56

43:                                               ; preds = %34
  %44 = load %struct.ata_force_ent*, %struct.ata_force_ent** %6, align 8
  %45 = getelementptr inbounds %struct.ata_force_ent, %struct.ata_force_ent* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.ata_device*, %struct.ata_device** %2, align 8
  %48 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %47, i32 0, i32 4
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 1
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = icmp ne i32 %46, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %43
  br label %118

56:                                               ; preds = %43, %34
  %57 = load %struct.ata_force_ent*, %struct.ata_force_ent** %6, align 8
  %58 = getelementptr inbounds %struct.ata_force_ent, %struct.ata_force_ent* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = icmp ne i32 %59, -1
  br i1 %60, label %61, label %74

61:                                               ; preds = %56
  %62 = load %struct.ata_force_ent*, %struct.ata_force_ent** %6, align 8
  %63 = getelementptr inbounds %struct.ata_force_ent, %struct.ata_force_ent* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* %3, align 4
  %66 = icmp ne i32 %64, %65
  br i1 %66, label %67, label %74

67:                                               ; preds = %61
  %68 = load %struct.ata_force_ent*, %struct.ata_force_ent** %6, align 8
  %69 = getelementptr inbounds %struct.ata_force_ent, %struct.ata_force_ent* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* %4, align 4
  %72 = icmp ne i32 %70, %71
  br i1 %72, label %73, label %74

73:                                               ; preds = %67
  br label %118

74:                                               ; preds = %67, %61, %56
  %75 = load %struct.ata_force_ent*, %struct.ata_force_ent** %6, align 8
  %76 = getelementptr inbounds %struct.ata_force_ent, %struct.ata_force_ent* %75, i32 0, i32 2
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %81, label %80

80:                                               ; preds = %74
  br label %118

81:                                               ; preds = %74
  %82 = load %struct.ata_force_ent*, %struct.ata_force_ent** %6, align 8
  %83 = getelementptr inbounds %struct.ata_force_ent, %struct.ata_force_ent* %82, i32 0, i32 2
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @ata_unpack_xfermask(i32 %85, i64* %7, i64* %8, i64* %9)
  %87 = load i64, i64* %9, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %93

89:                                               ; preds = %81
  %90 = load i64, i64* %9, align 8
  %91 = load %struct.ata_device*, %struct.ata_device** %2, align 8
  %92 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %91, i32 0, i32 1
  store i64 %90, i64* %92, align 8
  br label %111

93:                                               ; preds = %81
  %94 = load i64, i64* %8, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %102

96:                                               ; preds = %93
  %97 = load %struct.ata_device*, %struct.ata_device** %2, align 8
  %98 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %97, i32 0, i32 1
  store i64 0, i64* %98, align 8
  %99 = load i64, i64* %8, align 8
  %100 = load %struct.ata_device*, %struct.ata_device** %2, align 8
  %101 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %100, i32 0, i32 2
  store i64 %99, i64* %101, align 8
  br label %110

102:                                              ; preds = %93
  %103 = load %struct.ata_device*, %struct.ata_device** %2, align 8
  %104 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %103, i32 0, i32 1
  store i64 0, i64* %104, align 8
  %105 = load %struct.ata_device*, %struct.ata_device** %2, align 8
  %106 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %105, i32 0, i32 2
  store i64 0, i64* %106, align 8
  %107 = load i64, i64* %7, align 8
  %108 = load %struct.ata_device*, %struct.ata_device** %2, align 8
  %109 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %108, i32 0, i32 3
  store i64 %107, i64* %109, align 8
  br label %110

110:                                              ; preds = %102, %96
  br label %111

111:                                              ; preds = %110, %89
  %112 = load %struct.ata_device*, %struct.ata_device** %2, align 8
  %113 = load %struct.ata_force_ent*, %struct.ata_force_ent** %6, align 8
  %114 = getelementptr inbounds %struct.ata_force_ent, %struct.ata_force_ent* %113, i32 0, i32 2
  %115 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = call i32 @ata_dev_notice(%struct.ata_device* %112, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %116)
  br label %121

118:                                              ; preds = %80, %73, %55
  %119 = load i32, i32* %5, align 4
  %120 = add nsw i32 %119, -1
  store i32 %120, i32* %5, align 4
  br label %31

121:                                              ; preds = %111, %31
  ret void
}

declare dso_local i64 @ata_is_host_link(%struct.TYPE_6__*) #1

declare dso_local i32 @ata_unpack_xfermask(i32, i64*, i64*, i64*) #1

declare dso_local i32 @ata_dev_notice(%struct.ata_device*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
