; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_libata-core.c_ata_qc_complete_multiple.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_libata-core.c_ata_qc_complete_multiple.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_port = type { i64 }
%struct.ata_queued_cmd = type { i32 }

@ATA_TAG_INTERNAL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [47 x i8] c"illegal qc_active transition (%08llx->%08llx)\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ata_qc_complete_multiple(%struct.ata_port* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ata_port*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ata_queued_cmd*, align 8
  %10 = alloca i32, align 4
  store %struct.ata_port* %0, %struct.ata_port** %4, align 8
  store i64 %1, i64* %5, align 8
  %11 = load %struct.ata_port*, %struct.ata_port** %4, align 8
  %12 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  store i64 %13, i64* %7, align 8
  store i32 0, i32* %8, align 4
  %14 = load i64, i64* %7, align 8
  %15 = load i64, i64* @ATA_TAG_INTERNAL, align 8
  %16 = shl i64 1, %15
  %17 = and i64 %14, %16
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %30

19:                                               ; preds = %2
  %20 = load i64, i64* %5, align 8
  %21 = and i64 %20, 1
  %22 = load i64, i64* @ATA_TAG_INTERNAL, align 8
  %23 = shl i64 %21, %22
  %24 = load i64, i64* %5, align 8
  %25 = or i64 %24, %23
  store i64 %25, i64* %5, align 8
  %26 = load i64, i64* %5, align 8
  %27 = and i64 %26, 1
  %28 = load i64, i64* %5, align 8
  %29 = xor i64 %28, %27
  store i64 %29, i64* %5, align 8
  br label %30

30:                                               ; preds = %19, %2
  %31 = load i64, i64* %7, align 8
  %32 = load i64, i64* %5, align 8
  %33 = xor i64 %31, %32
  store i64 %33, i64* %6, align 8
  %34 = load i64, i64* %6, align 8
  %35 = load i64, i64* %5, align 8
  %36 = and i64 %34, %35
  %37 = call i64 @unlikely(i64 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %48

39:                                               ; preds = %30
  %40 = load %struct.ata_port*, %struct.ata_port** %4, align 8
  %41 = load %struct.ata_port*, %struct.ata_port** %4, align 8
  %42 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* %5, align 8
  %45 = call i32 @ata_port_err(%struct.ata_port* %40, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i64 %43, i64 %44)
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %3, align 4
  br label %74

48:                                               ; preds = %30
  br label %49

49:                                               ; preds = %65, %48
  %50 = load i64, i64* %6, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %72

52:                                               ; preds = %49
  %53 = load i64, i64* %6, align 8
  %54 = call i32 @__ffs64(i64 %53)
  store i32 %54, i32* %10, align 4
  %55 = load %struct.ata_port*, %struct.ata_port** %4, align 8
  %56 = load i32, i32* %10, align 4
  %57 = call %struct.ata_queued_cmd* @ata_qc_from_tag(%struct.ata_port* %55, i32 %56)
  store %struct.ata_queued_cmd* %57, %struct.ata_queued_cmd** %9, align 8
  %58 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %9, align 8
  %59 = icmp ne %struct.ata_queued_cmd* %58, null
  br i1 %59, label %60, label %65

60:                                               ; preds = %52
  %61 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %9, align 8
  %62 = call i32 @ata_qc_complete(%struct.ata_queued_cmd* %61)
  %63 = load i32, i32* %8, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %8, align 4
  br label %65

65:                                               ; preds = %60, %52
  %66 = load i32, i32* %10, align 4
  %67 = zext i32 %66 to i64
  %68 = shl i64 1, %67
  %69 = xor i64 %68, -1
  %70 = load i64, i64* %6, align 8
  %71 = and i64 %70, %69
  store i64 %71, i64* %6, align 8
  br label %49

72:                                               ; preds = %49
  %73 = load i32, i32* %8, align 4
  store i32 %73, i32* %3, align 4
  br label %74

74:                                               ; preds = %72, %39
  %75 = load i32, i32* %3, align 4
  ret i32 %75
}

declare dso_local i64 @unlikely(i64) #1

declare dso_local i32 @ata_port_err(%struct.ata_port*, i8*, i64, i64) #1

declare dso_local i32 @__ffs64(i64) #1

declare dso_local %struct.ata_queued_cmd* @ata_qc_from_tag(%struct.ata_port*, i32) #1

declare dso_local i32 @ata_qc_complete(%struct.ata_queued_cmd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
