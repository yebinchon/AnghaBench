; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/cavium-octeon/executive/extr_cvmx-bootmem.c_cvmx_bootmem_phy_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/cavium-octeon/executive/extr_cvmx-bootmem.c_cvmx_bootmem_phy_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i64 }

@cvmx_bootmem_desc = common dso_local global %struct.TYPE_2__* null, align 8
@.str = private unnamed_addr constant [67 x i8] c"ERROR: Incompatible bootmem descriptor version: %d.%d at addr: %p\0A\00", align 1
@CVMX_BOOTMEM_ALIGNMENT_SIZE = common dso_local global i32 0, align 4
@CVMX_BOOTMEM_FLAG_NO_LOCKING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [59 x i8] c"Internal bootmem_alloc() error: ent: 0x%llx, next: 0x%llx\0A\00", align 1
@CVMX_BOOTMEM_FLAG_END_ALLOC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cvmx_bootmem_phy_alloc(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cvmx_bootmem_desc, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp sgt i32 %22, 3
  br i1 %23, label %24, label %36

24:                                               ; preds = %5
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cvmx_bootmem_desc, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = sext i32 %27 to i64
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cvmx_bootmem_desc, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  %32 = trunc i64 %31 to i32
  %33 = sext i32 %32 to i64
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cvmx_bootmem_desc, align 8
  %35 = call i32 (i8*, i64, i64, ...) @cvmx_dprintf(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str, i64 0, i64 0), i64 %28, i64 %33, %struct.TYPE_2__* %34)
  br label %234

36:                                               ; preds = %5
  %37 = load i32, i32* %7, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %36
  br label %234

40:                                               ; preds = %36
  %41 = load i32, i32* %7, align 4
  %42 = load i32, i32* @CVMX_BOOTMEM_ALIGNMENT_SIZE, align 4
  %43 = sub nsw i32 %42, 1
  %44 = add nsw i32 %41, %43
  %45 = load i32, i32* @CVMX_BOOTMEM_ALIGNMENT_SIZE, align 4
  %46 = sub nsw i32 %45, 1
  %47 = xor i32 %46, -1
  %48 = and i32 %44, %47
  store i32 %48, i32* %7, align 4
  %49 = load i32, i32* %8, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %58

51:                                               ; preds = %40
  %52 = load i32, i32* %9, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %58, label %54

54:                                               ; preds = %51
  %55 = load i32, i32* %8, align 4
  %56 = load i32, i32* %7, align 4
  %57 = add nsw i32 %55, %56
  store i32 %57, i32* %9, align 4
  br label %66

58:                                               ; preds = %51, %40
  %59 = load i32, i32* %8, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %65, label %61

61:                                               ; preds = %58
  %62 = load i32, i32* %9, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %65, label %64

64:                                               ; preds = %61
  store i32 -1, i32* %9, align 4
  br label %65

65:                                               ; preds = %64, %61, %58
  br label %66

66:                                               ; preds = %65, %54
  %67 = load i32, i32* %10, align 4
  %68 = load i32, i32* @CVMX_BOOTMEM_ALIGNMENT_SIZE, align 4
  %69 = icmp slt i32 %67, %68
  br i1 %69, label %70, label %72

70:                                               ; preds = %66
  %71 = load i32, i32* @CVMX_BOOTMEM_ALIGNMENT_SIZE, align 4
  store i32 %71, i32* %10, align 4
  br label %72

72:                                               ; preds = %70, %66
  %73 = load i32, i32* %10, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %72
  %76 = load i32, i32* %8, align 4
  %77 = load i32, i32* %10, align 4
  %78 = call i32 @ALIGN(i32 %76, i32 %77)
  store i32 %78, i32* %8, align 4
  br label %79

79:                                               ; preds = %75, %72
  %80 = load i32, i32* %7, align 4
  %81 = load i32, i32* %9, align 4
  %82 = load i32, i32* %8, align 4
  %83 = sub nsw i32 %81, %82
  %84 = icmp sgt i32 %80, %83
  br i1 %84, label %85, label %86

85:                                               ; preds = %79
  br label %234

86:                                               ; preds = %79
  %87 = load i32, i32* %11, align 4
  %88 = load i32, i32* @CVMX_BOOTMEM_FLAG_NO_LOCKING, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %93, label %91

91:                                               ; preds = %86
  %92 = call i32 (...) @cvmx_bootmem_lock()
  br label %93

93:                                               ; preds = %91, %86
  %94 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cvmx_bootmem_desc, align 8
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  store i32 %96, i32* %12, align 4
  %97 = load i32, i32* %12, align 4
  store i32 %97, i32* %13, align 4
  br label %98

98:                                               ; preds = %229, %93
  %99 = load i32, i32* %13, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %233

101:                                              ; preds = %98
  %102 = load i32, i32* %13, align 4
  %103 = call i32 @cvmx_bootmem_phy_get_size(i32 %102)
  store i32 %103, i32* %19, align 4
  %104 = load i32, i32* %13, align 4
  %105 = call i32 @cvmx_bootmem_phy_get_next(i32 %104)
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %119

107:                                              ; preds = %101
  %108 = load i32, i32* %13, align 4
  %109 = load i32, i32* %13, align 4
  %110 = call i32 @cvmx_bootmem_phy_get_next(i32 %109)
  %111 = icmp sgt i32 %108, %110
  br i1 %111, label %112, label %119

112:                                              ; preds = %107
  %113 = load i32, i32* %13, align 4
  %114 = sext i32 %113 to i64
  %115 = load i32, i32* %13, align 4
  %116 = call i32 @cvmx_bootmem_phy_get_next(i32 %115)
  %117 = sext i32 %116 to i64
  %118 = call i32 (i8*, i64, i64, ...) @cvmx_dprintf(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.1, i64 0, i64 0), i64 %114, i64 %117)
  br label %234

119:                                              ; preds = %107, %101
  %120 = load i32, i32* %8, align 4
  %121 = load i32, i32* %13, align 4
  %122 = call i32 @max(i32 %120, i32 %121)
  %123 = load i32, i32* %10, align 4
  %124 = call i32 @ALIGN(i32 %122, i32 %123)
  store i32 %124, i32* %17, align 4
  %125 = load i32, i32* %9, align 4
  %126 = load i32, i32* %13, align 4
  %127 = load i32, i32* %19, align 4
  %128 = add nsw i32 %126, %127
  %129 = call i32 @min(i32 %125, i32 %128)
  store i32 %129, i32* %18, align 4
  %130 = load i32, i32* %17, align 4
  store i32 %130, i32* %16, align 4
  %131 = load i32, i32* %13, align 4
  %132 = load i32, i32* %19, align 4
  %133 = add nsw i32 %131, %132
  %134 = load i32, i32* %17, align 4
  %135 = icmp sgt i32 %133, %134
  br i1 %135, label %136, label %146

136:                                              ; preds = %119
  %137 = load i32, i32* %13, align 4
  %138 = load i32, i32* %9, align 4
  %139 = icmp slt i32 %137, %138
  br i1 %139, label %140, label %146

140:                                              ; preds = %136
  %141 = load i32, i32* %7, align 4
  %142 = load i32, i32* %18, align 4
  %143 = load i32, i32* %17, align 4
  %144 = sub nsw i32 %142, %143
  %145 = icmp sle i32 %141, %144
  br i1 %145, label %147, label %146

146:                                              ; preds = %140, %136, %119
  br label %229

147:                                              ; preds = %140
  %148 = load i32, i32* %11, align 4
  %149 = load i32, i32* @CVMX_BOOTMEM_FLAG_END_ALLOC, align 4
  %150 = and i32 %148, %149
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %161

152:                                              ; preds = %147
  %153 = load i32, i32* %18, align 4
  %154 = load i32, i32* %7, align 4
  %155 = sub nsw i32 %153, %154
  store i32 %155, i32* %16, align 4
  %156 = load i32, i32* %10, align 4
  %157 = sub nsw i32 %156, 1
  %158 = xor i32 %157, -1
  %159 = load i32, i32* %16, align 4
  %160 = and i32 %159, %158
  store i32 %160, i32* %16, align 4
  br label %161

161:                                              ; preds = %152, %147
  %162 = load i32, i32* %16, align 4
  %163 = load i32, i32* %13, align 4
  %164 = icmp eq i32 %162, %163
  br i1 %164, label %165, label %207

165:                                              ; preds = %161
  %166 = load i32, i32* %7, align 4
  %167 = load i32, i32* %19, align 4
  %168 = icmp slt i32 %166, %167
  br i1 %168, label %169, label %185

169:                                              ; preds = %165
  %170 = load i32, i32* %13, align 4
  %171 = load i32, i32* %7, align 4
  %172 = add nsw i32 %170, %171
  store i32 %172, i32* %15, align 4
  %173 = load i32, i32* %15, align 4
  %174 = load i32, i32* %13, align 4
  %175 = call i32 @cvmx_bootmem_phy_get_next(i32 %174)
  %176 = call i32 @cvmx_bootmem_phy_set_next(i32 %173, i32 %175)
  %177 = load i32, i32* %15, align 4
  %178 = load i32, i32* %19, align 4
  %179 = load i32, i32* %7, align 4
  %180 = sub nsw i32 %178, %179
  %181 = call i32 @cvmx_bootmem_phy_set_size(i32 %177, i32 %180)
  %182 = load i32, i32* %13, align 4
  %183 = load i32, i32* %15, align 4
  %184 = call i32 @cvmx_bootmem_phy_set_next(i32 %182, i32 %183)
  br label %185

185:                                              ; preds = %169, %165
  %186 = load i32, i32* %14, align 4
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %193

188:                                              ; preds = %185
  %189 = load i32, i32* %14, align 4
  %190 = load i32, i32* %13, align 4
  %191 = call i32 @cvmx_bootmem_phy_get_next(i32 %190)
  %192 = call i32 @cvmx_bootmem_phy_set_next(i32 %189, i32 %191)
  br label %198

193:                                              ; preds = %185
  %194 = load i32, i32* %13, align 4
  %195 = call i32 @cvmx_bootmem_phy_get_next(i32 %194)
  %196 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cvmx_bootmem_desc, align 8
  %197 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %196, i32 0, i32 1
  store i32 %195, i32* %197, align 4
  br label %198

198:                                              ; preds = %193, %188
  %199 = load i32, i32* %11, align 4
  %200 = load i32, i32* @CVMX_BOOTMEM_FLAG_NO_LOCKING, align 4
  %201 = and i32 %199, %200
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %205, label %203

203:                                              ; preds = %198
  %204 = call i32 (...) @cvmx_bootmem_unlock()
  br label %205

205:                                              ; preds = %203, %198
  %206 = load i32, i32* %16, align 4
  store i32 %206, i32* %6, align 4
  br label %242

207:                                              ; preds = %161
  %208 = load i32, i32* %16, align 4
  store i32 %208, i32* %15, align 4
  %209 = load i32, i32* %15, align 4
  %210 = load i32, i32* %13, align 4
  %211 = call i32 @cvmx_bootmem_phy_get_next(i32 %210)
  %212 = call i32 @cvmx_bootmem_phy_set_next(i32 %209, i32 %211)
  %213 = load i32, i32* %15, align 4
  %214 = load i32, i32* %13, align 4
  %215 = call i32 @cvmx_bootmem_phy_get_size(i32 %214)
  %216 = load i32, i32* %16, align 4
  %217 = load i32, i32* %13, align 4
  %218 = sub nsw i32 %216, %217
  %219 = sub nsw i32 %215, %218
  %220 = call i32 @cvmx_bootmem_phy_set_size(i32 %213, i32 %219)
  %221 = load i32, i32* %13, align 4
  %222 = load i32, i32* %16, align 4
  %223 = load i32, i32* %13, align 4
  %224 = sub nsw i32 %222, %223
  %225 = call i32 @cvmx_bootmem_phy_set_size(i32 %221, i32 %224)
  %226 = load i32, i32* %13, align 4
  %227 = load i32, i32* %15, align 4
  %228 = call i32 @cvmx_bootmem_phy_set_next(i32 %226, i32 %227)
  br label %229

229:                                              ; preds = %207, %146
  %230 = load i32, i32* %13, align 4
  store i32 %230, i32* %14, align 4
  %231 = load i32, i32* %13, align 4
  %232 = call i32 @cvmx_bootmem_phy_get_next(i32 %231)
  store i32 %232, i32* %13, align 4
  br label %98

233:                                              ; preds = %98
  br label %234

234:                                              ; preds = %233, %112, %85, %39, %24
  %235 = load i32, i32* %11, align 4
  %236 = load i32, i32* @CVMX_BOOTMEM_FLAG_NO_LOCKING, align 4
  %237 = and i32 %235, %236
  %238 = icmp ne i32 %237, 0
  br i1 %238, label %241, label %239

239:                                              ; preds = %234
  %240 = call i32 (...) @cvmx_bootmem_unlock()
  br label %241

241:                                              ; preds = %239, %234
  store i32 -1, i32* %6, align 4
  br label %242

242:                                              ; preds = %241, %205
  %243 = load i32, i32* %6, align 4
  ret i32 %243
}

declare dso_local i32 @cvmx_dprintf(i8*, i64, i64, ...) #1

declare dso_local i32 @ALIGN(i32, i32) #1

declare dso_local i32 @cvmx_bootmem_lock(...) #1

declare dso_local i32 @cvmx_bootmem_phy_get_size(i32) #1

declare dso_local i32 @cvmx_bootmem_phy_get_next(i32) #1

declare dso_local i32 @max(i32, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @cvmx_bootmem_phy_set_next(i32, i32) #1

declare dso_local i32 @cvmx_bootmem_phy_set_size(i32, i32) #1

declare dso_local i32 @cvmx_bootmem_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
