; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_pata_icside.c_pata_icside_set_dmamode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_pata_icside.c_pata_icside_set_dmamode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_port = type { i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.pata_icside_state* }
%struct.pata_icside_state = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32* }
%struct.ata_device = type { i64, i32 }
%struct.ata_timing = type { i32, i32, i32 }

@.str = private unnamed_addr constant [42 x i8] c"timings: act %dns rec %dns cyc %dns (%c)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ata_port*, %struct.ata_device*)* @pata_icside_set_dmamode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pata_icside_set_dmamode(%struct.ata_port* %0, %struct.ata_device* %1) #0 {
  %3 = alloca %struct.ata_port*, align 8
  %4 = alloca %struct.ata_device*, align 8
  %5 = alloca %struct.pata_icside_state*, align 8
  %6 = alloca %struct.ata_timing, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8, align 1
  store %struct.ata_port* %0, %struct.ata_port** %3, align 8
  store %struct.ata_device* %1, %struct.ata_device** %4, align 8
  %9 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %10 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %9, i32 0, i32 1
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load %struct.pata_icside_state*, %struct.pata_icside_state** %12, align 8
  store %struct.pata_icside_state* %13, %struct.pata_icside_state** %5, align 8
  %14 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %15 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %16 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = call i64 @ata_timing_compute(%struct.ata_device* %14, i32 %17, %struct.ata_timing* %6, i32 1000, i32 1)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %2
  br label %87

21:                                               ; preds = %2
  %22 = getelementptr inbounds %struct.ata_timing, %struct.ata_timing* %6, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp sle i32 %23, 50
  br i1 %24, label %25, label %34

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.ata_timing, %struct.ata_timing* %6, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = icmp sle i32 %27, 375
  br i1 %28, label %29, label %34

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.ata_timing, %struct.ata_timing* %6, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = icmp sle i32 %31, 425
  br i1 %32, label %33, label %34

33:                                               ; preds = %29
  store i8 68, i8* %8, align 1
  store i32 187, i32* %7, align 4
  br label %63

34:                                               ; preds = %29, %25, %21
  %35 = getelementptr inbounds %struct.ata_timing, %struct.ata_timing* %6, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = icmp sle i32 %36, 125
  br i1 %37, label %38, label %47

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct.ata_timing, %struct.ata_timing* %6, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = icmp sle i32 %40, 375
  br i1 %41, label %42, label %47

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.ata_timing, %struct.ata_timing* %6, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = icmp sle i32 %44, 500
  br i1 %45, label %46, label %47

46:                                               ; preds = %42
  store i8 67, i8* %8, align 1
  store i32 250, i32* %7, align 4
  br label %62

47:                                               ; preds = %42, %38, %34
  %48 = getelementptr inbounds %struct.ata_timing, %struct.ata_timing* %6, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = icmp sle i32 %49, 200
  br i1 %50, label %51, label %60

51:                                               ; preds = %47
  %52 = getelementptr inbounds %struct.ata_timing, %struct.ata_timing* %6, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = icmp sle i32 %53, 550
  br i1 %54, label %55, label %60

55:                                               ; preds = %51
  %56 = getelementptr inbounds %struct.ata_timing, %struct.ata_timing* %6, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = icmp sle i32 %57, 750
  br i1 %58, label %59, label %60

59:                                               ; preds = %55
  store i8 66, i8* %8, align 1
  store i32 437, i32* %7, align 4
  br label %61

60:                                               ; preds = %55, %51, %47
  store i8 65, i8* %8, align 1
  store i32 562, i32* %7, align 4
  br label %61

61:                                               ; preds = %60, %59
  br label %62

62:                                               ; preds = %61, %46
  br label %63

63:                                               ; preds = %62, %33
  %64 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %65 = getelementptr inbounds %struct.ata_timing, %struct.ata_timing* %6, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = getelementptr inbounds %struct.ata_timing, %struct.ata_timing* %6, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = getelementptr inbounds %struct.ata_timing, %struct.ata_timing* %6, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  %71 = load i8, i8* %8, align 1
  %72 = call i32 @ata_dev_info(%struct.ata_device* %64, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %66, i32 %68, i32 %70, i8 signext %71)
  %73 = load i32, i32* %7, align 4
  %74 = load %struct.pata_icside_state*, %struct.pata_icside_state** %5, align 8
  %75 = getelementptr inbounds %struct.pata_icside_state, %struct.pata_icside_state* %74, i32 0, i32 0
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %75, align 8
  %77 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %78 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 0
  %82 = load i32*, i32** %81, align 8
  %83 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %84 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = getelementptr inbounds i32, i32* %82, i64 %85
  store i32 %73, i32* %86, align 4
  br label %87

87:                                               ; preds = %63, %20
  ret void
}

declare dso_local i64 @ata_timing_compute(%struct.ata_device*, i32, %struct.ata_timing*, i32, i32) #1

declare dso_local i32 @ata_dev_info(%struct.ata_device*, i8*, i32, i32, i32, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
