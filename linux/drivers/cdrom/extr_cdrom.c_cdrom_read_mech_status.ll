; ModuleID = '/home/carl/AnghaBench/linux/drivers/cdrom/extr_cdrom.c_cdrom_read_mech_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/cdrom/extr_cdrom.c_cdrom_read_mech_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdrom_device_info = type { i32, i32, %struct.cdrom_device_ops* }
%struct.cdrom_device_ops = type { i32 (%struct.cdrom_device_info.0*, %struct.packet_command*)* }
%struct.cdrom_device_info.0 = type opaque
%struct.packet_command = type { i32* }
%struct.cdrom_changer_info = type { %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i64 }
%struct.TYPE_3__ = type { i32, i32 }

@CGC_DATA_READ = common dso_local global i32 0, align 4
@GPCMD_MECHANISM_STATUS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cdrom_device_info*, %struct.cdrom_changer_info*)* @cdrom_read_mech_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cdrom_read_mech_status(%struct.cdrom_device_info* %0, %struct.cdrom_changer_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cdrom_device_info*, align 8
  %5 = alloca %struct.cdrom_changer_info*, align 8
  %6 = alloca %struct.packet_command, align 8
  %7 = alloca %struct.cdrom_device_ops*, align 8
  %8 = alloca i32, align 4
  store %struct.cdrom_device_info* %0, %struct.cdrom_device_info** %4, align 8
  store %struct.cdrom_changer_info* %1, %struct.cdrom_changer_info** %5, align 8
  %9 = load %struct.cdrom_device_info*, %struct.cdrom_device_info** %4, align 8
  %10 = getelementptr inbounds %struct.cdrom_device_info, %struct.cdrom_device_info* %9, i32 0, i32 2
  %11 = load %struct.cdrom_device_ops*, %struct.cdrom_device_ops** %10, align 8
  store %struct.cdrom_device_ops* %11, %struct.cdrom_device_ops** %7, align 8
  %12 = load %struct.cdrom_device_info*, %struct.cdrom_device_info** %4, align 8
  %13 = getelementptr inbounds %struct.cdrom_device_info, %struct.cdrom_device_info* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %56

16:                                               ; preds = %2
  %17 = load %struct.cdrom_changer_info*, %struct.cdrom_changer_info** %5, align 8
  %18 = getelementptr inbounds %struct.cdrom_changer_info, %struct.cdrom_changer_info* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  store i32 3, i32* %19, align 8
  %20 = load %struct.cdrom_device_info*, %struct.cdrom_device_info** %4, align 8
  %21 = getelementptr inbounds %struct.cdrom_device_info, %struct.cdrom_device_info* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp eq i32 %22, 3
  br i1 %23, label %24, label %25

24:                                               ; preds = %16
  br label %29

25:                                               ; preds = %16
  %26 = load %struct.cdrom_device_info*, %struct.cdrom_device_info** %4, align 8
  %27 = getelementptr inbounds %struct.cdrom_device_info, %struct.cdrom_device_info* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  br label %29

29:                                               ; preds = %25, %24
  %30 = phi i32 [ 0, %24 ], [ %28, %25 ]
  %31 = load %struct.cdrom_changer_info*, %struct.cdrom_changer_info** %5, align 8
  %32 = getelementptr inbounds %struct.cdrom_changer_info, %struct.cdrom_changer_info* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 1
  store i32 %30, i32* %33, align 4
  store i32 0, i32* %8, align 4
  br label %34

34:                                               ; preds = %52, %29
  %35 = load i32, i32* %8, align 4
  %36 = icmp slt i32 %35, 3
  br i1 %36, label %37, label %55

37:                                               ; preds = %34
  %38 = load %struct.cdrom_changer_info*, %struct.cdrom_changer_info** %5, align 8
  %39 = getelementptr inbounds %struct.cdrom_changer_info, %struct.cdrom_changer_info* %38, i32 0, i32 0
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %39, align 8
  %41 = load i32, i32* %8, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  store i32 1, i32* %44, align 8
  %45 = load %struct.cdrom_changer_info*, %struct.cdrom_changer_info** %5, align 8
  %46 = getelementptr inbounds %struct.cdrom_changer_info, %struct.cdrom_changer_info* %45, i32 0, i32 0
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %46, align 8
  %48 = load i32, i32* %8, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 1
  store i64 0, i64* %51, align 8
  br label %52

52:                                               ; preds = %37
  %53 = load i32, i32* %8, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %8, align 4
  br label %34

55:                                               ; preds = %34
  store i32 0, i32* %3, align 4
  br label %89

56:                                               ; preds = %2
  %57 = load %struct.cdrom_device_info*, %struct.cdrom_device_info** %4, align 8
  %58 = getelementptr inbounds %struct.cdrom_device_info, %struct.cdrom_device_info* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = sext i32 %59 to i64
  %61 = mul i64 %60, 4
  %62 = add i64 4, %61
  %63 = trunc i64 %62 to i32
  store i32 %63, i32* %8, align 4
  %64 = load %struct.cdrom_changer_info*, %struct.cdrom_changer_info** %5, align 8
  %65 = load i32, i32* %8, align 4
  %66 = load i32, i32* @CGC_DATA_READ, align 4
  %67 = call i32 @init_cdrom_command(%struct.packet_command* %6, %struct.cdrom_changer_info* %64, i32 %65, i32 %66)
  %68 = load i32, i32* @GPCMD_MECHANISM_STATUS, align 4
  %69 = getelementptr inbounds %struct.packet_command, %struct.packet_command* %6, i32 0, i32 0
  %70 = load i32*, i32** %69, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 0
  store i32 %68, i32* %71, align 4
  %72 = load i32, i32* %8, align 4
  %73 = ashr i32 %72, 8
  %74 = and i32 %73, 255
  %75 = getelementptr inbounds %struct.packet_command, %struct.packet_command* %6, i32 0, i32 0
  %76 = load i32*, i32** %75, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 8
  store i32 %74, i32* %77, align 4
  %78 = load i32, i32* %8, align 4
  %79 = and i32 %78, 255
  %80 = getelementptr inbounds %struct.packet_command, %struct.packet_command* %6, i32 0, i32 0
  %81 = load i32*, i32** %80, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 9
  store i32 %79, i32* %82, align 4
  %83 = load %struct.cdrom_device_ops*, %struct.cdrom_device_ops** %7, align 8
  %84 = getelementptr inbounds %struct.cdrom_device_ops, %struct.cdrom_device_ops* %83, i32 0, i32 0
  %85 = load i32 (%struct.cdrom_device_info.0*, %struct.packet_command*)*, i32 (%struct.cdrom_device_info.0*, %struct.packet_command*)** %84, align 8
  %86 = load %struct.cdrom_device_info*, %struct.cdrom_device_info** %4, align 8
  %87 = bitcast %struct.cdrom_device_info* %86 to %struct.cdrom_device_info.0*
  %88 = call i32 %85(%struct.cdrom_device_info.0* %87, %struct.packet_command* %6)
  store i32 %88, i32* %3, align 4
  br label %89

89:                                               ; preds = %56, %55
  %90 = load i32, i32* %3, align 4
  ret i32 %90
}

declare dso_local i32 @init_cdrom_command(%struct.packet_command*, %struct.cdrom_changer_info*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
