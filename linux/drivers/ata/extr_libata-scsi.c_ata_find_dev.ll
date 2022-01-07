; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_libata-scsi.c_ata_find_dev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_libata-scsi.c_ata_find_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_device = type { i32 }
%struct.ata_port = type { i32, %struct.TYPE_3__*, %struct.TYPE_4__ }
%struct.TYPE_3__ = type { %struct.ata_device* }
%struct.TYPE_4__ = type { %struct.ata_device* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ata_device* (%struct.ata_port*, i32)* @ata_find_dev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ata_device* @ata_find_dev(%struct.ata_port* %0, i32 %1) #0 {
  %3 = alloca %struct.ata_device*, align 8
  %4 = alloca %struct.ata_port*, align 8
  %5 = alloca i32, align 4
  store %struct.ata_port* %0, %struct.ata_port** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.ata_port*, %struct.ata_port** %4, align 8
  %7 = call i32 @sata_pmp_attached(%struct.ata_port* %6)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %32, label %9

9:                                                ; preds = %2
  %10 = load i32, i32* %5, align 4
  %11 = icmp sge i32 %10, 0
  br i1 %11, label %12, label %18

12:                                               ; preds = %9
  %13 = load i32, i32* %5, align 4
  %14 = load %struct.ata_port*, %struct.ata_port** %4, align 8
  %15 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %14, i32 0, i32 2
  %16 = call i32 @ata_link_max_devices(%struct.TYPE_4__* %15)
  %17 = icmp slt i32 %13, %16
  br label %18

18:                                               ; preds = %12, %9
  %19 = phi i1 [ false, %9 ], [ %17, %12 ]
  %20 = zext i1 %19 to i32
  %21 = call i64 @likely(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %31

23:                                               ; preds = %18
  %24 = load %struct.ata_port*, %struct.ata_port** %4, align 8
  %25 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load %struct.ata_device*, %struct.ata_device** %26, align 8
  %28 = load i32, i32* %5, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %27, i64 %29
  store %struct.ata_device* %30, %struct.ata_device** %3, align 8
  br label %58

31:                                               ; preds = %18
  br label %57

32:                                               ; preds = %2
  %33 = load i32, i32* %5, align 4
  %34 = icmp sge i32 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %32
  %36 = load i32, i32* %5, align 4
  %37 = load %struct.ata_port*, %struct.ata_port** %4, align 8
  %38 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = icmp slt i32 %36, %39
  br label %41

41:                                               ; preds = %35, %32
  %42 = phi i1 [ false, %32 ], [ %40, %35 ]
  %43 = zext i1 %42 to i32
  %44 = call i64 @likely(i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %56

46:                                               ; preds = %41
  %47 = load %struct.ata_port*, %struct.ata_port** %4, align 8
  %48 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %47, i32 0, i32 1
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %48, align 8
  %50 = load i32, i32* %5, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  %54 = load %struct.ata_device*, %struct.ata_device** %53, align 8
  %55 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %54, i64 0
  store %struct.ata_device* %55, %struct.ata_device** %3, align 8
  br label %58

56:                                               ; preds = %41
  br label %57

57:                                               ; preds = %56, %31
  store %struct.ata_device* null, %struct.ata_device** %3, align 8
  br label %58

58:                                               ; preds = %57, %46, %23
  %59 = load %struct.ata_device*, %struct.ata_device** %3, align 8
  ret %struct.ata_device* %59
}

declare dso_local i32 @sata_pmp_attached(%struct.ata_port*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @ata_link_max_devices(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
