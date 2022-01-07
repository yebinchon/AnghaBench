; ModuleID = '/home/carl/AnghaBench/linux/block/extr_genhd.c___device_add_disk.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_genhd.c___device_add_disk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.gendisk = type { i32, %struct.TYPE_5__*, i64, i64, i64, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.attribute_group = type { i32 }
%struct.TYPE_6__ = type { i32 }

@GENHD_FL_EXT_DEVT = common dso_local global i32 0, align 4
@GENHD_FL_HIDDEN = common dso_local global i32 0, align 4
@GENHD_FL_UP = common dso_local global i32 0, align 4
@GENHD_FL_SUPPRESS_PARTITION_INFO = common dso_local global i32 0, align 4
@GENHD_FL_NO_PART_SCAN = common dso_local global i32 0, align 4
@exact_match = common dso_local global i32 0, align 4
@exact_lock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device*, %struct.gendisk*, %struct.attribute_group**, i32)* @__device_add_disk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__device_add_disk(%struct.device* %0, %struct.gendisk* %1, %struct.attribute_group** %2, i32 %3) #0 {
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.gendisk*, align 8
  %7 = alloca %struct.attribute_group**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.gendisk* %1, %struct.gendisk** %6, align 8
  store %struct.attribute_group** %2, %struct.attribute_group*** %7, align 8
  store i32 %3, i32* %8, align 4
  %12 = load i32, i32* %8, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %4
  %15 = load %struct.gendisk*, %struct.gendisk** %6, align 8
  %16 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %15, i32 0, i32 1
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %18 = call i32 @elevator_init_mq(%struct.TYPE_5__* %17)
  br label %19

19:                                               ; preds = %14, %4
  %20 = load %struct.gendisk*, %struct.gendisk** %6, align 8
  %21 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %37

24:                                               ; preds = %19
  %25 = load %struct.gendisk*, %struct.gendisk** %6, align 8
  %26 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %25, i32 0, i32 4
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %34, label %29

29:                                               ; preds = %24
  %30 = load %struct.gendisk*, %struct.gendisk** %6, align 8
  %31 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %30, i32 0, i32 3
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br label %34

34:                                               ; preds = %29, %24
  %35 = phi i1 [ true, %24 ], [ %33, %29 ]
  %36 = xor i1 %35, true
  br label %37

37:                                               ; preds = %34, %19
  %38 = phi i1 [ false, %19 ], [ %36, %34 ]
  %39 = zext i1 %38 to i32
  %40 = call i32 @WARN_ON(i32 %39)
  %41 = load %struct.gendisk*, %struct.gendisk** %6, align 8
  %42 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %55, label %45

45:                                               ; preds = %37
  %46 = load %struct.gendisk*, %struct.gendisk** %6, align 8
  %47 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @GENHD_FL_EXT_DEVT, align 4
  %50 = load i32, i32* @GENHD_FL_HIDDEN, align 4
  %51 = or i32 %49, %50
  %52 = and i32 %48, %51
  %53 = icmp ne i32 %52, 0
  %54 = xor i1 %53, true
  br label %55

55:                                               ; preds = %45, %37
  %56 = phi i1 [ false, %37 ], [ %54, %45 ]
  %57 = zext i1 %56 to i32
  %58 = call i32 @WARN_ON(i32 %57)
  %59 = load i32, i32* @GENHD_FL_UP, align 4
  %60 = load %struct.gendisk*, %struct.gendisk** %6, align 8
  %61 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = or i32 %62, %59
  store i32 %63, i32* %61, align 8
  %64 = load %struct.gendisk*, %struct.gendisk** %6, align 8
  %65 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %64, i32 0, i32 5
  %66 = call i32 @blk_alloc_devt(i32* %65, i32* %9)
  store i32 %66, i32* %10, align 4
  %67 = load i32, i32* %10, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %55
  %70 = call i32 @WARN_ON(i32 1)
  br label %146

71:                                               ; preds = %55
  %72 = load i32, i32* %9, align 4
  %73 = call i64 @MAJOR(i32 %72)
  %74 = load %struct.gendisk*, %struct.gendisk** %6, align 8
  %75 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %74, i32 0, i32 4
  store i64 %73, i64* %75, align 8
  %76 = load i32, i32* %9, align 4
  %77 = call i64 @MINOR(i32 %76)
  %78 = load %struct.gendisk*, %struct.gendisk** %6, align 8
  %79 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %78, i32 0, i32 3
  store i64 %77, i64* %79, align 8
  %80 = load %struct.gendisk*, %struct.gendisk** %6, align 8
  %81 = call i32 @disk_alloc_events(%struct.gendisk* %80)
  %82 = load %struct.gendisk*, %struct.gendisk** %6, align 8
  %83 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = load i32, i32* @GENHD_FL_HIDDEN, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %99

88:                                               ; preds = %71
  %89 = load i32, i32* @GENHD_FL_SUPPRESS_PARTITION_INFO, align 4
  %90 = load %struct.gendisk*, %struct.gendisk** %6, align 8
  %91 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = or i32 %92, %89
  store i32 %93, i32* %91, align 8
  %94 = load i32, i32* @GENHD_FL_NO_PART_SCAN, align 4
  %95 = load %struct.gendisk*, %struct.gendisk** %6, align 8
  %96 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = or i32 %97, %94
  store i32 %98, i32* %96, align 8
  br label %123

99:                                               ; preds = %71
  %100 = load i32, i32* %9, align 4
  %101 = load %struct.gendisk*, %struct.gendisk** %6, align 8
  %102 = call %struct.TYPE_6__* @disk_to_dev(%struct.gendisk* %101)
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 0
  store i32 %100, i32* %103, align 4
  %104 = load %struct.gendisk*, %struct.gendisk** %6, align 8
  %105 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %104, i32 0, i32 1
  %106 = load %struct.TYPE_5__*, %struct.TYPE_5__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.gendisk*, %struct.gendisk** %6, align 8
  %110 = call %struct.TYPE_6__* @disk_to_dev(%struct.gendisk* %109)
  %111 = call i32 @bdi_register_owner(i32 %108, %struct.TYPE_6__* %110)
  store i32 %111, i32* %11, align 4
  %112 = load i32, i32* %11, align 4
  %113 = call i32 @WARN_ON(i32 %112)
  %114 = load %struct.gendisk*, %struct.gendisk** %6, align 8
  %115 = call i32 @disk_devt(%struct.gendisk* %114)
  %116 = load %struct.gendisk*, %struct.gendisk** %6, align 8
  %117 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %116, i32 0, i32 2
  %118 = load i64, i64* %117, align 8
  %119 = load i32, i32* @exact_match, align 4
  %120 = load i32, i32* @exact_lock, align 4
  %121 = load %struct.gendisk*, %struct.gendisk** %6, align 8
  %122 = call i32 @blk_register_region(i32 %115, i64 %118, i32* null, i32 %119, i32 %120, %struct.gendisk* %121)
  br label %123

123:                                              ; preds = %99, %88
  %124 = load %struct.device*, %struct.device** %5, align 8
  %125 = load %struct.gendisk*, %struct.gendisk** %6, align 8
  %126 = load %struct.attribute_group**, %struct.attribute_group*** %7, align 8
  %127 = call i32 @register_disk(%struct.device* %124, %struct.gendisk* %125, %struct.attribute_group** %126)
  %128 = load i32, i32* %8, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %133

130:                                              ; preds = %123
  %131 = load %struct.gendisk*, %struct.gendisk** %6, align 8
  %132 = call i32 @blk_register_queue(%struct.gendisk* %131)
  br label %133

133:                                              ; preds = %130, %123
  %134 = load %struct.gendisk*, %struct.gendisk** %6, align 8
  %135 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %134, i32 0, i32 1
  %136 = load %struct.TYPE_5__*, %struct.TYPE_5__** %135, align 8
  %137 = call i32 @blk_get_queue(%struct.TYPE_5__* %136)
  %138 = icmp ne i32 %137, 0
  %139 = xor i1 %138, true
  %140 = zext i1 %139 to i32
  %141 = call i32 @WARN_ON_ONCE(i32 %140)
  %142 = load %struct.gendisk*, %struct.gendisk** %6, align 8
  %143 = call i32 @disk_add_events(%struct.gendisk* %142)
  %144 = load %struct.gendisk*, %struct.gendisk** %6, align 8
  %145 = call i32 @blk_integrity_add(%struct.gendisk* %144)
  br label %146

146:                                              ; preds = %133, %69
  ret void
}

declare dso_local i32 @elevator_init_mq(%struct.TYPE_5__*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @blk_alloc_devt(i32*, i32*) #1

declare dso_local i64 @MAJOR(i32) #1

declare dso_local i64 @MINOR(i32) #1

declare dso_local i32 @disk_alloc_events(%struct.gendisk*) #1

declare dso_local %struct.TYPE_6__* @disk_to_dev(%struct.gendisk*) #1

declare dso_local i32 @bdi_register_owner(i32, %struct.TYPE_6__*) #1

declare dso_local i32 @blk_register_region(i32, i64, i32*, i32, i32, %struct.gendisk*) #1

declare dso_local i32 @disk_devt(%struct.gendisk*) #1

declare dso_local i32 @register_disk(%struct.device*, %struct.gendisk*, %struct.attribute_group**) #1

declare dso_local i32 @blk_register_queue(%struct.gendisk*) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @blk_get_queue(%struct.TYPE_5__*) #1

declare dso_local i32 @disk_add_events(%struct.gendisk*) #1

declare dso_local i32 @blk_integrity_add(%struct.gendisk*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
