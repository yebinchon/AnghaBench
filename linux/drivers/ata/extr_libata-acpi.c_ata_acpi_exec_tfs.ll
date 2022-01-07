; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_libata-acpi.c_ata_acpi_exec_tfs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_libata-acpi.c_ata_acpi_exec_tfs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_device = type { i32 }
%struct.ata_acpi_gtf = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ata_device*, i32*)* @ata_acpi_exec_tfs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ata_acpi_exec_tfs(%struct.ata_device* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ata_device*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.ata_acpi_gtf*, align 8
  %7 = alloca %struct.ata_acpi_gtf*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ata_device* %0, %struct.ata_device** %4, align 8
  store i32* %1, i32** %5, align 8
  store %struct.ata_acpi_gtf* null, %struct.ata_acpi_gtf** %6, align 8
  store %struct.ata_acpi_gtf* null, %struct.ata_acpi_gtf** %7, align 8
  %11 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %12 = call i32 @ata_dev_get_GTF(%struct.ata_device* %11, %struct.ata_acpi_gtf** %6)
  store i32 %12, i32* %10, align 4
  %13 = load i32, i32* %10, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load i32, i32* %10, align 4
  store i32 %16, i32* %3, align 4
  br label %53

17:                                               ; preds = %2
  %18 = load i32, i32* %10, align 4
  store i32 %18, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %19

19:                                               ; preds = %40, %17
  %20 = load i32, i32* %9, align 4
  %21 = load i32, i32* %8, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %45

23:                                               ; preds = %19
  %24 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %25 = load %struct.ata_acpi_gtf*, %struct.ata_acpi_gtf** %6, align 8
  %26 = load %struct.ata_acpi_gtf*, %struct.ata_acpi_gtf** %7, align 8
  %27 = call i32 @ata_acpi_run_tf(%struct.ata_device* %24, %struct.ata_acpi_gtf* %25, %struct.ata_acpi_gtf* %26)
  store i32 %27, i32* %10, align 4
  %28 = load i32, i32* %10, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %23
  br label %45

31:                                               ; preds = %23
  %32 = load i32, i32* %10, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %31
  %35 = load i32*, i32** %5, align 8
  %36 = load i32, i32* %35, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %35, align 4
  %38 = load %struct.ata_acpi_gtf*, %struct.ata_acpi_gtf** %6, align 8
  store %struct.ata_acpi_gtf* %38, %struct.ata_acpi_gtf** %7, align 8
  br label %39

39:                                               ; preds = %34, %31
  br label %40

40:                                               ; preds = %39
  %41 = load i32, i32* %9, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %9, align 4
  %43 = load %struct.ata_acpi_gtf*, %struct.ata_acpi_gtf** %6, align 8
  %44 = getelementptr inbounds %struct.ata_acpi_gtf, %struct.ata_acpi_gtf* %43, i32 1
  store %struct.ata_acpi_gtf* %44, %struct.ata_acpi_gtf** %6, align 8
  br label %19

45:                                               ; preds = %30, %19
  %46 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %47 = call i32 @ata_acpi_clear_gtf(%struct.ata_device* %46)
  %48 = load i32, i32* %10, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %45
  %51 = load i32, i32* %10, align 4
  store i32 %51, i32* %3, align 4
  br label %53

52:                                               ; preds = %45
  store i32 0, i32* %3, align 4
  br label %53

53:                                               ; preds = %52, %50, %15
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

declare dso_local i32 @ata_dev_get_GTF(%struct.ata_device*, %struct.ata_acpi_gtf**) #1

declare dso_local i32 @ata_acpi_run_tf(%struct.ata_device*, %struct.ata_acpi_gtf*, %struct.ata_acpi_gtf*) #1

declare dso_local i32 @ata_acpi_clear_gtf(%struct.ata_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
