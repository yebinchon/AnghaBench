; ModuleID = '/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_pci_schizo.c_schizo_check_iommu_error_pbm.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_pci_schizo.c_schizo_check_iommu_error_pbm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_pbm_info = type { i64, %struct.TYPE_2__, i32, %struct.iommu* }
%struct.TYPE_2__ = type { i64 }
%struct.iommu = type { i32, i64 }

@SCHIZO_IOMMU_CTRL_XLTEERR = common dso_local global i32 0, align 4
@SCHIZO_IOMMU_CTRL_XLTESTAT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"Protection Error\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"Invalid Error\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"TimeOut Error\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"ECC Error\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"%s: IOMMU Error, type[%s]\0A\00", align 1
@SCHIZO_IOMMU_CTRL_DENAB = common dso_local global i32 0, align 4
@SCHIZO_IOMMU_TAG = common dso_local global i64 0, align 8
@SCHIZO_IOMMU_DATA = common dso_local global i64 0, align 8
@SCHIZO_IOMMU_TAG_ERR = common dso_local global i64 0, align 8
@SCHIZO_IOMMU_TAG_ERRSTS = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [72 x i8] c"%s: IOMMU TAG(%d)[error(%s) ctx(%x) wr(%d) str(%d) sz(%dK) vpg(%08lx)]\0A\00", align 1
@SCHIZO_IOMMU_TAG_CTXT = common dso_local global i64 0, align 8
@SCHIZO_IOMMU_TAG_WRITE = common dso_local global i64 0, align 8
@SCHIZO_IOMMU_TAG_STREAM = common dso_local global i64 0, align 8
@SCHIZO_IOMMU_TAG_SIZE = common dso_local global i64 0, align 8
@SCHIZO_IOMMU_TAG_VPAGE = common dso_local global i64 0, align 8
@IOMMU_PAGE_SHIFT = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [53 x i8] c"%s: IOMMU DATA(%d)[valid(%d) cache(%d) ppg(%016lx)]\0A\00", align 1
@SCHIZO_IOMMU_DATA_VALID = common dso_local global i64 0, align 8
@SCHIZO_IOMMU_DATA_CACHE = common dso_local global i64 0, align 8
@SCHIZO_IOMMU_DATA_PPAGE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_pbm_info*, i32)* @schizo_check_iommu_error_pbm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @schizo_check_iommu_error_pbm(%struct.pci_pbm_info* %0, i32 %1) #0 {
  %3 = alloca %struct.pci_pbm_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.iommu*, align 8
  %6 = alloca [16 x i64], align 16
  %7 = alloca [16 x i64], align 16
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store %struct.pci_pbm_info* %0, %struct.pci_pbm_info** %3, align 8
  store i32 %1, i32* %4, align 4
  %15 = load %struct.pci_pbm_info*, %struct.pci_pbm_info** %3, align 8
  %16 = getelementptr inbounds %struct.pci_pbm_info, %struct.pci_pbm_info* %15, i32 0, i32 3
  %17 = load %struct.iommu*, %struct.iommu** %16, align 8
  store %struct.iommu* %17, %struct.iommu** %5, align 8
  %18 = load %struct.iommu*, %struct.iommu** %5, align 8
  %19 = getelementptr inbounds %struct.iommu, %struct.iommu* %18, i32 0, i32 0
  %20 = load i64, i64* %8, align 8
  %21 = call i32 @spin_lock_irqsave(i32* %19, i64 %20)
  %22 = load %struct.iommu*, %struct.iommu** %5, align 8
  %23 = getelementptr inbounds %struct.iommu, %struct.iommu* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = call i8* @upa_readq(i64 %24)
  %26 = ptrtoint i8* %25 to i32
  store i32 %26, i32* %9, align 4
  %27 = load i32, i32* %9, align 4
  %28 = load i32, i32* @SCHIZO_IOMMU_CTRL_XLTEERR, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %207

31:                                               ; preds = %2
  %32 = load i32, i32* @SCHIZO_IOMMU_CTRL_XLTEERR, align 4
  %33 = xor i32 %32, -1
  %34 = load i32, i32* %9, align 4
  %35 = and i32 %34, %33
  store i32 %35, i32* %9, align 4
  %36 = load i32, i32* %9, align 4
  %37 = load %struct.iommu*, %struct.iommu** %5, align 8
  %38 = getelementptr inbounds %struct.iommu, %struct.iommu* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = call i32 @upa_writeq(i32 %36, i64 %39)
  %41 = load i32, i32* %9, align 4
  %42 = load i32, i32* @SCHIZO_IOMMU_CTRL_XLTESTAT, align 4
  %43 = and i32 %41, %42
  %44 = ashr i32 %43, 25
  switch i32 %44, label %49 [
    i32 0, label %45
    i32 1, label %46
    i32 2, label %47
    i32 3, label %48
  ]

45:                                               ; preds = %31
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i8** %12, align 8
  br label %50

46:                                               ; preds = %31
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i8** %12, align 8
  br label %50

47:                                               ; preds = %31
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i8** %12, align 8
  br label %50

48:                                               ; preds = %31
  br label %49

49:                                               ; preds = %31, %48
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i8** %12, align 8
  br label %50

50:                                               ; preds = %49, %47, %46, %45
  %51 = load %struct.pci_pbm_info*, %struct.pci_pbm_info** %3, align 8
  %52 = getelementptr inbounds %struct.pci_pbm_info, %struct.pci_pbm_info* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = load i8*, i8** %12, align 8
  %55 = call i32 (i8*, i32, ...) @printk(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i32 %53, i8* %54)
  %56 = load i32, i32* %9, align 4
  %57 = load i32, i32* @SCHIZO_IOMMU_CTRL_DENAB, align 4
  %58 = or i32 %56, %57
  %59 = load %struct.iommu*, %struct.iommu** %5, align 8
  %60 = getelementptr inbounds %struct.iommu, %struct.iommu* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = call i32 @upa_writeq(i32 %58, i64 %61)
  %63 = load %struct.pci_pbm_info*, %struct.pci_pbm_info** %3, align 8
  %64 = getelementptr inbounds %struct.pci_pbm_info, %struct.pci_pbm_info* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  store i64 %65, i64* %11, align 8
  store i32 0, i32* %10, align 4
  br label %66

66:                                               ; preds = %110, %50
  %67 = load i32, i32* %10, align 4
  %68 = icmp slt i32 %67, 16
  br i1 %68, label %69, label %113

69:                                               ; preds = %66
  %70 = load i64, i64* %11, align 8
  %71 = load i64, i64* @SCHIZO_IOMMU_TAG, align 8
  %72 = add i64 %70, %71
  %73 = load i32, i32* %10, align 4
  %74 = sext i32 %73 to i64
  %75 = mul i64 %74, 8
  %76 = add i64 %72, %75
  %77 = call i8* @upa_readq(i64 %76)
  %78 = ptrtoint i8* %77 to i64
  %79 = load i32, i32* %10, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds [16 x i64], [16 x i64]* %6, i64 0, i64 %80
  store i64 %78, i64* %81, align 8
  %82 = load i64, i64* %11, align 8
  %83 = load i64, i64* @SCHIZO_IOMMU_DATA, align 8
  %84 = add i64 %82, %83
  %85 = load i32, i32* %10, align 4
  %86 = sext i32 %85 to i64
  %87 = mul i64 %86, 8
  %88 = add i64 %84, %87
  %89 = call i8* @upa_readq(i64 %88)
  %90 = ptrtoint i8* %89 to i64
  %91 = load i32, i32* %10, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds [16 x i64], [16 x i64]* %7, i64 0, i64 %92
  store i64 %90, i64* %93, align 8
  %94 = load i64, i64* %11, align 8
  %95 = load i64, i64* @SCHIZO_IOMMU_TAG, align 8
  %96 = add i64 %94, %95
  %97 = load i32, i32* %10, align 4
  %98 = sext i32 %97 to i64
  %99 = mul i64 %98, 8
  %100 = add i64 %96, %99
  %101 = call i32 @upa_writeq(i32 0, i64 %100)
  %102 = load i64, i64* %11, align 8
  %103 = load i64, i64* @SCHIZO_IOMMU_DATA, align 8
  %104 = add i64 %102, %103
  %105 = load i32, i32* %10, align 4
  %106 = sext i32 %105 to i64
  %107 = mul i64 %106, 8
  %108 = add i64 %104, %107
  %109 = call i32 @upa_writeq(i32 0, i64 %108)
  br label %110

110:                                              ; preds = %69
  %111 = load i32, i32* %10, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %10, align 4
  br label %66

113:                                              ; preds = %66
  %114 = load i32, i32* %9, align 4
  %115 = load %struct.iommu*, %struct.iommu** %5, align 8
  %116 = getelementptr inbounds %struct.iommu, %struct.iommu* %115, i32 0, i32 1
  %117 = load i64, i64* %116, align 8
  %118 = call i32 @upa_writeq(i32 %114, i64 %117)
  store i32 0, i32* %10, align 4
  br label %119

119:                                              ; preds = %203, %113
  %120 = load i32, i32* %10, align 4
  %121 = icmp slt i32 %120, 16
  br i1 %121, label %122, label %206

122:                                              ; preds = %119
  %123 = load i32, i32* %10, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds [16 x i64], [16 x i64]* %6, i64 0, i64 %124
  %126 = load i64, i64* %125, align 8
  store i64 %126, i64* %13, align 8
  %127 = load i64, i64* %13, align 8
  %128 = load i64, i64* @SCHIZO_IOMMU_TAG_ERR, align 8
  %129 = and i64 %127, %128
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %132, label %131

131:                                              ; preds = %122
  br label %203

132:                                              ; preds = %122
  %133 = load i32, i32* %10, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds [16 x i64], [16 x i64]* %7, i64 0, i64 %134
  %136 = load i64, i64* %135, align 8
  store i64 %136, i64* %14, align 8
  %137 = load i64, i64* %13, align 8
  %138 = load i64, i64* @SCHIZO_IOMMU_TAG_ERRSTS, align 8
  %139 = and i64 %137, %138
  %140 = lshr i64 %139, 23
  switch i64 %140, label %145 [
    i64 0, label %141
    i64 1, label %142
    i64 2, label %143
    i64 3, label %144
  ]

141:                                              ; preds = %132
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i8** %12, align 8
  br label %146

142:                                              ; preds = %132
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i8** %12, align 8
  br label %146

143:                                              ; preds = %132
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i8** %12, align 8
  br label %146

144:                                              ; preds = %132
  br label %145

145:                                              ; preds = %132, %144
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i8** %12, align 8
  br label %146

146:                                              ; preds = %145, %143, %142, %141
  %147 = load %struct.pci_pbm_info*, %struct.pci_pbm_info** %3, align 8
  %148 = getelementptr inbounds %struct.pci_pbm_info, %struct.pci_pbm_info* %147, i32 0, i32 2
  %149 = load i32, i32* %148, align 8
  %150 = load i32, i32* %10, align 4
  %151 = load i8*, i8** %12, align 8
  %152 = load i64, i64* %13, align 8
  %153 = load i64, i64* @SCHIZO_IOMMU_TAG_CTXT, align 8
  %154 = and i64 %152, %153
  %155 = lshr i64 %154, 25
  %156 = trunc i64 %155 to i32
  %157 = load i64, i64* %13, align 8
  %158 = load i64, i64* @SCHIZO_IOMMU_TAG_WRITE, align 8
  %159 = and i64 %157, %158
  %160 = icmp ne i64 %159, 0
  %161 = zext i1 %160 to i64
  %162 = select i1 %160, i32 1, i32 0
  %163 = load i64, i64* %13, align 8
  %164 = load i64, i64* @SCHIZO_IOMMU_TAG_STREAM, align 8
  %165 = and i64 %163, %164
  %166 = icmp ne i64 %165, 0
  %167 = zext i1 %166 to i64
  %168 = select i1 %166, i32 1, i32 0
  %169 = load i64, i64* %13, align 8
  %170 = load i64, i64* @SCHIZO_IOMMU_TAG_SIZE, align 8
  %171 = and i64 %169, %170
  %172 = icmp ne i64 %171, 0
  %173 = zext i1 %172 to i64
  %174 = select i1 %172, i32 64, i32 8
  %175 = load i64, i64* %13, align 8
  %176 = load i64, i64* @SCHIZO_IOMMU_TAG_VPAGE, align 8
  %177 = and i64 %175, %176
  %178 = load i64, i64* @IOMMU_PAGE_SHIFT, align 8
  %179 = shl i64 %177, %178
  %180 = call i32 (i8*, i32, ...) @printk(i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.5, i64 0, i64 0), i32 %149, i32 %150, i8* %151, i32 %156, i32 %162, i32 %168, i32 %174, i64 %179)
  %181 = load %struct.pci_pbm_info*, %struct.pci_pbm_info** %3, align 8
  %182 = getelementptr inbounds %struct.pci_pbm_info, %struct.pci_pbm_info* %181, i32 0, i32 2
  %183 = load i32, i32* %182, align 8
  %184 = load i32, i32* %10, align 4
  %185 = load i64, i64* %14, align 8
  %186 = load i64, i64* @SCHIZO_IOMMU_DATA_VALID, align 8
  %187 = and i64 %185, %186
  %188 = icmp ne i64 %187, 0
  %189 = zext i1 %188 to i64
  %190 = select i1 %188, i32 1, i32 0
  %191 = load i64, i64* %14, align 8
  %192 = load i64, i64* @SCHIZO_IOMMU_DATA_CACHE, align 8
  %193 = and i64 %191, %192
  %194 = icmp ne i64 %193, 0
  %195 = zext i1 %194 to i64
  %196 = select i1 %194, i32 1, i32 0
  %197 = load i64, i64* %14, align 8
  %198 = load i64, i64* @SCHIZO_IOMMU_DATA_PPAGE, align 8
  %199 = and i64 %197, %198
  %200 = load i64, i64* @IOMMU_PAGE_SHIFT, align 8
  %201 = shl i64 %199, %200
  %202 = call i32 (i8*, i32, ...) @printk(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.6, i64 0, i64 0), i32 %183, i32 %184, i32 %190, i32 %196, i64 %201)
  br label %203

203:                                              ; preds = %146, %131
  %204 = load i32, i32* %10, align 4
  %205 = add nsw i32 %204, 1
  store i32 %205, i32* %10, align 4
  br label %119

206:                                              ; preds = %119
  br label %207

207:                                              ; preds = %206, %2
  %208 = load %struct.pci_pbm_info*, %struct.pci_pbm_info** %3, align 8
  %209 = getelementptr inbounds %struct.pci_pbm_info, %struct.pci_pbm_info* %208, i32 0, i32 1
  %210 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %209, i32 0, i32 0
  %211 = load i64, i64* %210, align 8
  %212 = icmp ne i64 %211, 0
  br i1 %212, label %213, label %217

213:                                              ; preds = %207
  %214 = load %struct.pci_pbm_info*, %struct.pci_pbm_info** %3, align 8
  %215 = load i32, i32* %4, align 4
  %216 = call i32 @__schizo_check_stc_error_pbm(%struct.pci_pbm_info* %214, i32 %215)
  br label %217

217:                                              ; preds = %213, %207
  %218 = load %struct.iommu*, %struct.iommu** %5, align 8
  %219 = getelementptr inbounds %struct.iommu, %struct.iommu* %218, i32 0, i32 0
  %220 = load i64, i64* %8, align 8
  %221 = call i32 @spin_unlock_irqrestore(i32* %219, i64 %220)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i8* @upa_readq(i64) #1

declare dso_local i32 @upa_writeq(i32, i64) #1

declare dso_local i32 @printk(i8*, i32, ...) #1

declare dso_local i32 @__schizo_check_stc_error_pbm(%struct.pci_pbm_info*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
