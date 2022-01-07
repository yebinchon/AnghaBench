; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_ata_piix.c_piix_init_sata_map.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_ata_piix.c_piix_init_sata_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_port_info = type { i32 }
%struct.pci_dev = type { i32 }
%struct.piix_map_db = type { i32**, i64 }

@ICH5_PMR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c" XX\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c" --\00", align 1
@piix_port_info = common dso_local global %struct.ata_port_info* null, align 8
@ich_pata_100 = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [9 x i8] c" IDE IDE\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c" P%d\00", align 1
@ATA_FLAG_SLAVE_POSS = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [11 x i8] c"MAP [%s ]\0A\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"invalid MAP value %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.pci_dev*, %struct.ata_port_info*, %struct.piix_map_db*)* @piix_init_sata_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @piix_init_sata_map(%struct.pci_dev* %0, %struct.ata_port_info* %1, %struct.piix_map_db* %2) #0 {
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.ata_port_info*, align 8
  %6 = alloca %struct.piix_map_db*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca [32 x i8], align 16
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store %struct.ata_port_info* %1, %struct.ata_port_info** %5, align 8
  store %struct.piix_map_db* %2, %struct.piix_map_db** %6, align 8
  store i32 0, i32* %9, align 4
  %14 = getelementptr inbounds [32 x i8], [32 x i8]* %11, i64 0, i64 0
  store i8* %14, i8** %12, align 8
  %15 = getelementptr inbounds [32 x i8], [32 x i8]* %11, i64 0, i64 0
  %16 = getelementptr inbounds i8, i8* %15, i64 32
  store i8* %16, i8** %13, align 8
  %17 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %18 = load i32, i32* @ICH5_PMR, align 4
  %19 = call i32 @pci_read_config_byte(%struct.pci_dev* %17, i32 %18, i64* %10)
  %20 = load %struct.piix_map_db*, %struct.piix_map_db** %6, align 8
  %21 = getelementptr inbounds %struct.piix_map_db, %struct.piix_map_db* %20, i32 0, i32 0
  %22 = load i32**, i32*** %21, align 8
  %23 = load i64, i64* %10, align 8
  %24 = load %struct.piix_map_db*, %struct.piix_map_db** %6, align 8
  %25 = getelementptr inbounds %struct.piix_map_db, %struct.piix_map_db* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = and i64 %23, %26
  %28 = getelementptr inbounds i32*, i32** %22, i64 %27
  %29 = load i32*, i32** %28, align 8
  store i32* %29, i32** %7, align 8
  store i32 0, i32* %8, align 4
  br label %30

30:                                               ; preds = %134, %3
  %31 = load i32, i32* %8, align 4
  %32 = icmp slt i32 %31, 4
  br i1 %32, label %33, label %137

33:                                               ; preds = %30
  %34 = load i32*, i32** %7, align 8
  %35 = load i32, i32* %8, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  %38 = load i32, i32* %37, align 4
  switch i32 %38, label %102 [
    i32 128, label %39
    i32 129, label %51
    i32 130, label %63
  ]

39:                                               ; preds = %33
  store i32 1, i32* %9, align 4
  %40 = load i8*, i8** %12, align 8
  %41 = load i8*, i8** %13, align 8
  %42 = load i8*, i8** %12, align 8
  %43 = ptrtoint i8* %41 to i64
  %44 = ptrtoint i8* %42 to i64
  %45 = sub i64 %43, %44
  %46 = trunc i64 %45 to i32
  %47 = call i32 (i8*, i32, i8*, ...) @scnprintf(i8* %40, i32 %46, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %48 = load i8*, i8** %12, align 8
  %49 = sext i32 %47 to i64
  %50 = getelementptr inbounds i8, i8* %48, i64 %49
  store i8* %50, i8** %12, align 8
  br label %133

51:                                               ; preds = %33
  %52 = load i8*, i8** %12, align 8
  %53 = load i8*, i8** %13, align 8
  %54 = load i8*, i8** %12, align 8
  %55 = ptrtoint i8* %53 to i64
  %56 = ptrtoint i8* %54 to i64
  %57 = sub i64 %55, %56
  %58 = trunc i64 %57 to i32
  %59 = call i32 (i8*, i32, i8*, ...) @scnprintf(i8* %52, i32 %58, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %60 = load i8*, i8** %12, align 8
  %61 = sext i32 %59 to i64
  %62 = getelementptr inbounds i8, i8* %60, i64 %61
  store i8* %62, i8** %12, align 8
  br label %133

63:                                               ; preds = %33
  %64 = load i32, i32* %8, align 4
  %65 = and i32 %64, 1
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %75, label %67

67:                                               ; preds = %63
  %68 = load i32*, i32** %7, align 8
  %69 = load i32, i32* %8, align 4
  %70 = add nsw i32 %69, 1
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %68, i64 %71
  %73 = load i32, i32* %72, align 4
  %74 = icmp ne i32 %73, 130
  br label %75

75:                                               ; preds = %67, %63
  %76 = phi i1 [ true, %63 ], [ %74, %67 ]
  %77 = zext i1 %76 to i32
  %78 = call i32 @WARN_ON(i32 %77)
  %79 = load %struct.ata_port_info*, %struct.ata_port_info** %5, align 8
  %80 = load i32, i32* %8, align 4
  %81 = sdiv i32 %80, 2
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.ata_port_info, %struct.ata_port_info* %79, i64 %82
  %84 = load %struct.ata_port_info*, %struct.ata_port_info** @piix_port_info, align 8
  %85 = load i64, i64* @ich_pata_100, align 8
  %86 = getelementptr inbounds %struct.ata_port_info, %struct.ata_port_info* %84, i64 %85
  %87 = bitcast %struct.ata_port_info* %83 to i8*
  %88 = bitcast %struct.ata_port_info* %86 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %87, i8* align 4 %88, i64 4, i1 false)
  %89 = load i32, i32* %8, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %8, align 4
  %91 = load i8*, i8** %12, align 8
  %92 = load i8*, i8** %13, align 8
  %93 = load i8*, i8** %12, align 8
  %94 = ptrtoint i8* %92 to i64
  %95 = ptrtoint i8* %93 to i64
  %96 = sub i64 %94, %95
  %97 = trunc i64 %96 to i32
  %98 = call i32 (i8*, i32, i8*, ...) @scnprintf(i8* %91, i32 %97, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %99 = load i8*, i8** %12, align 8
  %100 = sext i32 %98 to i64
  %101 = getelementptr inbounds i8, i8* %99, i64 %100
  store i8* %101, i8** %12, align 8
  br label %133

102:                                              ; preds = %33
  %103 = load i8*, i8** %12, align 8
  %104 = load i8*, i8** %13, align 8
  %105 = load i8*, i8** %12, align 8
  %106 = ptrtoint i8* %104 to i64
  %107 = ptrtoint i8* %105 to i64
  %108 = sub i64 %106, %107
  %109 = trunc i64 %108 to i32
  %110 = load i32*, i32** %7, align 8
  %111 = load i32, i32* %8, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i32, i32* %110, i64 %112
  %114 = load i32, i32* %113, align 4
  %115 = call i32 (i8*, i32, i8*, ...) @scnprintf(i8* %103, i32 %109, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 %114)
  %116 = load i8*, i8** %12, align 8
  %117 = sext i32 %115 to i64
  %118 = getelementptr inbounds i8, i8* %116, i64 %117
  store i8* %118, i8** %12, align 8
  %119 = load i32, i32* %8, align 4
  %120 = and i32 %119, 1
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %132

122:                                              ; preds = %102
  %123 = load i32, i32* @ATA_FLAG_SLAVE_POSS, align 4
  %124 = load %struct.ata_port_info*, %struct.ata_port_info** %5, align 8
  %125 = load i32, i32* %8, align 4
  %126 = sdiv i32 %125, 2
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds %struct.ata_port_info, %struct.ata_port_info* %124, i64 %127
  %129 = getelementptr inbounds %struct.ata_port_info, %struct.ata_port_info* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = or i32 %130, %123
  store i32 %131, i32* %129, align 4
  br label %132

132:                                              ; preds = %122, %102
  br label %133

133:                                              ; preds = %132, %75, %51, %39
  br label %134

134:                                              ; preds = %133
  %135 = load i32, i32* %8, align 4
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %8, align 4
  br label %30

137:                                              ; preds = %30
  %138 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %139 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %138, i32 0, i32 0
  %140 = getelementptr inbounds [32 x i8], [32 x i8]* %11, i64 0, i64 0
  %141 = call i32 @dev_info(i32* %139, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i8* %140)
  %142 = load i32, i32* %9, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %149

144:                                              ; preds = %137
  %145 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %146 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %145, i32 0, i32 0
  %147 = load i64, i64* %10, align 8
  %148 = call i32 @dev_err(i32* %146, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0), i64 %147)
  br label %149

149:                                              ; preds = %144, %137
  %150 = load i32*, i32** %7, align 8
  ret i32* %150
}

declare dso_local i32 @pci_read_config_byte(%struct.pci_dev*, i32, i64*) #1

declare dso_local i32 @scnprintf(i8*, i32, i8*, ...) #1

declare dso_local i32 @WARN_ON(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @dev_info(i32*, i8*, i8*) #1

declare dso_local i32 @dev_err(i32*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
