; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_cast5_generic.c___cast5_decrypt.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_cast5_generic.c___cast5_decrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cast5_ctx = type { i32*, i32, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__cast5_decrypt(%struct.cast5_ctx* %0, i32* %1, i32* %2) #0 {
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
  %31 = load %struct.cast5_ctx*, %struct.cast5_ctx** %4, align 8
  %32 = getelementptr inbounds %struct.cast5_ctx, %struct.cast5_ctx* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %84, label %35

35:                                               ; preds = %3
  %36 = load i32, i32* %9, align 4
  store i32 %36, i32* %11, align 4
  %37 = load i32, i32* %10, align 4
  store i32 %37, i32* %9, align 4
  %38 = load i32, i32* %11, align 4
  %39 = load i32, i32* %10, align 4
  %40 = load i32*, i32** %13, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 15
  %42 = load i32, i32* %41, align 4
  %43 = load i32*, i32** %14, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 15
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @F1(i32 %39, i32 %42, i32 %45)
  %47 = xor i32 %38, %46
  store i32 %47, i32* %10, align 4
  %48 = load i32, i32* %9, align 4
  store i32 %48, i32* %11, align 4
  %49 = load i32, i32* %10, align 4
  store i32 %49, i32* %9, align 4
  %50 = load i32, i32* %11, align 4
  %51 = load i32, i32* %10, align 4
  %52 = load i32*, i32** %13, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 14
  %54 = load i32, i32* %53, align 4
  %55 = load i32*, i32** %14, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 14
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @F3(i32 %51, i32 %54, i32 %57)
  %59 = xor i32 %50, %58
  store i32 %59, i32* %10, align 4
  %60 = load i32, i32* %9, align 4
  store i32 %60, i32* %11, align 4
  %61 = load i32, i32* %10, align 4
  store i32 %61, i32* %9, align 4
  %62 = load i32, i32* %11, align 4
  %63 = load i32, i32* %10, align 4
  %64 = load i32*, i32** %13, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 13
  %66 = load i32, i32* %65, align 4
  %67 = load i32*, i32** %14, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 13
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @F2(i32 %63, i32 %66, i32 %69)
  %71 = xor i32 %62, %70
  store i32 %71, i32* %10, align 4
  %72 = load i32, i32* %9, align 4
  store i32 %72, i32* %11, align 4
  %73 = load i32, i32* %10, align 4
  store i32 %73, i32* %9, align 4
  %74 = load i32, i32* %11, align 4
  %75 = load i32, i32* %10, align 4
  %76 = load i32*, i32** %13, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 12
  %78 = load i32, i32* %77, align 4
  %79 = load i32*, i32** %14, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 12
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @F1(i32 %75, i32 %78, i32 %81)
  %83 = xor i32 %74, %82
  store i32 %83, i32* %10, align 4
  br label %84

84:                                               ; preds = %35, %3
  %85 = load i32, i32* %9, align 4
  store i32 %85, i32* %11, align 4
  %86 = load i32, i32* %10, align 4
  store i32 %86, i32* %9, align 4
  %87 = load i32, i32* %11, align 4
  %88 = load i32, i32* %10, align 4
  %89 = load i32*, i32** %13, align 8
  %90 = getelementptr inbounds i32, i32* %89, i64 11
  %91 = load i32, i32* %90, align 4
  %92 = load i32*, i32** %14, align 8
  %93 = getelementptr inbounds i32, i32* %92, i64 11
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @F3(i32 %88, i32 %91, i32 %94)
  %96 = xor i32 %87, %95
  store i32 %96, i32* %10, align 4
  %97 = load i32, i32* %9, align 4
  store i32 %97, i32* %11, align 4
  %98 = load i32, i32* %10, align 4
  store i32 %98, i32* %9, align 4
  %99 = load i32, i32* %11, align 4
  %100 = load i32, i32* %10, align 4
  %101 = load i32*, i32** %13, align 8
  %102 = getelementptr inbounds i32, i32* %101, i64 10
  %103 = load i32, i32* %102, align 4
  %104 = load i32*, i32** %14, align 8
  %105 = getelementptr inbounds i32, i32* %104, i64 10
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @F2(i32 %100, i32 %103, i32 %106)
  %108 = xor i32 %99, %107
  store i32 %108, i32* %10, align 4
  %109 = load i32, i32* %9, align 4
  store i32 %109, i32* %11, align 4
  %110 = load i32, i32* %10, align 4
  store i32 %110, i32* %9, align 4
  %111 = load i32, i32* %11, align 4
  %112 = load i32, i32* %10, align 4
  %113 = load i32*, i32** %13, align 8
  %114 = getelementptr inbounds i32, i32* %113, i64 9
  %115 = load i32, i32* %114, align 4
  %116 = load i32*, i32** %14, align 8
  %117 = getelementptr inbounds i32, i32* %116, i64 9
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @F1(i32 %112, i32 %115, i32 %118)
  %120 = xor i32 %111, %119
  store i32 %120, i32* %10, align 4
  %121 = load i32, i32* %9, align 4
  store i32 %121, i32* %11, align 4
  %122 = load i32, i32* %10, align 4
  store i32 %122, i32* %9, align 4
  %123 = load i32, i32* %11, align 4
  %124 = load i32, i32* %10, align 4
  %125 = load i32*, i32** %13, align 8
  %126 = getelementptr inbounds i32, i32* %125, i64 8
  %127 = load i32, i32* %126, align 4
  %128 = load i32*, i32** %14, align 8
  %129 = getelementptr inbounds i32, i32* %128, i64 8
  %130 = load i32, i32* %129, align 4
  %131 = call i32 @F3(i32 %124, i32 %127, i32 %130)
  %132 = xor i32 %123, %131
  store i32 %132, i32* %10, align 4
  %133 = load i32, i32* %9, align 4
  store i32 %133, i32* %11, align 4
  %134 = load i32, i32* %10, align 4
  store i32 %134, i32* %9, align 4
  %135 = load i32, i32* %11, align 4
  %136 = load i32, i32* %10, align 4
  %137 = load i32*, i32** %13, align 8
  %138 = getelementptr inbounds i32, i32* %137, i64 7
  %139 = load i32, i32* %138, align 4
  %140 = load i32*, i32** %14, align 8
  %141 = getelementptr inbounds i32, i32* %140, i64 7
  %142 = load i32, i32* %141, align 4
  %143 = call i32 @F2(i32 %136, i32 %139, i32 %142)
  %144 = xor i32 %135, %143
  store i32 %144, i32* %10, align 4
  %145 = load i32, i32* %9, align 4
  store i32 %145, i32* %11, align 4
  %146 = load i32, i32* %10, align 4
  store i32 %146, i32* %9, align 4
  %147 = load i32, i32* %11, align 4
  %148 = load i32, i32* %10, align 4
  %149 = load i32*, i32** %13, align 8
  %150 = getelementptr inbounds i32, i32* %149, i64 6
  %151 = load i32, i32* %150, align 4
  %152 = load i32*, i32** %14, align 8
  %153 = getelementptr inbounds i32, i32* %152, i64 6
  %154 = load i32, i32* %153, align 4
  %155 = call i32 @F1(i32 %148, i32 %151, i32 %154)
  %156 = xor i32 %147, %155
  store i32 %156, i32* %10, align 4
  %157 = load i32, i32* %9, align 4
  store i32 %157, i32* %11, align 4
  %158 = load i32, i32* %10, align 4
  store i32 %158, i32* %9, align 4
  %159 = load i32, i32* %11, align 4
  %160 = load i32, i32* %10, align 4
  %161 = load i32*, i32** %13, align 8
  %162 = getelementptr inbounds i32, i32* %161, i64 5
  %163 = load i32, i32* %162, align 4
  %164 = load i32*, i32** %14, align 8
  %165 = getelementptr inbounds i32, i32* %164, i64 5
  %166 = load i32, i32* %165, align 4
  %167 = call i32 @F3(i32 %160, i32 %163, i32 %166)
  %168 = xor i32 %159, %167
  store i32 %168, i32* %10, align 4
  %169 = load i32, i32* %9, align 4
  store i32 %169, i32* %11, align 4
  %170 = load i32, i32* %10, align 4
  store i32 %170, i32* %9, align 4
  %171 = load i32, i32* %11, align 4
  %172 = load i32, i32* %10, align 4
  %173 = load i32*, i32** %13, align 8
  %174 = getelementptr inbounds i32, i32* %173, i64 4
  %175 = load i32, i32* %174, align 4
  %176 = load i32*, i32** %14, align 8
  %177 = getelementptr inbounds i32, i32* %176, i64 4
  %178 = load i32, i32* %177, align 4
  %179 = call i32 @F2(i32 %172, i32 %175, i32 %178)
  %180 = xor i32 %171, %179
  store i32 %180, i32* %10, align 4
  %181 = load i32, i32* %9, align 4
  store i32 %181, i32* %11, align 4
  %182 = load i32, i32* %10, align 4
  store i32 %182, i32* %9, align 4
  %183 = load i32, i32* %11, align 4
  %184 = load i32, i32* %10, align 4
  %185 = load i32*, i32** %13, align 8
  %186 = getelementptr inbounds i32, i32* %185, i64 3
  %187 = load i32, i32* %186, align 4
  %188 = load i32*, i32** %14, align 8
  %189 = getelementptr inbounds i32, i32* %188, i64 3
  %190 = load i32, i32* %189, align 4
  %191 = call i32 @F1(i32 %184, i32 %187, i32 %190)
  %192 = xor i32 %183, %191
  store i32 %192, i32* %10, align 4
  %193 = load i32, i32* %9, align 4
  store i32 %193, i32* %11, align 4
  %194 = load i32, i32* %10, align 4
  store i32 %194, i32* %9, align 4
  %195 = load i32, i32* %11, align 4
  %196 = load i32, i32* %10, align 4
  %197 = load i32*, i32** %13, align 8
  %198 = getelementptr inbounds i32, i32* %197, i64 2
  %199 = load i32, i32* %198, align 4
  %200 = load i32*, i32** %14, align 8
  %201 = getelementptr inbounds i32, i32* %200, i64 2
  %202 = load i32, i32* %201, align 4
  %203 = call i32 @F3(i32 %196, i32 %199, i32 %202)
  %204 = xor i32 %195, %203
  store i32 %204, i32* %10, align 4
  %205 = load i32, i32* %9, align 4
  store i32 %205, i32* %11, align 4
  %206 = load i32, i32* %10, align 4
  store i32 %206, i32* %9, align 4
  %207 = load i32, i32* %11, align 4
  %208 = load i32, i32* %10, align 4
  %209 = load i32*, i32** %13, align 8
  %210 = getelementptr inbounds i32, i32* %209, i64 1
  %211 = load i32, i32* %210, align 4
  %212 = load i32*, i32** %14, align 8
  %213 = getelementptr inbounds i32, i32* %212, i64 1
  %214 = load i32, i32* %213, align 4
  %215 = call i32 @F2(i32 %208, i32 %211, i32 %214)
  %216 = xor i32 %207, %215
  store i32 %216, i32* %10, align 4
  %217 = load i32, i32* %9, align 4
  store i32 %217, i32* %11, align 4
  %218 = load i32, i32* %10, align 4
  store i32 %218, i32* %9, align 4
  %219 = load i32, i32* %11, align 4
  %220 = load i32, i32* %10, align 4
  %221 = load i32*, i32** %13, align 8
  %222 = getelementptr inbounds i32, i32* %221, i64 0
  %223 = load i32, i32* %222, align 4
  %224 = load i32*, i32** %14, align 8
  %225 = getelementptr inbounds i32, i32* %224, i64 0
  %226 = load i32, i32* %225, align 4
  %227 = call i32 @F1(i32 %220, i32 %223, i32 %226)
  %228 = xor i32 %219, %227
  store i32 %228, i32* %10, align 4
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

declare dso_local i32 @F3(i32, i32, i32) #1

declare dso_local i32 @F2(i32, i32, i32) #1

declare dso_local i32 @cpu_to_be32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
