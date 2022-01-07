; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_pata_icside.c_pata_icside_add_ports.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_pata_icside.c_pata_icside_add_ports.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pata_icside_info = type { i32, i32*, i32, i32, i32, i32, i32, i64, %struct.expansion_card* }
%struct.expansion_card = type { i32, i32, %struct.TYPE_2__*, i32, i64 }
%struct.TYPE_2__ = type { i32 (%struct.expansion_card*, i32)* }
%struct.ata_host = type { %struct.ata_port**, i32, i32 }
%struct.ata_port = type { i32*, i32, i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@ATA_HOST_SIMPLEX = common dso_local global i32 0, align 4
@ATA_PIO4 = common dso_local global i32 0, align 4
@ATA_FLAG_SLAVE_POSS = common dso_local global i32 0, align 4
@pata_icside_port_ops = common dso_local global i32 0, align 4
@ata_bmdma_interrupt = common dso_local global i32 0, align 4
@pata_icside_sht = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pata_icside_info*)* @pata_icside_add_ports to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pata_icside_add_ports(%struct.pata_icside_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pata_icside_info*, align 8
  %4 = alloca %struct.expansion_card*, align 8
  %5 = alloca %struct.ata_host*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ata_port*, align 8
  store %struct.pata_icside_info* %0, %struct.pata_icside_info** %3, align 8
  %8 = load %struct.pata_icside_info*, %struct.pata_icside_info** %3, align 8
  %9 = getelementptr inbounds %struct.pata_icside_info, %struct.pata_icside_info* %8, i32 0, i32 8
  %10 = load %struct.expansion_card*, %struct.expansion_card** %9, align 8
  store %struct.expansion_card* %10, %struct.expansion_card** %4, align 8
  %11 = load %struct.pata_icside_info*, %struct.pata_icside_info** %3, align 8
  %12 = getelementptr inbounds %struct.pata_icside_info, %struct.pata_icside_info* %11, i32 0, i32 7
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %26

15:                                               ; preds = %1
  %16 = load %struct.pata_icside_info*, %struct.pata_icside_info** %3, align 8
  %17 = getelementptr inbounds %struct.pata_icside_info, %struct.pata_icside_info* %16, i32 0, i32 7
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.expansion_card*, %struct.expansion_card** %4, align 8
  %20 = getelementptr inbounds %struct.expansion_card, %struct.expansion_card* %19, i32 0, i32 4
  store i64 %18, i64* %20, align 8
  %21 = load %struct.pata_icside_info*, %struct.pata_icside_info** %3, align 8
  %22 = getelementptr inbounds %struct.pata_icside_info, %struct.pata_icside_info* %21, i32 0, i32 6
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.expansion_card*, %struct.expansion_card** %4, align 8
  %25 = getelementptr inbounds %struct.expansion_card, %struct.expansion_card* %24, i32 0, i32 3
  store i32 %23, i32* %25, align 8
  br label %26

26:                                               ; preds = %15, %1
  %27 = load %struct.pata_icside_info*, %struct.pata_icside_info** %3, align 8
  %28 = getelementptr inbounds %struct.pata_icside_info, %struct.pata_icside_info* %27, i32 0, i32 5
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %40

31:                                               ; preds = %26
  %32 = load %struct.expansion_card*, %struct.expansion_card** %4, align 8
  %33 = load %struct.pata_icside_info*, %struct.pata_icside_info** %3, align 8
  %34 = getelementptr inbounds %struct.pata_icside_info, %struct.pata_icside_info* %33, i32 0, i32 5
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.pata_icside_info*, %struct.pata_icside_info** %3, align 8
  %37 = getelementptr inbounds %struct.pata_icside_info, %struct.pata_icside_info* %36, i32 0, i32 4
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @ecard_setirq(%struct.expansion_card* %32, i32 %35, i32 %38)
  br label %40

40:                                               ; preds = %31, %26
  %41 = load %struct.expansion_card*, %struct.expansion_card** %4, align 8
  %42 = getelementptr inbounds %struct.expansion_card, %struct.expansion_card* %41, i32 0, i32 2
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32 (%struct.expansion_card*, i32)*, i32 (%struct.expansion_card*, i32)** %44, align 8
  %46 = load %struct.expansion_card*, %struct.expansion_card** %4, align 8
  %47 = load %struct.expansion_card*, %struct.expansion_card** %4, align 8
  %48 = getelementptr inbounds %struct.expansion_card, %struct.expansion_card* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = call i32 %45(%struct.expansion_card* %46, i32 %49)
  %51 = load %struct.expansion_card*, %struct.expansion_card** %4, align 8
  %52 = getelementptr inbounds %struct.expansion_card, %struct.expansion_card* %51, i32 0, i32 1
  %53 = load %struct.pata_icside_info*, %struct.pata_icside_info** %3, align 8
  %54 = getelementptr inbounds %struct.pata_icside_info, %struct.pata_icside_info* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = call %struct.ata_host* @ata_host_alloc(i32* %52, i32 %55)
  store %struct.ata_host* %56, %struct.ata_host** %5, align 8
  %57 = load %struct.ata_host*, %struct.ata_host** %5, align 8
  %58 = icmp ne %struct.ata_host* %57, null
  br i1 %58, label %62, label %59

59:                                               ; preds = %40
  %60 = load i32, i32* @ENOMEM, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %2, align 4
  br label %123

62:                                               ; preds = %40
  %63 = load %struct.pata_icside_info*, %struct.pata_icside_info** %3, align 8
  %64 = getelementptr inbounds %struct.pata_icside_info, %struct.pata_icside_info* %63, i32 0, i32 4
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.ata_host*, %struct.ata_host** %5, align 8
  %67 = getelementptr inbounds %struct.ata_host, %struct.ata_host* %66, i32 0, i32 2
  store i32 %65, i32* %67, align 4
  %68 = load i32, i32* @ATA_HOST_SIMPLEX, align 4
  %69 = load %struct.ata_host*, %struct.ata_host** %5, align 8
  %70 = getelementptr inbounds %struct.ata_host, %struct.ata_host* %69, i32 0, i32 1
  store i32 %68, i32* %70, align 8
  store i32 0, i32* %6, align 4
  br label %71

71:                                               ; preds = %113, %62
  %72 = load i32, i32* %6, align 4
  %73 = load %struct.pata_icside_info*, %struct.pata_icside_info** %3, align 8
  %74 = getelementptr inbounds %struct.pata_icside_info, %struct.pata_icside_info* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = icmp slt i32 %72, %75
  br i1 %76, label %77, label %116

77:                                               ; preds = %71
  %78 = load %struct.ata_host*, %struct.ata_host** %5, align 8
  %79 = getelementptr inbounds %struct.ata_host, %struct.ata_host* %78, i32 0, i32 0
  %80 = load %struct.ata_port**, %struct.ata_port*** %79, align 8
  %81 = load i32, i32* %6, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.ata_port*, %struct.ata_port** %80, i64 %82
  %84 = load %struct.ata_port*, %struct.ata_port** %83, align 8
  store %struct.ata_port* %84, %struct.ata_port** %7, align 8
  %85 = load i32, i32* @ATA_PIO4, align 4
  %86 = load %struct.ata_port*, %struct.ata_port** %7, align 8
  %87 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %86, i32 0, i32 3
  store i32 %85, i32* %87, align 8
  %88 = load %struct.pata_icside_info*, %struct.pata_icside_info** %3, align 8
  %89 = getelementptr inbounds %struct.pata_icside_info, %struct.pata_icside_info* %88, i32 0, i32 3
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.ata_port*, %struct.ata_port** %7, align 8
  %92 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %91, i32 0, i32 2
  store i32 %90, i32* %92, align 4
  %93 = load i32, i32* @ATA_FLAG_SLAVE_POSS, align 4
  %94 = load %struct.ata_port*, %struct.ata_port** %7, align 8
  %95 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 8
  %97 = or i32 %96, %93
  store i32 %97, i32* %95, align 8
  %98 = load %struct.ata_port*, %struct.ata_port** %7, align 8
  %99 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %98, i32 0, i32 0
  store i32* @pata_icside_port_ops, i32** %99, align 8
  %100 = load %struct.ata_port*, %struct.ata_port** %7, align 8
  %101 = load %struct.pata_icside_info*, %struct.pata_icside_info** %3, align 8
  %102 = getelementptr inbounds %struct.pata_icside_info, %struct.pata_icside_info* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 8
  %104 = load %struct.pata_icside_info*, %struct.pata_icside_info** %3, align 8
  %105 = load %struct.pata_icside_info*, %struct.pata_icside_info** %3, align 8
  %106 = getelementptr inbounds %struct.pata_icside_info, %struct.pata_icside_info* %105, i32 0, i32 1
  %107 = load i32*, i32** %106, align 8
  %108 = load i32, i32* %6, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i32, i32* %107, i64 %109
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @pata_icside_setup_ioaddr(%struct.ata_port* %100, i32 %103, %struct.pata_icside_info* %104, i32 %111)
  br label %113

113:                                              ; preds = %77
  %114 = load i32, i32* %6, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %6, align 4
  br label %71

116:                                              ; preds = %71
  %117 = load %struct.ata_host*, %struct.ata_host** %5, align 8
  %118 = load %struct.expansion_card*, %struct.expansion_card** %4, align 8
  %119 = getelementptr inbounds %struct.expansion_card, %struct.expansion_card* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = load i32, i32* @ata_bmdma_interrupt, align 4
  %122 = call i32 @ata_host_activate(%struct.ata_host* %117, i32 %120, i32 %121, i32 0, i32* @pata_icside_sht)
  store i32 %122, i32* %2, align 4
  br label %123

123:                                              ; preds = %116, %59
  %124 = load i32, i32* %2, align 4
  ret i32 %124
}

declare dso_local i32 @ecard_setirq(%struct.expansion_card*, i32, i32) #1

declare dso_local %struct.ata_host* @ata_host_alloc(i32*, i32) #1

declare dso_local i32 @pata_icside_setup_ioaddr(%struct.ata_port*, i32, %struct.pata_icside_info*, i32) #1

declare dso_local i32 @ata_host_activate(%struct.ata_host*, i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
