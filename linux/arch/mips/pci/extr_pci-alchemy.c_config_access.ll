; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/pci/extr_pci-alchemy.c_config_access.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/pci/extr_pci-alchemy.c_config_access.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_bus = type { i32, %struct.alchemy_pci_context* }
%struct.alchemy_pci_context = type { i64 (i32, i32)*, i64, i64, i64, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i64 }

@PCIBIOS_SUCCESSFUL = common dso_local global i32 0, align 4
@PCI_REG_STATCMD = common dso_local global i64 0, align 8
@PAGE_MASK = common dso_local global i64 0, align 8
@PM_4K = common dso_local global i32 0, align 4
@PCI_ACCESS_WRITE = common dso_local global i8 0, align 1
@.str = private unnamed_addr constant [64 x i8] c"alchemy-pci: cfg access %d bus %u dev %u at %x dat %x conf %lx\0A\00", align 1
@.str.1 = private unnamed_addr constant [58 x i8] c"alchemy-pci: master abort on cfg access %d bus %d dev %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [51 x i8] c"alchemy-pci: PCI ERR detected: dev %d, status %lx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8, %struct.pci_bus*, i32, i8, i64*)* @config_access to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @config_access(i8 zeroext %0, %struct.pci_bus* %1, i32 %2, i8 zeroext %3, i64* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  %8 = alloca %struct.pci_bus*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8, align 1
  %11 = alloca i64*, align 8
  %12 = alloca %struct.alchemy_pci_context*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i32, align 4
  store i8 %0, i8* %7, align 1
  store %struct.pci_bus* %1, %struct.pci_bus** %8, align 8
  store i32 %2, i32* %9, align 4
  store i8 %3, i8* %10, align 1
  store i64* %4, i64** %11, align 8
  %23 = load %struct.pci_bus*, %struct.pci_bus** %8, align 8
  %24 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %23, i32 0, i32 1
  %25 = load %struct.alchemy_pci_context*, %struct.alchemy_pci_context** %24, align 8
  store %struct.alchemy_pci_context* %25, %struct.alchemy_pci_context** %12, align 8
  %26 = load i32, i32* %9, align 4
  %27 = call i32 @PCI_SLOT(i32 %26)
  store i32 %27, i32* %13, align 4
  %28 = load i32, i32* %9, align 4
  %29 = call i32 @PCI_FUNC(i32 %28)
  store i32 %29, i32* %14, align 4
  %30 = load i32, i32* @PCIBIOS_SUCCESSFUL, align 4
  store i32 %30, i32* %22, align 4
  %31 = load i32, i32* %13, align 4
  %32 = icmp ugt i32 %31, 19
  br i1 %32, label %33, label %35

33:                                               ; preds = %5
  %34 = load i64*, i64** %11, align 8
  store i64 4294967295, i64* %34, align 8
  store i32 -1, i32* %6, align 4
  br label %238

35:                                               ; preds = %5
  %36 = load i64, i64* %18, align 8
  %37 = call i32 @local_irq_save(i64 %36)
  %38 = load %struct.alchemy_pci_context*, %struct.alchemy_pci_context** %12, align 8
  %39 = getelementptr inbounds %struct.alchemy_pci_context, %struct.alchemy_pci_context* %38, i32 0, i32 3
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @PCI_REG_STATCMD, align 8
  %42 = add nsw i64 %40, %41
  %43 = call i32 @__raw_readl(i64 %42)
  %44 = and i32 %43, 65535
  %45 = sext i32 %44 to i64
  store i64 %45, i64* %21, align 8
  %46 = call i64 @PCI_STATCMD_STATUS(i32 8192)
  %47 = load i64, i64* %21, align 8
  %48 = or i64 %47, %46
  store i64 %48, i64* %21, align 8
  %49 = load i64, i64* %21, align 8
  %50 = load %struct.alchemy_pci_context*, %struct.alchemy_pci_context** %12, align 8
  %51 = getelementptr inbounds %struct.alchemy_pci_context, %struct.alchemy_pci_context* %50, i32 0, i32 3
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @PCI_REG_STATCMD, align 8
  %54 = add nsw i64 %52, %53
  %55 = call i32 @__raw_writel(i64 %49, i64 %54)
  %56 = call i32 (...) @wmb()
  %57 = load %struct.alchemy_pci_context*, %struct.alchemy_pci_context** %12, align 8
  %58 = getelementptr inbounds %struct.alchemy_pci_context, %struct.alchemy_pci_context* %57, i32 0, i32 0
  %59 = load i64 (i32, i32)*, i64 (i32, i32)** %58, align 8
  %60 = load i32, i32* %13, align 4
  %61 = call i64 %59(i32 %60, i32 1)
  %62 = icmp eq i64 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %35
  %64 = load i64*, i64** %11, align 8
  store i64 4294967295, i64* %64, align 8
  %65 = load i64, i64* %18, align 8
  %66 = call i32 @local_irq_restore(i64 %65)
  store i32 -1, i32* %6, align 4
  br label %238

67:                                               ; preds = %35
  %68 = load %struct.pci_bus*, %struct.pci_bus** %8, align 8
  %69 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %77

72:                                               ; preds = %67
  %73 = load i32, i32* %13, align 4
  %74 = shl i32 1, %73
  %75 = shl i32 %74, 11
  %76 = sext i32 %75 to i64
  store i64 %76, i64* %17, align 8
  br label %87

77:                                               ; preds = %67
  %78 = load %struct.pci_bus*, %struct.pci_bus** %8, align 8
  %79 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = shl i32 %80, 16
  %82 = or i32 -2147483648, %81
  %83 = load i32, i32* %13, align 4
  %84 = shl i32 %83, 11
  %85 = or i32 %82, %84
  %86 = zext i32 %85 to i64
  store i64 %86, i64* %17, align 8
  br label %87

87:                                               ; preds = %77, %72
  %88 = load i32, i32* %14, align 4
  %89 = shl i32 %88, 8
  %90 = load i8, i8* %10, align 1
  %91 = zext i8 %90 to i32
  %92 = and i32 %91, -4
  %93 = or i32 %89, %92
  %94 = zext i32 %93 to i64
  store i64 %94, i64* %15, align 8
  %95 = load i64, i64* %17, align 8
  %96 = load i64, i64* @PAGE_MASK, align 8
  %97 = xor i64 %96, -1
  %98 = and i64 %95, %97
  %99 = load i64, i64* %15, align 8
  %100 = or i64 %99, %98
  store i64 %100, i64* %15, align 8
  %101 = load i64, i64* %17, align 8
  %102 = load i64, i64* @PAGE_MASK, align 8
  %103 = and i64 %101, %102
  store i64 %103, i64* %17, align 8
  %104 = load i64, i64* %17, align 8
  %105 = lshr i64 %104, 6
  %106 = or i64 402653184, %105
  %107 = or i64 %106, 16
  %108 = or i64 %107, 7
  store i64 %108, i64* %19, align 8
  %109 = load i64, i64* %17, align 8
  %110 = lshr i64 %109, 6
  %111 = or i64 402653184, %110
  %112 = or i64 %111, 64
  %113 = or i64 %112, 16
  %114 = or i64 %113, 7
  store i64 %114, i64* %20, align 8
  %115 = load i64, i64* %19, align 8
  %116 = load %struct.alchemy_pci_context*, %struct.alchemy_pci_context** %12, align 8
  %117 = getelementptr inbounds %struct.alchemy_pci_context, %struct.alchemy_pci_context* %116, i32 0, i32 1
  %118 = load i64, i64* %117, align 8
  %119 = icmp ne i64 %115, %118
  br i1 %119, label %126, label %120

120:                                              ; preds = %87
  %121 = load i64, i64* %20, align 8
  %122 = load %struct.alchemy_pci_context*, %struct.alchemy_pci_context** %12, align 8
  %123 = getelementptr inbounds %struct.alchemy_pci_context, %struct.alchemy_pci_context* %122, i32 0, i32 2
  %124 = load i64, i64* %123, align 8
  %125 = icmp ne i64 %121, %124
  br i1 %125, label %126, label %145

126:                                              ; preds = %120, %87
  %127 = load %struct.alchemy_pci_context*, %struct.alchemy_pci_context** %12, align 8
  %128 = getelementptr inbounds %struct.alchemy_pci_context, %struct.alchemy_pci_context* %127, i32 0, i32 5
  %129 = load i32, i32* %128, align 8
  %130 = load i64, i64* %19, align 8
  %131 = load i64, i64* %20, align 8
  %132 = load %struct.alchemy_pci_context*, %struct.alchemy_pci_context** %12, align 8
  %133 = getelementptr inbounds %struct.alchemy_pci_context, %struct.alchemy_pci_context* %132, i32 0, i32 4
  %134 = load %struct.TYPE_2__*, %struct.TYPE_2__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = load i32, i32* @PM_4K, align 4
  %138 = call i32 @mod_wired_entry(i32 %129, i64 %130, i64 %131, i64 %136, i32 %137)
  %139 = load i64, i64* %19, align 8
  %140 = load %struct.alchemy_pci_context*, %struct.alchemy_pci_context** %12, align 8
  %141 = getelementptr inbounds %struct.alchemy_pci_context, %struct.alchemy_pci_context* %140, i32 0, i32 1
  store i64 %139, i64* %141, align 8
  %142 = load i64, i64* %20, align 8
  %143 = load %struct.alchemy_pci_context*, %struct.alchemy_pci_context** %12, align 8
  %144 = getelementptr inbounds %struct.alchemy_pci_context, %struct.alchemy_pci_context* %143, i32 0, i32 2
  store i64 %142, i64* %144, align 8
  br label %145

145:                                              ; preds = %126, %120
  %146 = load i8, i8* %7, align 1
  %147 = zext i8 %146 to i32
  %148 = load i8, i8* @PCI_ACCESS_WRITE, align 1
  %149 = zext i8 %148 to i32
  %150 = icmp eq i32 %147, %149
  br i1 %150, label %151, label %162

151:                                              ; preds = %145
  %152 = load i64*, i64** %11, align 8
  %153 = load i64, i64* %152, align 8
  %154 = load %struct.alchemy_pci_context*, %struct.alchemy_pci_context** %12, align 8
  %155 = getelementptr inbounds %struct.alchemy_pci_context, %struct.alchemy_pci_context* %154, i32 0, i32 4
  %156 = load %struct.TYPE_2__*, %struct.TYPE_2__** %155, align 8
  %157 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %156, i32 0, i32 0
  %158 = load i64, i64* %157, align 8
  %159 = load i64, i64* %15, align 8
  %160 = add i64 %158, %159
  %161 = call i32 @__raw_writel(i64 %153, i64 %160)
  br label %173

162:                                              ; preds = %145
  %163 = load %struct.alchemy_pci_context*, %struct.alchemy_pci_context** %12, align 8
  %164 = getelementptr inbounds %struct.alchemy_pci_context, %struct.alchemy_pci_context* %163, i32 0, i32 4
  %165 = load %struct.TYPE_2__*, %struct.TYPE_2__** %164, align 8
  %166 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %165, i32 0, i32 0
  %167 = load i64, i64* %166, align 8
  %168 = load i64, i64* %15, align 8
  %169 = add i64 %167, %168
  %170 = call i32 @__raw_readl(i64 %169)
  %171 = sext i32 %170 to i64
  %172 = load i64*, i64** %11, align 8
  store i64 %171, i64* %172, align 8
  br label %173

173:                                              ; preds = %162, %151
  %174 = call i32 (...) @wmb()
  %175 = load i8, i8* %7, align 1
  %176 = zext i8 %175 to i32
  %177 = load %struct.pci_bus*, %struct.pci_bus** %8, align 8
  %178 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 8
  %180 = sext i32 %179 to i64
  %181 = load i32, i32* %13, align 4
  %182 = load i8, i8* %10, align 1
  %183 = zext i8 %182 to i32
  %184 = load i64*, i64** %11, align 8
  %185 = load i64, i64* %184, align 8
  %186 = load i64, i64* %15, align 8
  %187 = call i32 (i8*, i32, i64, ...) @DBG(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str, i64 0, i64 0), i32 %176, i64 %180, i32 %181, i32 %183, i64 %185, i64 %186)
  %188 = load %struct.alchemy_pci_context*, %struct.alchemy_pci_context** %12, align 8
  %189 = getelementptr inbounds %struct.alchemy_pci_context, %struct.alchemy_pci_context* %188, i32 0, i32 3
  %190 = load i64, i64* %189, align 8
  %191 = load i64, i64* @PCI_REG_STATCMD, align 8
  %192 = add nsw i64 %190, %191
  %193 = call i32 @__raw_readl(i64 %192)
  %194 = sext i32 %193 to i64
  store i64 %194, i64* %16, align 8
  %195 = load i64, i64* %16, align 8
  %196 = and i64 %195, 536870912
  %197 = icmp ne i64 %196, 0
  br i1 %197, label %198, label %208

198:                                              ; preds = %173
  %199 = load i64*, i64** %11, align 8
  store i64 4294967295, i64* %199, align 8
  store i32 -1, i32* %22, align 4
  %200 = load i8, i8* %7, align 1
  %201 = zext i8 %200 to i32
  %202 = load %struct.pci_bus*, %struct.pci_bus** %8, align 8
  %203 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 8
  %205 = sext i32 %204 to i64
  %206 = load i32, i32* %13, align 4
  %207 = call i32 (i8*, i32, i64, ...) @DBG(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.1, i64 0, i64 0), i32 %201, i64 %205, i32 %206)
  br label %229

208:                                              ; preds = %173
  %209 = load i64, i64* %16, align 8
  %210 = lshr i64 %209, 28
  %211 = and i64 %210, 15
  %212 = icmp ne i64 %211, 0
  br i1 %212, label %213, label %228

213:                                              ; preds = %208
  %214 = load i32, i32* %13, align 4
  %215 = load i64, i64* %16, align 8
  %216 = lshr i64 %215, 28
  %217 = and i64 %216, 15
  %218 = call i32 (i8*, i32, i64, ...) @DBG(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i64 0, i64 0), i32 %214, i64 %217)
  %219 = load i64, i64* %16, align 8
  %220 = and i64 %219, 4026597375
  %221 = load %struct.alchemy_pci_context*, %struct.alchemy_pci_context** %12, align 8
  %222 = getelementptr inbounds %struct.alchemy_pci_context, %struct.alchemy_pci_context* %221, i32 0, i32 3
  %223 = load i64, i64* %222, align 8
  %224 = load i64, i64* @PCI_REG_STATCMD, align 8
  %225 = add nsw i64 %223, %224
  %226 = call i32 @__raw_writel(i64 %220, i64 %225)
  %227 = load i64*, i64** %11, align 8
  store i64 4294967295, i64* %227, align 8
  store i32 -1, i32* %22, align 4
  br label %228

228:                                              ; preds = %213, %208
  br label %229

229:                                              ; preds = %228, %198
  %230 = load %struct.alchemy_pci_context*, %struct.alchemy_pci_context** %12, align 8
  %231 = getelementptr inbounds %struct.alchemy_pci_context, %struct.alchemy_pci_context* %230, i32 0, i32 0
  %232 = load i64 (i32, i32)*, i64 (i32, i32)** %231, align 8
  %233 = load i32, i32* %13, align 4
  %234 = call i64 %232(i32 %233, i32 0)
  %235 = load i64, i64* %18, align 8
  %236 = call i32 @local_irq_restore(i64 %235)
  %237 = load i32, i32* %22, align 4
  store i32 %237, i32* %6, align 4
  br label %238

238:                                              ; preds = %229, %63, %33
  %239 = load i32, i32* %6, align 4
  ret i32 %239
}

declare dso_local i32 @PCI_SLOT(i32) #1

declare dso_local i32 @PCI_FUNC(i32) #1

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32 @__raw_readl(i64) #1

declare dso_local i64 @PCI_STATCMD_STATUS(i32) #1

declare dso_local i32 @__raw_writel(i64, i64) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @local_irq_restore(i64) #1

declare dso_local i32 @mod_wired_entry(i32, i64, i64, i64, i32) #1

declare dso_local i32 @DBG(i8*, i32, i64, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
