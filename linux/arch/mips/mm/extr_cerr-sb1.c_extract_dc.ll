; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/mm/extr_cerr-sb1.c_extract_dc.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/mm/extr_cerr-sb1.c_extract_dc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [22 x i8] c"Dcache index 0x%04x  \00", align 1
@.str.1 = private unnamed_addr constant [47 x i8] c"[Bank %d Set 0x%02x]  LRU > %d %d %d %d > MRU\0A\00", align 1
@.str.2 = private unnamed_addr constant [62 x i8] c" %d  [PA %010llx]  [state %s (%02x)]  raw tags: %08X-%016llX\0A\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"   ** bad parity in PTag1\0A\00", align 1
@CP0_CERRD_TAG_ADDRESS = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [27 x i8] c"   ** bad parity in PTag0\0A\00", align 1
@CP0_CERRD_TAG_STATE = common dso_local global i32 0, align 4
@CP0_CERRD_DATA_SBE = common dso_local global i32 0, align 4
@CP0_CERRD_DATA_DBE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [15 x i8] c"  %02X-%016llX\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.7 = private unnamed_addr constant [34 x i8] c"  dwords w/ bad ECC: %d %d %d %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i16, i32)* @extract_dc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @extract_dc(i16 zeroext %0, i32 %1) #0 {
  %3 = alloca i16, align 2
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  %21 = alloca i8, align 1
  %22 = alloca i32, align 4
  store i16 %0, i16* %3, align 2
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %15, align 4
  %23 = load i16, i16* %3, align 2
  %24 = zext i16 %23 to i32
  %25 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %24)
  store i32 0, i32* %6, align 4
  br label %26

26:                                               ; preds = %227, %2
  %27 = load i32, i32* %6, align 4
  %28 = icmp slt i32 %27, 4
  br i1 %28, label %29, label %230

29:                                               ; preds = %26
  %30 = load i32, i32* %6, align 4
  %31 = shl i32 %30, 13
  %32 = load i16, i16* %3, align 2
  %33 = zext i16 %32 to i32
  %34 = or i32 %31, %33
  %35 = call { i64, i64, i64 } asm sideeffect "\09.set\09push\0A\09\09.set\09noreorder\0A\09\09.set\09mips64\0A\09\09.set\09noat\0A\09\09cache\095, 0($3)\0A\09\09mfc0\09$0, $$29, 2\0A\09\09dmfc0\09$$1, $$28, 2\0A\09\09dsrl32\09$1, $$1, 0\0A\09\09sll\09$2, $$1, 0\0A\09\09.set\09pop", "=r,=r,=r,r,~{dirflag},~{fpsr},~{flags}"(i32 %34) #2, !srcloc !2
  %36 = extractvalue { i64, i64, i64 } %35, 0
  %37 = extractvalue { i64, i64, i64 } %35, 1
  %38 = extractvalue { i64, i64, i64 } %35, 2
  store i64 %36, i64* %8, align 8
  store i64 %37, i64* %10, align 8
  store i64 %38, i64* %9, align 8
  %39 = load i64, i64* %10, align 8
  %40 = shl i64 %39, 32
  %41 = load i64, i64* %9, align 8
  %42 = or i64 %40, %41
  store i64 %42, i64* %11, align 8
  %43 = load i64, i64* %11, align 8
  %44 = and i64 %43, 1099511619584
  %45 = load i16, i16* %3, align 2
  %46 = zext i16 %45 to i64
  %47 = or i64 %44, %46
  store i64 %47, i64* %12, align 8
  %48 = load i32, i32* %6, align 4
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %80

50:                                               ; preds = %29
  %51 = load i64, i64* %8, align 8
  %52 = lshr i64 %51, 14
  %53 = and i64 %52, 255
  %54 = trunc i64 %53 to i32
  store i32 %54, i32* %14, align 4
  %55 = load i16, i16* %3, align 2
  %56 = zext i16 %55 to i32
  %57 = ashr i32 %56, 11
  %58 = and i32 %57, 2
  %59 = load i16, i16* %3, align 2
  %60 = zext i16 %59 to i32
  %61 = ashr i32 %60, 5
  %62 = and i32 %61, 1
  %63 = or i32 %58, %62
  %64 = load i16, i16* %3, align 2
  %65 = zext i16 %64 to i32
  %66 = ashr i32 %65, 6
  %67 = and i32 %66, 63
  %68 = load i32, i32* %14, align 4
  %69 = and i32 %68, 3
  %70 = load i32, i32* %14, align 4
  %71 = ashr i32 %70, 2
  %72 = and i32 %71, 3
  %73 = load i32, i32* %14, align 4
  %74 = ashr i32 %73, 4
  %75 = and i32 %74, 3
  %76 = load i32, i32* %14, align 4
  %77 = ashr i32 %76, 6
  %78 = and i32 %77, 3
  %79 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i32 %63, i32 %67, i32 %69, i32 %72, i32 %75, i32 %78)
  br label %80

80:                                               ; preds = %50, %29
  %81 = load i64, i64* %8, align 8
  %82 = lshr i64 %81, 25
  %83 = and i64 %82, 31
  %84 = trunc i64 %83 to i8
  store i8 %84, i8* %7, align 1
  %85 = load i8, i8* %7, align 1
  %86 = call i32 @DC_TAG_VALID(i8 zeroext %85)
  store i32 %86, i32* %5, align 4
  %87 = load i32, i32* %6, align 4
  %88 = load i64, i64* %12, align 8
  %89 = load i8, i8* %7, align 1
  %90 = call i32 @dc_state_str(i8 zeroext %89)
  %91 = load i8, i8* %7, align 1
  %92 = zext i8 %91 to i32
  %93 = load i64, i64* %8, align 8
  %94 = load i64, i64* %11, align 8
  %95 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.2, i64 0, i64 0), i32 %87, i64 %88, i32 %90, i32 %92, i64 %93, i64 %94)
  %96 = load i32, i32* %5, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %125

98:                                               ; preds = %80
  %99 = load i64, i64* %11, align 8
  %100 = lshr i64 %99, 11
  %101 = and i64 %100, 1
  %102 = load i64, i64* %11, align 8
  %103 = call i64 @range_parity(i64 %102, i32 39, i32 26)
  %104 = xor i64 %101, %103
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %111

106:                                              ; preds = %98
  %107 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  %108 = load i32, i32* @CP0_CERRD_TAG_ADDRESS, align 4
  %109 = load i32, i32* %15, align 4
  %110 = or i32 %109, %108
  store i32 %110, i32* %15, align 4
  br label %111

111:                                              ; preds = %106, %98
  %112 = load i64, i64* %11, align 8
  %113 = lshr i64 %112, 10
  %114 = and i64 %113, 1
  %115 = load i64, i64* %11, align 8
  %116 = call i64 @range_parity(i64 %115, i32 25, i32 13)
  %117 = xor i64 %114, %116
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %124

119:                                              ; preds = %111
  %120 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0))
  %121 = load i32, i32* @CP0_CERRD_TAG_ADDRESS, align 4
  %122 = load i32, i32* %15, align 4
  %123 = or i32 %122, %121
  store i32 %123, i32* %15, align 4
  br label %124

124:                                              ; preds = %119, %111
  br label %129

125:                                              ; preds = %80
  %126 = load i32, i32* @CP0_CERRD_TAG_STATE, align 4
  %127 = load i32, i32* %15, align 4
  %128 = or i32 %127, %126
  store i32 %128, i32* %15, align 4
  br label %129

129:                                              ; preds = %125, %124
  %130 = load i32, i32* %4, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %226

132:                                              ; preds = %129
  store i8 0, i8* %21, align 1
  store i32 0, i32* %20, align 4
  br label %133

133:                                              ; preds = %188, %132
  %134 = load i32, i32* %20, align 4
  %135 = icmp slt i32 %134, 4
  br i1 %135, label %136, label %191

136:                                              ; preds = %133
  %137 = load i32, i32* %6, align 4
  %138 = shl i32 %137, 13
  %139 = load i16, i16* %3, align 2
  %140 = zext i16 %139 to i32
  %141 = or i32 %138, %140
  %142 = load i32, i32* %20, align 4
  %143 = shl i32 %142, 3
  %144 = or i32 %141, %143
  %145 = call { i64, i64, i64 } asm sideeffect "\09.set\09push\0A\09\09.set\09noreorder\0A\09\09.set\09mips64\0A\09\09.set\09noat\0A\09\09cache\097, 0($3)\0A\09\09mfc0\09$0, $$29, 3\0A\09\09dmfc0\09$$1, $$28, 3\0A\09\09dsrl32\09$1, $$1, 0 \0A\09\09sll\09$2, $$1, 0 \0A\09\09.set\09pop", "=r,=r,=r,r,~{dirflag},~{fpsr},~{flags}"(i32 %144) #2, !srcloc !3
  %146 = extractvalue { i64, i64, i64 } %145, 0
  %147 = extractvalue { i64, i64, i64 } %145, 1
  %148 = extractvalue { i64, i64, i64 } %145, 2
  store i64 %146, i64* %18, align 8
  store i64 %147, i64* %16, align 8
  store i64 %148, i64* %17, align 8
  %149 = load i64, i64* %16, align 8
  %150 = shl i64 %149, 32
  %151 = load i64, i64* %17, align 8
  %152 = or i64 %150, %151
  store i64 %152, i64* %19, align 8
  %153 = load i64, i64* %19, align 8
  %154 = call i32 @dc_ecc(i64 %153)
  store i32 %154, i32* %13, align 4
  %155 = load i32, i32* %13, align 4
  %156 = sext i32 %155 to i64
  %157 = load i64, i64* %18, align 8
  %158 = icmp ne i64 %156, %157
  br i1 %158, label %159, label %184

159:                                              ; preds = %136
  %160 = load i32, i32* %20, align 4
  %161 = sub nsw i32 3, %160
  %162 = shl i32 1, %161
  %163 = load i8, i8* %21, align 1
  %164 = sext i8 %163 to i32
  %165 = or i32 %164, %162
  %166 = trunc i32 %165 to i8
  store i8 %166, i8* %21, align 1
  %167 = load i64, i64* %18, align 8
  %168 = load i32, i32* %13, align 4
  %169 = sext i32 %168 to i64
  %170 = xor i64 %169, %167
  %171 = trunc i64 %170 to i32
  store i32 %171, i32* %13, align 4
  %172 = load i32, i32* %13, align 4
  %173 = call i32 @hweight8(i32 %172)
  store i32 %173, i32* %22, align 4
  %174 = load i32, i32* %22, align 4
  %175 = icmp eq i32 %174, 1
  br i1 %175, label %176, label %178

176:                                              ; preds = %159
  %177 = load i32, i32* @CP0_CERRD_DATA_SBE, align 4
  br label %180

178:                                              ; preds = %159
  %179 = load i32, i32* @CP0_CERRD_DATA_DBE, align 4
  br label %180

180:                                              ; preds = %178, %176
  %181 = phi i32 [ %177, %176 ], [ %179, %178 ]
  %182 = load i32, i32* %15, align 4
  %183 = or i32 %182, %181
  store i32 %183, i32* %15, align 4
  br label %184

184:                                              ; preds = %180, %136
  %185 = load i64, i64* %18, align 8
  %186 = load i64, i64* %19, align 8
  %187 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0), i64 %185, i64 %186)
  br label %188

188:                                              ; preds = %184
  %189 = load i32, i32* %20, align 4
  %190 = add nsw i32 %189, 1
  store i32 %190, i32* %20, align 4
  br label %133

191:                                              ; preds = %133
  %192 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  %193 = load i8, i8* %21, align 1
  %194 = icmp ne i8 %193, 0
  br i1 %194, label %195, label %225

195:                                              ; preds = %191
  %196 = load i8, i8* %21, align 1
  %197 = sext i8 %196 to i32
  %198 = and i32 %197, 8
  %199 = icmp ne i32 %198, 0
  %200 = xor i1 %199, true
  %201 = xor i1 %200, true
  %202 = zext i1 %201 to i32
  %203 = load i8, i8* %21, align 1
  %204 = sext i8 %203 to i32
  %205 = and i32 %204, 4
  %206 = icmp ne i32 %205, 0
  %207 = xor i1 %206, true
  %208 = xor i1 %207, true
  %209 = zext i1 %208 to i32
  %210 = load i8, i8* %21, align 1
  %211 = sext i8 %210 to i32
  %212 = and i32 %211, 2
  %213 = icmp ne i32 %212, 0
  %214 = xor i1 %213, true
  %215 = xor i1 %214, true
  %216 = zext i1 %215 to i32
  %217 = load i8, i8* %21, align 1
  %218 = sext i8 %217 to i32
  %219 = and i32 %218, 1
  %220 = icmp ne i32 %219, 0
  %221 = xor i1 %220, true
  %222 = xor i1 %221, true
  %223 = zext i1 %222 to i32
  %224 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.7, i64 0, i64 0), i32 %202, i32 %209, i32 %216, i32 %223)
  br label %225

225:                                              ; preds = %195, %191
  br label %226

226:                                              ; preds = %225, %129
  br label %227

227:                                              ; preds = %226
  %228 = load i32, i32* %6, align 4
  %229 = add nsw i32 %228, 1
  store i32 %229, i32* %6, align 4
  br label %26

230:                                              ; preds = %26
  %231 = load i32, i32* %15, align 4
  %232 = sext i32 %231 to i64
  ret i64 %232
}

declare dso_local i32 @printk(i8*, ...) #1

declare dso_local i32 @DC_TAG_VALID(i8 zeroext) #1

declare dso_local i32 @dc_state_str(i8 zeroext) #1

declare dso_local i64 @range_parity(i64, i32, i32) #1

declare dso_local i32 @dc_ecc(i64) #1

declare dso_local i32 @hweight8(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{i32 850, i32 863, i32 887, i32 908, i32 927, i32 951, i32 976, i32 1002, i32 1028, i32 1051}
!3 = !{i32 2288, i32 2301, i32 2327, i32 2350, i32 2371, i32 2397, i32 2424, i32 2452, i32 2481, i32 2507}
