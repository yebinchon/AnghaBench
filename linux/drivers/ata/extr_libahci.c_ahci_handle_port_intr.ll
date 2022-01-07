; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_libahci.c_ahci_handle_port_intr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_libahci.c_ahci_handle_port_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_host = type { i32, i32, %struct.ata_port** }
%struct.ata_port = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c"port %u\0A\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"port %u (no irq)\0A\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"interrupt on disabled port %u\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ahci_handle_port_intr(%struct.ata_host* %0, i32 %1) #0 {
  %3 = alloca %struct.ata_host*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.ata_port*, align 8
  store %struct.ata_host* %0, %struct.ata_host** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %5, align 4
  br label %8

8:                                                ; preds = %49, %2
  %9 = load i32, i32* %5, align 4
  %10 = load %struct.ata_host*, %struct.ata_host** %3, align 8
  %11 = getelementptr inbounds %struct.ata_host, %struct.ata_host* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp ult i32 %9, %12
  br i1 %13, label %14, label %52

14:                                               ; preds = %8
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* %5, align 4
  %17 = shl i32 1, %16
  %18 = and i32 %15, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %14
  br label %49

21:                                               ; preds = %14
  %22 = load %struct.ata_host*, %struct.ata_host** %3, align 8
  %23 = getelementptr inbounds %struct.ata_host, %struct.ata_host* %22, i32 0, i32 2
  %24 = load %struct.ata_port**, %struct.ata_port*** %23, align 8
  %25 = load i32, i32* %5, align 4
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds %struct.ata_port*, %struct.ata_port** %24, i64 %26
  %28 = load %struct.ata_port*, %struct.ata_port** %27, align 8
  store %struct.ata_port* %28, %struct.ata_port** %7, align 8
  %29 = load %struct.ata_port*, %struct.ata_port** %7, align 8
  %30 = icmp ne %struct.ata_port* %29, null
  br i1 %30, label %31, label %36

31:                                               ; preds = %21
  %32 = load %struct.ata_port*, %struct.ata_port** %7, align 8
  %33 = call i32 @ahci_port_intr(%struct.ata_port* %32)
  %34 = load i32, i32* %5, align 4
  %35 = call i32 @VPRINTK(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %34)
  br label %48

36:                                               ; preds = %21
  %37 = load i32, i32* %5, align 4
  %38 = call i32 @VPRINTK(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %37)
  %39 = call i64 (...) @ata_ratelimit()
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %36
  %42 = load %struct.ata_host*, %struct.ata_host** %3, align 8
  %43 = getelementptr inbounds %struct.ata_host, %struct.ata_host* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* %5, align 4
  %46 = call i32 @dev_warn(i32 %44, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %45)
  br label %47

47:                                               ; preds = %41, %36
  br label %48

48:                                               ; preds = %47, %31
  store i32 1, i32* %6, align 4
  br label %49

49:                                               ; preds = %48, %20
  %50 = load i32, i32* %5, align 4
  %51 = add i32 %50, 1
  store i32 %51, i32* %5, align 4
  br label %8

52:                                               ; preds = %8
  %53 = load i32, i32* %6, align 4
  ret i32 %53
}

declare dso_local i32 @ahci_port_intr(%struct.ata_port*) #1

declare dso_local i32 @VPRINTK(i8*, i32) #1

declare dso_local i64 @ata_ratelimit(...) #1

declare dso_local i32 @dev_warn(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
