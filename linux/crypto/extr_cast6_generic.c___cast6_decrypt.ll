; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_cast6_generic.c___cast6_decrypt.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_cast6_generic.c___cast6_decrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cast6_ctx = type { i32**, i32** }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__cast6_decrypt(%struct.cast6_ctx* %0, i32* %1, i32* %2) #0 {
  %4 = alloca %struct.cast6_ctx*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca [4 x i32], align 16
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  store %struct.cast6_ctx* %0, %struct.cast6_ctx** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %12 = load i32*, i32** %6, align 8
  store i32* %12, i32** %7, align 8
  %13 = load i32*, i32** %5, align 8
  store i32* %13, i32** %8, align 8
  %14 = load i32*, i32** %7, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @be32_to_cpu(i32 %16)
  %18 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 0
  store i32 %17, i32* %18, align 16
  %19 = load i32*, i32** %7, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @be32_to_cpu(i32 %21)
  %23 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 1
  store i32 %22, i32* %23, align 4
  %24 = load i32*, i32** %7, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 2
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @be32_to_cpu(i32 %26)
  %28 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 2
  store i32 %27, i32* %28, align 8
  %29 = load i32*, i32** %7, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 3
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @be32_to_cpu(i32 %31)
  %33 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 3
  store i32 %32, i32* %33, align 4
  %34 = load %struct.cast6_ctx*, %struct.cast6_ctx** %4, align 8
  %35 = getelementptr inbounds %struct.cast6_ctx, %struct.cast6_ctx* %34, i32 0, i32 1
  %36 = load i32**, i32*** %35, align 8
  %37 = getelementptr inbounds i32*, i32** %36, i64 11
  %38 = load i32*, i32** %37, align 8
  store i32* %38, i32** %10, align 8
  %39 = load %struct.cast6_ctx*, %struct.cast6_ctx** %4, align 8
  %40 = getelementptr inbounds %struct.cast6_ctx, %struct.cast6_ctx* %39, i32 0, i32 0
  %41 = load i32**, i32*** %40, align 8
  %42 = getelementptr inbounds i32*, i32** %41, i64 11
  %43 = load i32*, i32** %42, align 8
  store i32* %43, i32** %11, align 8
  %44 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 0
  %45 = load i32*, i32** %11, align 8
  %46 = load i32*, i32** %10, align 8
  %47 = call i32 @Q(i32* %44, i32* %45, i32* %46)
  %48 = load %struct.cast6_ctx*, %struct.cast6_ctx** %4, align 8
  %49 = getelementptr inbounds %struct.cast6_ctx, %struct.cast6_ctx* %48, i32 0, i32 1
  %50 = load i32**, i32*** %49, align 8
  %51 = getelementptr inbounds i32*, i32** %50, i64 10
  %52 = load i32*, i32** %51, align 8
  store i32* %52, i32** %10, align 8
  %53 = load %struct.cast6_ctx*, %struct.cast6_ctx** %4, align 8
  %54 = getelementptr inbounds %struct.cast6_ctx, %struct.cast6_ctx* %53, i32 0, i32 0
  %55 = load i32**, i32*** %54, align 8
  %56 = getelementptr inbounds i32*, i32** %55, i64 10
  %57 = load i32*, i32** %56, align 8
  store i32* %57, i32** %11, align 8
  %58 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 0
  %59 = load i32*, i32** %11, align 8
  %60 = load i32*, i32** %10, align 8
  %61 = call i32 @Q(i32* %58, i32* %59, i32* %60)
  %62 = load %struct.cast6_ctx*, %struct.cast6_ctx** %4, align 8
  %63 = getelementptr inbounds %struct.cast6_ctx, %struct.cast6_ctx* %62, i32 0, i32 1
  %64 = load i32**, i32*** %63, align 8
  %65 = getelementptr inbounds i32*, i32** %64, i64 9
  %66 = load i32*, i32** %65, align 8
  store i32* %66, i32** %10, align 8
  %67 = load %struct.cast6_ctx*, %struct.cast6_ctx** %4, align 8
  %68 = getelementptr inbounds %struct.cast6_ctx, %struct.cast6_ctx* %67, i32 0, i32 0
  %69 = load i32**, i32*** %68, align 8
  %70 = getelementptr inbounds i32*, i32** %69, i64 9
  %71 = load i32*, i32** %70, align 8
  store i32* %71, i32** %11, align 8
  %72 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 0
  %73 = load i32*, i32** %11, align 8
  %74 = load i32*, i32** %10, align 8
  %75 = call i32 @Q(i32* %72, i32* %73, i32* %74)
  %76 = load %struct.cast6_ctx*, %struct.cast6_ctx** %4, align 8
  %77 = getelementptr inbounds %struct.cast6_ctx, %struct.cast6_ctx* %76, i32 0, i32 1
  %78 = load i32**, i32*** %77, align 8
  %79 = getelementptr inbounds i32*, i32** %78, i64 8
  %80 = load i32*, i32** %79, align 8
  store i32* %80, i32** %10, align 8
  %81 = load %struct.cast6_ctx*, %struct.cast6_ctx** %4, align 8
  %82 = getelementptr inbounds %struct.cast6_ctx, %struct.cast6_ctx* %81, i32 0, i32 0
  %83 = load i32**, i32*** %82, align 8
  %84 = getelementptr inbounds i32*, i32** %83, i64 8
  %85 = load i32*, i32** %84, align 8
  store i32* %85, i32** %11, align 8
  %86 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 0
  %87 = load i32*, i32** %11, align 8
  %88 = load i32*, i32** %10, align 8
  %89 = call i32 @Q(i32* %86, i32* %87, i32* %88)
  %90 = load %struct.cast6_ctx*, %struct.cast6_ctx** %4, align 8
  %91 = getelementptr inbounds %struct.cast6_ctx, %struct.cast6_ctx* %90, i32 0, i32 1
  %92 = load i32**, i32*** %91, align 8
  %93 = getelementptr inbounds i32*, i32** %92, i64 7
  %94 = load i32*, i32** %93, align 8
  store i32* %94, i32** %10, align 8
  %95 = load %struct.cast6_ctx*, %struct.cast6_ctx** %4, align 8
  %96 = getelementptr inbounds %struct.cast6_ctx, %struct.cast6_ctx* %95, i32 0, i32 0
  %97 = load i32**, i32*** %96, align 8
  %98 = getelementptr inbounds i32*, i32** %97, i64 7
  %99 = load i32*, i32** %98, align 8
  store i32* %99, i32** %11, align 8
  %100 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 0
  %101 = load i32*, i32** %11, align 8
  %102 = load i32*, i32** %10, align 8
  %103 = call i32 @Q(i32* %100, i32* %101, i32* %102)
  %104 = load %struct.cast6_ctx*, %struct.cast6_ctx** %4, align 8
  %105 = getelementptr inbounds %struct.cast6_ctx, %struct.cast6_ctx* %104, i32 0, i32 1
  %106 = load i32**, i32*** %105, align 8
  %107 = getelementptr inbounds i32*, i32** %106, i64 6
  %108 = load i32*, i32** %107, align 8
  store i32* %108, i32** %10, align 8
  %109 = load %struct.cast6_ctx*, %struct.cast6_ctx** %4, align 8
  %110 = getelementptr inbounds %struct.cast6_ctx, %struct.cast6_ctx* %109, i32 0, i32 0
  %111 = load i32**, i32*** %110, align 8
  %112 = getelementptr inbounds i32*, i32** %111, i64 6
  %113 = load i32*, i32** %112, align 8
  store i32* %113, i32** %11, align 8
  %114 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 0
  %115 = load i32*, i32** %11, align 8
  %116 = load i32*, i32** %10, align 8
  %117 = call i32 @Q(i32* %114, i32* %115, i32* %116)
  %118 = load %struct.cast6_ctx*, %struct.cast6_ctx** %4, align 8
  %119 = getelementptr inbounds %struct.cast6_ctx, %struct.cast6_ctx* %118, i32 0, i32 1
  %120 = load i32**, i32*** %119, align 8
  %121 = getelementptr inbounds i32*, i32** %120, i64 5
  %122 = load i32*, i32** %121, align 8
  store i32* %122, i32** %10, align 8
  %123 = load %struct.cast6_ctx*, %struct.cast6_ctx** %4, align 8
  %124 = getelementptr inbounds %struct.cast6_ctx, %struct.cast6_ctx* %123, i32 0, i32 0
  %125 = load i32**, i32*** %124, align 8
  %126 = getelementptr inbounds i32*, i32** %125, i64 5
  %127 = load i32*, i32** %126, align 8
  store i32* %127, i32** %11, align 8
  %128 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 0
  %129 = load i32*, i32** %11, align 8
  %130 = load i32*, i32** %10, align 8
  %131 = call i32 @QBAR(i32* %128, i32* %129, i32* %130)
  %132 = load %struct.cast6_ctx*, %struct.cast6_ctx** %4, align 8
  %133 = getelementptr inbounds %struct.cast6_ctx, %struct.cast6_ctx* %132, i32 0, i32 1
  %134 = load i32**, i32*** %133, align 8
  %135 = getelementptr inbounds i32*, i32** %134, i64 4
  %136 = load i32*, i32** %135, align 8
  store i32* %136, i32** %10, align 8
  %137 = load %struct.cast6_ctx*, %struct.cast6_ctx** %4, align 8
  %138 = getelementptr inbounds %struct.cast6_ctx, %struct.cast6_ctx* %137, i32 0, i32 0
  %139 = load i32**, i32*** %138, align 8
  %140 = getelementptr inbounds i32*, i32** %139, i64 4
  %141 = load i32*, i32** %140, align 8
  store i32* %141, i32** %11, align 8
  %142 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 0
  %143 = load i32*, i32** %11, align 8
  %144 = load i32*, i32** %10, align 8
  %145 = call i32 @QBAR(i32* %142, i32* %143, i32* %144)
  %146 = load %struct.cast6_ctx*, %struct.cast6_ctx** %4, align 8
  %147 = getelementptr inbounds %struct.cast6_ctx, %struct.cast6_ctx* %146, i32 0, i32 1
  %148 = load i32**, i32*** %147, align 8
  %149 = getelementptr inbounds i32*, i32** %148, i64 3
  %150 = load i32*, i32** %149, align 8
  store i32* %150, i32** %10, align 8
  %151 = load %struct.cast6_ctx*, %struct.cast6_ctx** %4, align 8
  %152 = getelementptr inbounds %struct.cast6_ctx, %struct.cast6_ctx* %151, i32 0, i32 0
  %153 = load i32**, i32*** %152, align 8
  %154 = getelementptr inbounds i32*, i32** %153, i64 3
  %155 = load i32*, i32** %154, align 8
  store i32* %155, i32** %11, align 8
  %156 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 0
  %157 = load i32*, i32** %11, align 8
  %158 = load i32*, i32** %10, align 8
  %159 = call i32 @QBAR(i32* %156, i32* %157, i32* %158)
  %160 = load %struct.cast6_ctx*, %struct.cast6_ctx** %4, align 8
  %161 = getelementptr inbounds %struct.cast6_ctx, %struct.cast6_ctx* %160, i32 0, i32 1
  %162 = load i32**, i32*** %161, align 8
  %163 = getelementptr inbounds i32*, i32** %162, i64 2
  %164 = load i32*, i32** %163, align 8
  store i32* %164, i32** %10, align 8
  %165 = load %struct.cast6_ctx*, %struct.cast6_ctx** %4, align 8
  %166 = getelementptr inbounds %struct.cast6_ctx, %struct.cast6_ctx* %165, i32 0, i32 0
  %167 = load i32**, i32*** %166, align 8
  %168 = getelementptr inbounds i32*, i32** %167, i64 2
  %169 = load i32*, i32** %168, align 8
  store i32* %169, i32** %11, align 8
  %170 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 0
  %171 = load i32*, i32** %11, align 8
  %172 = load i32*, i32** %10, align 8
  %173 = call i32 @QBAR(i32* %170, i32* %171, i32* %172)
  %174 = load %struct.cast6_ctx*, %struct.cast6_ctx** %4, align 8
  %175 = getelementptr inbounds %struct.cast6_ctx, %struct.cast6_ctx* %174, i32 0, i32 1
  %176 = load i32**, i32*** %175, align 8
  %177 = getelementptr inbounds i32*, i32** %176, i64 1
  %178 = load i32*, i32** %177, align 8
  store i32* %178, i32** %10, align 8
  %179 = load %struct.cast6_ctx*, %struct.cast6_ctx** %4, align 8
  %180 = getelementptr inbounds %struct.cast6_ctx, %struct.cast6_ctx* %179, i32 0, i32 0
  %181 = load i32**, i32*** %180, align 8
  %182 = getelementptr inbounds i32*, i32** %181, i64 1
  %183 = load i32*, i32** %182, align 8
  store i32* %183, i32** %11, align 8
  %184 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 0
  %185 = load i32*, i32** %11, align 8
  %186 = load i32*, i32** %10, align 8
  %187 = call i32 @QBAR(i32* %184, i32* %185, i32* %186)
  %188 = load %struct.cast6_ctx*, %struct.cast6_ctx** %4, align 8
  %189 = getelementptr inbounds %struct.cast6_ctx, %struct.cast6_ctx* %188, i32 0, i32 1
  %190 = load i32**, i32*** %189, align 8
  %191 = getelementptr inbounds i32*, i32** %190, i64 0
  %192 = load i32*, i32** %191, align 8
  store i32* %192, i32** %10, align 8
  %193 = load %struct.cast6_ctx*, %struct.cast6_ctx** %4, align 8
  %194 = getelementptr inbounds %struct.cast6_ctx, %struct.cast6_ctx* %193, i32 0, i32 0
  %195 = load i32**, i32*** %194, align 8
  %196 = getelementptr inbounds i32*, i32** %195, i64 0
  %197 = load i32*, i32** %196, align 8
  store i32* %197, i32** %11, align 8
  %198 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 0
  %199 = load i32*, i32** %11, align 8
  %200 = load i32*, i32** %10, align 8
  %201 = call i32 @QBAR(i32* %198, i32* %199, i32* %200)
  %202 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 0
  %203 = load i32, i32* %202, align 16
  %204 = call i32 @cpu_to_be32(i32 %203)
  %205 = load i32*, i32** %8, align 8
  %206 = getelementptr inbounds i32, i32* %205, i64 0
  store i32 %204, i32* %206, align 4
  %207 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 1
  %208 = load i32, i32* %207, align 4
  %209 = call i32 @cpu_to_be32(i32 %208)
  %210 = load i32*, i32** %8, align 8
  %211 = getelementptr inbounds i32, i32* %210, i64 1
  store i32 %209, i32* %211, align 4
  %212 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 2
  %213 = load i32, i32* %212, align 8
  %214 = call i32 @cpu_to_be32(i32 %213)
  %215 = load i32*, i32** %8, align 8
  %216 = getelementptr inbounds i32, i32* %215, i64 2
  store i32 %214, i32* %216, align 4
  %217 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 3
  %218 = load i32, i32* %217, align 4
  %219 = call i32 @cpu_to_be32(i32 %218)
  %220 = load i32*, i32** %8, align 8
  %221 = getelementptr inbounds i32, i32* %220, i64 3
  store i32 %219, i32* %221, align 4
  ret void
}

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @Q(i32*, i32*, i32*) #1

declare dso_local i32 @QBAR(i32*, i32*, i32*) #1

declare dso_local i32 @cpu_to_be32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
