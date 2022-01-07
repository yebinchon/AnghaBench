; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_memneq.c___crypto_memneq_16.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_memneq.c___crypto_memneq_16.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*, i8*)* @__crypto_memneq_16 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @__crypto_memneq_16(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  store i64 0, i64* %5, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = load i8, i8* %6, align 1
  %8 = zext i8 %7 to i32
  %9 = load i8*, i8** %4, align 8
  %10 = load i8, i8* %9, align 1
  %11 = zext i8 %10 to i32
  %12 = xor i32 %8, %11
  %13 = sext i32 %12 to i64
  %14 = load i64, i64* %5, align 8
  %15 = or i64 %14, %13
  store i64 %15, i64* %5, align 8
  %16 = load i64, i64* %5, align 8
  %17 = call i32 @OPTIMIZER_HIDE_VAR(i64 %16)
  %18 = load i8*, i8** %3, align 8
  %19 = getelementptr i8, i8* %18, i64 1
  %20 = load i8, i8* %19, align 1
  %21 = zext i8 %20 to i32
  %22 = load i8*, i8** %4, align 8
  %23 = getelementptr i8, i8* %22, i64 1
  %24 = load i8, i8* %23, align 1
  %25 = zext i8 %24 to i32
  %26 = xor i32 %21, %25
  %27 = sext i32 %26 to i64
  %28 = load i64, i64* %5, align 8
  %29 = or i64 %28, %27
  store i64 %29, i64* %5, align 8
  %30 = load i64, i64* %5, align 8
  %31 = call i32 @OPTIMIZER_HIDE_VAR(i64 %30)
  %32 = load i8*, i8** %3, align 8
  %33 = getelementptr i8, i8* %32, i64 2
  %34 = load i8, i8* %33, align 1
  %35 = zext i8 %34 to i32
  %36 = load i8*, i8** %4, align 8
  %37 = getelementptr i8, i8* %36, i64 2
  %38 = load i8, i8* %37, align 1
  %39 = zext i8 %38 to i32
  %40 = xor i32 %35, %39
  %41 = sext i32 %40 to i64
  %42 = load i64, i64* %5, align 8
  %43 = or i64 %42, %41
  store i64 %43, i64* %5, align 8
  %44 = load i64, i64* %5, align 8
  %45 = call i32 @OPTIMIZER_HIDE_VAR(i64 %44)
  %46 = load i8*, i8** %3, align 8
  %47 = getelementptr i8, i8* %46, i64 3
  %48 = load i8, i8* %47, align 1
  %49 = zext i8 %48 to i32
  %50 = load i8*, i8** %4, align 8
  %51 = getelementptr i8, i8* %50, i64 3
  %52 = load i8, i8* %51, align 1
  %53 = zext i8 %52 to i32
  %54 = xor i32 %49, %53
  %55 = sext i32 %54 to i64
  %56 = load i64, i64* %5, align 8
  %57 = or i64 %56, %55
  store i64 %57, i64* %5, align 8
  %58 = load i64, i64* %5, align 8
  %59 = call i32 @OPTIMIZER_HIDE_VAR(i64 %58)
  %60 = load i8*, i8** %3, align 8
  %61 = getelementptr i8, i8* %60, i64 4
  %62 = load i8, i8* %61, align 1
  %63 = zext i8 %62 to i32
  %64 = load i8*, i8** %4, align 8
  %65 = getelementptr i8, i8* %64, i64 4
  %66 = load i8, i8* %65, align 1
  %67 = zext i8 %66 to i32
  %68 = xor i32 %63, %67
  %69 = sext i32 %68 to i64
  %70 = load i64, i64* %5, align 8
  %71 = or i64 %70, %69
  store i64 %71, i64* %5, align 8
  %72 = load i64, i64* %5, align 8
  %73 = call i32 @OPTIMIZER_HIDE_VAR(i64 %72)
  %74 = load i8*, i8** %3, align 8
  %75 = getelementptr i8, i8* %74, i64 5
  %76 = load i8, i8* %75, align 1
  %77 = zext i8 %76 to i32
  %78 = load i8*, i8** %4, align 8
  %79 = getelementptr i8, i8* %78, i64 5
  %80 = load i8, i8* %79, align 1
  %81 = zext i8 %80 to i32
  %82 = xor i32 %77, %81
  %83 = sext i32 %82 to i64
  %84 = load i64, i64* %5, align 8
  %85 = or i64 %84, %83
  store i64 %85, i64* %5, align 8
  %86 = load i64, i64* %5, align 8
  %87 = call i32 @OPTIMIZER_HIDE_VAR(i64 %86)
  %88 = load i8*, i8** %3, align 8
  %89 = getelementptr i8, i8* %88, i64 6
  %90 = load i8, i8* %89, align 1
  %91 = zext i8 %90 to i32
  %92 = load i8*, i8** %4, align 8
  %93 = getelementptr i8, i8* %92, i64 6
  %94 = load i8, i8* %93, align 1
  %95 = zext i8 %94 to i32
  %96 = xor i32 %91, %95
  %97 = sext i32 %96 to i64
  %98 = load i64, i64* %5, align 8
  %99 = or i64 %98, %97
  store i64 %99, i64* %5, align 8
  %100 = load i64, i64* %5, align 8
  %101 = call i32 @OPTIMIZER_HIDE_VAR(i64 %100)
  %102 = load i8*, i8** %3, align 8
  %103 = getelementptr i8, i8* %102, i64 7
  %104 = load i8, i8* %103, align 1
  %105 = zext i8 %104 to i32
  %106 = load i8*, i8** %4, align 8
  %107 = getelementptr i8, i8* %106, i64 7
  %108 = load i8, i8* %107, align 1
  %109 = zext i8 %108 to i32
  %110 = xor i32 %105, %109
  %111 = sext i32 %110 to i64
  %112 = load i64, i64* %5, align 8
  %113 = or i64 %112, %111
  store i64 %113, i64* %5, align 8
  %114 = load i64, i64* %5, align 8
  %115 = call i32 @OPTIMIZER_HIDE_VAR(i64 %114)
  %116 = load i8*, i8** %3, align 8
  %117 = getelementptr i8, i8* %116, i64 8
  %118 = load i8, i8* %117, align 1
  %119 = zext i8 %118 to i32
  %120 = load i8*, i8** %4, align 8
  %121 = getelementptr i8, i8* %120, i64 8
  %122 = load i8, i8* %121, align 1
  %123 = zext i8 %122 to i32
  %124 = xor i32 %119, %123
  %125 = sext i32 %124 to i64
  %126 = load i64, i64* %5, align 8
  %127 = or i64 %126, %125
  store i64 %127, i64* %5, align 8
  %128 = load i64, i64* %5, align 8
  %129 = call i32 @OPTIMIZER_HIDE_VAR(i64 %128)
  %130 = load i8*, i8** %3, align 8
  %131 = getelementptr i8, i8* %130, i64 9
  %132 = load i8, i8* %131, align 1
  %133 = zext i8 %132 to i32
  %134 = load i8*, i8** %4, align 8
  %135 = getelementptr i8, i8* %134, i64 9
  %136 = load i8, i8* %135, align 1
  %137 = zext i8 %136 to i32
  %138 = xor i32 %133, %137
  %139 = sext i32 %138 to i64
  %140 = load i64, i64* %5, align 8
  %141 = or i64 %140, %139
  store i64 %141, i64* %5, align 8
  %142 = load i64, i64* %5, align 8
  %143 = call i32 @OPTIMIZER_HIDE_VAR(i64 %142)
  %144 = load i8*, i8** %3, align 8
  %145 = getelementptr i8, i8* %144, i64 10
  %146 = load i8, i8* %145, align 1
  %147 = zext i8 %146 to i32
  %148 = load i8*, i8** %4, align 8
  %149 = getelementptr i8, i8* %148, i64 10
  %150 = load i8, i8* %149, align 1
  %151 = zext i8 %150 to i32
  %152 = xor i32 %147, %151
  %153 = sext i32 %152 to i64
  %154 = load i64, i64* %5, align 8
  %155 = or i64 %154, %153
  store i64 %155, i64* %5, align 8
  %156 = load i64, i64* %5, align 8
  %157 = call i32 @OPTIMIZER_HIDE_VAR(i64 %156)
  %158 = load i8*, i8** %3, align 8
  %159 = getelementptr i8, i8* %158, i64 11
  %160 = load i8, i8* %159, align 1
  %161 = zext i8 %160 to i32
  %162 = load i8*, i8** %4, align 8
  %163 = getelementptr i8, i8* %162, i64 11
  %164 = load i8, i8* %163, align 1
  %165 = zext i8 %164 to i32
  %166 = xor i32 %161, %165
  %167 = sext i32 %166 to i64
  %168 = load i64, i64* %5, align 8
  %169 = or i64 %168, %167
  store i64 %169, i64* %5, align 8
  %170 = load i64, i64* %5, align 8
  %171 = call i32 @OPTIMIZER_HIDE_VAR(i64 %170)
  %172 = load i8*, i8** %3, align 8
  %173 = getelementptr i8, i8* %172, i64 12
  %174 = load i8, i8* %173, align 1
  %175 = zext i8 %174 to i32
  %176 = load i8*, i8** %4, align 8
  %177 = getelementptr i8, i8* %176, i64 12
  %178 = load i8, i8* %177, align 1
  %179 = zext i8 %178 to i32
  %180 = xor i32 %175, %179
  %181 = sext i32 %180 to i64
  %182 = load i64, i64* %5, align 8
  %183 = or i64 %182, %181
  store i64 %183, i64* %5, align 8
  %184 = load i64, i64* %5, align 8
  %185 = call i32 @OPTIMIZER_HIDE_VAR(i64 %184)
  %186 = load i8*, i8** %3, align 8
  %187 = getelementptr i8, i8* %186, i64 13
  %188 = load i8, i8* %187, align 1
  %189 = zext i8 %188 to i32
  %190 = load i8*, i8** %4, align 8
  %191 = getelementptr i8, i8* %190, i64 13
  %192 = load i8, i8* %191, align 1
  %193 = zext i8 %192 to i32
  %194 = xor i32 %189, %193
  %195 = sext i32 %194 to i64
  %196 = load i64, i64* %5, align 8
  %197 = or i64 %196, %195
  store i64 %197, i64* %5, align 8
  %198 = load i64, i64* %5, align 8
  %199 = call i32 @OPTIMIZER_HIDE_VAR(i64 %198)
  %200 = load i8*, i8** %3, align 8
  %201 = getelementptr i8, i8* %200, i64 14
  %202 = load i8, i8* %201, align 1
  %203 = zext i8 %202 to i32
  %204 = load i8*, i8** %4, align 8
  %205 = getelementptr i8, i8* %204, i64 14
  %206 = load i8, i8* %205, align 1
  %207 = zext i8 %206 to i32
  %208 = xor i32 %203, %207
  %209 = sext i32 %208 to i64
  %210 = load i64, i64* %5, align 8
  %211 = or i64 %210, %209
  store i64 %211, i64* %5, align 8
  %212 = load i64, i64* %5, align 8
  %213 = call i32 @OPTIMIZER_HIDE_VAR(i64 %212)
  %214 = load i8*, i8** %3, align 8
  %215 = getelementptr i8, i8* %214, i64 15
  %216 = load i8, i8* %215, align 1
  %217 = zext i8 %216 to i32
  %218 = load i8*, i8** %4, align 8
  %219 = getelementptr i8, i8* %218, i64 15
  %220 = load i8, i8* %219, align 1
  %221 = zext i8 %220 to i32
  %222 = xor i32 %217, %221
  %223 = sext i32 %222 to i64
  %224 = load i64, i64* %5, align 8
  %225 = or i64 %224, %223
  store i64 %225, i64* %5, align 8
  %226 = load i64, i64* %5, align 8
  %227 = call i32 @OPTIMIZER_HIDE_VAR(i64 %226)
  %228 = load i64, i64* %5, align 8
  ret i64 %228
}

declare dso_local i32 @OPTIMIZER_HIDE_VAR(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
