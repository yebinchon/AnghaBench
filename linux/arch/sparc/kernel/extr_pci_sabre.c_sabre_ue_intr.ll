; ModuleID = '/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_pci_sabre.c_sabre_ue_intr.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_pci_sabre.c_sabre_ue_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_pbm_info = type { i64, i32 }

@SABRE_UE_AFSR = common dso_local global i64 0, align 8
@SABRE_UECE_AFAR = common dso_local global i64 0, align 8
@SABRE_UEAFSR_PDRD = common dso_local global i64 0, align 8
@SABRE_UEAFSR_PDWR = common dso_local global i64 0, align 8
@SABRE_UEAFSR_SDRD = common dso_local global i64 0, align 8
@SABRE_UEAFSR_SDWR = common dso_local global i64 0, align 8
@SABRE_UEAFSR_SDTE = common dso_local global i64 0, align 8
@SABRE_UEAFSR_PDTE = common dso_local global i64 0, align 8
@IRQ_NONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"%s: Uncorrectable Error, primary error type[%s%s]\0A\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"DMA Read\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"DMA Write\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"???\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c":Translation Error\00", align 1
@.str.5 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.6 = private unnamed_addr constant [53 x i8] c"%s: bytemask[%04lx] dword_offset[%lx] was_block(%d)\0A\00", align 1
@SABRE_UEAFSR_BMSK = common dso_local global i64 0, align 8
@SABRE_UEAFSR_OFF = common dso_local global i64 0, align 8
@SABRE_UEAFSR_BLK = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [22 x i8] c"%s: UE AFAR [%016lx]\0A\00", align 1
@.str.8 = private unnamed_addr constant [26 x i8] c"%s: UE Secondary errors [\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"(DMA Read)\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c"(DMA Write)\00", align 1
@.str.11 = private unnamed_addr constant [20 x i8] c"(Translation Error)\00", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c"(none)\00", align 1
@.str.13 = private unnamed_addr constant [3 x i8] c"]\0A\00", align 1
@UE_ERR = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @sabre_ue_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sabre_ue_intr(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.pci_pbm_info*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = bitcast i8* %13 to %struct.pci_pbm_info*
  store %struct.pci_pbm_info* %14, %struct.pci_pbm_info** %6, align 8
  %15 = load %struct.pci_pbm_info*, %struct.pci_pbm_info** %6, align 8
  %16 = getelementptr inbounds %struct.pci_pbm_info, %struct.pci_pbm_info* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @SABRE_UE_AFSR, align 8
  %19 = add i64 %17, %18
  store i64 %19, i64* %7, align 8
  %20 = load %struct.pci_pbm_info*, %struct.pci_pbm_info** %6, align 8
  %21 = getelementptr inbounds %struct.pci_pbm_info, %struct.pci_pbm_info* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @SABRE_UECE_AFAR, align 8
  %24 = add i64 %22, %23
  store i64 %24, i64* %8, align 8
  %25 = load i64, i64* %8, align 8
  %26 = call i64 @upa_readq(i64 %25)
  store i64 %26, i64* %10, align 8
  %27 = load i64, i64* %7, align 8
  %28 = call i64 @upa_readq(i64 %27)
  store i64 %28, i64* %9, align 8
  %29 = load i64, i64* %9, align 8
  %30 = load i64, i64* @SABRE_UEAFSR_PDRD, align 8
  %31 = load i64, i64* @SABRE_UEAFSR_PDWR, align 8
  %32 = or i64 %30, %31
  %33 = load i64, i64* @SABRE_UEAFSR_SDRD, align 8
  %34 = or i64 %32, %33
  %35 = load i64, i64* @SABRE_UEAFSR_SDWR, align 8
  %36 = or i64 %34, %35
  %37 = load i64, i64* @SABRE_UEAFSR_SDTE, align 8
  %38 = or i64 %36, %37
  %39 = load i64, i64* @SABRE_UEAFSR_PDTE, align 8
  %40 = or i64 %38, %39
  %41 = and i64 %29, %40
  store i64 %41, i64* %11, align 8
  %42 = load i64, i64* %11, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %46, label %44

44:                                               ; preds = %2
  %45 = load i32, i32* @IRQ_NONE, align 4
  store i32 %45, i32* %3, align 4
  br label %140

46:                                               ; preds = %2
  %47 = load i64, i64* %11, align 8
  %48 = load i64, i64* %7, align 8
  %49 = call i32 @upa_writeq(i64 %47, i64 %48)
  %50 = load %struct.pci_pbm_info*, %struct.pci_pbm_info** %6, align 8
  %51 = getelementptr inbounds %struct.pci_pbm_info, %struct.pci_pbm_info* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = load i64, i64* %11, align 8
  %54 = load i64, i64* @SABRE_UEAFSR_PDRD, align 8
  %55 = and i64 %53, %54
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %46
  br label %65

58:                                               ; preds = %46
  %59 = load i64, i64* %11, align 8
  %60 = load i64, i64* @SABRE_UEAFSR_PDWR, align 8
  %61 = and i64 %59, %60
  %62 = icmp ne i64 %61, 0
  %63 = zext i1 %62 to i64
  %64 = select i1 %62, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0)
  br label %65

65:                                               ; preds = %58, %57
  %66 = phi i8* [ getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), %57 ], [ %64, %58 ]
  %67 = load i64, i64* %11, align 8
  %68 = load i64, i64* @SABRE_UEAFSR_PDTE, align 8
  %69 = and i64 %67, %68
  %70 = icmp ne i64 %69, 0
  %71 = zext i1 %70 to i64
  %72 = select i1 %70, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0)
  %73 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i32 %52, i8* %66, i8* %72)
  %74 = load %struct.pci_pbm_info*, %struct.pci_pbm_info** %6, align 8
  %75 = getelementptr inbounds %struct.pci_pbm_info, %struct.pci_pbm_info* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = load i64, i64* %9, align 8
  %78 = load i64, i64* @SABRE_UEAFSR_BMSK, align 8
  %79 = and i64 %77, %78
  %80 = lshr i64 %79, 32
  %81 = load i64, i64* %9, align 8
  %82 = load i64, i64* @SABRE_UEAFSR_OFF, align 8
  %83 = and i64 %81, %82
  %84 = lshr i64 %83, 29
  %85 = load i64, i64* %9, align 8
  %86 = load i64, i64* @SABRE_UEAFSR_BLK, align 8
  %87 = and i64 %85, %86
  %88 = icmp ne i64 %87, 0
  %89 = zext i1 %88 to i64
  %90 = select i1 %88, i32 1, i32 0
  %91 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.6, i64 0, i64 0), i32 %76, i64 %80, i64 %84, i32 %90)
  %92 = load %struct.pci_pbm_info*, %struct.pci_pbm_info** %6, align 8
  %93 = getelementptr inbounds %struct.pci_pbm_info, %struct.pci_pbm_info* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 8
  %95 = load i64, i64* %10, align 8
  %96 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0), i32 %94, i64 %95)
  %97 = load %struct.pci_pbm_info*, %struct.pci_pbm_info** %6, align 8
  %98 = getelementptr inbounds %struct.pci_pbm_info, %struct.pci_pbm_info* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 8
  %100 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8, i64 0, i64 0), i32 %99)
  store i32 0, i32* %12, align 4
  %101 = load i64, i64* %9, align 8
  %102 = load i64, i64* @SABRE_UEAFSR_SDRD, align 8
  %103 = and i64 %101, %102
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %109

105:                                              ; preds = %65
  %106 = load i32, i32* %12, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %12, align 4
  %108 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i64 0, i64 0))
  br label %109

109:                                              ; preds = %105, %65
  %110 = load i64, i64* %9, align 8
  %111 = load i64, i64* @SABRE_UEAFSR_SDWR, align 8
  %112 = and i64 %110, %111
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %118

114:                                              ; preds = %109
  %115 = load i32, i32* %12, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %12, align 4
  %117 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i64 0, i64 0))
  br label %118

118:                                              ; preds = %114, %109
  %119 = load i64, i64* %9, align 8
  %120 = load i64, i64* @SABRE_UEAFSR_SDTE, align 8
  %121 = and i64 %119, %120
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %127

123:                                              ; preds = %118
  %124 = load i32, i32* %12, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %12, align 4
  %126 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.11, i64 0, i64 0))
  br label %127

127:                                              ; preds = %123, %118
  %128 = load i32, i32* %12, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %132, label %130

130:                                              ; preds = %127
  %131 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i64 0, i64 0))
  br label %132

132:                                              ; preds = %130, %127
  %133 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i64 0, i64 0))
  %134 = load %struct.pci_pbm_info*, %struct.pci_pbm_info** %6, align 8
  %135 = load i64, i64* %9, align 8
  %136 = load i64, i64* %10, align 8
  %137 = load i32, i32* @UE_ERR, align 4
  %138 = call i32 @psycho_check_iommu_error(%struct.pci_pbm_info* %134, i64 %135, i64 %136, i32 %137)
  %139 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %139, i32* %3, align 4
  br label %140

140:                                              ; preds = %132, %44
  %141 = load i32, i32* %3, align 4
  ret i32 %141
}

declare dso_local i64 @upa_readq(i64) #1

declare dso_local i32 @upa_writeq(i64, i64) #1

declare dso_local i32 @printk(i8*, ...) #1

declare dso_local i32 @psycho_check_iommu_error(%struct.pci_pbm_info*, i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
