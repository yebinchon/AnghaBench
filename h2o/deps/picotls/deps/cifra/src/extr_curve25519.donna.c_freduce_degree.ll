; ModuleID = '/home/carl/AnghaBench/h2o/deps/picotls/deps/cifra/src/extr_curve25519.donna.c_freduce_degree.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/picotls/deps/cifra/src/extr_curve25519.donna.c_freduce_degree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @freduce_degree to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @freduce_degree(i32* %0) #0 {
  %2 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %3 = load i32*, i32** %2, align 8
  %4 = getelementptr inbounds i32, i32* %3, i64 18
  %5 = load i32, i32* %4, align 4
  %6 = shl i32 %5, 4
  %7 = load i32*, i32** %2, align 8
  %8 = getelementptr inbounds i32, i32* %7, i64 8
  %9 = load i32, i32* %8, align 4
  %10 = add nsw i32 %9, %6
  store i32 %10, i32* %8, align 4
  %11 = load i32*, i32** %2, align 8
  %12 = getelementptr inbounds i32, i32* %11, i64 18
  %13 = load i32, i32* %12, align 4
  %14 = shl i32 %13, 1
  %15 = load i32*, i32** %2, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 8
  %17 = load i32, i32* %16, align 4
  %18 = add nsw i32 %17, %14
  store i32 %18, i32* %16, align 4
  %19 = load i32*, i32** %2, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 18
  %21 = load i32, i32* %20, align 4
  %22 = load i32*, i32** %2, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 8
  %24 = load i32, i32* %23, align 4
  %25 = add nsw i32 %24, %21
  store i32 %25, i32* %23, align 4
  %26 = load i32*, i32** %2, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 17
  %28 = load i32, i32* %27, align 4
  %29 = shl i32 %28, 4
  %30 = load i32*, i32** %2, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 7
  %32 = load i32, i32* %31, align 4
  %33 = add nsw i32 %32, %29
  store i32 %33, i32* %31, align 4
  %34 = load i32*, i32** %2, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 17
  %36 = load i32, i32* %35, align 4
  %37 = shl i32 %36, 1
  %38 = load i32*, i32** %2, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 7
  %40 = load i32, i32* %39, align 4
  %41 = add nsw i32 %40, %37
  store i32 %41, i32* %39, align 4
  %42 = load i32*, i32** %2, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 17
  %44 = load i32, i32* %43, align 4
  %45 = load i32*, i32** %2, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 7
  %47 = load i32, i32* %46, align 4
  %48 = add nsw i32 %47, %44
  store i32 %48, i32* %46, align 4
  %49 = load i32*, i32** %2, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 16
  %51 = load i32, i32* %50, align 4
  %52 = shl i32 %51, 4
  %53 = load i32*, i32** %2, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 6
  %55 = load i32, i32* %54, align 4
  %56 = add nsw i32 %55, %52
  store i32 %56, i32* %54, align 4
  %57 = load i32*, i32** %2, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 16
  %59 = load i32, i32* %58, align 4
  %60 = shl i32 %59, 1
  %61 = load i32*, i32** %2, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 6
  %63 = load i32, i32* %62, align 4
  %64 = add nsw i32 %63, %60
  store i32 %64, i32* %62, align 4
  %65 = load i32*, i32** %2, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 16
  %67 = load i32, i32* %66, align 4
  %68 = load i32*, i32** %2, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 6
  %70 = load i32, i32* %69, align 4
  %71 = add nsw i32 %70, %67
  store i32 %71, i32* %69, align 4
  %72 = load i32*, i32** %2, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 15
  %74 = load i32, i32* %73, align 4
  %75 = shl i32 %74, 4
  %76 = load i32*, i32** %2, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 5
  %78 = load i32, i32* %77, align 4
  %79 = add nsw i32 %78, %75
  store i32 %79, i32* %77, align 4
  %80 = load i32*, i32** %2, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 15
  %82 = load i32, i32* %81, align 4
  %83 = shl i32 %82, 1
  %84 = load i32*, i32** %2, align 8
  %85 = getelementptr inbounds i32, i32* %84, i64 5
  %86 = load i32, i32* %85, align 4
  %87 = add nsw i32 %86, %83
  store i32 %87, i32* %85, align 4
  %88 = load i32*, i32** %2, align 8
  %89 = getelementptr inbounds i32, i32* %88, i64 15
  %90 = load i32, i32* %89, align 4
  %91 = load i32*, i32** %2, align 8
  %92 = getelementptr inbounds i32, i32* %91, i64 5
  %93 = load i32, i32* %92, align 4
  %94 = add nsw i32 %93, %90
  store i32 %94, i32* %92, align 4
  %95 = load i32*, i32** %2, align 8
  %96 = getelementptr inbounds i32, i32* %95, i64 14
  %97 = load i32, i32* %96, align 4
  %98 = shl i32 %97, 4
  %99 = load i32*, i32** %2, align 8
  %100 = getelementptr inbounds i32, i32* %99, i64 4
  %101 = load i32, i32* %100, align 4
  %102 = add nsw i32 %101, %98
  store i32 %102, i32* %100, align 4
  %103 = load i32*, i32** %2, align 8
  %104 = getelementptr inbounds i32, i32* %103, i64 14
  %105 = load i32, i32* %104, align 4
  %106 = shl i32 %105, 1
  %107 = load i32*, i32** %2, align 8
  %108 = getelementptr inbounds i32, i32* %107, i64 4
  %109 = load i32, i32* %108, align 4
  %110 = add nsw i32 %109, %106
  store i32 %110, i32* %108, align 4
  %111 = load i32*, i32** %2, align 8
  %112 = getelementptr inbounds i32, i32* %111, i64 14
  %113 = load i32, i32* %112, align 4
  %114 = load i32*, i32** %2, align 8
  %115 = getelementptr inbounds i32, i32* %114, i64 4
  %116 = load i32, i32* %115, align 4
  %117 = add nsw i32 %116, %113
  store i32 %117, i32* %115, align 4
  %118 = load i32*, i32** %2, align 8
  %119 = getelementptr inbounds i32, i32* %118, i64 13
  %120 = load i32, i32* %119, align 4
  %121 = shl i32 %120, 4
  %122 = load i32*, i32** %2, align 8
  %123 = getelementptr inbounds i32, i32* %122, i64 3
  %124 = load i32, i32* %123, align 4
  %125 = add nsw i32 %124, %121
  store i32 %125, i32* %123, align 4
  %126 = load i32*, i32** %2, align 8
  %127 = getelementptr inbounds i32, i32* %126, i64 13
  %128 = load i32, i32* %127, align 4
  %129 = shl i32 %128, 1
  %130 = load i32*, i32** %2, align 8
  %131 = getelementptr inbounds i32, i32* %130, i64 3
  %132 = load i32, i32* %131, align 4
  %133 = add nsw i32 %132, %129
  store i32 %133, i32* %131, align 4
  %134 = load i32*, i32** %2, align 8
  %135 = getelementptr inbounds i32, i32* %134, i64 13
  %136 = load i32, i32* %135, align 4
  %137 = load i32*, i32** %2, align 8
  %138 = getelementptr inbounds i32, i32* %137, i64 3
  %139 = load i32, i32* %138, align 4
  %140 = add nsw i32 %139, %136
  store i32 %140, i32* %138, align 4
  %141 = load i32*, i32** %2, align 8
  %142 = getelementptr inbounds i32, i32* %141, i64 12
  %143 = load i32, i32* %142, align 4
  %144 = shl i32 %143, 4
  %145 = load i32*, i32** %2, align 8
  %146 = getelementptr inbounds i32, i32* %145, i64 2
  %147 = load i32, i32* %146, align 4
  %148 = add nsw i32 %147, %144
  store i32 %148, i32* %146, align 4
  %149 = load i32*, i32** %2, align 8
  %150 = getelementptr inbounds i32, i32* %149, i64 12
  %151 = load i32, i32* %150, align 4
  %152 = shl i32 %151, 1
  %153 = load i32*, i32** %2, align 8
  %154 = getelementptr inbounds i32, i32* %153, i64 2
  %155 = load i32, i32* %154, align 4
  %156 = add nsw i32 %155, %152
  store i32 %156, i32* %154, align 4
  %157 = load i32*, i32** %2, align 8
  %158 = getelementptr inbounds i32, i32* %157, i64 12
  %159 = load i32, i32* %158, align 4
  %160 = load i32*, i32** %2, align 8
  %161 = getelementptr inbounds i32, i32* %160, i64 2
  %162 = load i32, i32* %161, align 4
  %163 = add nsw i32 %162, %159
  store i32 %163, i32* %161, align 4
  %164 = load i32*, i32** %2, align 8
  %165 = getelementptr inbounds i32, i32* %164, i64 11
  %166 = load i32, i32* %165, align 4
  %167 = shl i32 %166, 4
  %168 = load i32*, i32** %2, align 8
  %169 = getelementptr inbounds i32, i32* %168, i64 1
  %170 = load i32, i32* %169, align 4
  %171 = add nsw i32 %170, %167
  store i32 %171, i32* %169, align 4
  %172 = load i32*, i32** %2, align 8
  %173 = getelementptr inbounds i32, i32* %172, i64 11
  %174 = load i32, i32* %173, align 4
  %175 = shl i32 %174, 1
  %176 = load i32*, i32** %2, align 8
  %177 = getelementptr inbounds i32, i32* %176, i64 1
  %178 = load i32, i32* %177, align 4
  %179 = add nsw i32 %178, %175
  store i32 %179, i32* %177, align 4
  %180 = load i32*, i32** %2, align 8
  %181 = getelementptr inbounds i32, i32* %180, i64 11
  %182 = load i32, i32* %181, align 4
  %183 = load i32*, i32** %2, align 8
  %184 = getelementptr inbounds i32, i32* %183, i64 1
  %185 = load i32, i32* %184, align 4
  %186 = add nsw i32 %185, %182
  store i32 %186, i32* %184, align 4
  %187 = load i32*, i32** %2, align 8
  %188 = getelementptr inbounds i32, i32* %187, i64 10
  %189 = load i32, i32* %188, align 4
  %190 = shl i32 %189, 4
  %191 = load i32*, i32** %2, align 8
  %192 = getelementptr inbounds i32, i32* %191, i64 0
  %193 = load i32, i32* %192, align 4
  %194 = add nsw i32 %193, %190
  store i32 %194, i32* %192, align 4
  %195 = load i32*, i32** %2, align 8
  %196 = getelementptr inbounds i32, i32* %195, i64 10
  %197 = load i32, i32* %196, align 4
  %198 = shl i32 %197, 1
  %199 = load i32*, i32** %2, align 8
  %200 = getelementptr inbounds i32, i32* %199, i64 0
  %201 = load i32, i32* %200, align 4
  %202 = add nsw i32 %201, %198
  store i32 %202, i32* %200, align 4
  %203 = load i32*, i32** %2, align 8
  %204 = getelementptr inbounds i32, i32* %203, i64 10
  %205 = load i32, i32* %204, align 4
  %206 = load i32*, i32** %2, align 8
  %207 = getelementptr inbounds i32, i32* %206, i64 0
  %208 = load i32, i32* %207, align 4
  %209 = add nsw i32 %208, %205
  store i32 %209, i32* %207, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
