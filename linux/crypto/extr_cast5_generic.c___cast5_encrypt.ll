; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_cast5_generic.c___cast5_encrypt.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_cast5_generic.c___cast5_encrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cast5_ctx = type { i32*, i32, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__cast5_encrypt(%struct.cast5_ctx* %0, i32* %1, i32* %2) #0 {
  %4 = alloca %struct.cast5_ctx*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  store %struct.cast5_ctx* %0, %struct.cast5_ctx** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %15 = load i32*, i32** %6, align 8
  store i32* %15, i32** %7, align 8
  %16 = load i32*, i32** %5, align 8
  store i32* %16, i32** %8, align 8
  %17 = load %struct.cast5_ctx*, %struct.cast5_ctx** %4, align 8
  %18 = getelementptr inbounds %struct.cast5_ctx, %struct.cast5_ctx* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  store i32* %19, i32** %13, align 8
  %20 = load %struct.cast5_ctx*, %struct.cast5_ctx** %4, align 8
  %21 = getelementptr inbounds %struct.cast5_ctx, %struct.cast5_ctx* %20, i32 0, i32 2
  %22 = load i32*, i32** %21, align 8
  store i32* %22, i32** %14, align 8
  %23 = load i32*, i32** %7, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @be32_to_cpu(i32 %25)
  store i32 %26, i32* %9, align 4
  %27 = load i32*, i32** %7, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 1
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @be32_to_cpu(i32 %29)
  store i32 %30, i32* %10, align 4
  %31 = load i32, i32* %9, align 4
  store i32 %31, i32* %11, align 4
  %32 = load i32, i32* %10, align 4
  store i32 %32, i32* %9, align 4
  %33 = load i32, i32* %11, align 4
  %34 = load i32, i32* %10, align 4
  %35 = load i32*, i32** %13, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32*, i32** %14, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @F1(i32 %34, i32 %37, i32 %40)
  %42 = xor i32 %33, %41
  store i32 %42, i32* %10, align 4
  %43 = load i32, i32* %9, align 4
  store i32 %43, i32* %11, align 4
  %44 = load i32, i32* %10, align 4
  store i32 %44, i32* %9, align 4
  %45 = load i32, i32* %11, align 4
  %46 = load i32, i32* %10, align 4
  %47 = load i32*, i32** %13, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 1
  %49 = load i32, i32* %48, align 4
  %50 = load i32*, i32** %14, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 1
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @F2(i32 %46, i32 %49, i32 %52)
  %54 = xor i32 %45, %53
  store i32 %54, i32* %10, align 4
  %55 = load i32, i32* %9, align 4
  store i32 %55, i32* %11, align 4
  %56 = load i32, i32* %10, align 4
  store i32 %56, i32* %9, align 4
  %57 = load i32, i32* %11, align 4
  %58 = load i32, i32* %10, align 4
  %59 = load i32*, i32** %13, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 2
  %61 = load i32, i32* %60, align 4
  %62 = load i32*, i32** %14, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 2
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @F3(i32 %58, i32 %61, i32 %64)
  %66 = xor i32 %57, %65
  store i32 %66, i32* %10, align 4
  %67 = load i32, i32* %9, align 4
  store i32 %67, i32* %11, align 4
  %68 = load i32, i32* %10, align 4
  store i32 %68, i32* %9, align 4
  %69 = load i32, i32* %11, align 4
  %70 = load i32, i32* %10, align 4
  %71 = load i32*, i32** %13, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 3
  %73 = load i32, i32* %72, align 4
  %74 = load i32*, i32** %14, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 3
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @F1(i32 %70, i32 %73, i32 %76)
  %78 = xor i32 %69, %77
  store i32 %78, i32* %10, align 4
  %79 = load i32, i32* %9, align 4
  store i32 %79, i32* %11, align 4
  %80 = load i32, i32* %10, align 4
  store i32 %80, i32* %9, align 4
  %81 = load i32, i32* %11, align 4
  %82 = load i32, i32* %10, align 4
  %83 = load i32*, i32** %13, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 4
  %85 = load i32, i32* %84, align 4
  %86 = load i32*, i32** %14, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 4
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @F2(i32 %82, i32 %85, i32 %88)
  %90 = xor i32 %81, %89
  store i32 %90, i32* %10, align 4
  %91 = load i32, i32* %9, align 4
  store i32 %91, i32* %11, align 4
  %92 = load i32, i32* %10, align 4
  store i32 %92, i32* %9, align 4
  %93 = load i32, i32* %11, align 4
  %94 = load i32, i32* %10, align 4
  %95 = load i32*, i32** %13, align 8
  %96 = getelementptr inbounds i32, i32* %95, i64 5
  %97 = load i32, i32* %96, align 4
  %98 = load i32*, i32** %14, align 8
  %99 = getelementptr inbounds i32, i32* %98, i64 5
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @F3(i32 %94, i32 %97, i32 %100)
  %102 = xor i32 %93, %101
  store i32 %102, i32* %10, align 4
  %103 = load i32, i32* %9, align 4
  store i32 %103, i32* %11, align 4
  %104 = load i32, i32* %10, align 4
  store i32 %104, i32* %9, align 4
  %105 = load i32, i32* %11, align 4
  %106 = load i32, i32* %10, align 4
  %107 = load i32*, i32** %13, align 8
  %108 = getelementptr inbounds i32, i32* %107, i64 6
  %109 = load i32, i32* %108, align 4
  %110 = load i32*, i32** %14, align 8
  %111 = getelementptr inbounds i32, i32* %110, i64 6
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @F1(i32 %106, i32 %109, i32 %112)
  %114 = xor i32 %105, %113
  store i32 %114, i32* %10, align 4
  %115 = load i32, i32* %9, align 4
  store i32 %115, i32* %11, align 4
  %116 = load i32, i32* %10, align 4
  store i32 %116, i32* %9, align 4
  %117 = load i32, i32* %11, align 4
  %118 = load i32, i32* %10, align 4
  %119 = load i32*, i32** %13, align 8
  %120 = getelementptr inbounds i32, i32* %119, i64 7
  %121 = load i32, i32* %120, align 4
  %122 = load i32*, i32** %14, align 8
  %123 = getelementptr inbounds i32, i32* %122, i64 7
  %124 = load i32, i32* %123, align 4
  %125 = call i32 @F2(i32 %118, i32 %121, i32 %124)
  %126 = xor i32 %117, %125
  store i32 %126, i32* %10, align 4
  %127 = load i32, i32* %9, align 4
  store i32 %127, i32* %11, align 4
  %128 = load i32, i32* %10, align 4
  store i32 %128, i32* %9, align 4
  %129 = load i32, i32* %11, align 4
  %130 = load i32, i32* %10, align 4
  %131 = load i32*, i32** %13, align 8
  %132 = getelementptr inbounds i32, i32* %131, i64 8
  %133 = load i32, i32* %132, align 4
  %134 = load i32*, i32** %14, align 8
  %135 = getelementptr inbounds i32, i32* %134, i64 8
  %136 = load i32, i32* %135, align 4
  %137 = call i32 @F3(i32 %130, i32 %133, i32 %136)
  %138 = xor i32 %129, %137
  store i32 %138, i32* %10, align 4
  %139 = load i32, i32* %9, align 4
  store i32 %139, i32* %11, align 4
  %140 = load i32, i32* %10, align 4
  store i32 %140, i32* %9, align 4
  %141 = load i32, i32* %11, align 4
  %142 = load i32, i32* %10, align 4
  %143 = load i32*, i32** %13, align 8
  %144 = getelementptr inbounds i32, i32* %143, i64 9
  %145 = load i32, i32* %144, align 4
  %146 = load i32*, i32** %14, align 8
  %147 = getelementptr inbounds i32, i32* %146, i64 9
  %148 = load i32, i32* %147, align 4
  %149 = call i32 @F1(i32 %142, i32 %145, i32 %148)
  %150 = xor i32 %141, %149
  store i32 %150, i32* %10, align 4
  %151 = load i32, i32* %9, align 4
  store i32 %151, i32* %11, align 4
  %152 = load i32, i32* %10, align 4
  store i32 %152, i32* %9, align 4
  %153 = load i32, i32* %11, align 4
  %154 = load i32, i32* %10, align 4
  %155 = load i32*, i32** %13, align 8
  %156 = getelementptr inbounds i32, i32* %155, i64 10
  %157 = load i32, i32* %156, align 4
  %158 = load i32*, i32** %14, align 8
  %159 = getelementptr inbounds i32, i32* %158, i64 10
  %160 = load i32, i32* %159, align 4
  %161 = call i32 @F2(i32 %154, i32 %157, i32 %160)
  %162 = xor i32 %153, %161
  store i32 %162, i32* %10, align 4
  %163 = load i32, i32* %9, align 4
  store i32 %163, i32* %11, align 4
  %164 = load i32, i32* %10, align 4
  store i32 %164, i32* %9, align 4
  %165 = load i32, i32* %11, align 4
  %166 = load i32, i32* %10, align 4
  %167 = load i32*, i32** %13, align 8
  %168 = getelementptr inbounds i32, i32* %167, i64 11
  %169 = load i32, i32* %168, align 4
  %170 = load i32*, i32** %14, align 8
  %171 = getelementptr inbounds i32, i32* %170, i64 11
  %172 = load i32, i32* %171, align 4
  %173 = call i32 @F3(i32 %166, i32 %169, i32 %172)
  %174 = xor i32 %165, %173
  store i32 %174, i32* %10, align 4
  %175 = load %struct.cast5_ctx*, %struct.cast5_ctx** %4, align 8
  %176 = getelementptr inbounds %struct.cast5_ctx, %struct.cast5_ctx* %175, i32 0, i32 1
  %177 = load i32, i32* %176, align 8
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %228, label %179

179:                                              ; preds = %3
  %180 = load i32, i32* %9, align 4
  store i32 %180, i32* %11, align 4
  %181 = load i32, i32* %10, align 4
  store i32 %181, i32* %9, align 4
  %182 = load i32, i32* %11, align 4
  %183 = load i32, i32* %10, align 4
  %184 = load i32*, i32** %13, align 8
  %185 = getelementptr inbounds i32, i32* %184, i64 12
  %186 = load i32, i32* %185, align 4
  %187 = load i32*, i32** %14, align 8
  %188 = getelementptr inbounds i32, i32* %187, i64 12
  %189 = load i32, i32* %188, align 4
  %190 = call i32 @F1(i32 %183, i32 %186, i32 %189)
  %191 = xor i32 %182, %190
  store i32 %191, i32* %10, align 4
  %192 = load i32, i32* %9, align 4
  store i32 %192, i32* %11, align 4
  %193 = load i32, i32* %10, align 4
  store i32 %193, i32* %9, align 4
  %194 = load i32, i32* %11, align 4
  %195 = load i32, i32* %10, align 4
  %196 = load i32*, i32** %13, align 8
  %197 = getelementptr inbounds i32, i32* %196, i64 13
  %198 = load i32, i32* %197, align 4
  %199 = load i32*, i32** %14, align 8
  %200 = getelementptr inbounds i32, i32* %199, i64 13
  %201 = load i32, i32* %200, align 4
  %202 = call i32 @F2(i32 %195, i32 %198, i32 %201)
  %203 = xor i32 %194, %202
  store i32 %203, i32* %10, align 4
  %204 = load i32, i32* %9, align 4
  store i32 %204, i32* %11, align 4
  %205 = load i32, i32* %10, align 4
  store i32 %205, i32* %9, align 4
  %206 = load i32, i32* %11, align 4
  %207 = load i32, i32* %10, align 4
  %208 = load i32*, i32** %13, align 8
  %209 = getelementptr inbounds i32, i32* %208, i64 14
  %210 = load i32, i32* %209, align 4
  %211 = load i32*, i32** %14, align 8
  %212 = getelementptr inbounds i32, i32* %211, i64 14
  %213 = load i32, i32* %212, align 4
  %214 = call i32 @F3(i32 %207, i32 %210, i32 %213)
  %215 = xor i32 %206, %214
  store i32 %215, i32* %10, align 4
  %216 = load i32, i32* %9, align 4
  store i32 %216, i32* %11, align 4
  %217 = load i32, i32* %10, align 4
  store i32 %217, i32* %9, align 4
  %218 = load i32, i32* %11, align 4
  %219 = load i32, i32* %10, align 4
  %220 = load i32*, i32** %13, align 8
  %221 = getelementptr inbounds i32, i32* %220, i64 15
  %222 = load i32, i32* %221, align 4
  %223 = load i32*, i32** %14, align 8
  %224 = getelementptr inbounds i32, i32* %223, i64 15
  %225 = load i32, i32* %224, align 4
  %226 = call i32 @F1(i32 %219, i32 %222, i32 %225)
  %227 = xor i32 %218, %226
  store i32 %227, i32* %10, align 4
  br label %228

228:                                              ; preds = %179, %3
  %229 = load i32, i32* %10, align 4
  %230 = call i32 @cpu_to_be32(i32 %229)
  %231 = load i32*, i32** %8, align 8
  %232 = getelementptr inbounds i32, i32* %231, i64 0
  store i32 %230, i32* %232, align 4
  %233 = load i32, i32* %9, align 4
  %234 = call i32 @cpu_to_be32(i32 %233)
  %235 = load i32*, i32** %8, align 8
  %236 = getelementptr inbounds i32, i32* %235, i64 1
  store i32 %234, i32* %236, align 4
  ret void
}

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @F1(i32, i32, i32) #1

declare dso_local i32 @F2(i32, i32, i32) #1

declare dso_local i32 @F3(i32, i32, i32) #1

declare dso_local i32 @cpu_to_be32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
