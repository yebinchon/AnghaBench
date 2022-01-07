; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/extr_mmconf-fam10h_64.c_get_fam10h_pci_mmconf_base.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/extr_mmconf-fam10h_64.c_get_fam10h_pci_mmconf_base.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32 }
%struct.range = type { i32, i32 }

@FAM10H_PCI_MMCONF_BASE = common dso_local global i32 0, align 4
@fam10h_pci_mmconf_base = common dso_local global i32 0, align 4
@pci_probes = common dso_local global %struct.TYPE_3__* null, align 8
@PCI_VENDOR_ID = common dso_local global i32 0, align 4
@MSR_K8_SYSCFG = common dso_local global i32 0, align 4
@MSR_K8_TOP_MEM2 = common dso_local global i32 0, align 4
@MMCONF_UNIT = common dso_local global i32 0, align 4
@MMCONF_MASK = common dso_local global i32 0, align 4
@cmp_range = common dso_local global i32 0, align 4
@MMCONF_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @get_fam10h_pci_mmconf_base to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @get_fam10h_pci_mmconf_base() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [8 x %struct.range], align 16
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = load i32, i32* @FAM10H_PCI_MMCONF_BASE, align 4
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* @fam10h_pci_mmconf_base, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %0
  br label %257

21:                                               ; preds = %0
  %22 = call i32 (...) @early_pci_allowed()
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %21
  br label %257

25:                                               ; preds = %21
  store i32 0, i32* %4, align 4
  store i32 0, i32* %1, align 4
  br label %26

26:                                               ; preds = %72, %25
  %27 = load i32, i32* %1, align 4
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** @pci_probes, align 8
  %29 = call i32 @ARRAY_SIZE(%struct.TYPE_3__* %28)
  %30 = icmp slt i32 %27, %29
  br i1 %30, label %31, label %75

31:                                               ; preds = %26
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** @pci_probes, align 8
  %33 = load i32, i32* %1, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %2, align 4
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** @pci_probes, align 8
  %39 = load i32, i32* %1, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  store i32 %43, i32* %3, align 4
  %44 = load i32, i32* %2, align 4
  %45 = load i32, i32* %3, align 4
  %46 = load i32, i32* @PCI_VENDOR_ID, align 4
  %47 = call i32 @read_pci_config(i32 %44, i32 %45, i32 0, i32 %46)
  store i32 %47, i32* %11, align 4
  %48 = load i32, i32* %11, align 4
  %49 = and i32 %48, 65535
  store i32 %49, i32* %13, align 4
  %50 = load i32, i32* %11, align 4
  %51 = ashr i32 %50, 16
  %52 = and i32 %51, 65535
  store i32 %52, i32* %12, align 4
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** @pci_probes, align 8
  %54 = load i32, i32* %1, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* %13, align 4
  %60 = icmp eq i32 %58, %59
  br i1 %60, label %61, label %71

61:                                               ; preds = %31
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** @pci_probes, align 8
  %63 = load i32, i32* %1, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* %12, align 4
  %69 = icmp eq i32 %67, %68
  br i1 %69, label %70, label %71

70:                                               ; preds = %61
  store i32 1, i32* %4, align 4
  br label %75

71:                                               ; preds = %61, %31
  br label %72

72:                                               ; preds = %71
  %73 = load i32, i32* %1, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %1, align 4
  br label %26

75:                                               ; preds = %70, %26
  %76 = load i32, i32* %4, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %79, label %78

78:                                               ; preds = %75
  br label %257

79:                                               ; preds = %75
  %80 = load i32, i32* @MSR_K8_SYSCFG, align 4
  store i32 %80, i32* %6, align 4
  %81 = load i32, i32* %6, align 4
  %82 = load i32, i32* %5, align 4
  %83 = call i32 @rdmsrl(i32 %81, i32 %82)
  %84 = load i32, i32* %5, align 4
  %85 = and i32 %84, 2097152
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %88, label %87

87:                                               ; preds = %79
  store i32 0, i32* %7, align 4
  br label %98

88:                                               ; preds = %79
  %89 = load i32, i32* @MSR_K8_TOP_MEM2, align 4
  store i32 %89, i32* %6, align 4
  %90 = load i32, i32* %6, align 4
  %91 = load i32, i32* %5, align 4
  %92 = call i32 @rdmsrl(i32 %90, i32 %91)
  %93 = load i32, i32* %5, align 4
  %94 = sext i32 %93 to i64
  %95 = and i64 %94, 281474968322048
  %96 = trunc i64 %95 to i32
  %97 = call i32 @max(i32 %96, i64 4294967296)
  store i32 %97, i32* %7, align 4
  br label %98

98:                                               ; preds = %88, %87
  %99 = load i32, i32* %8, align 4
  %100 = load i32, i32* %7, align 4
  %101 = icmp sle i32 %99, %100
  br i1 %101, label %102, label %110

102:                                              ; preds = %98
  %103 = load i32, i32* %7, align 4
  %104 = load i32, i32* @MMCONF_UNIT, align 4
  %105 = mul nsw i32 2, %104
  %106 = add nsw i32 %103, %105
  %107 = sub nsw i32 %106, 1
  %108 = load i32, i32* @MMCONF_MASK, align 4
  %109 = and i32 %107, %108
  store i32 %109, i32* %8, align 4
  br label %110

110:                                              ; preds = %102, %98
  store i32 0, i32* %9, align 4
  store i32 0, i32* %1, align 4
  br label %111

111:                                              ; preds = %156, %110
  %112 = load i32, i32* %1, align 4
  %113 = icmp slt i32 %112, 8
  br i1 %113, label %114, label %159

114:                                              ; preds = %111
  %115 = load i32, i32* %2, align 4
  %116 = load i32, i32* %3, align 4
  %117 = load i32, i32* %1, align 4
  %118 = shl i32 %117, 3
  %119 = add nsw i32 128, %118
  %120 = call i32 @read_pci_config(i32 %115, i32 %116, i32 1, i32 %119)
  store i32 %120, i32* %14, align 4
  %121 = load i32, i32* %14, align 4
  %122 = and i32 %121, 3
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %125, label %124

124:                                              ; preds = %114
  br label %156

125:                                              ; preds = %114
  %126 = load i32, i32* %14, align 4
  %127 = and i32 %126, -256
  %128 = shl i32 %127, 8
  store i32 %128, i32* %15, align 4
  %129 = load i32, i32* %2, align 4
  %130 = load i32, i32* %3, align 4
  %131 = load i32, i32* %1, align 4
  %132 = shl i32 %131, 3
  %133 = add nsw i32 132, %132
  %134 = call i32 @read_pci_config(i32 %129, i32 %130, i32 1, i32 %133)
  store i32 %134, i32* %14, align 4
  %135 = load i32, i32* %14, align 4
  %136 = and i32 %135, -256
  %137 = shl i32 %136, 8
  %138 = or i32 %137, 65535
  store i32 %138, i32* %16, align 4
  %139 = load i32, i32* %16, align 4
  %140 = load i32, i32* %7, align 4
  %141 = icmp slt i32 %139, %140
  br i1 %141, label %142, label %143

142:                                              ; preds = %125
  br label %156

143:                                              ; preds = %125
  %144 = load i32, i32* %15, align 4
  %145 = load i32, i32* %9, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds [8 x %struct.range], [8 x %struct.range]* %10, i64 0, i64 %146
  %148 = getelementptr inbounds %struct.range, %struct.range* %147, i32 0, i32 0
  store i32 %144, i32* %148, align 8
  %149 = load i32, i32* %16, align 4
  %150 = load i32, i32* %9, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds [8 x %struct.range], [8 x %struct.range]* %10, i64 0, i64 %151
  %153 = getelementptr inbounds %struct.range, %struct.range* %152, i32 0, i32 1
  store i32 %149, i32* %153, align 4
  %154 = load i32, i32* %9, align 4
  %155 = add nsw i32 %154, 1
  store i32 %155, i32* %9, align 4
  br label %156

156:                                              ; preds = %143, %142, %124
  %157 = load i32, i32* %1, align 4
  %158 = add nsw i32 %157, 1
  store i32 %158, i32* %1, align 4
  br label %111

159:                                              ; preds = %111
  %160 = load i32, i32* %9, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %163, label %162

162:                                              ; preds = %159
  br label %255

163:                                              ; preds = %159
  %164 = getelementptr inbounds [8 x %struct.range], [8 x %struct.range]* %10, i64 0, i64 0
  %165 = load i32, i32* %9, align 4
  %166 = load i32, i32* @cmp_range, align 4
  %167 = call i32 @sort(%struct.range* %164, i32 %165, i32 8, i32 %166, i32* null)
  %168 = load i32, i32* %9, align 4
  %169 = sub nsw i32 %168, 1
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds [8 x %struct.range], [8 x %struct.range]* %10, i64 0, i64 %170
  %172 = getelementptr inbounds %struct.range, %struct.range* %171, i32 0, i32 1
  %173 = load i32, i32* %172, align 4
  %174 = load i32, i32* %8, align 4
  %175 = icmp slt i32 %173, %174
  br i1 %175, label %176, label %177

176:                                              ; preds = %163
  br label %255

177:                                              ; preds = %163
  %178 = getelementptr inbounds [8 x %struct.range], [8 x %struct.range]* %10, i64 0, i64 0
  %179 = getelementptr inbounds %struct.range, %struct.range* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 16
  %181 = load i32, i32* %8, align 4
  %182 = load i32, i32* @MMCONF_SIZE, align 4
  %183 = add nsw i32 %181, %182
  %184 = icmp sgt i32 %180, %183
  br i1 %184, label %185, label %186

185:                                              ; preds = %177
  br label %255

186:                                              ; preds = %177
  %187 = getelementptr inbounds [8 x %struct.range], [8 x %struct.range]* %10, i64 0, i64 0
  %188 = getelementptr inbounds %struct.range, %struct.range* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 16
  %190 = load i32, i32* @MMCONF_MASK, align 4
  %191 = and i32 %189, %190
  %192 = load i32, i32* @MMCONF_UNIT, align 4
  %193 = sub nsw i32 %191, %192
  store i32 %193, i32* %8, align 4
  %194 = load i32, i32* %8, align 4
  %195 = load i32, i32* %7, align 4
  %196 = icmp sgt i32 %194, %195
  br i1 %196, label %197, label %202

197:                                              ; preds = %186
  %198 = load i32, i32* %8, align 4
  %199 = call i64 @BASE_VALID(i32 %198)
  %200 = icmp ne i64 %199, 0
  br i1 %200, label %201, label %202

201:                                              ; preds = %197
  br label %255

202:                                              ; preds = %197, %186
  %203 = load i32, i32* %9, align 4
  %204 = sub nsw i32 %203, 1
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds [8 x %struct.range], [8 x %struct.range]* %10, i64 0, i64 %205
  %207 = getelementptr inbounds %struct.range, %struct.range* %206, i32 0, i32 1
  %208 = load i32, i32* %207, align 4
  %209 = load i32, i32* @MMCONF_UNIT, align 4
  %210 = add nsw i32 %208, %209
  %211 = load i32, i32* @MMCONF_MASK, align 4
  %212 = and i32 %210, %211
  store i32 %212, i32* %8, align 4
  %213 = load i32, i32* %8, align 4
  %214 = call i64 @BASE_VALID(i32 %213)
  %215 = icmp ne i64 %214, 0
  br i1 %215, label %216, label %217

216:                                              ; preds = %202
  br label %255

217:                                              ; preds = %202
  store i32 1, i32* %1, align 4
  br label %218

218:                                              ; preds = %251, %217
  %219 = load i32, i32* %1, align 4
  %220 = load i32, i32* %9, align 4
  %221 = icmp slt i32 %219, %220
  br i1 %221, label %222, label %254

222:                                              ; preds = %218
  %223 = load i32, i32* %1, align 4
  %224 = sub nsw i32 %223, 1
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds [8 x %struct.range], [8 x %struct.range]* %10, i64 0, i64 %225
  %227 = getelementptr inbounds %struct.range, %struct.range* %226, i32 0, i32 1
  %228 = load i32, i32* %227, align 4
  %229 = load i32, i32* @MMCONF_UNIT, align 4
  %230 = add nsw i32 %228, %229
  %231 = load i32, i32* @MMCONF_MASK, align 4
  %232 = and i32 %230, %231
  store i32 %232, i32* %8, align 4
  %233 = load i32, i32* %1, align 4
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds [8 x %struct.range], [8 x %struct.range]* %10, i64 0, i64 %234
  %236 = getelementptr inbounds %struct.range, %struct.range* %235, i32 0, i32 0
  %237 = load i32, i32* %236, align 8
  %238 = load i32, i32* @MMCONF_MASK, align 4
  %239 = and i32 %237, %238
  store i32 %239, i32* %5, align 4
  %240 = load i32, i32* %5, align 4
  %241 = load i32, i32* %8, align 4
  %242 = load i32, i32* @MMCONF_SIZE, align 4
  %243 = add nsw i32 %241, %242
  %244 = icmp sge i32 %240, %243
  br i1 %244, label %245, label %250

245:                                              ; preds = %222
  %246 = load i32, i32* %8, align 4
  %247 = call i64 @BASE_VALID(i32 %246)
  %248 = icmp ne i64 %247, 0
  br i1 %248, label %249, label %250

249:                                              ; preds = %245
  br label %255

250:                                              ; preds = %245, %222
  br label %251

251:                                              ; preds = %250
  %252 = load i32, i32* %1, align 4
  %253 = add nsw i32 %252, 1
  store i32 %253, i32* %1, align 4
  br label %218

254:                                              ; preds = %218
  br label %257

255:                                              ; preds = %249, %216, %201, %185, %176, %162
  %256 = load i32, i32* %8, align 4
  store i32 %256, i32* @fam10h_pci_mmconf_base, align 4
  br label %257

257:                                              ; preds = %255, %254, %78, %24, %20
  ret void
}

declare dso_local i32 @early_pci_allowed(...) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_3__*) #1

declare dso_local i32 @read_pci_config(i32, i32, i32, i32) #1

declare dso_local i32 @rdmsrl(i32, i32) #1

declare dso_local i32 @max(i32, i64) #1

declare dso_local i32 @sort(%struct.range*, i32, i32, i32, i32*) #1

declare dso_local i64 @BASE_VALID(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
