; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/boot/extr_cuboot-hotfoot.c_hotfoot_fixups.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/boot/extr_cuboot-hotfoot.c_hotfoot_fixups.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32, i64*, i64*, i32, i32, i32 }

@DCRN_CPC0_UCR = common dso_local global i32 0, align 4
@bd = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@.str = private unnamed_addr constant [5 x i8] c"/plb\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"/plb/opb\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"/plb/ebc\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"/plb/opb/serial@ef600300\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"/plb/opb/serial@ef600400\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"ethernet0\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"ethernet1\00", align 1
@.str.7 = private unnamed_addr constant [46 x i8] c"Trimming devtree for single serial/eth board\0A\00", align 1
@.str.8 = private unnamed_addr constant [45 x i8] c"Can't find node for /plb/opb/serial@ef600300\00", align 1
@.str.9 = private unnamed_addr constant [27 x i8] c"/plb/opb/ethernet@ef600900\00", align 1
@.str.10 = private unnamed_addr constant [47 x i8] c"Can't find node for /plb/opb/ethernet@ef600900\00", align 1
@NUM_REGS = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [21 x i8] c"/plb/ebc/nor_flash@0\00", align 1
@.str.12 = private unnamed_addr constant [37 x i8] c"Can't find FDT node for nor_flash!??\00", align 1
@.str.13 = private unnamed_addr constant [29 x i8] c"Fixing devtree for 4M Flash\0A\00", align 1
@.str.14 = private unnamed_addr constant [4 x i8] c"reg\00", align 1
@.str.15 = private unnamed_addr constant [33 x i8] c"/plb/ebc/nor_flash@0/partition@0\00", align 1
@.str.16 = private unnamed_addr constant [36 x i8] c"Can't find FDT node for partition@0\00", align 1
@.str.17 = private unnamed_addr constant [33 x i8] c"/plb/ebc/nor_flash@0/partition@1\00", align 1
@.str.18 = private unnamed_addr constant [36 x i8] c"Can't find FDT node for partition@1\00", align 1
@.str.19 = private unnamed_addr constant [33 x i8] c"/plb/ebc/nor_flash@0/partition@2\00", align 1
@.str.20 = private unnamed_addr constant [36 x i8] c"Can't find FDT node for partition@2\00", align 1
@.str.21 = private unnamed_addr constant [33 x i8] c"/plb/ebc/nor_flash@0/partition@3\00", align 1
@.str.22 = private unnamed_addr constant [36 x i8] c"Can't find FDT node for partition@3\00", align 1
@.str.23 = private unnamed_addr constant [33 x i8] c"/plb/ebc/nor_flash@0/partition@4\00", align 1
@.str.24 = private unnamed_addr constant [36 x i8] c"Can't find FDT node for partition@4\00", align 1
@.str.25 = private unnamed_addr constant [33 x i8] c"/plb/ebc/nor_flash@0/partition@6\00", align 1
@.str.26 = private unnamed_addr constant [36 x i8] c"Can't find FDT node for partition@6\00", align 1
@.str.27 = private unnamed_addr constant [33 x i8] c"/plb/ebc/nor_flash@0/partition@5\00", align 1
@.str.28 = private unnamed_addr constant [36 x i8] c"Can't find FDT node for partition@5\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @hotfoot_fixups to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hotfoot_fixups() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = load i32, i32* @DCRN_CPC0_UCR, align 4
  %7 = call i32 @mfdcr(i32 %6)
  %8 = and i32 %7, 127
  store i32 %8, i32* %1, align 4
  %9 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @bd, i32 0, i32 8), align 8
  %10 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @bd, i32 0, i32 7), align 4
  %11 = call i32 @dt_fixup_memory(i32 %9, i32 %10)
  %12 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @bd, i32 0, i32 0), align 8
  %13 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @bd, i32 0, i32 0), align 8
  %14 = call i32 @dt_fixup_cpu_clocks(i32 %12, i32 %13, i32 0)
  %15 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @bd, i32 0, i32 1), align 4
  %16 = call i32 @dt_fixup_clock(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %15)
  %17 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @bd, i32 0, i32 2), align 8
  %18 = call i32 @dt_fixup_clock(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %17)
  %19 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @bd, i32 0, i32 3), align 4
  %20 = call i32 @dt_fixup_clock(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 %19)
  %21 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @bd, i32 0, i32 0), align 8
  %22 = load i32, i32* %1, align 4
  %23 = sdiv i32 %21, %22
  %24 = call i32 @dt_fixup_clock(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i32 %23)
  %25 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @bd, i32 0, i32 0), align 8
  %26 = load i32, i32* %1, align 4
  %27 = sdiv i32 %25, %26
  %28 = call i32 @dt_fixup_clock(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i32 %27)
  %29 = load i64*, i64** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @bd, i32 0, i32 4), align 8
  %30 = call i32 @dt_fixup_mac_address_by_alias(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i64* %29)
  %31 = load i64*, i64** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @bd, i32 0, i32 5), align 8
  %32 = call i32 @dt_fixup_mac_address_by_alias(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0), i64* %31)
  %33 = load i64*, i64** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @bd, i32 0, i32 5), align 8
  %34 = getelementptr inbounds i64, i64* %33, i64 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %80

37:                                               ; preds = %0
  %38 = load i64*, i64** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @bd, i32 0, i32 5), align 8
  %39 = getelementptr inbounds i64, i64* %38, i64 1
  %40 = load i64, i64* %39, align 8
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %42, label %80

42:                                               ; preds = %37
  %43 = load i64*, i64** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @bd, i32 0, i32 5), align 8
  %44 = getelementptr inbounds i64, i64* %43, i64 2
  %45 = load i64, i64* %44, align 8
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %47, label %80

47:                                               ; preds = %42
  %48 = load i64*, i64** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @bd, i32 0, i32 5), align 8
  %49 = getelementptr inbounds i64, i64* %48, i64 3
  %50 = load i64, i64* %49, align 8
  %51 = icmp eq i64 %50, 0
  br i1 %51, label %52, label %80

52:                                               ; preds = %47
  %53 = load i64*, i64** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @bd, i32 0, i32 5), align 8
  %54 = getelementptr inbounds i64, i64* %53, i64 4
  %55 = load i64, i64* %54, align 8
  %56 = icmp eq i64 %55, 0
  br i1 %56, label %57, label %80

57:                                               ; preds = %52
  %58 = load i64*, i64** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @bd, i32 0, i32 5), align 8
  %59 = getelementptr inbounds i64, i64* %58, i64 5
  %60 = load i64, i64* %59, align 8
  %61 = icmp eq i64 %60, 0
  br i1 %61, label %62, label %80

62:                                               ; preds = %57
  %63 = call i32 @printf(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.7, i64 0, i64 0))
  %64 = call i8* @finddevice(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  store i8* %64, i8** %2, align 8
  %65 = load i8*, i8** %2, align 8
  %66 = icmp ne i8* %65, null
  br i1 %66, label %69, label %67

67:                                               ; preds = %62
  %68 = call i32 @fatal(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.8, i64 0, i64 0))
  br label %69

69:                                               ; preds = %67, %62
  %70 = load i8*, i8** %2, align 8
  %71 = call i32 @del_node(i8* %70)
  %72 = call i8* @finddevice(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.9, i64 0, i64 0))
  store i8* %72, i8** %2, align 8
  %73 = load i8*, i8** %2, align 8
  %74 = icmp ne i8* %73, null
  br i1 %74, label %77, label %75

75:                                               ; preds = %69
  %76 = call i32 @fatal(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.10, i64 0, i64 0))
  br label %77

77:                                               ; preds = %75, %69
  %78 = load i8*, i8** %2, align 8
  %79 = call i32 @del_node(i8* %78)
  br label %80

80:                                               ; preds = %77, %57, %52, %47, %42, %37, %0
  %81 = call i32 @ibm4xx_quiesce_eth(i32* inttoptr (i64 4016048128 to i32*), i32* inttoptr (i64 4016048384 to i32*))
  %82 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @bd, i32 0, i32 6), align 8
  %83 = icmp slt i32 %82, 8388608
  br i1 %83, label %84, label %194

84:                                               ; preds = %80
  %85 = load i32, i32* @NUM_REGS, align 4
  %86 = zext i32 %85 to i64
  %87 = call i8* @llvm.stacksave()
  store i8* %87, i8** %3, align 8
  %88 = alloca i32, i64 %86, align 16
  store i64 %86, i64* %4, align 8
  %89 = call i8* @finddevice(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.11, i64 0, i64 0))
  store i8* %89, i8** %5, align 8
  %90 = load i8*, i8** %5, align 8
  %91 = icmp ne i8* %90, null
  br i1 %91, label %94, label %92

92:                                               ; preds = %84
  %93 = call i32 @fatal(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.12, i64 0, i64 0))
  br label %94

94:                                               ; preds = %92, %84
  %95 = call i32 @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.13, i64 0, i64 0))
  %96 = load i8*, i8** %5, align 8
  %97 = mul nuw i64 4, %86
  %98 = trunc i64 %97 to i32
  %99 = call i32 @getprop(i8* %96, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i64 0, i64 0), i32* %88, i32 %98)
  %100 = getelementptr inbounds i32, i32* %88, i64 0
  store i32 0, i32* %100, align 16
  %101 = getelementptr inbounds i32, i32* %88, i64 1
  store i32 -4194304, i32* %101, align 4
  %102 = getelementptr inbounds i32, i32* %88, i64 2
  store i32 4194304, i32* %102, align 8
  %103 = load i8*, i8** %5, align 8
  %104 = mul nuw i64 4, %86
  %105 = trunc i64 %104 to i32
  %106 = call i32 @setprop(i8* %103, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i64 0, i64 0), i32* %88, i32 %105)
  %107 = call i8* @finddevice(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.15, i64 0, i64 0))
  store i8* %107, i8** %5, align 8
  %108 = load i8*, i8** %5, align 8
  %109 = icmp ne i8* %108, null
  br i1 %109, label %112, label %110

110:                                              ; preds = %94
  %111 = call i32 @fatal(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.16, i64 0, i64 0))
  br label %112

112:                                              ; preds = %110, %94
  %113 = load i8*, i8** %5, align 8
  %114 = call i32 @getprop(i8* %113, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i64 0, i64 0), i32* %88, i32 8)
  %115 = getelementptr inbounds i32, i32* %88, i64 0
  %116 = load i32, i32* %115, align 16
  %117 = sub nsw i32 %116, 4194304
  store i32 %117, i32* %115, align 16
  %118 = load i8*, i8** %5, align 8
  %119 = call i32 @setprop(i8* %118, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i64 0, i64 0), i32* %88, i32 8)
  %120 = call i8* @finddevice(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.17, i64 0, i64 0))
  store i8* %120, i8** %5, align 8
  %121 = load i8*, i8** %5, align 8
  %122 = icmp ne i8* %121, null
  br i1 %122, label %125, label %123

123:                                              ; preds = %112
  %124 = call i32 @fatal(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.18, i64 0, i64 0))
  br label %125

125:                                              ; preds = %123, %112
  %126 = load i8*, i8** %5, align 8
  %127 = call i32 @getprop(i8* %126, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i64 0, i64 0), i32* %88, i32 8)
  %128 = getelementptr inbounds i32, i32* %88, i64 0
  %129 = load i32, i32* %128, align 16
  %130 = sub nsw i32 %129, 4194304
  store i32 %130, i32* %128, align 16
  %131 = load i8*, i8** %5, align 8
  %132 = call i32 @setprop(i8* %131, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i64 0, i64 0), i32* %88, i32 8)
  %133 = call i8* @finddevice(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.19, i64 0, i64 0))
  store i8* %133, i8** %5, align 8
  %134 = load i8*, i8** %5, align 8
  %135 = icmp ne i8* %134, null
  br i1 %135, label %138, label %136

136:                                              ; preds = %125
  %137 = call i32 @fatal(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.20, i64 0, i64 0))
  br label %138

138:                                              ; preds = %136, %125
  %139 = load i8*, i8** %5, align 8
  %140 = call i32 @getprop(i8* %139, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i64 0, i64 0), i32* %88, i32 8)
  %141 = getelementptr inbounds i32, i32* %88, i64 0
  %142 = load i32, i32* %141, align 16
  %143 = sub nsw i32 %142, 4194304
  store i32 %143, i32* %141, align 16
  %144 = load i8*, i8** %5, align 8
  %145 = call i32 @setprop(i8* %144, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i64 0, i64 0), i32* %88, i32 8)
  %146 = call i8* @finddevice(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.21, i64 0, i64 0))
  store i8* %146, i8** %5, align 8
  %147 = load i8*, i8** %5, align 8
  %148 = icmp ne i8* %147, null
  br i1 %148, label %151, label %149

149:                                              ; preds = %138
  %150 = call i32 @fatal(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.22, i64 0, i64 0))
  br label %151

151:                                              ; preds = %149, %138
  %152 = load i8*, i8** %5, align 8
  %153 = call i32 @getprop(i8* %152, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i64 0, i64 0), i32* %88, i32 8)
  %154 = getelementptr inbounds i32, i32* %88, i64 0
  %155 = load i32, i32* %154, align 16
  %156 = sub nsw i32 %155, 4194304
  store i32 %156, i32* %154, align 16
  %157 = load i8*, i8** %5, align 8
  %158 = call i32 @setprop(i8* %157, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i64 0, i64 0), i32* %88, i32 8)
  %159 = call i8* @finddevice(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.23, i64 0, i64 0))
  store i8* %159, i8** %5, align 8
  %160 = load i8*, i8** %5, align 8
  %161 = icmp ne i8* %160, null
  br i1 %161, label %164, label %162

162:                                              ; preds = %151
  %163 = call i32 @fatal(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.24, i64 0, i64 0))
  br label %164

164:                                              ; preds = %162, %151
  %165 = load i8*, i8** %5, align 8
  %166 = call i32 @getprop(i8* %165, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i64 0, i64 0), i32* %88, i32 8)
  %167 = getelementptr inbounds i32, i32* %88, i64 0
  %168 = load i32, i32* %167, align 16
  %169 = sub nsw i32 %168, 4194304
  store i32 %169, i32* %167, align 16
  %170 = load i8*, i8** %5, align 8
  %171 = call i32 @setprop(i8* %170, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i64 0, i64 0), i32* %88, i32 8)
  %172 = call i8* @finddevice(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.25, i64 0, i64 0))
  store i8* %172, i8** %5, align 8
  %173 = load i8*, i8** %5, align 8
  %174 = icmp ne i8* %173, null
  br i1 %174, label %177, label %175

175:                                              ; preds = %164
  %176 = call i32 @fatal(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.26, i64 0, i64 0))
  br label %177

177:                                              ; preds = %175, %164
  %178 = load i8*, i8** %5, align 8
  %179 = call i32 @getprop(i8* %178, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i64 0, i64 0), i32* %88, i32 8)
  %180 = getelementptr inbounds i32, i32* %88, i64 0
  %181 = load i32, i32* %180, align 16
  %182 = sub nsw i32 %181, 4194304
  store i32 %182, i32* %180, align 16
  %183 = load i8*, i8** %5, align 8
  %184 = call i32 @setprop(i8* %183, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i64 0, i64 0), i32* %88, i32 8)
  %185 = call i8* @finddevice(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.27, i64 0, i64 0))
  store i8* %185, i8** %5, align 8
  %186 = load i8*, i8** %5, align 8
  %187 = icmp ne i8* %186, null
  br i1 %187, label %190, label %188

188:                                              ; preds = %177
  %189 = call i32 @fatal(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.28, i64 0, i64 0))
  br label %190

190:                                              ; preds = %188, %177
  %191 = load i8*, i8** %5, align 8
  %192 = call i32 @del_node(i8* %191)
  %193 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %193)
  br label %194

194:                                              ; preds = %190, %80
  ret void
}

declare dso_local i32 @mfdcr(i32) #1

declare dso_local i32 @dt_fixup_memory(i32, i32) #1

declare dso_local i32 @dt_fixup_cpu_clocks(i32, i32, i32) #1

declare dso_local i32 @dt_fixup_clock(i8*, i32) #1

declare dso_local i32 @dt_fixup_mac_address_by_alias(i8*, i64*) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i8* @finddevice(i8*) #1

declare dso_local i32 @fatal(i8*) #1

declare dso_local i32 @del_node(i8*) #1

declare dso_local i32 @ibm4xx_quiesce_eth(i32*, i32*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @getprop(i8*, i8*, i32*, i32) #1

declare dso_local i32 @setprop(i8*, i8*, i32*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
