; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_libata-core.c_ata_host_activate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_libata-core.c_ata_host_activate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_host = type { i32, i32, i32* }
%struct.scsi_host_template = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"%s[%s]\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"irq %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ata_host_activate(%struct.ata_host* %0, i32 %1, i32 %2, i64 %3, %struct.scsi_host_template* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ata_host*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca %struct.scsi_host_template*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  store %struct.ata_host* %0, %struct.ata_host** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i64 %3, i64* %10, align 8
  store %struct.scsi_host_template* %4, %struct.scsi_host_template** %11, align 8
  %15 = load %struct.ata_host*, %struct.ata_host** %7, align 8
  %16 = call i32 @ata_host_start(%struct.ata_host* %15)
  store i32 %16, i32* %13, align 4
  %17 = load i32, i32* %13, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %5
  %20 = load i32, i32* %13, align 4
  store i32 %20, i32* %6, align 4
  br label %98

21:                                               ; preds = %5
  %22 = load i32, i32* %8, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %30, label %24

24:                                               ; preds = %21
  %25 = load i32, i32* %9, align 4
  %26 = call i32 @WARN_ON(i32 %25)
  %27 = load %struct.ata_host*, %struct.ata_host** %7, align 8
  %28 = load %struct.scsi_host_template*, %struct.scsi_host_template** %11, align 8
  %29 = call i32 @ata_host_register(%struct.ata_host* %27, %struct.scsi_host_template* %28)
  store i32 %29, i32* %6, align 4
  br label %98

30:                                               ; preds = %21
  %31 = load %struct.ata_host*, %struct.ata_host** %7, align 8
  %32 = getelementptr inbounds %struct.ata_host, %struct.ata_host* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @GFP_KERNEL, align 4
  %35 = load %struct.ata_host*, %struct.ata_host** %7, align 8
  %36 = getelementptr inbounds %struct.ata_host, %struct.ata_host* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @dev_driver_string(i32 %37)
  %39 = load %struct.ata_host*, %struct.ata_host** %7, align 8
  %40 = getelementptr inbounds %struct.ata_host, %struct.ata_host* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @dev_name(i32 %41)
  %43 = call i8* @devm_kasprintf(i32 %33, i32 %34, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %38, i32 %42)
  store i8* %43, i8** %14, align 8
  %44 = load i8*, i8** %14, align 8
  %45 = icmp ne i8* %44, null
  br i1 %45, label %49, label %46

46:                                               ; preds = %30
  %47 = load i32, i32* @ENOMEM, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %6, align 4
  br label %98

49:                                               ; preds = %30
  %50 = load %struct.ata_host*, %struct.ata_host** %7, align 8
  %51 = getelementptr inbounds %struct.ata_host, %struct.ata_host* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* %8, align 4
  %54 = load i32, i32* %9, align 4
  %55 = load i64, i64* %10, align 8
  %56 = load i8*, i8** %14, align 8
  %57 = load %struct.ata_host*, %struct.ata_host** %7, align 8
  %58 = call i32 @devm_request_irq(i32 %52, i32 %53, i32 %54, i64 %55, i8* %56, %struct.ata_host* %57)
  store i32 %58, i32* %13, align 4
  %59 = load i32, i32* %13, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %49
  %62 = load i32, i32* %13, align 4
  store i32 %62, i32* %6, align 4
  br label %98

63:                                               ; preds = %49
  store i32 0, i32* %12, align 4
  br label %64

64:                                               ; preds = %80, %63
  %65 = load i32, i32* %12, align 4
  %66 = load %struct.ata_host*, %struct.ata_host** %7, align 8
  %67 = getelementptr inbounds %struct.ata_host, %struct.ata_host* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = icmp slt i32 %65, %68
  br i1 %69, label %70, label %83

70:                                               ; preds = %64
  %71 = load %struct.ata_host*, %struct.ata_host** %7, align 8
  %72 = getelementptr inbounds %struct.ata_host, %struct.ata_host* %71, i32 0, i32 2
  %73 = load i32*, i32** %72, align 8
  %74 = load i32, i32* %12, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %73, i64 %75
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* %8, align 4
  %79 = call i32 @ata_port_desc(i32 %77, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %78)
  br label %80

80:                                               ; preds = %70
  %81 = load i32, i32* %12, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %12, align 4
  br label %64

83:                                               ; preds = %64
  %84 = load %struct.ata_host*, %struct.ata_host** %7, align 8
  %85 = load %struct.scsi_host_template*, %struct.scsi_host_template** %11, align 8
  %86 = call i32 @ata_host_register(%struct.ata_host* %84, %struct.scsi_host_template* %85)
  store i32 %86, i32* %13, align 4
  %87 = load i32, i32* %13, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %96

89:                                               ; preds = %83
  %90 = load %struct.ata_host*, %struct.ata_host** %7, align 8
  %91 = getelementptr inbounds %struct.ata_host, %struct.ata_host* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* %8, align 4
  %94 = load %struct.ata_host*, %struct.ata_host** %7, align 8
  %95 = call i32 @devm_free_irq(i32 %92, i32 %93, %struct.ata_host* %94)
  br label %96

96:                                               ; preds = %89, %83
  %97 = load i32, i32* %13, align 4
  store i32 %97, i32* %6, align 4
  br label %98

98:                                               ; preds = %96, %61, %46, %24, %19
  %99 = load i32, i32* %6, align 4
  ret i32 %99
}

declare dso_local i32 @ata_host_start(%struct.ata_host*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @ata_host_register(%struct.ata_host*, %struct.scsi_host_template*) #1

declare dso_local i8* @devm_kasprintf(i32, i32, i8*, i32, i32) #1

declare dso_local i32 @dev_driver_string(i32) #1

declare dso_local i32 @dev_name(i32) #1

declare dso_local i32 @devm_request_irq(i32, i32, i32, i64, i8*, %struct.ata_host*) #1

declare dso_local i32 @ata_port_desc(i32, i8*, i32) #1

declare dso_local i32 @devm_free_irq(i32, i32, %struct.ata_host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
