; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_eeh.c_eeh_dump_dev_log.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_eeh.c_eeh_dump_dev_log.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 (%struct.pci_dn*, i32, i32, i8**)* }
%struct.pci_dn = type { i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.eeh_dev = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [44 x i8] c"EEH: Note: No error log for absent device.\0A\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"%04x:%02x:%02x.%01x\0A\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"EEH: of node=%04x:%02x:%02x.%01x\0A\00", align 1
@eeh_ops = common dso_local global %struct.TYPE_4__* null, align 8
@PCI_VENDOR_ID = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [15 x i8] c"dev/vend:%08x\0A\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"EEH: PCI device/vendor: %08x\0A\00", align 1
@PCI_COMMAND = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [13 x i8] c"cmd/stat:%x\0A\00", align 1
@.str.6 = private unnamed_addr constant [36 x i8] c"EEH: PCI cmd/status register: %08x\0A\00", align 1
@EEH_DEV_BRIDGE = common dso_local global i32 0, align 4
@PCI_SEC_STATUS = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [13 x i8] c"sec stat:%x\0A\00", align 1
@.str.8 = private unnamed_addr constant [36 x i8] c"EEH: Bridge secondary status: %04x\0A\00", align 1
@PCI_BRIDGE_CONTROL = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [13 x i8] c"brdg ctl:%x\0A\00", align 1
@.str.10 = private unnamed_addr constant [27 x i8] c"EEH: Bridge control: %04x\0A\00", align 1
@.str.11 = private unnamed_addr constant [13 x i8] c"pcix-cmd:%x\0A\00", align 1
@.str.12 = private unnamed_addr constant [22 x i8] c"EEH: PCI-X cmd: %08x\0A\00", align 1
@.str.13 = private unnamed_addr constant [14 x i8] c"pcix-stat:%x\0A\00", align 1
@.str.14 = private unnamed_addr constant [25 x i8] c"EEH: PCI-X status: %08x\0A\00", align 1
@.str.15 = private unnamed_addr constant [14 x i8] c"pci-e cap10:\0A\00", align 1
@.str.16 = private unnamed_addr constant [44 x i8] c"EEH: PCI-E capabilities and status follow:\0A\00", align 1
@.str.17 = private unnamed_addr constant [9 x i8] c"%02x:%x\0A\00", align 1
@.str.18 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.19 = private unnamed_addr constant [23 x i8] c"EEH: PCI-E %02x: %08x \00", align 1
@.str.20 = private unnamed_addr constant [6 x i8] c"%08x \00", align 1
@.str.21 = private unnamed_addr constant [12 x i8] c"pci-e AER:\0A\00", align 1
@.str.22 = private unnamed_addr constant [49 x i8] c"EEH: PCI-E AER capability register set follows:\0A\00", align 1
@.str.23 = private unnamed_addr constant [27 x i8] c"EEH: PCI-E AER %02x: %08x \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.eeh_dev*, i8*, i64)* @eeh_dump_dev_log to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @eeh_dump_dev_log(%struct.eeh_dev* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.eeh_dev*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.pci_dn*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca [128 x i8], align 16
  store %struct.eeh_dev* %0, %struct.eeh_dev** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %15 = load %struct.eeh_dev*, %struct.eeh_dev** %5, align 8
  %16 = call %struct.pci_dn* @eeh_dev_to_pdn(%struct.eeh_dev* %15)
  store %struct.pci_dn* %16, %struct.pci_dn** %8, align 8
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %17 = load %struct.pci_dn*, %struct.pci_dn** %8, align 8
  %18 = icmp ne %struct.pci_dn* %17, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %3
  %20 = call i32 (i8*, ...) @pr_warn(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  store i64 0, i64* %4, align 8
  br label %377

21:                                               ; preds = %3
  %22 = load i8*, i8** %6, align 8
  %23 = load i32, i32* %12, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i8, i8* %22, i64 %24
  %26 = load i64, i64* %7, align 8
  %27 = load i32, i32* %12, align 4
  %28 = sext i32 %27 to i64
  %29 = sub i64 %26, %28
  %30 = trunc i64 %29 to i32
  %31 = load %struct.pci_dn*, %struct.pci_dn** %8, align 8
  %32 = getelementptr inbounds %struct.pci_dn, %struct.pci_dn* %31, i32 0, i32 2
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.pci_dn*, %struct.pci_dn** %8, align 8
  %37 = getelementptr inbounds %struct.pci_dn, %struct.pci_dn* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.pci_dn*, %struct.pci_dn** %8, align 8
  %40 = getelementptr inbounds %struct.pci_dn, %struct.pci_dn* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @PCI_SLOT(i32 %41)
  %43 = load %struct.pci_dn*, %struct.pci_dn** %8, align 8
  %44 = getelementptr inbounds %struct.pci_dn, %struct.pci_dn* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @PCI_FUNC(i32 %45)
  %47 = call i32 (i8*, i32, i8*, ...) @scnprintf(i8* %25, i32 %30, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %35, i32 %38, i32 %42, i32 %46)
  %48 = load i32, i32* %12, align 4
  %49 = add nsw i32 %48, %47
  store i32 %49, i32* %12, align 4
  %50 = load %struct.pci_dn*, %struct.pci_dn** %8, align 8
  %51 = getelementptr inbounds %struct.pci_dn, %struct.pci_dn* %50, i32 0, i32 2
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.pci_dn*, %struct.pci_dn** %8, align 8
  %56 = getelementptr inbounds %struct.pci_dn, %struct.pci_dn* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.pci_dn*, %struct.pci_dn** %8, align 8
  %59 = getelementptr inbounds %struct.pci_dn, %struct.pci_dn* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @PCI_SLOT(i32 %60)
  %62 = load %struct.pci_dn*, %struct.pci_dn** %8, align 8
  %63 = getelementptr inbounds %struct.pci_dn, %struct.pci_dn* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @PCI_FUNC(i32 %64)
  %66 = call i32 (i8*, ...) @pr_warn(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %54, i32 %57, i32 %61, i32 %65)
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** @eeh_ops, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  %69 = load i32 (%struct.pci_dn*, i32, i32, i8**)*, i32 (%struct.pci_dn*, i32, i32, i8**)** %68, align 8
  %70 = load %struct.pci_dn*, %struct.pci_dn** %8, align 8
  %71 = load i32, i32* @PCI_VENDOR_ID, align 4
  %72 = call i32 %69(%struct.pci_dn* %70, i32 %71, i32 4, i8** %9)
  %73 = load i8*, i8** %6, align 8
  %74 = load i32, i32* %12, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i8, i8* %73, i64 %75
  %77 = load i64, i64* %7, align 8
  %78 = load i32, i32* %12, align 4
  %79 = sext i32 %78 to i64
  %80 = sub i64 %77, %79
  %81 = trunc i64 %80 to i32
  %82 = load i8*, i8** %9, align 8
  %83 = call i32 (i8*, i32, i8*, ...) @scnprintf(i8* %76, i32 %81, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i8* %82)
  %84 = load i32, i32* %12, align 4
  %85 = add nsw i32 %84, %83
  store i32 %85, i32* %12, align 4
  %86 = load i8*, i8** %9, align 8
  %87 = call i32 (i8*, ...) @pr_warn(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), i8* %86)
  %88 = load %struct.TYPE_4__*, %struct.TYPE_4__** @eeh_ops, align 8
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 0
  %90 = load i32 (%struct.pci_dn*, i32, i32, i8**)*, i32 (%struct.pci_dn*, i32, i32, i8**)** %89, align 8
  %91 = load %struct.pci_dn*, %struct.pci_dn** %8, align 8
  %92 = load i32, i32* @PCI_COMMAND, align 4
  %93 = call i32 %90(%struct.pci_dn* %91, i32 %92, i32 4, i8** %9)
  %94 = load i8*, i8** %6, align 8
  %95 = load i32, i32* %12, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i8, i8* %94, i64 %96
  %98 = load i64, i64* %7, align 8
  %99 = load i32, i32* %12, align 4
  %100 = sext i32 %99 to i64
  %101 = sub i64 %98, %100
  %102 = trunc i64 %101 to i32
  %103 = load i8*, i8** %9, align 8
  %104 = call i32 (i8*, i32, i8*, ...) @scnprintf(i8* %97, i32 %102, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0), i8* %103)
  %105 = load i32, i32* %12, align 4
  %106 = add nsw i32 %105, %104
  store i32 %106, i32* %12, align 4
  %107 = load i8*, i8** %9, align 8
  %108 = call i32 (i8*, ...) @pr_warn(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.6, i64 0, i64 0), i8* %107)
  %109 = load %struct.eeh_dev*, %struct.eeh_dev** %5, align 8
  %110 = getelementptr inbounds %struct.eeh_dev, %struct.eeh_dev* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* @EEH_DEV_BRIDGE, align 4
  %113 = and i32 %111, %112
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %158

115:                                              ; preds = %21
  %116 = load %struct.TYPE_4__*, %struct.TYPE_4__** @eeh_ops, align 8
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i32 0, i32 0
  %118 = load i32 (%struct.pci_dn*, i32, i32, i8**)*, i32 (%struct.pci_dn*, i32, i32, i8**)** %117, align 8
  %119 = load %struct.pci_dn*, %struct.pci_dn** %8, align 8
  %120 = load i32, i32* @PCI_SEC_STATUS, align 4
  %121 = call i32 %118(%struct.pci_dn* %119, i32 %120, i32 2, i8** %9)
  %122 = load i8*, i8** %6, align 8
  %123 = load i32, i32* %12, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i8, i8* %122, i64 %124
  %126 = load i64, i64* %7, align 8
  %127 = load i32, i32* %12, align 4
  %128 = sext i32 %127 to i64
  %129 = sub i64 %126, %128
  %130 = trunc i64 %129 to i32
  %131 = load i8*, i8** %9, align 8
  %132 = call i32 (i8*, i32, i8*, ...) @scnprintf(i8* %125, i32 %130, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0), i8* %131)
  %133 = load i32, i32* %12, align 4
  %134 = add nsw i32 %133, %132
  store i32 %134, i32* %12, align 4
  %135 = load i8*, i8** %9, align 8
  %136 = call i32 (i8*, ...) @pr_warn(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8, i64 0, i64 0), i8* %135)
  %137 = load %struct.TYPE_4__*, %struct.TYPE_4__** @eeh_ops, align 8
  %138 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %137, i32 0, i32 0
  %139 = load i32 (%struct.pci_dn*, i32, i32, i8**)*, i32 (%struct.pci_dn*, i32, i32, i8**)** %138, align 8
  %140 = load %struct.pci_dn*, %struct.pci_dn** %8, align 8
  %141 = load i32, i32* @PCI_BRIDGE_CONTROL, align 4
  %142 = call i32 %139(%struct.pci_dn* %140, i32 %141, i32 2, i8** %9)
  %143 = load i8*, i8** %6, align 8
  %144 = load i32, i32* %12, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i8, i8* %143, i64 %145
  %147 = load i64, i64* %7, align 8
  %148 = load i32, i32* %12, align 4
  %149 = sext i32 %148 to i64
  %150 = sub i64 %147, %149
  %151 = trunc i64 %150 to i32
  %152 = load i8*, i8** %9, align 8
  %153 = call i32 (i8*, i32, i8*, ...) @scnprintf(i8* %146, i32 %151, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i64 0, i64 0), i8* %152)
  %154 = load i32, i32* %12, align 4
  %155 = add nsw i32 %154, %153
  store i32 %155, i32* %12, align 4
  %156 = load i8*, i8** %9, align 8
  %157 = call i32 (i8*, ...) @pr_warn(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.10, i64 0, i64 0), i8* %156)
  br label %158

158:                                              ; preds = %115, %21
  %159 = load %struct.eeh_dev*, %struct.eeh_dev** %5, align 8
  %160 = getelementptr inbounds %struct.eeh_dev, %struct.eeh_dev* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 4
  store i32 %161, i32* %10, align 4
  %162 = load i32, i32* %10, align 4
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %208

164:                                              ; preds = %158
  %165 = load %struct.TYPE_4__*, %struct.TYPE_4__** @eeh_ops, align 8
  %166 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %165, i32 0, i32 0
  %167 = load i32 (%struct.pci_dn*, i32, i32, i8**)*, i32 (%struct.pci_dn*, i32, i32, i8**)** %166, align 8
  %168 = load %struct.pci_dn*, %struct.pci_dn** %8, align 8
  %169 = load i32, i32* %10, align 4
  %170 = call i32 %167(%struct.pci_dn* %168, i32 %169, i32 4, i8** %9)
  %171 = load i8*, i8** %6, align 8
  %172 = load i32, i32* %12, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds i8, i8* %171, i64 %173
  %175 = load i64, i64* %7, align 8
  %176 = load i32, i32* %12, align 4
  %177 = sext i32 %176 to i64
  %178 = sub i64 %175, %177
  %179 = trunc i64 %178 to i32
  %180 = load i8*, i8** %9, align 8
  %181 = call i32 (i8*, i32, i8*, ...) @scnprintf(i8* %174, i32 %179, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.11, i64 0, i64 0), i8* %180)
  %182 = load i32, i32* %12, align 4
  %183 = add nsw i32 %182, %181
  store i32 %183, i32* %12, align 4
  %184 = load i8*, i8** %9, align 8
  %185 = call i32 (i8*, ...) @pr_warn(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.12, i64 0, i64 0), i8* %184)
  %186 = load %struct.TYPE_4__*, %struct.TYPE_4__** @eeh_ops, align 8
  %187 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %186, i32 0, i32 0
  %188 = load i32 (%struct.pci_dn*, i32, i32, i8**)*, i32 (%struct.pci_dn*, i32, i32, i8**)** %187, align 8
  %189 = load %struct.pci_dn*, %struct.pci_dn** %8, align 8
  %190 = load i32, i32* %10, align 4
  %191 = add nsw i32 %190, 4
  %192 = call i32 %188(%struct.pci_dn* %189, i32 %191, i32 4, i8** %9)
  %193 = load i8*, i8** %6, align 8
  %194 = load i32, i32* %12, align 4
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds i8, i8* %193, i64 %195
  %197 = load i64, i64* %7, align 8
  %198 = load i32, i32* %12, align 4
  %199 = sext i32 %198 to i64
  %200 = sub i64 %197, %199
  %201 = trunc i64 %200 to i32
  %202 = load i8*, i8** %9, align 8
  %203 = call i32 (i8*, i32, i8*, ...) @scnprintf(i8* %196, i32 %201, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i64 0, i64 0), i8* %202)
  %204 = load i32, i32* %12, align 4
  %205 = add nsw i32 %204, %203
  store i32 %205, i32* %12, align 4
  %206 = load i8*, i8** %9, align 8
  %207 = call i32 (i8*, ...) @pr_warn(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.14, i64 0, i64 0), i8* %206)
  br label %208

208:                                              ; preds = %164, %158
  %209 = load %struct.eeh_dev*, %struct.eeh_dev** %5, align 8
  %210 = getelementptr inbounds %struct.eeh_dev, %struct.eeh_dev* %209, i32 0, i32 2
  %211 = load i32, i32* %210, align 4
  store i32 %211, i32* %10, align 4
  %212 = load i32, i32* %10, align 4
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %214, label %291

214:                                              ; preds = %208
  %215 = load i8*, i8** %6, align 8
  %216 = load i32, i32* %12, align 4
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds i8, i8* %215, i64 %217
  %219 = load i64, i64* %7, align 8
  %220 = load i32, i32* %12, align 4
  %221 = sext i32 %220 to i64
  %222 = sub i64 %219, %221
  %223 = trunc i64 %222 to i32
  %224 = call i32 (i8*, i32, i8*, ...) @scnprintf(i8* %218, i32 %223, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.15, i64 0, i64 0))
  %225 = load i32, i32* %12, align 4
  %226 = add nsw i32 %225, %224
  store i32 %226, i32* %12, align 4
  %227 = call i32 (i8*, ...) @pr_warn(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.16, i64 0, i64 0))
  store i32 0, i32* %11, align 4
  br label %228

228:                                              ; preds = %285, %214
  %229 = load i32, i32* %11, align 4
  %230 = icmp sle i32 %229, 8
  br i1 %230, label %231, label %288

231:                                              ; preds = %228
  %232 = load %struct.TYPE_4__*, %struct.TYPE_4__** @eeh_ops, align 8
  %233 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %232, i32 0, i32 0
  %234 = load i32 (%struct.pci_dn*, i32, i32, i8**)*, i32 (%struct.pci_dn*, i32, i32, i8**)** %233, align 8
  %235 = load %struct.pci_dn*, %struct.pci_dn** %8, align 8
  %236 = load i32, i32* %10, align 4
  %237 = load i32, i32* %11, align 4
  %238 = mul nsw i32 4, %237
  %239 = add nsw i32 %236, %238
  %240 = call i32 %234(%struct.pci_dn* %235, i32 %239, i32 4, i8** %9)
  %241 = load i8*, i8** %6, align 8
  %242 = load i32, i32* %12, align 4
  %243 = sext i32 %242 to i64
  %244 = getelementptr inbounds i8, i8* %241, i64 %243
  %245 = load i64, i64* %7, align 8
  %246 = load i32, i32* %12, align 4
  %247 = sext i32 %246 to i64
  %248 = sub i64 %245, %247
  %249 = trunc i64 %248 to i32
  %250 = load i32, i32* %11, align 4
  %251 = mul nsw i32 4, %250
  %252 = load i8*, i8** %9, align 8
  %253 = call i32 (i8*, i32, i8*, ...) @scnprintf(i8* %244, i32 %249, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.17, i64 0, i64 0), i32 %251, i8* %252)
  %254 = load i32, i32* %12, align 4
  %255 = add nsw i32 %254, %253
  store i32 %255, i32* %12, align 4
  %256 = load i32, i32* %11, align 4
  %257 = srem i32 %256, 4
  %258 = icmp eq i32 %257, 0
  br i1 %258, label %259, label %271

259:                                              ; preds = %231
  %260 = load i32, i32* %11, align 4
  %261 = icmp ne i32 %260, 0
  br i1 %261, label %262, label %265

262:                                              ; preds = %259
  %263 = getelementptr inbounds [128 x i8], [128 x i8]* %14, i64 0, i64 0
  %264 = call i32 (i8*, ...) @pr_warn(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i64 0, i64 0), i8* %263)
  br label %265

265:                                              ; preds = %262, %259
  %266 = getelementptr inbounds [128 x i8], [128 x i8]* %14, i64 0, i64 0
  %267 = load i32, i32* %11, align 4
  %268 = mul nsw i32 4, %267
  %269 = load i8*, i8** %9, align 8
  %270 = call i32 (i8*, i32, i8*, ...) @scnprintf(i8* %266, i32 128, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.19, i64 0, i64 0), i32 %268, i8* %269)
  store i32 %270, i32* %13, align 4
  br label %284

271:                                              ; preds = %231
  %272 = getelementptr inbounds [128 x i8], [128 x i8]* %14, i64 0, i64 0
  %273 = load i32, i32* %13, align 4
  %274 = sext i32 %273 to i64
  %275 = getelementptr inbounds i8, i8* %272, i64 %274
  %276 = load i32, i32* %13, align 4
  %277 = sext i32 %276 to i64
  %278 = sub i64 128, %277
  %279 = trunc i64 %278 to i32
  %280 = load i8*, i8** %9, align 8
  %281 = call i32 (i8*, i32, i8*, ...) @scnprintf(i8* %275, i32 %279, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.20, i64 0, i64 0), i8* %280)
  %282 = load i32, i32* %13, align 4
  %283 = add nsw i32 %282, %281
  store i32 %283, i32* %13, align 4
  br label %284

284:                                              ; preds = %271, %265
  br label %285

285:                                              ; preds = %284
  %286 = load i32, i32* %11, align 4
  %287 = add nsw i32 %286, 1
  store i32 %287, i32* %11, align 4
  br label %228

288:                                              ; preds = %228
  %289 = getelementptr inbounds [128 x i8], [128 x i8]* %14, i64 0, i64 0
  %290 = call i32 (i8*, ...) @pr_warn(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i64 0, i64 0), i8* %289)
  br label %291

291:                                              ; preds = %288, %208
  %292 = load %struct.eeh_dev*, %struct.eeh_dev** %5, align 8
  %293 = getelementptr inbounds %struct.eeh_dev, %struct.eeh_dev* %292, i32 0, i32 3
  %294 = load i32, i32* %293, align 4
  store i32 %294, i32* %10, align 4
  %295 = load i32, i32* %10, align 4
  %296 = icmp ne i32 %295, 0
  br i1 %296, label %297, label %374

297:                                              ; preds = %291
  %298 = load i8*, i8** %6, align 8
  %299 = load i32, i32* %12, align 4
  %300 = sext i32 %299 to i64
  %301 = getelementptr inbounds i8, i8* %298, i64 %300
  %302 = load i64, i64* %7, align 8
  %303 = load i32, i32* %12, align 4
  %304 = sext i32 %303 to i64
  %305 = sub i64 %302, %304
  %306 = trunc i64 %305 to i32
  %307 = call i32 (i8*, i32, i8*, ...) @scnprintf(i8* %301, i32 %306, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.21, i64 0, i64 0))
  %308 = load i32, i32* %12, align 4
  %309 = add nsw i32 %308, %307
  store i32 %309, i32* %12, align 4
  %310 = call i32 (i8*, ...) @pr_warn(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.22, i64 0, i64 0))
  store i32 0, i32* %11, align 4
  br label %311

311:                                              ; preds = %368, %297
  %312 = load i32, i32* %11, align 4
  %313 = icmp sle i32 %312, 13
  br i1 %313, label %314, label %371

314:                                              ; preds = %311
  %315 = load %struct.TYPE_4__*, %struct.TYPE_4__** @eeh_ops, align 8
  %316 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %315, i32 0, i32 0
  %317 = load i32 (%struct.pci_dn*, i32, i32, i8**)*, i32 (%struct.pci_dn*, i32, i32, i8**)** %316, align 8
  %318 = load %struct.pci_dn*, %struct.pci_dn** %8, align 8
  %319 = load i32, i32* %10, align 4
  %320 = load i32, i32* %11, align 4
  %321 = mul nsw i32 4, %320
  %322 = add nsw i32 %319, %321
  %323 = call i32 %317(%struct.pci_dn* %318, i32 %322, i32 4, i8** %9)
  %324 = load i8*, i8** %6, align 8
  %325 = load i32, i32* %12, align 4
  %326 = sext i32 %325 to i64
  %327 = getelementptr inbounds i8, i8* %324, i64 %326
  %328 = load i64, i64* %7, align 8
  %329 = load i32, i32* %12, align 4
  %330 = sext i32 %329 to i64
  %331 = sub i64 %328, %330
  %332 = trunc i64 %331 to i32
  %333 = load i32, i32* %11, align 4
  %334 = mul nsw i32 4, %333
  %335 = load i8*, i8** %9, align 8
  %336 = call i32 (i8*, i32, i8*, ...) @scnprintf(i8* %327, i32 %332, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.17, i64 0, i64 0), i32 %334, i8* %335)
  %337 = load i32, i32* %12, align 4
  %338 = add nsw i32 %337, %336
  store i32 %338, i32* %12, align 4
  %339 = load i32, i32* %11, align 4
  %340 = srem i32 %339, 4
  %341 = icmp eq i32 %340, 0
  br i1 %341, label %342, label %354

342:                                              ; preds = %314
  %343 = load i32, i32* %11, align 4
  %344 = icmp ne i32 %343, 0
  br i1 %344, label %345, label %348

345:                                              ; preds = %342
  %346 = getelementptr inbounds [128 x i8], [128 x i8]* %14, i64 0, i64 0
  %347 = call i32 (i8*, ...) @pr_warn(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i64 0, i64 0), i8* %346)
  br label %348

348:                                              ; preds = %345, %342
  %349 = getelementptr inbounds [128 x i8], [128 x i8]* %14, i64 0, i64 0
  %350 = load i32, i32* %11, align 4
  %351 = mul nsw i32 4, %350
  %352 = load i8*, i8** %9, align 8
  %353 = call i32 (i8*, i32, i8*, ...) @scnprintf(i8* %349, i32 128, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.23, i64 0, i64 0), i32 %351, i8* %352)
  store i32 %353, i32* %13, align 4
  br label %367

354:                                              ; preds = %314
  %355 = getelementptr inbounds [128 x i8], [128 x i8]* %14, i64 0, i64 0
  %356 = load i32, i32* %13, align 4
  %357 = sext i32 %356 to i64
  %358 = getelementptr inbounds i8, i8* %355, i64 %357
  %359 = load i32, i32* %13, align 4
  %360 = sext i32 %359 to i64
  %361 = sub i64 128, %360
  %362 = trunc i64 %361 to i32
  %363 = load i8*, i8** %9, align 8
  %364 = call i32 (i8*, i32, i8*, ...) @scnprintf(i8* %358, i32 %362, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.20, i64 0, i64 0), i8* %363)
  %365 = load i32, i32* %13, align 4
  %366 = add nsw i32 %365, %364
  store i32 %366, i32* %13, align 4
  br label %367

367:                                              ; preds = %354, %348
  br label %368

368:                                              ; preds = %367
  %369 = load i32, i32* %11, align 4
  %370 = add nsw i32 %369, 1
  store i32 %370, i32* %11, align 4
  br label %311

371:                                              ; preds = %311
  %372 = getelementptr inbounds [128 x i8], [128 x i8]* %14, i64 0, i64 0
  %373 = call i32 (i8*, ...) @pr_warn(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i64 0, i64 0), i8* %372)
  br label %374

374:                                              ; preds = %371, %291
  %375 = load i32, i32* %12, align 4
  %376 = sext i32 %375 to i64
  store i64 %376, i64* %4, align 8
  br label %377

377:                                              ; preds = %374, %19
  %378 = load i64, i64* %4, align 8
  ret i64 %378
}

declare dso_local %struct.pci_dn* @eeh_dev_to_pdn(%struct.eeh_dev*) #1

declare dso_local i32 @pr_warn(i8*, ...) #1

declare dso_local i32 @scnprintf(i8*, i32, i8*, ...) #1

declare dso_local i32 @PCI_SLOT(i32) #1

declare dso_local i32 @PCI_FUNC(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
