; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_sata_promise.c_pdc_sata_ata_port_to_ata_no.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_sata_promise.c_pdc_sata_ata_port_to_ata_no.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_port = type { i32, %struct.ata_host* }
%struct.ata_host = type { %struct.ata_port** }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ata_port*)* @pdc_sata_ata_port_to_ata_no to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pdc_sata_ata_port_to_ata_no(%struct.ata_port* %0) #0 {
  %2 = alloca %struct.ata_port*, align 8
  %3 = alloca %struct.ata_host*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.ata_port* %0, %struct.ata_port** %2, align 8
  %6 = load %struct.ata_port*, %struct.ata_port** %2, align 8
  %7 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %6, i32 0, i32 1
  %8 = load %struct.ata_host*, %struct.ata_host** %7, align 8
  store %struct.ata_host* %8, %struct.ata_host** %3, align 8
  %9 = load %struct.ata_port*, %struct.ata_port** %2, align 8
  %10 = call i32 @pdc_sata_nr_ports(%struct.ata_port* %9)
  store i32 %10, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %11

11:                                               ; preds = %28, %1
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* %4, align 4
  %14 = icmp ult i32 %12, %13
  br i1 %14, label %15, label %25

15:                                               ; preds = %11
  %16 = load %struct.ata_host*, %struct.ata_host** %3, align 8
  %17 = getelementptr inbounds %struct.ata_host, %struct.ata_host* %16, i32 0, i32 0
  %18 = load %struct.ata_port**, %struct.ata_port*** %17, align 8
  %19 = load i32, i32* %5, align 4
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds %struct.ata_port*, %struct.ata_port** %18, i64 %20
  %22 = load %struct.ata_port*, %struct.ata_port** %21, align 8
  %23 = load %struct.ata_port*, %struct.ata_port** %2, align 8
  %24 = icmp ne %struct.ata_port* %22, %23
  br label %25

25:                                               ; preds = %15, %11
  %26 = phi i1 [ false, %11 ], [ %24, %15 ]
  br i1 %26, label %27, label %31

27:                                               ; preds = %25
  br label %28

28:                                               ; preds = %27
  %29 = load i32, i32* %5, align 4
  %30 = add i32 %29, 1
  store i32 %30, i32* %5, align 4
  br label %11

31:                                               ; preds = %25
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* %4, align 4
  %34 = icmp uge i32 %32, %33
  %35 = zext i1 %34 to i32
  %36 = call i32 @BUG_ON(i32 %35)
  %37 = load i32, i32* %5, align 4
  %38 = load %struct.ata_port*, %struct.ata_port** %2, align 8
  %39 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @pdc_is_sataii_tx4(i32 %40)
  %42 = call i32 @pdc_port_no_to_ata_no(i32 %37, i32 %41)
  ret i32 %42
}

declare dso_local i32 @pdc_sata_nr_ports(%struct.ata_port*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @pdc_port_no_to_ata_no(i32, i32) #1

declare dso_local i32 @pdc_is_sataii_tx4(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
