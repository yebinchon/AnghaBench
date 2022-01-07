; ModuleID = '/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_pci_common.c_pci_determine_mem_io_space.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_pci_common.c_pci_determine_mem_io_space.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_pbm_info = type { i64, i64, i64, i64, %struct.TYPE_8__, %struct.TYPE_8__, %struct.TYPE_8__, i32, %struct.TYPE_7__* }
%struct.TYPE_8__ = type { i64, i64, i8*, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.linux_prom_pci_ranges = type { i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [7 x i8] c"ranges\00", align 1
@.str.1 = private unnamed_addr constant [55 x i8] c"PCI: Fatal error, missing PBM ranges property  for %s\0A\00", align 1
@tlb_type = common dso_local global i64 0, align 8
@hypervisor = common dso_local global i64 0, align 8
@IORESOURCE_IO = common dso_local global i8* null, align 8
@IORESOURCE_MEM = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [40 x i8] c"%s: Fatal error, missing %s PBM range.\0A\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"IO\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"MEM\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"%s: PCI IO %pR offset %llx\0A\00", align 1
@.str.6 = private unnamed_addr constant [29 x i8] c"%s: PCI MEM %pR offset %llx\0A\00", align 1
@.str.7 = private unnamed_addr constant [31 x i8] c"%s: PCI MEM64 %pR offset %llx\0A\00", align 1
@ioport_resource = common dso_local global i32 0, align 4
@iomem_resource = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pci_determine_mem_io_space(%struct.pci_pbm_info* %0) #0 {
  %2 = alloca %struct.pci_pbm_info*, align 8
  %3 = alloca %struct.linux_prom_pci_ranges*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.linux_prom_pci_ranges*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.pci_pbm_info* %0, %struct.pci_pbm_info** %2, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %5, align 4
  %19 = load %struct.pci_pbm_info*, %struct.pci_pbm_info** %2, align 8
  %20 = getelementptr inbounds %struct.pci_pbm_info, %struct.pci_pbm_info* %19, i32 0, i32 8
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call %struct.linux_prom_pci_ranges* @of_get_property(i32 %24, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32* %4)
  store %struct.linux_prom_pci_ranges* %25, %struct.linux_prom_pci_ranges** %3, align 8
  %26 = load %struct.linux_prom_pci_ranges*, %struct.linux_prom_pci_ranges** %3, align 8
  %27 = icmp ne %struct.linux_prom_pci_ranges* %26, null
  br i1 %27, label %34, label %28

28:                                               ; preds = %1
  %29 = load %struct.pci_pbm_info*, %struct.pci_pbm_info** %2, align 8
  %30 = getelementptr inbounds %struct.pci_pbm_info, %struct.pci_pbm_info* %29, i32 0, i32 7
  %31 = load i32, i32* %30, align 8
  %32 = call i32 (i8*, i32, ...) @prom_printf(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0), i32 %31)
  %33 = call i32 (...) @prom_halt()
  br label %34

34:                                               ; preds = %28, %1
  %35 = load i32, i32* %4, align 4
  %36 = sext i32 %35 to i64
  %37 = udiv i64 %36, 28
  %38 = trunc i64 %37 to i32
  store i32 %38, i32* %7, align 4
  %39 = load %struct.pci_pbm_info*, %struct.pci_pbm_info** %2, align 8
  %40 = getelementptr inbounds %struct.pci_pbm_info, %struct.pci_pbm_info* %39, i32 0, i32 4
  %41 = call i32 @memset(%struct.TYPE_8__* %40, i32 0, i32 4)
  store i32 0, i32* %4, align 4
  br label %42

42:                                               ; preds = %172, %34
  %43 = load i32, i32* %4, align 4
  %44 = load i32, i32* %7, align 4
  %45 = icmp slt i32 %43, %44
  br i1 %45, label %46, label %175

46:                                               ; preds = %42
  %47 = load %struct.linux_prom_pci_ranges*, %struct.linux_prom_pci_ranges** %3, align 8
  %48 = load i32, i32* %4, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.linux_prom_pci_ranges, %struct.linux_prom_pci_ranges* %47, i64 %49
  store %struct.linux_prom_pci_ranges* %50, %struct.linux_prom_pci_ranges** %8, align 8
  %51 = load %struct.linux_prom_pci_ranges*, %struct.linux_prom_pci_ranges** %8, align 8
  %52 = getelementptr inbounds %struct.linux_prom_pci_ranges, %struct.linux_prom_pci_ranges* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  store i32 %53, i32* %12, align 4
  %54 = load %struct.linux_prom_pci_ranges*, %struct.linux_prom_pci_ranges** %8, align 8
  %55 = getelementptr inbounds %struct.linux_prom_pci_ranges, %struct.linux_prom_pci_ranges* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  store i32 %56, i32* %13, align 4
  %57 = load %struct.linux_prom_pci_ranges*, %struct.linux_prom_pci_ranges** %8, align 8
  %58 = getelementptr inbounds %struct.linux_prom_pci_ranges, %struct.linux_prom_pci_ranges* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  store i32 %59, i32* %14, align 4
  %60 = load %struct.linux_prom_pci_ranges*, %struct.linux_prom_pci_ranges** %8, align 8
  %61 = getelementptr inbounds %struct.linux_prom_pci_ranges, %struct.linux_prom_pci_ranges* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 4
  store i32 %62, i32* %15, align 4
  %63 = load i64, i64* @tlb_type, align 8
  %64 = load i64, i64* @hypervisor, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %69

66:                                               ; preds = %46
  %67 = load i32, i32* %12, align 4
  %68 = and i32 %67, 268435455
  store i32 %68, i32* %12, align 4
  br label %69

69:                                               ; preds = %66, %46
  %70 = load %struct.linux_prom_pci_ranges*, %struct.linux_prom_pci_ranges** %8, align 8
  %71 = getelementptr inbounds %struct.linux_prom_pci_ranges, %struct.linux_prom_pci_ranges* %70, i32 0, i32 4
  %72 = load i32, i32* %71, align 4
  store i32 %72, i32* %16, align 4
  %73 = load %struct.linux_prom_pci_ranges*, %struct.linux_prom_pci_ranges** %8, align 8
  %74 = getelementptr inbounds %struct.linux_prom_pci_ranges, %struct.linux_prom_pci_ranges* %73, i32 0, i32 5
  %75 = load i32, i32* %74, align 4
  store i32 %75, i32* %17, align 4
  %76 = load %struct.linux_prom_pci_ranges*, %struct.linux_prom_pci_ranges** %8, align 8
  %77 = getelementptr inbounds %struct.linux_prom_pci_ranges, %struct.linux_prom_pci_ranges* %76, i32 0, i32 6
  %78 = load i32, i32* %77, align 4
  %79 = ashr i32 %78, 24
  %80 = and i32 %79, 3
  store i32 %80, i32* %18, align 4
  %81 = load i32, i32* %12, align 4
  %82 = sext i32 %81 to i64
  %83 = shl i64 %82, 32
  %84 = load i32, i32* %13, align 4
  %85 = sext i32 %84 to i64
  %86 = shl i64 %85, 0
  %87 = or i64 %83, %86
  store i64 %87, i64* %9, align 8
  %88 = load i32, i32* %14, align 4
  %89 = sext i32 %88 to i64
  %90 = shl i64 %89, 32
  %91 = load i32, i32* %15, align 4
  %92 = sext i32 %91 to i64
  %93 = shl i64 %92, 0
  %94 = or i64 %90, %93
  store i64 %94, i64* %11, align 8
  %95 = load i32, i32* %16, align 4
  %96 = sext i32 %95 to i64
  %97 = shl i64 %96, 32
  %98 = load i32, i32* %17, align 4
  %99 = sext i32 %98 to i64
  %100 = shl i64 %99, 0
  %101 = or i64 %97, %100
  store i64 %101, i64* %10, align 8
  %102 = load i32, i32* %18, align 4
  switch i32 %102, label %170 [
    i32 0, label %103
    i32 1, label %107
    i32 2, label %128
    i32 3, label %149
  ]

103:                                              ; preds = %69
  %104 = load i64, i64* %9, align 8
  %105 = load %struct.pci_pbm_info*, %struct.pci_pbm_info** %2, align 8
  %106 = getelementptr inbounds %struct.pci_pbm_info, %struct.pci_pbm_info* %105, i32 0, i32 0
  store i64 %104, i64* %106, align 8
  br label %171

107:                                              ; preds = %69
  %108 = load i64, i64* %9, align 8
  %109 = load %struct.pci_pbm_info*, %struct.pci_pbm_info** %2, align 8
  %110 = getelementptr inbounds %struct.pci_pbm_info, %struct.pci_pbm_info* %109, i32 0, i32 6
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %110, i32 0, i32 0
  store i64 %108, i64* %111, align 8
  %112 = load i64, i64* %9, align 8
  %113 = load i64, i64* %10, align 8
  %114 = add i64 %112, %113
  %115 = sub i64 %114, 1
  %116 = load %struct.pci_pbm_info*, %struct.pci_pbm_info** %2, align 8
  %117 = getelementptr inbounds %struct.pci_pbm_info, %struct.pci_pbm_info* %116, i32 0, i32 6
  %118 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %117, i32 0, i32 1
  store i64 %115, i64* %118, align 8
  %119 = load i8*, i8** @IORESOURCE_IO, align 8
  %120 = load %struct.pci_pbm_info*, %struct.pci_pbm_info** %2, align 8
  %121 = getelementptr inbounds %struct.pci_pbm_info, %struct.pci_pbm_info* %120, i32 0, i32 6
  %122 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %121, i32 0, i32 2
  store i8* %119, i8** %122, align 8
  %123 = load i64, i64* %9, align 8
  %124 = load i64, i64* %11, align 8
  %125 = sub i64 %123, %124
  %126 = load %struct.pci_pbm_info*, %struct.pci_pbm_info** %2, align 8
  %127 = getelementptr inbounds %struct.pci_pbm_info, %struct.pci_pbm_info* %126, i32 0, i32 1
  store i64 %125, i64* %127, align 8
  store i32 1, i32* %6, align 4
  br label %171

128:                                              ; preds = %69
  %129 = load i64, i64* %9, align 8
  %130 = load %struct.pci_pbm_info*, %struct.pci_pbm_info** %2, align 8
  %131 = getelementptr inbounds %struct.pci_pbm_info, %struct.pci_pbm_info* %130, i32 0, i32 5
  %132 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %131, i32 0, i32 0
  store i64 %129, i64* %132, align 8
  %133 = load i64, i64* %9, align 8
  %134 = load i64, i64* %10, align 8
  %135 = add i64 %133, %134
  %136 = sub i64 %135, 1
  %137 = load %struct.pci_pbm_info*, %struct.pci_pbm_info** %2, align 8
  %138 = getelementptr inbounds %struct.pci_pbm_info, %struct.pci_pbm_info* %137, i32 0, i32 5
  %139 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %138, i32 0, i32 1
  store i64 %136, i64* %139, align 8
  %140 = load i8*, i8** @IORESOURCE_MEM, align 8
  %141 = load %struct.pci_pbm_info*, %struct.pci_pbm_info** %2, align 8
  %142 = getelementptr inbounds %struct.pci_pbm_info, %struct.pci_pbm_info* %141, i32 0, i32 5
  %143 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %142, i32 0, i32 2
  store i8* %140, i8** %143, align 8
  %144 = load i64, i64* %9, align 8
  %145 = load i64, i64* %11, align 8
  %146 = sub i64 %144, %145
  %147 = load %struct.pci_pbm_info*, %struct.pci_pbm_info** %2, align 8
  %148 = getelementptr inbounds %struct.pci_pbm_info, %struct.pci_pbm_info* %147, i32 0, i32 2
  store i64 %146, i64* %148, align 8
  store i32 1, i32* %5, align 4
  br label %171

149:                                              ; preds = %69
  %150 = load i64, i64* %9, align 8
  %151 = load %struct.pci_pbm_info*, %struct.pci_pbm_info** %2, align 8
  %152 = getelementptr inbounds %struct.pci_pbm_info, %struct.pci_pbm_info* %151, i32 0, i32 4
  %153 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %152, i32 0, i32 0
  store i64 %150, i64* %153, align 8
  %154 = load i64, i64* %9, align 8
  %155 = load i64, i64* %10, align 8
  %156 = add i64 %154, %155
  %157 = sub i64 %156, 1
  %158 = load %struct.pci_pbm_info*, %struct.pci_pbm_info** %2, align 8
  %159 = getelementptr inbounds %struct.pci_pbm_info, %struct.pci_pbm_info* %158, i32 0, i32 4
  %160 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %159, i32 0, i32 1
  store i64 %157, i64* %160, align 8
  %161 = load i8*, i8** @IORESOURCE_MEM, align 8
  %162 = load %struct.pci_pbm_info*, %struct.pci_pbm_info** %2, align 8
  %163 = getelementptr inbounds %struct.pci_pbm_info, %struct.pci_pbm_info* %162, i32 0, i32 4
  %164 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %163, i32 0, i32 2
  store i8* %161, i8** %164, align 8
  %165 = load i64, i64* %9, align 8
  %166 = load i64, i64* %11, align 8
  %167 = sub i64 %165, %166
  %168 = load %struct.pci_pbm_info*, %struct.pci_pbm_info** %2, align 8
  %169 = getelementptr inbounds %struct.pci_pbm_info, %struct.pci_pbm_info* %168, i32 0, i32 3
  store i64 %167, i64* %169, align 8
  store i32 1, i32* %5, align 4
  br label %171

170:                                              ; preds = %69
  br label %171

171:                                              ; preds = %170, %149, %128, %107, %103
  br label %172

172:                                              ; preds = %171
  %173 = load i32, i32* %4, align 4
  %174 = add nsw i32 %173, 1
  store i32 %174, i32* %4, align 4
  br label %42

175:                                              ; preds = %42
  %176 = load i32, i32* %6, align 4
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %181

178:                                              ; preds = %175
  %179 = load i32, i32* %5, align 4
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %192, label %181

181:                                              ; preds = %178, %175
  %182 = load %struct.pci_pbm_info*, %struct.pci_pbm_info** %2, align 8
  %183 = getelementptr inbounds %struct.pci_pbm_info, %struct.pci_pbm_info* %182, i32 0, i32 7
  %184 = load i32, i32* %183, align 8
  %185 = load i32, i32* %6, align 4
  %186 = icmp ne i32 %185, 0
  %187 = xor i1 %186, true
  %188 = zext i1 %187 to i64
  %189 = select i1 %187, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0)
  %190 = call i32 (i8*, i32, ...) @prom_printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i32 %184, i8* %189)
  %191 = call i32 (...) @prom_halt()
  br label %192

192:                                              ; preds = %181, %178
  %193 = load %struct.pci_pbm_info*, %struct.pci_pbm_info** %2, align 8
  %194 = getelementptr inbounds %struct.pci_pbm_info, %struct.pci_pbm_info* %193, i32 0, i32 6
  %195 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %194, i32 0, i32 2
  %196 = load i8*, i8** %195, align 8
  %197 = icmp ne i8* %196, null
  br i1 %197, label %198, label %208

198:                                              ; preds = %192
  %199 = load %struct.pci_pbm_info*, %struct.pci_pbm_info** %2, align 8
  %200 = getelementptr inbounds %struct.pci_pbm_info, %struct.pci_pbm_info* %199, i32 0, i32 7
  %201 = load i32, i32* %200, align 8
  %202 = load %struct.pci_pbm_info*, %struct.pci_pbm_info** %2, align 8
  %203 = getelementptr inbounds %struct.pci_pbm_info, %struct.pci_pbm_info* %202, i32 0, i32 6
  %204 = load %struct.pci_pbm_info*, %struct.pci_pbm_info** %2, align 8
  %205 = getelementptr inbounds %struct.pci_pbm_info, %struct.pci_pbm_info* %204, i32 0, i32 1
  %206 = load i64, i64* %205, align 8
  %207 = call i32 @printk(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0), i32 %201, %struct.TYPE_8__* %203, i64 %206)
  br label %208

208:                                              ; preds = %198, %192
  %209 = load %struct.pci_pbm_info*, %struct.pci_pbm_info** %2, align 8
  %210 = getelementptr inbounds %struct.pci_pbm_info, %struct.pci_pbm_info* %209, i32 0, i32 5
  %211 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %210, i32 0, i32 2
  %212 = load i8*, i8** %211, align 8
  %213 = icmp ne i8* %212, null
  br i1 %213, label %214, label %224

214:                                              ; preds = %208
  %215 = load %struct.pci_pbm_info*, %struct.pci_pbm_info** %2, align 8
  %216 = getelementptr inbounds %struct.pci_pbm_info, %struct.pci_pbm_info* %215, i32 0, i32 7
  %217 = load i32, i32* %216, align 8
  %218 = load %struct.pci_pbm_info*, %struct.pci_pbm_info** %2, align 8
  %219 = getelementptr inbounds %struct.pci_pbm_info, %struct.pci_pbm_info* %218, i32 0, i32 5
  %220 = load %struct.pci_pbm_info*, %struct.pci_pbm_info** %2, align 8
  %221 = getelementptr inbounds %struct.pci_pbm_info, %struct.pci_pbm_info* %220, i32 0, i32 2
  %222 = load i64, i64* %221, align 8
  %223 = call i32 @printk(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0), i32 %217, %struct.TYPE_8__* %219, i64 %222)
  br label %224

224:                                              ; preds = %214, %208
  %225 = load %struct.pci_pbm_info*, %struct.pci_pbm_info** %2, align 8
  %226 = getelementptr inbounds %struct.pci_pbm_info, %struct.pci_pbm_info* %225, i32 0, i32 4
  %227 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %226, i32 0, i32 2
  %228 = load i8*, i8** %227, align 8
  %229 = icmp ne i8* %228, null
  br i1 %229, label %230, label %270

230:                                              ; preds = %224
  %231 = load %struct.pci_pbm_info*, %struct.pci_pbm_info** %2, align 8
  %232 = getelementptr inbounds %struct.pci_pbm_info, %struct.pci_pbm_info* %231, i32 0, i32 5
  %233 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %232, i32 0, i32 2
  %234 = load i8*, i8** %233, align 8
  %235 = icmp ne i8* %234, null
  br i1 %235, label %236, label %270

236:                                              ; preds = %230
  %237 = load %struct.pci_pbm_info*, %struct.pci_pbm_info** %2, align 8
  %238 = getelementptr inbounds %struct.pci_pbm_info, %struct.pci_pbm_info* %237, i32 0, i32 4
  %239 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %238, i32 0, i32 0
  %240 = load i64, i64* %239, align 8
  %241 = load %struct.pci_pbm_info*, %struct.pci_pbm_info** %2, align 8
  %242 = getelementptr inbounds %struct.pci_pbm_info, %struct.pci_pbm_info* %241, i32 0, i32 5
  %243 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %242, i32 0, i32 1
  %244 = load i64, i64* %243, align 8
  %245 = icmp ule i64 %240, %244
  br i1 %245, label %246, label %255

246:                                              ; preds = %236
  %247 = load %struct.pci_pbm_info*, %struct.pci_pbm_info** %2, align 8
  %248 = getelementptr inbounds %struct.pci_pbm_info, %struct.pci_pbm_info* %247, i32 0, i32 5
  %249 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %248, i32 0, i32 1
  %250 = load i64, i64* %249, align 8
  %251 = add i64 %250, 1
  %252 = load %struct.pci_pbm_info*, %struct.pci_pbm_info** %2, align 8
  %253 = getelementptr inbounds %struct.pci_pbm_info, %struct.pci_pbm_info* %252, i32 0, i32 4
  %254 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %253, i32 0, i32 0
  store i64 %251, i64* %254, align 8
  br label %255

255:                                              ; preds = %246, %236
  %256 = load %struct.pci_pbm_info*, %struct.pci_pbm_info** %2, align 8
  %257 = getelementptr inbounds %struct.pci_pbm_info, %struct.pci_pbm_info* %256, i32 0, i32 4
  %258 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %257, i32 0, i32 0
  %259 = load i64, i64* %258, align 8
  %260 = load %struct.pci_pbm_info*, %struct.pci_pbm_info** %2, align 8
  %261 = getelementptr inbounds %struct.pci_pbm_info, %struct.pci_pbm_info* %260, i32 0, i32 4
  %262 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %261, i32 0, i32 1
  %263 = load i64, i64* %262, align 8
  %264 = icmp ugt i64 %259, %263
  br i1 %264, label %265, label %269

265:                                              ; preds = %255
  %266 = load %struct.pci_pbm_info*, %struct.pci_pbm_info** %2, align 8
  %267 = getelementptr inbounds %struct.pci_pbm_info, %struct.pci_pbm_info* %266, i32 0, i32 4
  %268 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %267, i32 0, i32 2
  store i8* null, i8** %268, align 8
  br label %269

269:                                              ; preds = %265, %255
  br label %270

270:                                              ; preds = %269, %230, %224
  %271 = load %struct.pci_pbm_info*, %struct.pci_pbm_info** %2, align 8
  %272 = getelementptr inbounds %struct.pci_pbm_info, %struct.pci_pbm_info* %271, i32 0, i32 4
  %273 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %272, i32 0, i32 2
  %274 = load i8*, i8** %273, align 8
  %275 = icmp ne i8* %274, null
  br i1 %275, label %276, label %286

276:                                              ; preds = %270
  %277 = load %struct.pci_pbm_info*, %struct.pci_pbm_info** %2, align 8
  %278 = getelementptr inbounds %struct.pci_pbm_info, %struct.pci_pbm_info* %277, i32 0, i32 7
  %279 = load i32, i32* %278, align 8
  %280 = load %struct.pci_pbm_info*, %struct.pci_pbm_info** %2, align 8
  %281 = getelementptr inbounds %struct.pci_pbm_info, %struct.pci_pbm_info* %280, i32 0, i32 4
  %282 = load %struct.pci_pbm_info*, %struct.pci_pbm_info** %2, align 8
  %283 = getelementptr inbounds %struct.pci_pbm_info, %struct.pci_pbm_info* %282, i32 0, i32 3
  %284 = load i64, i64* %283, align 8
  %285 = call i32 @printk(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.7, i64 0, i64 0), i32 %279, %struct.TYPE_8__* %281, i64 %284)
  br label %286

286:                                              ; preds = %276, %270
  %287 = load %struct.pci_pbm_info*, %struct.pci_pbm_info** %2, align 8
  %288 = getelementptr inbounds %struct.pci_pbm_info, %struct.pci_pbm_info* %287, i32 0, i32 7
  %289 = load i32, i32* %288, align 8
  %290 = load %struct.pci_pbm_info*, %struct.pci_pbm_info** %2, align 8
  %291 = getelementptr inbounds %struct.pci_pbm_info, %struct.pci_pbm_info* %290, i32 0, i32 5
  %292 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %291, i32 0, i32 3
  store i32 %289, i32* %292, align 8
  %293 = load %struct.pci_pbm_info*, %struct.pci_pbm_info** %2, align 8
  %294 = getelementptr inbounds %struct.pci_pbm_info, %struct.pci_pbm_info* %293, i32 0, i32 6
  %295 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %294, i32 0, i32 3
  store i32 %289, i32* %295, align 8
  %296 = load %struct.pci_pbm_info*, %struct.pci_pbm_info** %2, align 8
  %297 = getelementptr inbounds %struct.pci_pbm_info, %struct.pci_pbm_info* %296, i32 0, i32 7
  %298 = load i32, i32* %297, align 8
  %299 = load %struct.pci_pbm_info*, %struct.pci_pbm_info** %2, align 8
  %300 = getelementptr inbounds %struct.pci_pbm_info, %struct.pci_pbm_info* %299, i32 0, i32 4
  %301 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %300, i32 0, i32 3
  store i32 %298, i32* %301, align 8
  %302 = load %struct.pci_pbm_info*, %struct.pci_pbm_info** %2, align 8
  %303 = getelementptr inbounds %struct.pci_pbm_info, %struct.pci_pbm_info* %302, i32 0, i32 6
  %304 = call i32 @request_resource(i32* @ioport_resource, %struct.TYPE_8__* %303)
  %305 = load %struct.pci_pbm_info*, %struct.pci_pbm_info** %2, align 8
  %306 = getelementptr inbounds %struct.pci_pbm_info, %struct.pci_pbm_info* %305, i32 0, i32 5
  %307 = call i32 @request_resource(i32* @iomem_resource, %struct.TYPE_8__* %306)
  %308 = load %struct.pci_pbm_info*, %struct.pci_pbm_info** %2, align 8
  %309 = getelementptr inbounds %struct.pci_pbm_info, %struct.pci_pbm_info* %308, i32 0, i32 4
  %310 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %309, i32 0, i32 2
  %311 = load i8*, i8** %310, align 8
  %312 = icmp ne i8* %311, null
  br i1 %312, label %313, label %317

313:                                              ; preds = %286
  %314 = load %struct.pci_pbm_info*, %struct.pci_pbm_info** %2, align 8
  %315 = getelementptr inbounds %struct.pci_pbm_info, %struct.pci_pbm_info* %314, i32 0, i32 4
  %316 = call i32 @request_resource(i32* @iomem_resource, %struct.TYPE_8__* %315)
  br label %317

317:                                              ; preds = %313, %286
  %318 = load %struct.pci_pbm_info*, %struct.pci_pbm_info** %2, align 8
  %319 = call i32 @pci_register_iommu_region(%struct.pci_pbm_info* %318)
  ret void
}

declare dso_local %struct.linux_prom_pci_ranges* @of_get_property(i32, i8*, i32*) #1

declare dso_local i32 @prom_printf(i8*, i32, ...) #1

declare dso_local i32 @prom_halt(...) #1

declare dso_local i32 @memset(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i32 @printk(i8*, i32, %struct.TYPE_8__*, i64) #1

declare dso_local i32 @request_resource(i32*, %struct.TYPE_8__*) #1

declare dso_local i32 @pci_register_iommu_region(%struct.pci_pbm_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
