; ModuleID = '/home/carl/AnghaBench/lede/tools/firmware-utils/src/extr_pc1crypt.c_pc1_code.c'
source_filename = "/home/carl/AnghaBench/lede/tools/firmware-utils/src/extr_pc1crypt.c_pc1_code.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pc1_ctx = type { i32, i32, i64, i32, i32*, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pc1_ctx*)* @pc1_code to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pc1_code(%struct.pc1_ctx* %0) #0 {
  %2 = alloca %struct.pc1_ctx*, align 8
  store %struct.pc1_ctx* %0, %struct.pc1_ctx** %2, align 8
  %3 = load %struct.pc1_ctx*, %struct.pc1_ctx** %2, align 8
  %4 = getelementptr inbounds %struct.pc1_ctx, %struct.pc1_ctx* %3, i32 0, i32 1
  %5 = load i32, i32* %4, align 4
  %6 = sext i32 %5 to i64
  %7 = load %struct.pc1_ctx*, %struct.pc1_ctx** %2, align 8
  %8 = getelementptr inbounds %struct.pc1_ctx, %struct.pc1_ctx* %7, i32 0, i32 2
  %9 = load i64, i64* %8, align 8
  %10 = add i64 %6, %9
  %11 = trunc i64 %10 to i32
  %12 = load %struct.pc1_ctx*, %struct.pc1_ctx** %2, align 8
  %13 = getelementptr inbounds %struct.pc1_ctx, %struct.pc1_ctx* %12, i32 0, i32 0
  store i32 %11, i32* %13, align 8
  %14 = load %struct.pc1_ctx*, %struct.pc1_ctx** %2, align 8
  %15 = getelementptr inbounds %struct.pc1_ctx, %struct.pc1_ctx* %14, i32 0, i32 4
  %16 = load i32*, i32** %15, align 8
  %17 = load %struct.pc1_ctx*, %struct.pc1_ctx** %2, align 8
  %18 = getelementptr inbounds %struct.pc1_ctx, %struct.pc1_ctx* %17, i32 0, i32 2
  %19 = load i64, i64* %18, align 8
  %20 = getelementptr inbounds i32, i32* %16, i64 %19
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.pc1_ctx*, %struct.pc1_ctx** %2, align 8
  %23 = getelementptr inbounds %struct.pc1_ctx, %struct.pc1_ctx* %22, i32 0, i32 3
  store i32 %21, i32* %23, align 8
  %24 = load %struct.pc1_ctx*, %struct.pc1_ctx** %2, align 8
  %25 = getelementptr inbounds %struct.pc1_ctx, %struct.pc1_ctx* %24, i32 0, i32 5
  store i32 346, i32* %25, align 8
  %26 = load %struct.pc1_ctx*, %struct.pc1_ctx** %2, align 8
  %27 = getelementptr inbounds %struct.pc1_ctx, %struct.pc1_ctx* %26, i32 0, i32 6
  store i32 20021, i32* %27, align 4
  %28 = load %struct.pc1_ctx*, %struct.pc1_ctx** %2, align 8
  %29 = getelementptr inbounds %struct.pc1_ctx, %struct.pc1_ctx* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.pc1_ctx*, %struct.pc1_ctx** %2, align 8
  %32 = getelementptr inbounds %struct.pc1_ctx, %struct.pc1_ctx* %31, i32 0, i32 7
  store i32 %30, i32* %32, align 8
  %33 = load %struct.pc1_ctx*, %struct.pc1_ctx** %2, align 8
  %34 = getelementptr inbounds %struct.pc1_ctx, %struct.pc1_ctx* %33, i32 0, i32 8
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.pc1_ctx*, %struct.pc1_ctx** %2, align 8
  %37 = getelementptr inbounds %struct.pc1_ctx, %struct.pc1_ctx* %36, i32 0, i32 3
  store i32 %35, i32* %37, align 8
  %38 = load %struct.pc1_ctx*, %struct.pc1_ctx** %2, align 8
  %39 = getelementptr inbounds %struct.pc1_ctx, %struct.pc1_ctx* %38, i32 0, i32 7
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.pc1_ctx*, %struct.pc1_ctx** %2, align 8
  %42 = getelementptr inbounds %struct.pc1_ctx, %struct.pc1_ctx* %41, i32 0, i32 8
  store i32 %40, i32* %42, align 4
  %43 = load %struct.pc1_ctx*, %struct.pc1_ctx** %2, align 8
  %44 = getelementptr inbounds %struct.pc1_ctx, %struct.pc1_ctx* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.pc1_ctx*, %struct.pc1_ctx** %2, align 8
  %47 = getelementptr inbounds %struct.pc1_ctx, %struct.pc1_ctx* %46, i32 0, i32 7
  store i32 %45, i32* %47, align 8
  %48 = load %struct.pc1_ctx*, %struct.pc1_ctx** %2, align 8
  %49 = getelementptr inbounds %struct.pc1_ctx, %struct.pc1_ctx* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.pc1_ctx*, %struct.pc1_ctx** %2, align 8
  %52 = getelementptr inbounds %struct.pc1_ctx, %struct.pc1_ctx* %51, i32 0, i32 3
  store i32 %50, i32* %52, align 8
  %53 = load %struct.pc1_ctx*, %struct.pc1_ctx** %2, align 8
  %54 = getelementptr inbounds %struct.pc1_ctx, %struct.pc1_ctx* %53, i32 0, i32 7
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.pc1_ctx*, %struct.pc1_ctx** %2, align 8
  %57 = getelementptr inbounds %struct.pc1_ctx, %struct.pc1_ctx* %56, i32 0, i32 0
  store i32 %55, i32* %57, align 8
  %58 = load %struct.pc1_ctx*, %struct.pc1_ctx** %2, align 8
  %59 = getelementptr inbounds %struct.pc1_ctx, %struct.pc1_ctx* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 8
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %72

62:                                               ; preds = %1
  %63 = load %struct.pc1_ctx*, %struct.pc1_ctx** %2, align 8
  %64 = getelementptr inbounds %struct.pc1_ctx, %struct.pc1_ctx* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.pc1_ctx*, %struct.pc1_ctx** %2, align 8
  %67 = getelementptr inbounds %struct.pc1_ctx, %struct.pc1_ctx* %66, i32 0, i32 6
  %68 = load i32, i32* %67, align 4
  %69 = mul nsw i32 %65, %68
  %70 = load %struct.pc1_ctx*, %struct.pc1_ctx** %2, align 8
  %71 = getelementptr inbounds %struct.pc1_ctx, %struct.pc1_ctx* %70, i32 0, i32 3
  store i32 %69, i32* %71, align 8
  br label %72

72:                                               ; preds = %62, %1
  %73 = load %struct.pc1_ctx*, %struct.pc1_ctx** %2, align 8
  %74 = getelementptr inbounds %struct.pc1_ctx, %struct.pc1_ctx* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.pc1_ctx*, %struct.pc1_ctx** %2, align 8
  %77 = getelementptr inbounds %struct.pc1_ctx, %struct.pc1_ctx* %76, i32 0, i32 7
  store i32 %75, i32* %77, align 8
  %78 = load %struct.pc1_ctx*, %struct.pc1_ctx** %2, align 8
  %79 = getelementptr inbounds %struct.pc1_ctx, %struct.pc1_ctx* %78, i32 0, i32 5
  %80 = load i32, i32* %79, align 8
  %81 = load %struct.pc1_ctx*, %struct.pc1_ctx** %2, align 8
  %82 = getelementptr inbounds %struct.pc1_ctx, %struct.pc1_ctx* %81, i32 0, i32 3
  store i32 %80, i32* %82, align 8
  %83 = load %struct.pc1_ctx*, %struct.pc1_ctx** %2, align 8
  %84 = getelementptr inbounds %struct.pc1_ctx, %struct.pc1_ctx* %83, i32 0, i32 7
  %85 = load i32, i32* %84, align 8
  %86 = load %struct.pc1_ctx*, %struct.pc1_ctx** %2, align 8
  %87 = getelementptr inbounds %struct.pc1_ctx, %struct.pc1_ctx* %86, i32 0, i32 5
  store i32 %85, i32* %87, align 8
  %88 = load %struct.pc1_ctx*, %struct.pc1_ctx** %2, align 8
  %89 = getelementptr inbounds %struct.pc1_ctx, %struct.pc1_ctx* %88, i32 0, i32 3
  %90 = load i32, i32* %89, align 8
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %111

92:                                               ; preds = %72
  %93 = load %struct.pc1_ctx*, %struct.pc1_ctx** %2, align 8
  %94 = getelementptr inbounds %struct.pc1_ctx, %struct.pc1_ctx* %93, i32 0, i32 3
  %95 = load i32, i32* %94, align 8
  %96 = load %struct.pc1_ctx*, %struct.pc1_ctx** %2, align 8
  %97 = getelementptr inbounds %struct.pc1_ctx, %struct.pc1_ctx* %96, i32 0, i32 8
  %98 = load i32, i32* %97, align 4
  %99 = mul nsw i32 %95, %98
  %100 = load %struct.pc1_ctx*, %struct.pc1_ctx** %2, align 8
  %101 = getelementptr inbounds %struct.pc1_ctx, %struct.pc1_ctx* %100, i32 0, i32 3
  store i32 %99, i32* %101, align 8
  %102 = load %struct.pc1_ctx*, %struct.pc1_ctx** %2, align 8
  %103 = getelementptr inbounds %struct.pc1_ctx, %struct.pc1_ctx* %102, i32 0, i32 3
  %104 = load i32, i32* %103, align 8
  %105 = load %struct.pc1_ctx*, %struct.pc1_ctx** %2, align 8
  %106 = getelementptr inbounds %struct.pc1_ctx, %struct.pc1_ctx* %105, i32 0, i32 5
  %107 = load i32, i32* %106, align 8
  %108 = add nsw i32 %104, %107
  %109 = load %struct.pc1_ctx*, %struct.pc1_ctx** %2, align 8
  %110 = getelementptr inbounds %struct.pc1_ctx, %struct.pc1_ctx* %109, i32 0, i32 5
  store i32 %108, i32* %110, align 8
  br label %111

111:                                              ; preds = %92, %72
  %112 = load %struct.pc1_ctx*, %struct.pc1_ctx** %2, align 8
  %113 = getelementptr inbounds %struct.pc1_ctx, %struct.pc1_ctx* %112, i32 0, i32 3
  %114 = load i32, i32* %113, align 8
  %115 = load %struct.pc1_ctx*, %struct.pc1_ctx** %2, align 8
  %116 = getelementptr inbounds %struct.pc1_ctx, %struct.pc1_ctx* %115, i32 0, i32 7
  store i32 %114, i32* %116, align 8
  %117 = load %struct.pc1_ctx*, %struct.pc1_ctx** %2, align 8
  %118 = getelementptr inbounds %struct.pc1_ctx, %struct.pc1_ctx* %117, i32 0, i32 8
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.pc1_ctx*, %struct.pc1_ctx** %2, align 8
  %121 = getelementptr inbounds %struct.pc1_ctx, %struct.pc1_ctx* %120, i32 0, i32 3
  store i32 %119, i32* %121, align 8
  %122 = load %struct.pc1_ctx*, %struct.pc1_ctx** %2, align 8
  %123 = getelementptr inbounds %struct.pc1_ctx, %struct.pc1_ctx* %122, i32 0, i32 7
  %124 = load i32, i32* %123, align 8
  %125 = load %struct.pc1_ctx*, %struct.pc1_ctx** %2, align 8
  %126 = getelementptr inbounds %struct.pc1_ctx, %struct.pc1_ctx* %125, i32 0, i32 8
  store i32 %124, i32* %126, align 4
  %127 = load %struct.pc1_ctx*, %struct.pc1_ctx** %2, align 8
  %128 = getelementptr inbounds %struct.pc1_ctx, %struct.pc1_ctx* %127, i32 0, i32 3
  %129 = load i32, i32* %128, align 8
  %130 = load %struct.pc1_ctx*, %struct.pc1_ctx** %2, align 8
  %131 = getelementptr inbounds %struct.pc1_ctx, %struct.pc1_ctx* %130, i32 0, i32 6
  %132 = load i32, i32* %131, align 4
  %133 = mul nsw i32 %129, %132
  %134 = load %struct.pc1_ctx*, %struct.pc1_ctx** %2, align 8
  %135 = getelementptr inbounds %struct.pc1_ctx, %struct.pc1_ctx* %134, i32 0, i32 3
  store i32 %133, i32* %135, align 8
  %136 = load %struct.pc1_ctx*, %struct.pc1_ctx** %2, align 8
  %137 = getelementptr inbounds %struct.pc1_ctx, %struct.pc1_ctx* %136, i32 0, i32 5
  %138 = load i32, i32* %137, align 8
  %139 = load %struct.pc1_ctx*, %struct.pc1_ctx** %2, align 8
  %140 = getelementptr inbounds %struct.pc1_ctx, %struct.pc1_ctx* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = add nsw i32 %138, %141
  %143 = load %struct.pc1_ctx*, %struct.pc1_ctx** %2, align 8
  %144 = getelementptr inbounds %struct.pc1_ctx, %struct.pc1_ctx* %143, i32 0, i32 0
  store i32 %142, i32* %144, align 8
  %145 = load %struct.pc1_ctx*, %struct.pc1_ctx** %2, align 8
  %146 = getelementptr inbounds %struct.pc1_ctx, %struct.pc1_ctx* %145, i32 0, i32 3
  %147 = load i32, i32* %146, align 8
  %148 = add nsw i32 %147, 1
  %149 = load %struct.pc1_ctx*, %struct.pc1_ctx** %2, align 8
  %150 = getelementptr inbounds %struct.pc1_ctx, %struct.pc1_ctx* %149, i32 0, i32 3
  store i32 %148, i32* %150, align 8
  %151 = load %struct.pc1_ctx*, %struct.pc1_ctx** %2, align 8
  %152 = getelementptr inbounds %struct.pc1_ctx, %struct.pc1_ctx* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = load %struct.pc1_ctx*, %struct.pc1_ctx** %2, align 8
  %155 = getelementptr inbounds %struct.pc1_ctx, %struct.pc1_ctx* %154, i32 0, i32 1
  store i32 %153, i32* %155, align 4
  %156 = load %struct.pc1_ctx*, %struct.pc1_ctx** %2, align 8
  %157 = getelementptr inbounds %struct.pc1_ctx, %struct.pc1_ctx* %156, i32 0, i32 3
  %158 = load i32, i32* %157, align 8
  %159 = load %struct.pc1_ctx*, %struct.pc1_ctx** %2, align 8
  %160 = getelementptr inbounds %struct.pc1_ctx, %struct.pc1_ctx* %159, i32 0, i32 4
  %161 = load i32*, i32** %160, align 8
  %162 = load %struct.pc1_ctx*, %struct.pc1_ctx** %2, align 8
  %163 = getelementptr inbounds %struct.pc1_ctx, %struct.pc1_ctx* %162, i32 0, i32 2
  %164 = load i64, i64* %163, align 8
  %165 = getelementptr inbounds i32, i32* %161, i64 %164
  store i32 %158, i32* %165, align 4
  %166 = load %struct.pc1_ctx*, %struct.pc1_ctx** %2, align 8
  %167 = getelementptr inbounds %struct.pc1_ctx, %struct.pc1_ctx* %166, i32 0, i32 3
  %168 = load i32, i32* %167, align 8
  %169 = load %struct.pc1_ctx*, %struct.pc1_ctx** %2, align 8
  %170 = getelementptr inbounds %struct.pc1_ctx, %struct.pc1_ctx* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 8
  %172 = xor i32 %168, %171
  %173 = load %struct.pc1_ctx*, %struct.pc1_ctx** %2, align 8
  %174 = getelementptr inbounds %struct.pc1_ctx, %struct.pc1_ctx* %173, i32 0, i32 9
  store i32 %172, i32* %174, align 8
  %175 = load %struct.pc1_ctx*, %struct.pc1_ctx** %2, align 8
  %176 = getelementptr inbounds %struct.pc1_ctx, %struct.pc1_ctx* %175, i32 0, i32 2
  %177 = load i64, i64* %176, align 8
  %178 = add i64 %177, 1
  %179 = load %struct.pc1_ctx*, %struct.pc1_ctx** %2, align 8
  %180 = getelementptr inbounds %struct.pc1_ctx, %struct.pc1_ctx* %179, i32 0, i32 2
  store i64 %178, i64* %180, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
