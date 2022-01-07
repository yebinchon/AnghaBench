; ModuleID = '/home/carl/AnghaBench/linux/arch/xtensa/kernel/extr_module.c_apply_relocate_add.c'
source_filename = "/home/carl/AnghaBench/linux/arch/xtensa/kernel/extr_module.c_apply_relocate_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i32, i64 }
%struct.module = type { i32 }
%struct.TYPE_7__ = type { i32, i32, i32 }
%struct.TYPE_5__ = type { i32, i32 }

@.str = private unnamed_addr constant [36 x i8] c"Applying relocate section %u to %u\0A\00", align 1
@.str.1 = private unnamed_addr constant [59 x i8] c"%s: relocation out of range, section %d reloc %d sym '%s'\0A\00", align 1
@ENOEXEC = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"%s: unexpected FLIX relocation: %u\0A\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"%s: unexpected ALT relocation: %u\0A\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"%s: unexpected relocation: %u\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @apply_relocate_add(%struct.TYPE_6__* %0, i8* %1, i32 %2, i32 %3, %struct.module* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.module*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_7__*, align 8
  %14 = alloca %struct.TYPE_5__*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store %struct.module* %4, %struct.module** %11, align 8
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %18 = load i32, i32* %10, align 4
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = inttoptr i64 %22 to i8*
  %24 = bitcast i8* %23 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %24, %struct.TYPE_7__** %13, align 8
  %25 = load i32, i32* %10, align 4
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %27 = load i32, i32* %10, align 4
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = call i32 @pr_debug(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %25, i64 %31)
  store i32 0, i32* %12, align 4
  br label %33

33:                                               ; preds = %227, %5
  %34 = load i32, i32* %12, align 4
  %35 = zext i32 %34 to i64
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %37 = load i32, i32* %10, align 4
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = sext i32 %41 to i64
  %43 = udiv i64 %42, 12
  %44 = icmp ult i64 %35, %43
  br i1 %44, label %45, label %230

45:                                               ; preds = %33
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %48 = load i32, i32* %10, align 4
  %49 = zext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 2
  %55 = load i64, i64* %54, align 8
  %56 = inttoptr i64 %55 to i8*
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %58 = load i32, i32* %12, align 4
  %59 = zext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i8, i8* %56, i64 %63
  store i8* %64, i8** %15, align 8
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %66 = load i32, i32* %9, align 4
  %67 = zext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 2
  %70 = load i64, i64* %69, align 8
  %71 = inttoptr i64 %70 to %struct.TYPE_5__*
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %73 = load i32, i32* %12, align 4
  %74 = zext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @ELF32_R_SYM(i32 %77)
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i64 %79
  store %struct.TYPE_5__* %80, %struct.TYPE_5__** %14, align 8
  %81 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %85 = load i32, i32* %12, align 4
  %86 = zext i32 %85 to i64
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i64 %86
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = add nsw i32 %83, %89
  store i32 %90, i32* %16, align 4
  %91 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %92 = load i32, i32* %12, align 4
  %93 = zext i32 %92 to i64
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i64 %93
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @ELF32_R_TYPE(i32 %96)
  switch i32 %97, label %212 [
    i32 159, label %98
    i32 160, label %98
    i32 162, label %98
    i32 161, label %98
    i32 163, label %98
    i32 164, label %99
    i32 158, label %99
    i32 156, label %105
    i32 144, label %184
    i32 142, label %184
    i32 140, label %184
    i32 138, label %184
    i32 136, label %184
    i32 134, label %184
    i32 132, label %184
    i32 130, label %184
    i32 128, label %184
    i32 154, label %184
    i32 152, label %184
    i32 150, label %184
    i32 148, label %184
    i32 146, label %184
    i32 157, label %198
    i32 145, label %198
    i32 143, label %198
    i32 141, label %198
    i32 139, label %198
    i32 137, label %198
    i32 135, label %198
    i32 133, label %198
    i32 131, label %198
    i32 129, label %198
    i32 155, label %198
    i32 153, label %198
    i32 151, label %198
    i32 149, label %198
    i32 147, label %198
  ]

98:                                               ; preds = %45, %45, %45, %45, %45
  br label %226

99:                                               ; preds = %45, %45
  %100 = load i32, i32* %16, align 4
  %101 = load i8*, i8** %15, align 8
  %102 = bitcast i8* %101 to i32*
  %103 = load i32, i32* %102, align 4
  %104 = add nsw i32 %103, %100
  store i32 %104, i32* %102, align 4
  br label %226

105:                                              ; preds = %45
  %106 = load i8*, i8** %15, align 8
  %107 = call i32 @decode_calln_opcode(i8* %106)
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %144

109:                                              ; preds = %105
  %110 = load i8*, i8** %15, align 8
  %111 = ptrtoint i8* %110 to i64
  %112 = and i64 %111, -4
  %113 = add i64 %112, 4
  %114 = load i32, i32* %16, align 4
  %115 = sext i32 %114 to i64
  %116 = sub i64 %115, %113
  %117 = trunc i64 %116 to i32
  store i32 %117, i32* %16, align 4
  %118 = load i32, i32* %16, align 4
  %119 = and i32 %118, 3
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %126, label %121

121:                                              ; preds = %109
  %122 = load i32, i32* %16, align 4
  %123 = add nsw i32 %122, 524288
  %124 = ashr i32 %123, 20
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %141

126:                                              ; preds = %121, %109
  %127 = load %struct.module*, %struct.module** %11, align 8
  %128 = getelementptr inbounds %struct.module, %struct.module* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = load i32, i32* %10, align 4
  %131 = load i32, i32* %12, align 4
  %132 = load i8*, i8** %8, align 8
  %133 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %134 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i8, i8* %132, i64 %136
  %138 = call i32 (i8*, i32, i32, ...) @pr_err(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.1, i64 0, i64 0), i32 %129, i32 %130, i32 %131, i8* %137)
  %139 = load i32, i32* @ENOEXEC, align 4
  %140 = sub nsw i32 0, %139
  store i32 %140, i32* %6, align 4
  br label %231

141:                                              ; preds = %121
  %142 = load i32, i32* %16, align 4
  %143 = ashr i32 %142, 2
  store i32 %143, i32* %16, align 4
  br label %183

144:                                              ; preds = %105
  %145 = load i8*, i8** %15, align 8
  %146 = call i32 @decode_l32r_opcode(i8* %145)
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %182

148:                                              ; preds = %144
  %149 = load i8*, i8** %15, align 8
  %150 = ptrtoint i8* %149 to i64
  %151 = add i64 %150, 3
  %152 = and i64 %151, -4
  %153 = load i32, i32* %16, align 4
  %154 = sext i32 %153 to i64
  %155 = sub i64 %154, %152
  %156 = trunc i64 %155 to i32
  store i32 %156, i32* %16, align 4
  %157 = load i32, i32* %16, align 4
  %158 = and i32 %157, 3
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %164, label %160

160:                                              ; preds = %148
  %161 = load i32, i32* %16, align 4
  %162 = ashr i32 %161, 18
  %163 = icmp ne i32 %162, -1
  br i1 %163, label %164, label %179

164:                                              ; preds = %160, %148
  %165 = load %struct.module*, %struct.module** %11, align 8
  %166 = getelementptr inbounds %struct.module, %struct.module* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 4
  %168 = load i32, i32* %10, align 4
  %169 = load i32, i32* %12, align 4
  %170 = load i8*, i8** %8, align 8
  %171 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %172 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %171, i32 0, i32 1
  %173 = load i32, i32* %172, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds i8, i8* %170, i64 %174
  %176 = call i32 (i8*, i32, i32, ...) @pr_err(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.1, i64 0, i64 0), i32 %167, i32 %168, i32 %169, i8* %175)
  %177 = load i32, i32* @ENOEXEC, align 4
  %178 = sub nsw i32 0, %177
  store i32 %178, i32* %6, align 4
  br label %231

179:                                              ; preds = %160
  %180 = load i32, i32* %16, align 4
  %181 = ashr i32 %180, 2
  store i32 %181, i32* %16, align 4
  br label %182

182:                                              ; preds = %179, %144
  br label %183

183:                                              ; preds = %182, %141
  br label %226

184:                                              ; preds = %45, %45, %45, %45, %45, %45, %45, %45, %45, %45, %45, %45, %45, %45
  %185 = load %struct.module*, %struct.module** %11, align 8
  %186 = getelementptr inbounds %struct.module, %struct.module* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 4
  %188 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %189 = load i32, i32* %12, align 4
  %190 = zext i32 %189 to i64
  %191 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %188, i64 %190
  %192 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %191, i32 0, i32 2
  %193 = load i32, i32* %192, align 4
  %194 = call i32 @ELF32_R_TYPE(i32 %193)
  %195 = call i32 (i8*, i32, i32, ...) @pr_err(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i32 %187, i32 %194)
  %196 = load i32, i32* @ENOEXEC, align 4
  %197 = sub nsw i32 0, %196
  store i32 %197, i32* %6, align 4
  br label %231

198:                                              ; preds = %45, %45, %45, %45, %45, %45, %45, %45, %45, %45, %45, %45, %45, %45, %45
  %199 = load %struct.module*, %struct.module** %11, align 8
  %200 = getelementptr inbounds %struct.module, %struct.module* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 4
  %202 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %203 = load i32, i32* %12, align 4
  %204 = zext i32 %203 to i64
  %205 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %202, i64 %204
  %206 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %205, i32 0, i32 2
  %207 = load i32, i32* %206, align 4
  %208 = call i32 @ELF32_R_TYPE(i32 %207)
  %209 = call i32 (i8*, i32, i32, ...) @pr_err(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i32 %201, i32 %208)
  %210 = load i32, i32* @ENOEXEC, align 4
  %211 = sub nsw i32 0, %210
  store i32 %211, i32* %6, align 4
  br label %231

212:                                              ; preds = %45
  %213 = load %struct.module*, %struct.module** %11, align 8
  %214 = getelementptr inbounds %struct.module, %struct.module* %213, i32 0, i32 0
  %215 = load i32, i32* %214, align 4
  %216 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %217 = load i32, i32* %12, align 4
  %218 = zext i32 %217 to i64
  %219 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %216, i64 %218
  %220 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %219, i32 0, i32 2
  %221 = load i32, i32* %220, align 4
  %222 = call i32 @ELF32_R_TYPE(i32 %221)
  %223 = call i32 (i8*, i32, i32, ...) @pr_err(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i32 %215, i32 %222)
  %224 = load i32, i32* @ENOEXEC, align 4
  %225 = sub nsw i32 0, %224
  store i32 %225, i32* %6, align 4
  br label %231

226:                                              ; preds = %183, %99, %98
  br label %227

227:                                              ; preds = %226
  %228 = load i32, i32* %12, align 4
  %229 = add i32 %228, 1
  store i32 %229, i32* %12, align 4
  br label %33

230:                                              ; preds = %33
  store i32 0, i32* %6, align 4
  br label %231

231:                                              ; preds = %230, %212, %198, %184, %164, %126
  %232 = load i32, i32* %6, align 4
  ret i32 %232
}

declare dso_local i32 @pr_debug(i8*, i32, i64) #1

declare dso_local i32 @ELF32_R_SYM(i32) #1

declare dso_local i32 @ELF32_R_TYPE(i32) #1

declare dso_local i32 @decode_calln_opcode(i8*) #1

declare dso_local i32 @pr_err(i8*, i32, i32, ...) #1

declare dso_local i32 @decode_l32r_opcode(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
