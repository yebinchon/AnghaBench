; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/mm/extr_cerr-sb1.c_extract_ic.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/mm/extr_cerr-sb1.c_extract_ic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [22 x i8] c"Icache index 0x%04x  \00", align 1
@.str.1 = private unnamed_addr constant [47 x i8] c"[Bank %d Set 0x%02x]  LRU > %d %d %d %d > MRU\0A\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"   ** bad parity in VTag0/G/ASID\0A\00", align 1
@CP0_CERRI_TAG_PARITY = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [29 x i8] c"   ** bad parity in R/VTag1\0A\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"   ** bad parity for valid bit\0A\00", align 1
@.str.5 = private unnamed_addr constant [54 x i8] c" %d  [VA %016llx]  [Vld? %d]  raw tags: %08X-%016llX\0A\00", align 1
@.str.6 = private unnamed_addr constant [31 x i8] c"   ** bad parity in predecode\0A\00", align 1
@CP0_CERRI_DATA_PARITY = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [35 x i8] c"   ** bad parity in instruction a\0A\00", align 1
@.str.8 = private unnamed_addr constant [35 x i8] c"   ** bad parity in instruction b\0A\00", align 1
@.str.9 = private unnamed_addr constant [16 x i8] c"  %05X-%08X%08X\00", align 1
@.str.10 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i16, i32)* @extract_ic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @extract_ic(i16 zeroext %0, i32 %1) #0 {
  %3 = alloca i16, align 2
  %4 = alloca i32, align 4
  %5 = alloca i16, align 2
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store i16 %0, i16* %3, align 2
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %14, align 4
  %20 = load i16, i16* %3, align 2
  %21 = zext i16 %20 to i32
  %22 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %21)
  store i16 0, i16* %5, align 2
  br label %23

23:                                               ; preds = %217, %2
  %24 = load i16, i16* %5, align 2
  %25 = zext i16 %24 to i32
  %26 = icmp slt i32 %25, 4
  br i1 %26, label %27, label %220

27:                                               ; preds = %23
  %28 = load i16, i16* %5, align 2
  %29 = zext i16 %28 to i32
  %30 = shl i32 %29, 13
  %31 = load i16, i16* %3, align 2
  %32 = zext i16 %31 to i32
  %33 = or i32 %30, %32
  %34 = call { i64, i64, i64 } asm sideeffect "\09.set\09push\09\09\0A\09\09.set\09noreorder\09\0A\09\09.set\09mips64\09\09\0A\09\09.set\09noat\09\09\0A\09\09cache\094, 0($3)\09\0A\09\09mfc0\09$0, $$29\09\09\0A\09\09dmfc0\09$$1, $$28\09\09\0A\09\09dsrl32\09$1, $$1, 0\09\0A\09\09sll\09$2, $$1, 0\09\0A\09\09.set\09pop", "=r,=r,=r,r,~{dirflag},~{fpsr},~{flags}"(i32 %33) #2, !srcloc !2
  %35 = extractvalue { i64, i64, i64 } %34, 0
  %36 = extractvalue { i64, i64, i64 } %34, 1
  %37 = extractvalue { i64, i64, i64 } %34, 2
  store i64 %35, i64* %7, align 8
  store i64 %36, i64* %9, align 8
  store i64 %37, i64* %8, align 8
  %38 = load i64, i64* %9, align 8
  %39 = shl i64 %38, 32
  %40 = load i64, i64* %8, align 8
  %41 = or i64 %39, %40
  store i64 %41, i64* %10, align 8
  %42 = load i16, i16* %5, align 2
  %43 = zext i16 %42 to i32
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %70

45:                                               ; preds = %27
  %46 = load i64, i64* %7, align 8
  %47 = lshr i64 %46, 14
  %48 = and i64 %47, 255
  %49 = trunc i64 %48 to i32
  store i32 %49, i32* %13, align 4
  %50 = load i16, i16* %3, align 2
  %51 = zext i16 %50 to i32
  %52 = ashr i32 %51, 5
  %53 = and i32 %52, 3
  %54 = load i16, i16* %3, align 2
  %55 = zext i16 %54 to i32
  %56 = ashr i32 %55, 7
  %57 = and i32 %56, 63
  %58 = load i32, i32* %13, align 4
  %59 = and i32 %58, 3
  %60 = load i32, i32* %13, align 4
  %61 = ashr i32 %60, 2
  %62 = and i32 %61, 3
  %63 = load i32, i32* %13, align 4
  %64 = ashr i32 %63, 4
  %65 = and i32 %64, 3
  %66 = load i32, i32* %13, align 4
  %67 = ashr i32 %66, 6
  %68 = and i32 %67, 3
  %69 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i32 %53, i32 %57, i32 %59, i32 %62, i32 %65, i32 %68)
  br label %70

70:                                               ; preds = %45, %27
  %71 = load i64, i64* %10, align 8
  %72 = and i64 %71, -4611668426241351680
  %73 = load i16, i16* %3, align 2
  %74 = zext i16 %73 to i64
  %75 = or i64 %72, %74
  store i64 %75, i64* %11, align 8
  %76 = load i64, i64* %10, align 8
  %77 = and i64 %76, -2147483648
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %87

79:                                               ; preds = %70
  %80 = load i64, i64* %10, align 8
  %81 = lshr i64 %80, 62
  %82 = and i64 %81, 3
  %83 = icmp eq i64 %82, 3
  br i1 %83, label %84, label %87

84:                                               ; preds = %79
  %85 = load i64, i64* %11, align 8
  %86 = or i64 %85, 4611668426241343488
  store i64 %86, i64* %11, align 8
  br label %87

87:                                               ; preds = %84, %79, %70
  %88 = load i64, i64* %7, align 8
  %89 = lshr i64 %88, 29
  %90 = and i64 %89, 1
  %91 = trunc i64 %90 to i32
  store i32 %91, i32* %6, align 4
  %92 = load i32, i32* %6, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %125

94:                                               ; preds = %87
  %95 = load i64, i64* %10, align 8
  %96 = and i64 %95, 16774143
  %97 = trunc i64 %96 to i32
  store i32 %97, i32* %12, align 4
  %98 = load i64, i64* %10, align 8
  %99 = lshr i64 %98, 10
  %100 = and i64 %99, 1
  %101 = load i32, i32* %12, align 4
  %102 = call i64 @range_parity(i32 %101, i32 23, i32 0)
  %103 = xor i64 %100, %102
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %110

105:                                              ; preds = %94
  %106 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  %107 = load i32, i32* @CP0_CERRI_TAG_PARITY, align 4
  %108 = load i32, i32* %14, align 4
  %109 = or i32 %108, %107
  store i32 %109, i32* %14, align 4
  br label %110

110:                                              ; preds = %105, %94
  %111 = load i64, i64* %10, align 8
  %112 = lshr i64 %111, 11
  %113 = and i64 %112, 1
  %114 = load i64, i64* %10, align 8
  %115 = trunc i64 %114 to i32
  %116 = call i64 @range_parity(i32 %115, i32 63, i32 24)
  %117 = xor i64 %113, %116
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %124

119:                                              ; preds = %110
  %120 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  %121 = load i32, i32* @CP0_CERRI_TAG_PARITY, align 4
  %122 = load i32, i32* %14, align 4
  %123 = or i32 %122, %121
  store i32 %123, i32* %14, align 4
  br label %124

124:                                              ; preds = %119, %110
  br label %125

125:                                              ; preds = %124, %87
  %126 = load i32, i32* %6, align 4
  %127 = sext i32 %126 to i64
  %128 = load i64, i64* %7, align 8
  %129 = lshr i64 %128, 27
  %130 = and i64 %129, 1
  %131 = xor i64 %127, %130
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %138

133:                                              ; preds = %125
  %134 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0))
  %135 = load i32, i32* @CP0_CERRI_TAG_PARITY, align 4
  %136 = load i32, i32* %14, align 4
  %137 = or i32 %136, %135
  store i32 %137, i32* %14, align 4
  br label %138

138:                                              ; preds = %133, %125
  %139 = load i16, i16* %5, align 2
  %140 = zext i16 %139 to i32
  %141 = load i64, i64* %11, align 8
  %142 = load i32, i32* %6, align 4
  %143 = load i64, i64* %7, align 8
  %144 = load i64, i64* %10, align 8
  %145 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.5, i64 0, i64 0), i32 %140, i64 %141, i32 %142, i64 %143, i64 %144)
  %146 = load i32, i32* %4, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %216

148:                                              ; preds = %138
  store i32 0, i32* %19, align 4
  br label %149

149:                                              ; preds = %211, %148
  %150 = load i32, i32* %19, align 4
  %151 = icmp slt i32 %150, 4
  br i1 %151, label %152, label %214

152:                                              ; preds = %149
  %153 = load i16, i16* %5, align 2
  %154 = zext i16 %153 to i32
  %155 = shl i32 %154, 13
  %156 = load i16, i16* %3, align 2
  %157 = zext i16 %156 to i32
  %158 = or i32 %155, %157
  %159 = load i32, i32* %19, align 4
  %160 = shl i32 %159, 3
  %161 = or i32 %158, %160
  %162 = call { i64, i64, i64 } asm sideeffect "\09.set\09push\0A\09\09.set\09noreorder\0A\09\09.set\09mips64\0A\09\09.set\09noat\0A\09\09cache\096, 0($3)  \0A\09\09mfc0\09$0, $$29, 1\0A\09\09dmfc0  $$1, $$28, 1\0A\09\09dsrl32 $1, $$1, 0 \0A\09\09sll    $2, $$1, 0 \0A\09\09.set\09pop\09    \0A", "=r,=r,=r,r,~{dirflag},~{fpsr},~{flags}"(i32 %161) #2, !srcloc !3
  %163 = extractvalue { i64, i64, i64 } %162, 0
  %164 = extractvalue { i64, i64, i64 } %162, 1
  %165 = extractvalue { i64, i64, i64 } %162, 2
  store i64 %163, i64* %15, align 8
  store i64 %164, i64* %16, align 8
  store i64 %165, i64* %17, align 8
  %166 = load i64, i64* %15, align 8
  %167 = lshr i64 %166, 8
  %168 = and i64 %167, 255
  %169 = trunc i64 %168 to i32
  store i32 %169, i32* %18, align 4
  %170 = load i64, i64* %15, align 8
  %171 = lshr i64 %170, 16
  %172 = and i64 %171, 1
  %173 = load i32, i32* %18, align 4
  %174 = call i64 @range_parity(i32 %173, i32 7, i32 0)
  %175 = icmp ne i64 %172, %174
  br i1 %175, label %176, label %181

176:                                              ; preds = %152
  %177 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i64 0, i64 0))
  %178 = load i32, i32* @CP0_CERRI_DATA_PARITY, align 4
  %179 = load i32, i32* %14, align 4
  %180 = or i32 %179, %178
  store i32 %180, i32* %14, align 4
  br label %181

181:                                              ; preds = %176, %152
  %182 = load i64, i64* %15, align 8
  %183 = lshr i64 %182, 4
  %184 = and i64 %183, 15
  %185 = load i64, i64* %16, align 8
  %186 = call i64 @inst_parity(i64 %185)
  %187 = xor i64 %184, %186
  %188 = icmp ne i64 %187, 0
  br i1 %188, label %189, label %194

189:                                              ; preds = %181
  %190 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.7, i64 0, i64 0))
  %191 = load i32, i32* @CP0_CERRI_DATA_PARITY, align 4
  %192 = load i32, i32* %14, align 4
  %193 = or i32 %192, %191
  store i32 %193, i32* %14, align 4
  br label %194

194:                                              ; preds = %189, %181
  %195 = load i64, i64* %15, align 8
  %196 = and i64 %195, 15
  %197 = load i64, i64* %17, align 8
  %198 = call i64 @inst_parity(i64 %197)
  %199 = xor i64 %196, %198
  %200 = icmp ne i64 %199, 0
  br i1 %200, label %201, label %206

201:                                              ; preds = %194
  %202 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.8, i64 0, i64 0))
  %203 = load i32, i32* @CP0_CERRI_DATA_PARITY, align 4
  %204 = load i32, i32* %14, align 4
  %205 = or i32 %204, %203
  store i32 %205, i32* %14, align 4
  br label %206

206:                                              ; preds = %201, %194
  %207 = load i64, i64* %15, align 8
  %208 = load i64, i64* %16, align 8
  %209 = load i64, i64* %17, align 8
  %210 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i64 0, i64 0), i64 %207, i64 %208, i64 %209)
  br label %211

211:                                              ; preds = %206
  %212 = load i32, i32* %19, align 4
  %213 = add nsw i32 %212, 1
  store i32 %213, i32* %19, align 4
  br label %149

214:                                              ; preds = %149
  %215 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0))
  br label %216

216:                                              ; preds = %214, %138
  br label %217

217:                                              ; preds = %216
  %218 = load i16, i16* %5, align 2
  %219 = add i16 %218, 1
  store i16 %219, i16* %5, align 2
  br label %23

220:                                              ; preds = %23
  %221 = load i32, i32* %14, align 4
  %222 = sext i32 %221 to i64
  ret i64 %222
}

declare dso_local i32 @printk(i8*, ...) #1

declare dso_local i64 @range_parity(i32, i32, i32) #1

declare dso_local i64 @inst_parity(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{i32 742, i32 757, i32 782, i32 805, i32 826, i32 851, i32 875, i32 900, i32 927, i32 951}
!3 = !{i32 2286, i32 2299, i32 2325, i32 2348, i32 2369, i32 2397, i32 2424, i32 2453, i32 2482, i32 2511}
