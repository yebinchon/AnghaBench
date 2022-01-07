; ModuleID = '/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_pci_sabre.c_sabre_ce_intr.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_pci_sabre.c_sabre_ce_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_pbm_info = type { i64, i32 }

@SABRE_CE_AFSR = common dso_local global i64 0, align 8
@SABRE_UECE_AFAR = common dso_local global i64 0, align 8
@SABRE_CEAFSR_PDRD = common dso_local global i64 0, align 8
@SABRE_CEAFSR_PDWR = common dso_local global i64 0, align 8
@SABRE_CEAFSR_SDRD = common dso_local global i64 0, align 8
@SABRE_CEAFSR_SDWR = common dso_local global i64 0, align 8
@IRQ_NONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"%s: Correctable Error, primary error type[%s]\0A\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"DMA Read\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"DMA Write\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"???\00", align 1
@.str.4 = private unnamed_addr constant [69 x i8] c"%s: syndrome[%02lx] bytemask[%04lx] dword_offset[%lx] was_block(%d)\0A\00", align 1
@SABRE_CEAFSR_ESYND = common dso_local global i64 0, align 8
@SABRE_CEAFSR_BMSK = common dso_local global i64 0, align 8
@SABRE_CEAFSR_OFF = common dso_local global i64 0, align 8
@SABRE_CEAFSR_BLK = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [22 x i8] c"%s: CE AFAR [%016lx]\0A\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"%s: CE Secondary errors [\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"(DMA Read)\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"(DMA Write)\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"(none)\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"]\0A\00", align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @sabre_ce_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sabre_ce_intr(i32 %0, i8* %1) #0 {
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
  %18 = load i64, i64* @SABRE_CE_AFSR, align 8
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
  %30 = load i64, i64* @SABRE_CEAFSR_PDRD, align 8
  %31 = load i64, i64* @SABRE_CEAFSR_PDWR, align 8
  %32 = or i64 %30, %31
  %33 = load i64, i64* @SABRE_CEAFSR_SDRD, align 8
  %34 = or i64 %32, %33
  %35 = load i64, i64* @SABRE_CEAFSR_SDWR, align 8
  %36 = or i64 %34, %35
  %37 = and i64 %29, %36
  store i64 %37, i64* %11, align 8
  %38 = load i64, i64* %11, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %42, label %40

40:                                               ; preds = %2
  %41 = load i32, i32* @IRQ_NONE, align 4
  store i32 %41, i32* %3, align 4
  br label %120

42:                                               ; preds = %2
  %43 = load i64, i64* %11, align 8
  %44 = load i64, i64* %7, align 8
  %45 = call i32 @upa_writeq(i64 %43, i64 %44)
  %46 = load %struct.pci_pbm_info*, %struct.pci_pbm_info** %6, align 8
  %47 = getelementptr inbounds %struct.pci_pbm_info, %struct.pci_pbm_info* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = load i64, i64* %11, align 8
  %50 = load i64, i64* @SABRE_CEAFSR_PDRD, align 8
  %51 = and i64 %49, %50
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %42
  br label %61

54:                                               ; preds = %42
  %55 = load i64, i64* %11, align 8
  %56 = load i64, i64* @SABRE_CEAFSR_PDWR, align 8
  %57 = and i64 %55, %56
  %58 = icmp ne i64 %57, 0
  %59 = zext i1 %58 to i64
  %60 = select i1 %58, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0)
  br label %61

61:                                               ; preds = %54, %53
  %62 = phi i8* [ getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), %53 ], [ %60, %54 ]
  %63 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %48, i8* %62)
  %64 = load %struct.pci_pbm_info*, %struct.pci_pbm_info** %6, align 8
  %65 = getelementptr inbounds %struct.pci_pbm_info, %struct.pci_pbm_info* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = load i64, i64* %9, align 8
  %68 = load i64, i64* @SABRE_CEAFSR_ESYND, align 8
  %69 = and i64 %67, %68
  %70 = lshr i64 %69, 48
  %71 = load i64, i64* %9, align 8
  %72 = load i64, i64* @SABRE_CEAFSR_BMSK, align 8
  %73 = and i64 %71, %72
  %74 = lshr i64 %73, 32
  %75 = load i64, i64* %9, align 8
  %76 = load i64, i64* @SABRE_CEAFSR_OFF, align 8
  %77 = and i64 %75, %76
  %78 = lshr i64 %77, 29
  %79 = load i64, i64* %9, align 8
  %80 = load i64, i64* @SABRE_CEAFSR_BLK, align 8
  %81 = and i64 %79, %80
  %82 = icmp ne i64 %81, 0
  %83 = zext i1 %82 to i64
  %84 = select i1 %82, i32 1, i32 0
  %85 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.4, i64 0, i64 0), i32 %66, i64 %70, i64 %74, i64 %78, i32 %84)
  %86 = load %struct.pci_pbm_info*, %struct.pci_pbm_info** %6, align 8
  %87 = getelementptr inbounds %struct.pci_pbm_info, %struct.pci_pbm_info* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 8
  %89 = load i64, i64* %10, align 8
  %90 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0), i32 %88, i64 %89)
  %91 = load %struct.pci_pbm_info*, %struct.pci_pbm_info** %6, align 8
  %92 = getelementptr inbounds %struct.pci_pbm_info, %struct.pci_pbm_info* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 8
  %94 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0), i32 %93)
  store i32 0, i32* %12, align 4
  %95 = load i64, i64* %9, align 8
  %96 = load i64, i64* @SABRE_CEAFSR_SDRD, align 8
  %97 = and i64 %95, %96
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %103

99:                                               ; preds = %61
  %100 = load i32, i32* %12, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %12, align 4
  %102 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0))
  br label %103

103:                                              ; preds = %99, %61
  %104 = load i64, i64* %9, align 8
  %105 = load i64, i64* @SABRE_CEAFSR_SDWR, align 8
  %106 = and i64 %104, %105
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %112

108:                                              ; preds = %103
  %109 = load i32, i32* %12, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %12, align 4
  %111 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0))
  br label %112

112:                                              ; preds = %108, %103
  %113 = load i32, i32* %12, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %117, label %115

115:                                              ; preds = %112
  %116 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0))
  br label %117

117:                                              ; preds = %115, %112
  %118 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0))
  %119 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %119, i32* %3, align 4
  br label %120

120:                                              ; preds = %117, %40
  %121 = load i32, i32* %3, align 4
  ret i32 %121
}

declare dso_local i64 @upa_readq(i64) #1

declare dso_local i32 @upa_writeq(i64, i64) #1

declare dso_local i32 @printk(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
