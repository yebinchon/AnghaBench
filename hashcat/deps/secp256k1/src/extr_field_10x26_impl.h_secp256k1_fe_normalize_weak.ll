; ModuleID = '/home/carl/AnghaBench/hashcat/deps/secp256k1/src/extr_field_10x26_impl.h_secp256k1_fe_normalize_weak.c'
source_filename = "/home/carl/AnghaBench/hashcat/deps/secp256k1/src/extr_field_10x26_impl.h_secp256k1_fe_normalize_weak.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__*)* @secp256k1_fe_normalize_weak to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @secp256k1_fe_normalize_weak(%struct.TYPE_4__* %0) #0 {
  %2 = alloca %struct.TYPE_4__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %2, align 8
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %3, align 4
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 1
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %4, align 4
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 2
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %5, align 4
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 3
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %6, align 4
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 4
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %7, align 4
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 5
  %43 = load i32, i32* %42, align 4
  store i32 %43, i32* %8, align 4
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 6
  %48 = load i32, i32* %47, align 4
  store i32 %48, i32* %9, align 4
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 7
  %53 = load i32, i32* %52, align 4
  store i32 %53, i32* %10, align 4
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 8
  %58 = load i32, i32* %57, align 4
  store i32 %58, i32* %11, align 4
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 9
  %63 = load i32, i32* %62, align 4
  store i32 %63, i32* %12, align 4
  %64 = load i32, i32* %12, align 4
  %65 = ashr i32 %64, 22
  store i32 %65, i32* %13, align 4
  %66 = load i32, i32* %12, align 4
  %67 = sext i32 %66 to i64
  %68 = and i64 %67, 4194303
  %69 = trunc i64 %68 to i32
  store i32 %69, i32* %12, align 4
  %70 = load i32, i32* %13, align 4
  %71 = sext i32 %70 to i64
  %72 = mul i64 %71, 977
  %73 = load i32, i32* %3, align 4
  %74 = sext i32 %73 to i64
  %75 = add i64 %74, %72
  %76 = trunc i64 %75 to i32
  store i32 %76, i32* %3, align 4
  %77 = load i32, i32* %13, align 4
  %78 = shl i32 %77, 6
  %79 = load i32, i32* %4, align 4
  %80 = add nsw i32 %79, %78
  store i32 %80, i32* %4, align 4
  %81 = load i32, i32* %3, align 4
  %82 = ashr i32 %81, 26
  %83 = load i32, i32* %4, align 4
  %84 = add nsw i32 %83, %82
  store i32 %84, i32* %4, align 4
  %85 = load i32, i32* %3, align 4
  %86 = sext i32 %85 to i64
  %87 = and i64 %86, 67108863
  %88 = trunc i64 %87 to i32
  store i32 %88, i32* %3, align 4
  %89 = load i32, i32* %4, align 4
  %90 = ashr i32 %89, 26
  %91 = load i32, i32* %5, align 4
  %92 = add nsw i32 %91, %90
  store i32 %92, i32* %5, align 4
  %93 = load i32, i32* %4, align 4
  %94 = sext i32 %93 to i64
  %95 = and i64 %94, 67108863
  %96 = trunc i64 %95 to i32
  store i32 %96, i32* %4, align 4
  %97 = load i32, i32* %5, align 4
  %98 = ashr i32 %97, 26
  %99 = load i32, i32* %6, align 4
  %100 = add nsw i32 %99, %98
  store i32 %100, i32* %6, align 4
  %101 = load i32, i32* %5, align 4
  %102 = sext i32 %101 to i64
  %103 = and i64 %102, 67108863
  %104 = trunc i64 %103 to i32
  store i32 %104, i32* %5, align 4
  %105 = load i32, i32* %6, align 4
  %106 = ashr i32 %105, 26
  %107 = load i32, i32* %7, align 4
  %108 = add nsw i32 %107, %106
  store i32 %108, i32* %7, align 4
  %109 = load i32, i32* %6, align 4
  %110 = sext i32 %109 to i64
  %111 = and i64 %110, 67108863
  %112 = trunc i64 %111 to i32
  store i32 %112, i32* %6, align 4
  %113 = load i32, i32* %7, align 4
  %114 = ashr i32 %113, 26
  %115 = load i32, i32* %8, align 4
  %116 = add nsw i32 %115, %114
  store i32 %116, i32* %8, align 4
  %117 = load i32, i32* %7, align 4
  %118 = sext i32 %117 to i64
  %119 = and i64 %118, 67108863
  %120 = trunc i64 %119 to i32
  store i32 %120, i32* %7, align 4
  %121 = load i32, i32* %8, align 4
  %122 = ashr i32 %121, 26
  %123 = load i32, i32* %9, align 4
  %124 = add nsw i32 %123, %122
  store i32 %124, i32* %9, align 4
  %125 = load i32, i32* %8, align 4
  %126 = sext i32 %125 to i64
  %127 = and i64 %126, 67108863
  %128 = trunc i64 %127 to i32
  store i32 %128, i32* %8, align 4
  %129 = load i32, i32* %9, align 4
  %130 = ashr i32 %129, 26
  %131 = load i32, i32* %10, align 4
  %132 = add nsw i32 %131, %130
  store i32 %132, i32* %10, align 4
  %133 = load i32, i32* %9, align 4
  %134 = sext i32 %133 to i64
  %135 = and i64 %134, 67108863
  %136 = trunc i64 %135 to i32
  store i32 %136, i32* %9, align 4
  %137 = load i32, i32* %10, align 4
  %138 = ashr i32 %137, 26
  %139 = load i32, i32* %11, align 4
  %140 = add nsw i32 %139, %138
  store i32 %140, i32* %11, align 4
  %141 = load i32, i32* %10, align 4
  %142 = sext i32 %141 to i64
  %143 = and i64 %142, 67108863
  %144 = trunc i64 %143 to i32
  store i32 %144, i32* %10, align 4
  %145 = load i32, i32* %11, align 4
  %146 = ashr i32 %145, 26
  %147 = load i32, i32* %12, align 4
  %148 = add nsw i32 %147, %146
  store i32 %148, i32* %12, align 4
  %149 = load i32, i32* %11, align 4
  %150 = sext i32 %149 to i64
  %151 = and i64 %150, 67108863
  %152 = trunc i64 %151 to i32
  store i32 %152, i32* %11, align 4
  %153 = load i32, i32* %12, align 4
  %154 = ashr i32 %153, 23
  %155 = icmp eq i32 %154, 0
  %156 = zext i1 %155 to i32
  %157 = call i32 @VERIFY_CHECK(i32 %156)
  %158 = load i32, i32* %3, align 4
  %159 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %160 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %159, i32 0, i32 0
  %161 = load i32*, i32** %160, align 8
  %162 = getelementptr inbounds i32, i32* %161, i64 0
  store i32 %158, i32* %162, align 4
  %163 = load i32, i32* %4, align 4
  %164 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %165 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %164, i32 0, i32 0
  %166 = load i32*, i32** %165, align 8
  %167 = getelementptr inbounds i32, i32* %166, i64 1
  store i32 %163, i32* %167, align 4
  %168 = load i32, i32* %5, align 4
  %169 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %170 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %169, i32 0, i32 0
  %171 = load i32*, i32** %170, align 8
  %172 = getelementptr inbounds i32, i32* %171, i64 2
  store i32 %168, i32* %172, align 4
  %173 = load i32, i32* %6, align 4
  %174 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %175 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %174, i32 0, i32 0
  %176 = load i32*, i32** %175, align 8
  %177 = getelementptr inbounds i32, i32* %176, i64 3
  store i32 %173, i32* %177, align 4
  %178 = load i32, i32* %7, align 4
  %179 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %180 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %179, i32 0, i32 0
  %181 = load i32*, i32** %180, align 8
  %182 = getelementptr inbounds i32, i32* %181, i64 4
  store i32 %178, i32* %182, align 4
  %183 = load i32, i32* %8, align 4
  %184 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %185 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %184, i32 0, i32 0
  %186 = load i32*, i32** %185, align 8
  %187 = getelementptr inbounds i32, i32* %186, i64 5
  store i32 %183, i32* %187, align 4
  %188 = load i32, i32* %9, align 4
  %189 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %190 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %189, i32 0, i32 0
  %191 = load i32*, i32** %190, align 8
  %192 = getelementptr inbounds i32, i32* %191, i64 6
  store i32 %188, i32* %192, align 4
  %193 = load i32, i32* %10, align 4
  %194 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %195 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %194, i32 0, i32 0
  %196 = load i32*, i32** %195, align 8
  %197 = getelementptr inbounds i32, i32* %196, i64 7
  store i32 %193, i32* %197, align 4
  %198 = load i32, i32* %11, align 4
  %199 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %200 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %199, i32 0, i32 0
  %201 = load i32*, i32** %200, align 8
  %202 = getelementptr inbounds i32, i32* %201, i64 8
  store i32 %198, i32* %202, align 4
  %203 = load i32, i32* %12, align 4
  %204 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %205 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %204, i32 0, i32 0
  %206 = load i32*, i32** %205, align 8
  %207 = getelementptr inbounds i32, i32* %206, i64 9
  store i32 %203, i32* %207, align 4
  ret void
}

declare dso_local i32 @VERIFY_CHECK(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
