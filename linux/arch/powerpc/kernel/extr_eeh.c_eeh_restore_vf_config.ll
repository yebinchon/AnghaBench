; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_eeh.c_eeh_restore_vf_config.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_eeh.c_eeh_restore_vf_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (%struct.pci_dn*, i64, i32, i32)*, i32 (%struct.pci_dn*, i64, i32, i32*)* }
%struct.pci_dn = type { i32 }
%struct.eeh_dev = type { i64, i64 }

@eeh_ops = common dso_local global %struct.TYPE_2__* null, align 8
@PCI_EXP_DEVCTL = common dso_local global i64 0, align 8
@PCI_EXP_DEVCTL_PAYLOAD = common dso_local global i32 0, align 4
@PCI_EXP_DEVCAP2 = common dso_local global i64 0, align 8
@PCI_EXP_DEVCAP2_COMP_TMOUT_DIS = common dso_local global i32 0, align 4
@PCI_EXP_DEVCTL2 = common dso_local global i64 0, align 8
@PCI_EXP_DEVCTL2_COMP_TMOUT_DIS = common dso_local global i32 0, align 4
@PCI_COMMAND = common dso_local global i64 0, align 8
@PCI_COMMAND_PARITY = common dso_local global i32 0, align 4
@PCI_COMMAND_SERR = common dso_local global i32 0, align 4
@PCI_EXP_DEVCTL_CERE = common dso_local global i32 0, align 4
@PCI_EXP_DEVCTL_NFERE = common dso_local global i32 0, align 4
@PCI_EXP_DEVCTL_FERE = common dso_local global i32 0, align 4
@PCI_EXP_DEVCTL_URRE = common dso_local global i32 0, align 4
@PCI_ERR_CAP = common dso_local global i64 0, align 8
@PCI_ERR_CAP_ECRC_GENE = common dso_local global i32 0, align 4
@PCI_ERR_CAP_ECRC_CHKE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @eeh_restore_vf_config(%struct.pci_dn* %0) #0 {
  %2 = alloca %struct.pci_dn*, align 8
  %3 = alloca %struct.eeh_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.pci_dn* %0, %struct.pci_dn** %2, align 8
  %9 = load %struct.pci_dn*, %struct.pci_dn** %2, align 8
  %10 = call %struct.eeh_dev* @pdn_to_eeh_dev(%struct.pci_dn* %9)
  store %struct.eeh_dev* %10, %struct.eeh_dev** %3, align 8
  %11 = load %struct.eeh_dev*, %struct.eeh_dev** %3, align 8
  %12 = getelementptr inbounds %struct.eeh_dev, %struct.eeh_dev* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %90

15:                                               ; preds = %1
  %16 = load %struct.pci_dn*, %struct.pci_dn** %2, align 8
  %17 = getelementptr inbounds %struct.pci_dn, %struct.pci_dn* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @ffs(i32 %18)
  %20 = sub nsw i32 %19, 8
  %21 = shl i32 %20, 5
  store i32 %21, i32* %8, align 4
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** @eeh_ops, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  %24 = load i32 (%struct.pci_dn*, i64, i32, i32*)*, i32 (%struct.pci_dn*, i64, i32, i32*)** %23, align 8
  %25 = load %struct.pci_dn*, %struct.pci_dn** %2, align 8
  %26 = load %struct.eeh_dev*, %struct.eeh_dev** %3, align 8
  %27 = getelementptr inbounds %struct.eeh_dev, %struct.eeh_dev* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @PCI_EXP_DEVCTL, align 8
  %30 = add nsw i64 %28, %29
  %31 = call i32 %24(%struct.pci_dn* %25, i64 %30, i32 2, i32* %4)
  %32 = load i32, i32* @PCI_EXP_DEVCTL_PAYLOAD, align 4
  %33 = xor i32 %32, -1
  %34 = load i32, i32* %4, align 4
  %35 = and i32 %34, %33
  store i32 %35, i32* %4, align 4
  %36 = load i32, i32* %8, align 4
  %37 = load i32, i32* %4, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %4, align 4
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** @eeh_ops, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32 (%struct.pci_dn*, i64, i32, i32)*, i32 (%struct.pci_dn*, i64, i32, i32)** %40, align 8
  %42 = load %struct.pci_dn*, %struct.pci_dn** %2, align 8
  %43 = load %struct.eeh_dev*, %struct.eeh_dev** %3, align 8
  %44 = getelementptr inbounds %struct.eeh_dev, %struct.eeh_dev* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @PCI_EXP_DEVCTL, align 8
  %47 = add nsw i64 %45, %46
  %48 = load i32, i32* %4, align 4
  %49 = call i32 %41(%struct.pci_dn* %42, i64 %47, i32 2, i32 %48)
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** @eeh_ops, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 1
  %52 = load i32 (%struct.pci_dn*, i64, i32, i32*)*, i32 (%struct.pci_dn*, i64, i32, i32*)** %51, align 8
  %53 = load %struct.pci_dn*, %struct.pci_dn** %2, align 8
  %54 = load %struct.eeh_dev*, %struct.eeh_dev** %3, align 8
  %55 = getelementptr inbounds %struct.eeh_dev, %struct.eeh_dev* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @PCI_EXP_DEVCAP2, align 8
  %58 = add nsw i64 %56, %57
  %59 = call i32 %52(%struct.pci_dn* %53, i64 %58, i32 4, i32* %6)
  %60 = load i32, i32* %6, align 4
  %61 = load i32, i32* @PCI_EXP_DEVCAP2_COMP_TMOUT_DIS, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %89

64:                                               ; preds = %15
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** @eeh_ops, align 8
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 1
  %67 = load i32 (%struct.pci_dn*, i64, i32, i32*)*, i32 (%struct.pci_dn*, i64, i32, i32*)** %66, align 8
  %68 = load %struct.pci_dn*, %struct.pci_dn** %2, align 8
  %69 = load %struct.eeh_dev*, %struct.eeh_dev** %3, align 8
  %70 = getelementptr inbounds %struct.eeh_dev, %struct.eeh_dev* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @PCI_EXP_DEVCTL2, align 8
  %73 = add nsw i64 %71, %72
  %74 = call i32 %67(%struct.pci_dn* %68, i64 %73, i32 4, i32* %6)
  %75 = load i32, i32* @PCI_EXP_DEVCTL2_COMP_TMOUT_DIS, align 4
  %76 = load i32, i32* %6, align 4
  %77 = or i32 %76, %75
  store i32 %77, i32* %6, align 4
  %78 = load %struct.TYPE_2__*, %struct.TYPE_2__** @eeh_ops, align 8
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 0
  %80 = load i32 (%struct.pci_dn*, i64, i32, i32)*, i32 (%struct.pci_dn*, i64, i32, i32)** %79, align 8
  %81 = load %struct.pci_dn*, %struct.pci_dn** %2, align 8
  %82 = load %struct.eeh_dev*, %struct.eeh_dev** %3, align 8
  %83 = getelementptr inbounds %struct.eeh_dev, %struct.eeh_dev* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @PCI_EXP_DEVCTL2, align 8
  %86 = add nsw i64 %84, %85
  %87 = load i32, i32* %6, align 4
  %88 = call i32 %80(%struct.pci_dn* %81, i64 %86, i32 4, i32 %87)
  br label %89

89:                                               ; preds = %64, %15
  br label %90

90:                                               ; preds = %89, %1
  %91 = load %struct.TYPE_2__*, %struct.TYPE_2__** @eeh_ops, align 8
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 1
  %93 = load i32 (%struct.pci_dn*, i64, i32, i32*)*, i32 (%struct.pci_dn*, i64, i32, i32*)** %92, align 8
  %94 = load %struct.pci_dn*, %struct.pci_dn** %2, align 8
  %95 = load i64, i64* @PCI_COMMAND, align 8
  %96 = call i32 %93(%struct.pci_dn* %94, i64 %95, i32 2, i32* %5)
  %97 = load i32, i32* @PCI_COMMAND_PARITY, align 4
  %98 = load i32, i32* @PCI_COMMAND_SERR, align 4
  %99 = or i32 %97, %98
  %100 = load i32, i32* %5, align 4
  %101 = or i32 %100, %99
  store i32 %101, i32* %5, align 4
  %102 = load %struct.TYPE_2__*, %struct.TYPE_2__** @eeh_ops, align 8
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i32 0, i32 0
  %104 = load i32 (%struct.pci_dn*, i64, i32, i32)*, i32 (%struct.pci_dn*, i64, i32, i32)** %103, align 8
  %105 = load %struct.pci_dn*, %struct.pci_dn** %2, align 8
  %106 = load i64, i64* @PCI_COMMAND, align 8
  %107 = load i32, i32* %5, align 4
  %108 = call i32 %104(%struct.pci_dn* %105, i64 %106, i32 2, i32 %107)
  %109 = load %struct.eeh_dev*, %struct.eeh_dev** %3, align 8
  %110 = getelementptr inbounds %struct.eeh_dev, %struct.eeh_dev* %109, i32 0, i32 1
  %111 = load i64, i64* %110, align 8
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %146

113:                                              ; preds = %90
  %114 = load %struct.TYPE_2__*, %struct.TYPE_2__** @eeh_ops, align 8
  %115 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %114, i32 0, i32 1
  %116 = load i32 (%struct.pci_dn*, i64, i32, i32*)*, i32 (%struct.pci_dn*, i64, i32, i32*)** %115, align 8
  %117 = load %struct.pci_dn*, %struct.pci_dn** %2, align 8
  %118 = load %struct.eeh_dev*, %struct.eeh_dev** %3, align 8
  %119 = getelementptr inbounds %struct.eeh_dev, %struct.eeh_dev* %118, i32 0, i32 1
  %120 = load i64, i64* %119, align 8
  %121 = load i64, i64* @PCI_EXP_DEVCTL, align 8
  %122 = add nsw i64 %120, %121
  %123 = call i32 %116(%struct.pci_dn* %117, i64 %122, i32 2, i32* %4)
  %124 = load i32, i32* @PCI_EXP_DEVCTL_CERE, align 4
  %125 = xor i32 %124, -1
  %126 = load i32, i32* %4, align 4
  %127 = and i32 %126, %125
  store i32 %127, i32* %4, align 4
  %128 = load i32, i32* @PCI_EXP_DEVCTL_NFERE, align 4
  %129 = load i32, i32* @PCI_EXP_DEVCTL_FERE, align 4
  %130 = or i32 %128, %129
  %131 = load i32, i32* @PCI_EXP_DEVCTL_URRE, align 4
  %132 = or i32 %130, %131
  %133 = load i32, i32* %4, align 4
  %134 = or i32 %133, %132
  store i32 %134, i32* %4, align 4
  %135 = load %struct.TYPE_2__*, %struct.TYPE_2__** @eeh_ops, align 8
  %136 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %135, i32 0, i32 0
  %137 = load i32 (%struct.pci_dn*, i64, i32, i32)*, i32 (%struct.pci_dn*, i64, i32, i32)** %136, align 8
  %138 = load %struct.pci_dn*, %struct.pci_dn** %2, align 8
  %139 = load %struct.eeh_dev*, %struct.eeh_dev** %3, align 8
  %140 = getelementptr inbounds %struct.eeh_dev, %struct.eeh_dev* %139, i32 0, i32 1
  %141 = load i64, i64* %140, align 8
  %142 = load i64, i64* @PCI_EXP_DEVCTL, align 8
  %143 = add nsw i64 %141, %142
  %144 = load i32, i32* %4, align 4
  %145 = call i32 %137(%struct.pci_dn* %138, i64 %143, i32 2, i32 %144)
  br label %146

146:                                              ; preds = %113, %90
  %147 = load %struct.eeh_dev*, %struct.eeh_dev** %3, align 8
  %148 = getelementptr inbounds %struct.eeh_dev, %struct.eeh_dev* %147, i32 0, i32 1
  %149 = load i64, i64* %148, align 8
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %183

151:                                              ; preds = %146
  %152 = load %struct.eeh_dev*, %struct.eeh_dev** %3, align 8
  %153 = getelementptr inbounds %struct.eeh_dev, %struct.eeh_dev* %152, i32 0, i32 0
  %154 = load i64, i64* %153, align 8
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %183

156:                                              ; preds = %151
  %157 = load %struct.TYPE_2__*, %struct.TYPE_2__** @eeh_ops, align 8
  %158 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %157, i32 0, i32 1
  %159 = load i32 (%struct.pci_dn*, i64, i32, i32*)*, i32 (%struct.pci_dn*, i64, i32, i32*)** %158, align 8
  %160 = load %struct.pci_dn*, %struct.pci_dn** %2, align 8
  %161 = load %struct.eeh_dev*, %struct.eeh_dev** %3, align 8
  %162 = getelementptr inbounds %struct.eeh_dev, %struct.eeh_dev* %161, i32 0, i32 0
  %163 = load i64, i64* %162, align 8
  %164 = load i64, i64* @PCI_ERR_CAP, align 8
  %165 = add nsw i64 %163, %164
  %166 = call i32 %159(%struct.pci_dn* %160, i64 %165, i32 4, i32* %7)
  %167 = load i32, i32* @PCI_ERR_CAP_ECRC_GENE, align 4
  %168 = load i32, i32* @PCI_ERR_CAP_ECRC_CHKE, align 4
  %169 = or i32 %167, %168
  %170 = load i32, i32* %7, align 4
  %171 = or i32 %170, %169
  store i32 %171, i32* %7, align 4
  %172 = load %struct.TYPE_2__*, %struct.TYPE_2__** @eeh_ops, align 8
  %173 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %172, i32 0, i32 0
  %174 = load i32 (%struct.pci_dn*, i64, i32, i32)*, i32 (%struct.pci_dn*, i64, i32, i32)** %173, align 8
  %175 = load %struct.pci_dn*, %struct.pci_dn** %2, align 8
  %176 = load %struct.eeh_dev*, %struct.eeh_dev** %3, align 8
  %177 = getelementptr inbounds %struct.eeh_dev, %struct.eeh_dev* %176, i32 0, i32 0
  %178 = load i64, i64* %177, align 8
  %179 = load i64, i64* @PCI_ERR_CAP, align 8
  %180 = add nsw i64 %178, %179
  %181 = load i32, i32* %7, align 4
  %182 = call i32 %174(%struct.pci_dn* %175, i64 %180, i32 4, i32 %181)
  br label %183

183:                                              ; preds = %156, %151, %146
  ret i32 0
}

declare dso_local %struct.eeh_dev* @pdn_to_eeh_dev(%struct.pci_dn*) #1

declare dso_local i32 @ffs(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
