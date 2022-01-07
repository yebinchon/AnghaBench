; ModuleID = '/home/carl/AnghaBench/hashcat/deps/secp256k1/src/extr_scalar_8x32_impl.h_secp256k1_scalar_cadd_bit.c'
source_filename = "/home/carl/AnghaBench/hashcat/deps/secp256k1/src/extr_scalar_8x32_impl.h_secp256k1_scalar_cadd_bit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__*, i32, i32)* @secp256k1_scalar_cadd_bit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @secp256k1_scalar_cadd_bit(%struct.TYPE_4__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %5, align 4
  %9 = icmp ult i32 %8, 256
  %10 = zext i1 %9 to i32
  %11 = call i32 @VERIFY_CHECK(i32 %10)
  %12 = load i32, i32* %6, align 4
  %13 = sub nsw i32 %12, 1
  %14 = and i32 %13, 256
  %15 = load i32, i32* %5, align 4
  %16 = add i32 %15, %14
  store i32 %16, i32* %5, align 4
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* %5, align 4
  %23 = lshr i32 %22, 5
  %24 = icmp eq i32 %23, 0
  %25 = zext i1 %24 to i32
  %26 = load i32, i32* %5, align 4
  %27 = and i32 %26, 31
  %28 = shl i32 %25, %27
  %29 = add nsw i32 %21, %28
  store i32 %29, i32* %7, align 4
  %30 = load i32, i32* %7, align 4
  %31 = sext i32 %30 to i64
  %32 = and i64 %31, 4294967295
  %33 = trunc i64 %32 to i32
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 0
  store i32 %33, i32* %37, align 4
  %38 = load i32, i32* %7, align 4
  %39 = ashr i32 %38, 32
  store i32 %39, i32* %7, align 4
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 1
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* %5, align 4
  %46 = lshr i32 %45, 5
  %47 = icmp eq i32 %46, 1
  %48 = zext i1 %47 to i32
  %49 = load i32, i32* %5, align 4
  %50 = and i32 %49, 31
  %51 = shl i32 %48, %50
  %52 = add nsw i32 %44, %51
  %53 = load i32, i32* %7, align 4
  %54 = add nsw i32 %53, %52
  store i32 %54, i32* %7, align 4
  %55 = load i32, i32* %7, align 4
  %56 = sext i32 %55 to i64
  %57 = and i64 %56, 4294967295
  %58 = trunc i64 %57 to i32
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 1
  store i32 %58, i32* %62, align 4
  %63 = load i32, i32* %7, align 4
  %64 = ashr i32 %63, 32
  store i32 %64, i32* %7, align 4
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = load i32*, i32** %66, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 2
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* %5, align 4
  %71 = lshr i32 %70, 5
  %72 = icmp eq i32 %71, 2
  %73 = zext i1 %72 to i32
  %74 = load i32, i32* %5, align 4
  %75 = and i32 %74, 31
  %76 = shl i32 %73, %75
  %77 = add nsw i32 %69, %76
  %78 = load i32, i32* %7, align 4
  %79 = add nsw i32 %78, %77
  store i32 %79, i32* %7, align 4
  %80 = load i32, i32* %7, align 4
  %81 = sext i32 %80 to i64
  %82 = and i64 %81, 4294967295
  %83 = trunc i64 %82 to i32
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 0
  %86 = load i32*, i32** %85, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 2
  store i32 %83, i32* %87, align 4
  %88 = load i32, i32* %7, align 4
  %89 = ashr i32 %88, 32
  store i32 %89, i32* %7, align 4
  %90 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 0
  %92 = load i32*, i32** %91, align 8
  %93 = getelementptr inbounds i32, i32* %92, i64 3
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* %5, align 4
  %96 = lshr i32 %95, 5
  %97 = icmp eq i32 %96, 3
  %98 = zext i1 %97 to i32
  %99 = load i32, i32* %5, align 4
  %100 = and i32 %99, 31
  %101 = shl i32 %98, %100
  %102 = add nsw i32 %94, %101
  %103 = load i32, i32* %7, align 4
  %104 = add nsw i32 %103, %102
  store i32 %104, i32* %7, align 4
  %105 = load i32, i32* %7, align 4
  %106 = sext i32 %105 to i64
  %107 = and i64 %106, 4294967295
  %108 = trunc i64 %107 to i32
  %109 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 0
  %111 = load i32*, i32** %110, align 8
  %112 = getelementptr inbounds i32, i32* %111, i64 3
  store i32 %108, i32* %112, align 4
  %113 = load i32, i32* %7, align 4
  %114 = ashr i32 %113, 32
  store i32 %114, i32* %7, align 4
  %115 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i32 0, i32 0
  %117 = load i32*, i32** %116, align 8
  %118 = getelementptr inbounds i32, i32* %117, i64 4
  %119 = load i32, i32* %118, align 4
  %120 = load i32, i32* %5, align 4
  %121 = lshr i32 %120, 5
  %122 = icmp eq i32 %121, 4
  %123 = zext i1 %122 to i32
  %124 = load i32, i32* %5, align 4
  %125 = and i32 %124, 31
  %126 = shl i32 %123, %125
  %127 = add nsw i32 %119, %126
  %128 = load i32, i32* %7, align 4
  %129 = add nsw i32 %128, %127
  store i32 %129, i32* %7, align 4
  %130 = load i32, i32* %7, align 4
  %131 = sext i32 %130 to i64
  %132 = and i64 %131, 4294967295
  %133 = trunc i64 %132 to i32
  %134 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %135 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %134, i32 0, i32 0
  %136 = load i32*, i32** %135, align 8
  %137 = getelementptr inbounds i32, i32* %136, i64 4
  store i32 %133, i32* %137, align 4
  %138 = load i32, i32* %7, align 4
  %139 = ashr i32 %138, 32
  store i32 %139, i32* %7, align 4
  %140 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %141 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %140, i32 0, i32 0
  %142 = load i32*, i32** %141, align 8
  %143 = getelementptr inbounds i32, i32* %142, i64 5
  %144 = load i32, i32* %143, align 4
  %145 = load i32, i32* %5, align 4
  %146 = lshr i32 %145, 5
  %147 = icmp eq i32 %146, 5
  %148 = zext i1 %147 to i32
  %149 = load i32, i32* %5, align 4
  %150 = and i32 %149, 31
  %151 = shl i32 %148, %150
  %152 = add nsw i32 %144, %151
  %153 = load i32, i32* %7, align 4
  %154 = add nsw i32 %153, %152
  store i32 %154, i32* %7, align 4
  %155 = load i32, i32* %7, align 4
  %156 = sext i32 %155 to i64
  %157 = and i64 %156, 4294967295
  %158 = trunc i64 %157 to i32
  %159 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %160 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %159, i32 0, i32 0
  %161 = load i32*, i32** %160, align 8
  %162 = getelementptr inbounds i32, i32* %161, i64 5
  store i32 %158, i32* %162, align 4
  %163 = load i32, i32* %7, align 4
  %164 = ashr i32 %163, 32
  store i32 %164, i32* %7, align 4
  %165 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %166 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %165, i32 0, i32 0
  %167 = load i32*, i32** %166, align 8
  %168 = getelementptr inbounds i32, i32* %167, i64 6
  %169 = load i32, i32* %168, align 4
  %170 = load i32, i32* %5, align 4
  %171 = lshr i32 %170, 5
  %172 = icmp eq i32 %171, 6
  %173 = zext i1 %172 to i32
  %174 = load i32, i32* %5, align 4
  %175 = and i32 %174, 31
  %176 = shl i32 %173, %175
  %177 = add nsw i32 %169, %176
  %178 = load i32, i32* %7, align 4
  %179 = add nsw i32 %178, %177
  store i32 %179, i32* %7, align 4
  %180 = load i32, i32* %7, align 4
  %181 = sext i32 %180 to i64
  %182 = and i64 %181, 4294967295
  %183 = trunc i64 %182 to i32
  %184 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %185 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %184, i32 0, i32 0
  %186 = load i32*, i32** %185, align 8
  %187 = getelementptr inbounds i32, i32* %186, i64 6
  store i32 %183, i32* %187, align 4
  %188 = load i32, i32* %7, align 4
  %189 = ashr i32 %188, 32
  store i32 %189, i32* %7, align 4
  %190 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %191 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %190, i32 0, i32 0
  %192 = load i32*, i32** %191, align 8
  %193 = getelementptr inbounds i32, i32* %192, i64 7
  %194 = load i32, i32* %193, align 4
  %195 = load i32, i32* %5, align 4
  %196 = lshr i32 %195, 5
  %197 = icmp eq i32 %196, 7
  %198 = zext i1 %197 to i32
  %199 = load i32, i32* %5, align 4
  %200 = and i32 %199, 31
  %201 = shl i32 %198, %200
  %202 = add nsw i32 %194, %201
  %203 = load i32, i32* %7, align 4
  %204 = add nsw i32 %203, %202
  store i32 %204, i32* %7, align 4
  %205 = load i32, i32* %7, align 4
  %206 = sext i32 %205 to i64
  %207 = and i64 %206, 4294967295
  %208 = trunc i64 %207 to i32
  %209 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %210 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %209, i32 0, i32 0
  %211 = load i32*, i32** %210, align 8
  %212 = getelementptr inbounds i32, i32* %211, i64 7
  store i32 %208, i32* %212, align 4
  ret void
}

declare dso_local i32 @VERIFY_CHECK(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
