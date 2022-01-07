; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_libata-pmp.c_sata_pmp_init_links.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_libata-pmp.c_sata_pmp_init_links.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_port = type { %struct.ata_link* }
%struct.ata_link = type { i64, %struct.ata_eh_context }
%struct.ata_eh_context = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@SATA_PMP_MAX_PORTS = common dso_local global i32 0, align 4
@GFP_NOIO = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ATA_ALL_DEVICES = common dso_local global i32 0, align 4
@ATA_EH_RESET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ata_port*, i32)* @sata_pmp_init_links to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sata_pmp_init_links(%struct.ata_port* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ata_port*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ata_link*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.ata_link*, align 8
  %10 = alloca %struct.ata_eh_context*, align 8
  store %struct.ata_port* %0, %struct.ata_port** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.ata_port*, %struct.ata_port** %4, align 8
  %12 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %11, i32 0, i32 0
  %13 = load %struct.ata_link*, %struct.ata_link** %12, align 8
  store %struct.ata_link* %13, %struct.ata_link** %6, align 8
  %14 = load %struct.ata_link*, %struct.ata_link** %6, align 8
  %15 = icmp ne %struct.ata_link* %14, null
  br i1 %15, label %63, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* @SATA_PMP_MAX_PORTS, align 4
  %18 = load i32, i32* @GFP_NOIO, align 4
  %19 = call %struct.ata_link* @kcalloc(i32 %17, i32 16, i32 %18)
  store %struct.ata_link* %19, %struct.ata_link** %6, align 8
  %20 = load %struct.ata_link*, %struct.ata_link** %6, align 8
  %21 = icmp ne %struct.ata_link* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %16
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %110

25:                                               ; preds = %16
  store i32 0, i32* %7, align 4
  br label %26

26:                                               ; preds = %38, %25
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* @SATA_PMP_MAX_PORTS, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %41

30:                                               ; preds = %26
  %31 = load %struct.ata_port*, %struct.ata_port** %4, align 8
  %32 = load %struct.ata_link*, %struct.ata_link** %6, align 8
  %33 = load i32, i32* %7, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.ata_link, %struct.ata_link* %32, i64 %34
  %36 = load i32, i32* %7, align 4
  %37 = call i32 @ata_link_init(%struct.ata_port* %31, %struct.ata_link* %35, i32 %36)
  br label %38

38:                                               ; preds = %30
  %39 = load i32, i32* %7, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %7, align 4
  br label %26

41:                                               ; preds = %26
  %42 = load %struct.ata_link*, %struct.ata_link** %6, align 8
  %43 = load %struct.ata_port*, %struct.ata_port** %4, align 8
  %44 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %43, i32 0, i32 0
  store %struct.ata_link* %42, %struct.ata_link** %44, align 8
  store i32 0, i32* %7, align 4
  br label %45

45:                                               ; preds = %59, %41
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* @SATA_PMP_MAX_PORTS, align 4
  %48 = icmp slt i32 %46, %47
  br i1 %48, label %49, label %62

49:                                               ; preds = %45
  %50 = load %struct.ata_link*, %struct.ata_link** %6, align 8
  %51 = load i32, i32* %7, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.ata_link, %struct.ata_link* %50, i64 %52
  %54 = call i32 @ata_tlink_add(%struct.ata_link* %53)
  store i32 %54, i32* %8, align 4
  %55 = load i32, i32* %8, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %49
  br label %93

58:                                               ; preds = %49
  br label %59

59:                                               ; preds = %58
  %60 = load i32, i32* %7, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %7, align 4
  br label %45

62:                                               ; preds = %45
  br label %63

63:                                               ; preds = %62, %2
  store i32 0, i32* %7, align 4
  br label %64

64:                                               ; preds = %89, %63
  %65 = load i32, i32* %7, align 4
  %66 = load i32, i32* %5, align 4
  %67 = icmp slt i32 %65, %66
  br i1 %67, label %68, label %92

68:                                               ; preds = %64
  %69 = load %struct.ata_link*, %struct.ata_link** %6, align 8
  %70 = load i32, i32* %7, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.ata_link, %struct.ata_link* %69, i64 %71
  store %struct.ata_link* %72, %struct.ata_link** %9, align 8
  %73 = load %struct.ata_link*, %struct.ata_link** %9, align 8
  %74 = getelementptr inbounds %struct.ata_link, %struct.ata_link* %73, i32 0, i32 1
  store %struct.ata_eh_context* %74, %struct.ata_eh_context** %10, align 8
  %75 = load %struct.ata_link*, %struct.ata_link** %9, align 8
  %76 = getelementptr inbounds %struct.ata_link, %struct.ata_link* %75, i32 0, i32 0
  store i64 0, i64* %76, align 8
  %77 = load i32, i32* @ATA_ALL_DEVICES, align 4
  %78 = load %struct.ata_eh_context*, %struct.ata_eh_context** %10, align 8
  %79 = getelementptr inbounds %struct.ata_eh_context, %struct.ata_eh_context* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = or i32 %81, %77
  store i32 %82, i32* %80, align 4
  %83 = load i32, i32* @ATA_EH_RESET, align 4
  %84 = load %struct.ata_eh_context*, %struct.ata_eh_context** %10, align 8
  %85 = getelementptr inbounds %struct.ata_eh_context, %struct.ata_eh_context* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = or i32 %87, %83
  store i32 %88, i32* %86, align 4
  br label %89

89:                                               ; preds = %68
  %90 = load i32, i32* %7, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %7, align 4
  br label %64

92:                                               ; preds = %64
  store i32 0, i32* %3, align 4
  br label %110

93:                                               ; preds = %57
  br label %94

94:                                               ; preds = %98, %93
  %95 = load i32, i32* %7, align 4
  %96 = add nsw i32 %95, -1
  store i32 %96, i32* %7, align 4
  %97 = icmp sge i32 %96, 0
  br i1 %97, label %98, label %104

98:                                               ; preds = %94
  %99 = load %struct.ata_link*, %struct.ata_link** %6, align 8
  %100 = load i32, i32* %7, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds %struct.ata_link, %struct.ata_link* %99, i64 %101
  %103 = call i32 @ata_tlink_delete(%struct.ata_link* %102)
  br label %94

104:                                              ; preds = %94
  %105 = load %struct.ata_link*, %struct.ata_link** %6, align 8
  %106 = call i32 @kfree(%struct.ata_link* %105)
  %107 = load %struct.ata_port*, %struct.ata_port** %4, align 8
  %108 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %107, i32 0, i32 0
  store %struct.ata_link* null, %struct.ata_link** %108, align 8
  %109 = load i32, i32* %8, align 4
  store i32 %109, i32* %3, align 4
  br label %110

110:                                              ; preds = %104, %92, %22
  %111 = load i32, i32* %3, align 4
  ret i32 %111
}

declare dso_local %struct.ata_link* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @ata_link_init(%struct.ata_port*, %struct.ata_link*, i32) #1

declare dso_local i32 @ata_tlink_add(%struct.ata_link*) #1

declare dso_local i32 @ata_tlink_delete(%struct.ata_link*) #1

declare dso_local i32 @kfree(%struct.ata_link*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
