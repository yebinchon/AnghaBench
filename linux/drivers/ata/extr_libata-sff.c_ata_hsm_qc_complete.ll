; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_libata-sff.c_ata_hsm_qc_complete.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_libata-sff.c_ata_hsm_qc_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_queued_cmd = type { i32, i32, %struct.ata_port* }
%struct.ata_port = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@AC_ERR_HSM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ata_queued_cmd*, i32)* @ata_hsm_qc_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ata_hsm_qc_complete(%struct.ata_queued_cmd* %0, i32 %1) #0 {
  %3 = alloca %struct.ata_queued_cmd*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ata_port*, align 8
  store %struct.ata_queued_cmd* %0, %struct.ata_queued_cmd** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %3, align 8
  %7 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %6, i32 0, i32 2
  %8 = load %struct.ata_port*, %struct.ata_port** %7, align 8
  store %struct.ata_port* %8, %struct.ata_port** %5, align 8
  %9 = load %struct.ata_port*, %struct.ata_port** %5, align 8
  %10 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %66

15:                                               ; preds = %2
  %16 = load i32, i32* %4, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %47

18:                                               ; preds = %15
  %19 = load %struct.ata_port*, %struct.ata_port** %5, align 8
  %20 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %3, align 8
  %21 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call %struct.ata_queued_cmd* @ata_qc_from_tag(%struct.ata_port* %19, i32 %22)
  store %struct.ata_queued_cmd* %23, %struct.ata_queued_cmd** %3, align 8
  %24 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %3, align 8
  %25 = icmp ne %struct.ata_queued_cmd* %24, null
  br i1 %25, label %26, label %46

26:                                               ; preds = %18
  %27 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %3, align 8
  %28 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @AC_ERR_HSM, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  %33 = xor i1 %32, true
  %34 = zext i1 %33 to i32
  %35 = call i64 @likely(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %26
  %38 = load %struct.ata_port*, %struct.ata_port** %5, align 8
  %39 = call i32 @ata_sff_irq_on(%struct.ata_port* %38)
  %40 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %3, align 8
  %41 = call i32 @ata_qc_complete(%struct.ata_queued_cmd* %40)
  br label %45

42:                                               ; preds = %26
  %43 = load %struct.ata_port*, %struct.ata_port** %5, align 8
  %44 = call i32 @ata_port_freeze(%struct.ata_port* %43)
  br label %45

45:                                               ; preds = %42, %37
  br label %46

46:                                               ; preds = %45, %18
  br label %65

47:                                               ; preds = %15
  %48 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %3, align 8
  %49 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @AC_ERR_HSM, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  %54 = xor i1 %53, true
  %55 = zext i1 %54 to i32
  %56 = call i64 @likely(i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %47
  %59 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %3, align 8
  %60 = call i32 @ata_qc_complete(%struct.ata_queued_cmd* %59)
  br label %64

61:                                               ; preds = %47
  %62 = load %struct.ata_port*, %struct.ata_port** %5, align 8
  %63 = call i32 @ata_port_freeze(%struct.ata_port* %62)
  br label %64

64:                                               ; preds = %61, %58
  br label %65

65:                                               ; preds = %64, %46
  br label %78

66:                                               ; preds = %2
  %67 = load i32, i32* %4, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %74

69:                                               ; preds = %66
  %70 = load %struct.ata_port*, %struct.ata_port** %5, align 8
  %71 = call i32 @ata_sff_irq_on(%struct.ata_port* %70)
  %72 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %3, align 8
  %73 = call i32 @ata_qc_complete(%struct.ata_queued_cmd* %72)
  br label %77

74:                                               ; preds = %66
  %75 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %3, align 8
  %76 = call i32 @ata_qc_complete(%struct.ata_queued_cmd* %75)
  br label %77

77:                                               ; preds = %74, %69
  br label %78

78:                                               ; preds = %77, %65
  ret void
}

declare dso_local %struct.ata_queued_cmd* @ata_qc_from_tag(%struct.ata_port*, i32) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @ata_sff_irq_on(%struct.ata_port*) #1

declare dso_local i32 @ata_qc_complete(%struct.ata_queued_cmd*) #1

declare dso_local i32 @ata_port_freeze(%struct.ata_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
