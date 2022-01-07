; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_eeh_pe.c_eeh_bridge_check_link.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_eeh_pe.c_eeh_bridge_check_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (%struct.pci_dn*, i64, i32, i32*)*, i32 (%struct.pci_dn*, i64, i32, i32)* }
%struct.pci_dn = type { i32 }
%struct.eeh_dev = type { i32, i32 }

@EEH_DEV_ROOT_PORT = common dso_local global i32 0, align 4
@EEH_DEV_DS_PORT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Checking PCIe link...\0A\00", align 1
@eeh_ops = common dso_local global %struct.TYPE_2__* null, align 8
@PCI_EXP_SLTSTA = common dso_local global i64 0, align 8
@PCI_EXP_SLTSTA_PDS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"No card in the slot (0x%04x) !\0A\00", align 1
@PCI_EXP_SLTCAP = common dso_local global i64 0, align 8
@PCI_EXP_SLTCAP_PCP = common dso_local global i32 0, align 4
@PCI_EXP_SLTCTL = common dso_local global i64 0, align 8
@PCI_EXP_SLTCTL_PCC = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [37 x i8] c"In power-off state, power it on ...\0A\00", align 1
@PCI_EXP_SLTCTL_PIC = common dso_local global i32 0, align 4
@PCI_EXP_LNKCTL = common dso_local global i64 0, align 8
@PCI_EXP_LNKCTL_LD = common dso_local global i32 0, align 4
@PCI_EXP_LNKCAP = common dso_local global i64 0, align 8
@PCI_EXP_LNKCAP_DLLLARC = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [40 x i8] c"No link reporting capability (0x%08x) \0A\00", align 1
@PCI_EXP_LNKSTA = common dso_local global i64 0, align 8
@PCI_EXP_LNKSTA_DLLLA = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [14 x i8] c"Link up (%s)\0A\00", align 1
@PCI_EXP_LNKSTA_CLS_2_5GB = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [6 x i8] c"2.5GB\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"5GB\00", align 1
@.str.7 = private unnamed_addr constant [25 x i8] c"Link not ready (0x%04x)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.eeh_dev*)* @eeh_bridge_check_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @eeh_bridge_check_link(%struct.eeh_dev* %0) #0 {
  %2 = alloca %struct.eeh_dev*, align 8
  %3 = alloca %struct.pci_dn*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.eeh_dev* %0, %struct.eeh_dev** %2, align 8
  %7 = load %struct.eeh_dev*, %struct.eeh_dev** %2, align 8
  %8 = call %struct.pci_dn* @eeh_dev_to_pdn(%struct.eeh_dev* %7)
  store %struct.pci_dn* %8, %struct.pci_dn** %3, align 8
  store i32 0, i32* %6, align 4
  %9 = load %struct.eeh_dev*, %struct.eeh_dev** %2, align 8
  %10 = getelementptr inbounds %struct.eeh_dev, %struct.eeh_dev* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @EEH_DEV_ROOT_PORT, align 4
  %13 = load i32, i32* @EEH_DEV_DS_PORT, align 4
  %14 = or i32 %12, %13
  %15 = and i32 %11, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %1
  br label %177

18:                                               ; preds = %1
  %19 = load %struct.eeh_dev*, %struct.eeh_dev** %2, align 8
  %20 = call i32 (%struct.eeh_dev*, i8*, ...) @eeh_edev_dbg(%struct.eeh_dev* %19, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %21 = load %struct.eeh_dev*, %struct.eeh_dev** %2, align 8
  %22 = getelementptr inbounds %struct.eeh_dev, %struct.eeh_dev* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %4, align 4
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** @eeh_ops, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32 (%struct.pci_dn*, i64, i32, i32*)*, i32 (%struct.pci_dn*, i64, i32, i32*)** %25, align 8
  %27 = load %struct.pci_dn*, %struct.pci_dn** %3, align 8
  %28 = load i32, i32* %4, align 4
  %29 = sext i32 %28 to i64
  %30 = load i64, i64* @PCI_EXP_SLTSTA, align 8
  %31 = add nsw i64 %29, %30
  %32 = call i32 %26(%struct.pci_dn* %27, i64 %31, i32 2, i32* %5)
  %33 = load i32, i32* %5, align 4
  %34 = load i32, i32* @PCI_EXP_SLTSTA_PDS, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %41, label %37

37:                                               ; preds = %18
  %38 = load %struct.eeh_dev*, %struct.eeh_dev** %2, align 8
  %39 = load i32, i32* %5, align 4
  %40 = call i32 (%struct.eeh_dev*, i8*, ...) @eeh_edev_dbg(%struct.eeh_dev* %38, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %39)
  br label %177

41:                                               ; preds = %18
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** @eeh_ops, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32 (%struct.pci_dn*, i64, i32, i32*)*, i32 (%struct.pci_dn*, i64, i32, i32*)** %43, align 8
  %45 = load %struct.pci_dn*, %struct.pci_dn** %3, align 8
  %46 = load i32, i32* %4, align 4
  %47 = sext i32 %46 to i64
  %48 = load i64, i64* @PCI_EXP_SLTCAP, align 8
  %49 = add nsw i64 %47, %48
  %50 = call i32 %44(%struct.pci_dn* %45, i64 %49, i32 2, i32* %5)
  %51 = load i32, i32* %5, align 4
  %52 = load i32, i32* @PCI_EXP_SLTCAP_PCP, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %94

55:                                               ; preds = %41
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** @eeh_ops, align 8
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load i32 (%struct.pci_dn*, i64, i32, i32*)*, i32 (%struct.pci_dn*, i64, i32, i32*)** %57, align 8
  %59 = load %struct.pci_dn*, %struct.pci_dn** %3, align 8
  %60 = load i32, i32* %4, align 4
  %61 = sext i32 %60 to i64
  %62 = load i64, i64* @PCI_EXP_SLTCTL, align 8
  %63 = add nsw i64 %61, %62
  %64 = call i32 %58(%struct.pci_dn* %59, i64 %63, i32 2, i32* %5)
  %65 = load i32, i32* %5, align 4
  %66 = load i32, i32* @PCI_EXP_SLTCTL_PCC, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %93

69:                                               ; preds = %55
  %70 = load %struct.eeh_dev*, %struct.eeh_dev** %2, align 8
  %71 = call i32 (%struct.eeh_dev*, i8*, ...) @eeh_edev_dbg(%struct.eeh_dev* %70, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0))
  %72 = load i32, i32* @PCI_EXP_SLTCTL_PCC, align 4
  %73 = load i32, i32* @PCI_EXP_SLTCTL_PIC, align 4
  %74 = or i32 %72, %73
  %75 = xor i32 %74, -1
  %76 = load i32, i32* %5, align 4
  %77 = and i32 %76, %75
  store i32 %77, i32* %5, align 4
  %78 = load i32, i32* @PCI_EXP_SLTCTL_PIC, align 4
  %79 = and i32 256, %78
  %80 = load i32, i32* %5, align 4
  %81 = or i32 %80, %79
  store i32 %81, i32* %5, align 4
  %82 = load %struct.TYPE_2__*, %struct.TYPE_2__** @eeh_ops, align 8
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 1
  %84 = load i32 (%struct.pci_dn*, i64, i32, i32)*, i32 (%struct.pci_dn*, i64, i32, i32)** %83, align 8
  %85 = load %struct.pci_dn*, %struct.pci_dn** %3, align 8
  %86 = load i32, i32* %4, align 4
  %87 = sext i32 %86 to i64
  %88 = load i64, i64* @PCI_EXP_SLTCTL, align 8
  %89 = add nsw i64 %87, %88
  %90 = load i32, i32* %5, align 4
  %91 = call i32 %84(%struct.pci_dn* %85, i64 %89, i32 2, i32 %90)
  %92 = call i32 @msleep(i32 2000)
  br label %93

93:                                               ; preds = %69, %55
  br label %94

94:                                               ; preds = %93, %41
  %95 = load %struct.TYPE_2__*, %struct.TYPE_2__** @eeh_ops, align 8
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 0
  %97 = load i32 (%struct.pci_dn*, i64, i32, i32*)*, i32 (%struct.pci_dn*, i64, i32, i32*)** %96, align 8
  %98 = load %struct.pci_dn*, %struct.pci_dn** %3, align 8
  %99 = load i32, i32* %4, align 4
  %100 = sext i32 %99 to i64
  %101 = load i64, i64* @PCI_EXP_LNKCTL, align 8
  %102 = add nsw i64 %100, %101
  %103 = call i32 %97(%struct.pci_dn* %98, i64 %102, i32 2, i32* %5)
  %104 = load i32, i32* @PCI_EXP_LNKCTL_LD, align 4
  %105 = xor i32 %104, -1
  %106 = load i32, i32* %5, align 4
  %107 = and i32 %106, %105
  store i32 %107, i32* %5, align 4
  %108 = load %struct.TYPE_2__*, %struct.TYPE_2__** @eeh_ops, align 8
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i32 0, i32 1
  %110 = load i32 (%struct.pci_dn*, i64, i32, i32)*, i32 (%struct.pci_dn*, i64, i32, i32)** %109, align 8
  %111 = load %struct.pci_dn*, %struct.pci_dn** %3, align 8
  %112 = load i32, i32* %4, align 4
  %113 = sext i32 %112 to i64
  %114 = load i64, i64* @PCI_EXP_LNKCTL, align 8
  %115 = add nsw i64 %113, %114
  %116 = load i32, i32* %5, align 4
  %117 = call i32 %110(%struct.pci_dn* %111, i64 %115, i32 2, i32 %116)
  %118 = load %struct.TYPE_2__*, %struct.TYPE_2__** @eeh_ops, align 8
  %119 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %118, i32 0, i32 0
  %120 = load i32 (%struct.pci_dn*, i64, i32, i32*)*, i32 (%struct.pci_dn*, i64, i32, i32*)** %119, align 8
  %121 = load %struct.pci_dn*, %struct.pci_dn** %3, align 8
  %122 = load i32, i32* %4, align 4
  %123 = sext i32 %122 to i64
  %124 = load i64, i64* @PCI_EXP_LNKCAP, align 8
  %125 = add nsw i64 %123, %124
  %126 = call i32 %120(%struct.pci_dn* %121, i64 %125, i32 4, i32* %5)
  %127 = load i32, i32* %5, align 4
  %128 = load i32, i32* @PCI_EXP_LNKCAP_DLLLARC, align 4
  %129 = and i32 %127, %128
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %136, label %131

131:                                              ; preds = %94
  %132 = load %struct.eeh_dev*, %struct.eeh_dev** %2, align 8
  %133 = load i32, i32* %5, align 4
  %134 = call i32 (%struct.eeh_dev*, i8*, ...) @eeh_edev_dbg(%struct.eeh_dev* %132, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0), i32 %133)
  %135 = call i32 @msleep(i32 1000)
  br label %177

136:                                              ; preds = %94
  store i32 0, i32* %6, align 4
  br label %137

137:                                              ; preds = %158, %136
  %138 = load i32, i32* %6, align 4
  %139 = icmp slt i32 %138, 5000
  br i1 %139, label %140, label %159

140:                                              ; preds = %137
  %141 = call i32 @msleep(i32 20)
  %142 = load i32, i32* %6, align 4
  %143 = add nsw i32 %142, 20
  store i32 %143, i32* %6, align 4
  %144 = load %struct.TYPE_2__*, %struct.TYPE_2__** @eeh_ops, align 8
  %145 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %144, i32 0, i32 0
  %146 = load i32 (%struct.pci_dn*, i64, i32, i32*)*, i32 (%struct.pci_dn*, i64, i32, i32*)** %145, align 8
  %147 = load %struct.pci_dn*, %struct.pci_dn** %3, align 8
  %148 = load i32, i32* %4, align 4
  %149 = sext i32 %148 to i64
  %150 = load i64, i64* @PCI_EXP_LNKSTA, align 8
  %151 = add nsw i64 %149, %150
  %152 = call i32 %146(%struct.pci_dn* %147, i64 %151, i32 2, i32* %5)
  %153 = load i32, i32* %5, align 4
  %154 = load i32, i32* @PCI_EXP_LNKSTA_DLLLA, align 4
  %155 = and i32 %153, %154
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %158

157:                                              ; preds = %140
  br label %159

158:                                              ; preds = %140
  br label %137

159:                                              ; preds = %157, %137
  %160 = load i32, i32* %5, align 4
  %161 = load i32, i32* @PCI_EXP_LNKSTA_DLLLA, align 4
  %162 = and i32 %160, %161
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %173

164:                                              ; preds = %159
  %165 = load %struct.eeh_dev*, %struct.eeh_dev** %2, align 8
  %166 = load i32, i32* %5, align 4
  %167 = load i32, i32* @PCI_EXP_LNKSTA_CLS_2_5GB, align 4
  %168 = and i32 %166, %167
  %169 = icmp ne i32 %168, 0
  %170 = zext i1 %169 to i64
  %171 = select i1 %169, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0)
  %172 = call i32 (%struct.eeh_dev*, i8*, ...) @eeh_edev_dbg(%struct.eeh_dev* %165, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i8* %171)
  br label %177

173:                                              ; preds = %159
  %174 = load %struct.eeh_dev*, %struct.eeh_dev** %2, align 8
  %175 = load i32, i32* %5, align 4
  %176 = call i32 (%struct.eeh_dev*, i8*, ...) @eeh_edev_dbg(%struct.eeh_dev* %174, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i64 0, i64 0), i32 %175)
  br label %177

177:                                              ; preds = %17, %37, %131, %173, %164
  ret void
}

declare dso_local %struct.pci_dn* @eeh_dev_to_pdn(%struct.eeh_dev*) #1

declare dso_local i32 @eeh_edev_dbg(%struct.eeh_dev*, i8*, ...) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
