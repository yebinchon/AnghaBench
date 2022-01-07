; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_poly1305_generic.c_poly1305_core_emit.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_poly1305_generic.c_poly1305_core_emit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.poly1305_state = type { i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @poly1305_core_emit(%struct.poly1305_state* %0, i8* %1) #0 {
  %3 = alloca %struct.poly1305_state*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.poly1305_state* %0, %struct.poly1305_state** %3, align 8
  store i8* %1, i8** %4, align 8
  %16 = load %struct.poly1305_state*, %struct.poly1305_state** %3, align 8
  %17 = getelementptr inbounds %struct.poly1305_state, %struct.poly1305_state* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %5, align 4
  %21 = load %struct.poly1305_state*, %struct.poly1305_state** %3, align 8
  %22 = getelementptr inbounds %struct.poly1305_state, %struct.poly1305_state* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 1
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %6, align 4
  %26 = load %struct.poly1305_state*, %struct.poly1305_state** %3, align 8
  %27 = getelementptr inbounds %struct.poly1305_state, %struct.poly1305_state* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 2
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %7, align 4
  %31 = load %struct.poly1305_state*, %struct.poly1305_state** %3, align 8
  %32 = getelementptr inbounds %struct.poly1305_state, %struct.poly1305_state* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 3
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %8, align 4
  %36 = load %struct.poly1305_state*, %struct.poly1305_state** %3, align 8
  %37 = getelementptr inbounds %struct.poly1305_state, %struct.poly1305_state* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 4
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %9, align 4
  %41 = load i32, i32* %6, align 4
  %42 = ashr i32 %41, 26
  %43 = load i32, i32* %7, align 4
  %44 = add nsw i32 %43, %42
  store i32 %44, i32* %7, align 4
  %45 = load i32, i32* %6, align 4
  %46 = and i32 %45, 67108863
  store i32 %46, i32* %6, align 4
  %47 = load i32, i32* %7, align 4
  %48 = ashr i32 %47, 26
  %49 = load i32, i32* %8, align 4
  %50 = add nsw i32 %49, %48
  store i32 %50, i32* %8, align 4
  %51 = load i32, i32* %7, align 4
  %52 = and i32 %51, 67108863
  store i32 %52, i32* %7, align 4
  %53 = load i32, i32* %8, align 4
  %54 = ashr i32 %53, 26
  %55 = load i32, i32* %9, align 4
  %56 = add nsw i32 %55, %54
  store i32 %56, i32* %9, align 4
  %57 = load i32, i32* %8, align 4
  %58 = and i32 %57, 67108863
  store i32 %58, i32* %8, align 4
  %59 = load i32, i32* %9, align 4
  %60 = ashr i32 %59, 26
  %61 = mul nsw i32 %60, 5
  %62 = load i32, i32* %5, align 4
  %63 = add nsw i32 %62, %61
  store i32 %63, i32* %5, align 4
  %64 = load i32, i32* %9, align 4
  %65 = and i32 %64, 67108863
  store i32 %65, i32* %9, align 4
  %66 = load i32, i32* %5, align 4
  %67 = ashr i32 %66, 26
  %68 = load i32, i32* %6, align 4
  %69 = add nsw i32 %68, %67
  store i32 %69, i32* %6, align 4
  %70 = load i32, i32* %5, align 4
  %71 = and i32 %70, 67108863
  store i32 %71, i32* %5, align 4
  %72 = load i32, i32* %5, align 4
  %73 = add nsw i32 %72, 5
  store i32 %73, i32* %10, align 4
  %74 = load i32, i32* %6, align 4
  %75 = load i32, i32* %10, align 4
  %76 = ashr i32 %75, 26
  %77 = add nsw i32 %74, %76
  store i32 %77, i32* %11, align 4
  %78 = load i32, i32* %10, align 4
  %79 = and i32 %78, 67108863
  store i32 %79, i32* %10, align 4
  %80 = load i32, i32* %7, align 4
  %81 = load i32, i32* %11, align 4
  %82 = ashr i32 %81, 26
  %83 = add nsw i32 %80, %82
  store i32 %83, i32* %12, align 4
  %84 = load i32, i32* %11, align 4
  %85 = and i32 %84, 67108863
  store i32 %85, i32* %11, align 4
  %86 = load i32, i32* %8, align 4
  %87 = load i32, i32* %12, align 4
  %88 = ashr i32 %87, 26
  %89 = add nsw i32 %86, %88
  store i32 %89, i32* %13, align 4
  %90 = load i32, i32* %12, align 4
  %91 = and i32 %90, 67108863
  store i32 %91, i32* %12, align 4
  %92 = load i32, i32* %9, align 4
  %93 = load i32, i32* %13, align 4
  %94 = ashr i32 %93, 26
  %95 = add nsw i32 %92, %94
  %96 = sub nsw i32 %95, 67108864
  store i32 %96, i32* %14, align 4
  %97 = load i32, i32* %13, align 4
  %98 = and i32 %97, 67108863
  store i32 %98, i32* %13, align 4
  %99 = load i32, i32* %14, align 4
  %100 = ashr i32 %99, 31
  %101 = sub nsw i32 %100, 1
  store i32 %101, i32* %15, align 4
  %102 = load i32, i32* %15, align 4
  %103 = load i32, i32* %10, align 4
  %104 = and i32 %103, %102
  store i32 %104, i32* %10, align 4
  %105 = load i32, i32* %15, align 4
  %106 = load i32, i32* %11, align 4
  %107 = and i32 %106, %105
  store i32 %107, i32* %11, align 4
  %108 = load i32, i32* %15, align 4
  %109 = load i32, i32* %12, align 4
  %110 = and i32 %109, %108
  store i32 %110, i32* %12, align 4
  %111 = load i32, i32* %15, align 4
  %112 = load i32, i32* %13, align 4
  %113 = and i32 %112, %111
  store i32 %113, i32* %13, align 4
  %114 = load i32, i32* %15, align 4
  %115 = load i32, i32* %14, align 4
  %116 = and i32 %115, %114
  store i32 %116, i32* %14, align 4
  %117 = load i32, i32* %15, align 4
  %118 = xor i32 %117, -1
  store i32 %118, i32* %15, align 4
  %119 = load i32, i32* %5, align 4
  %120 = load i32, i32* %15, align 4
  %121 = and i32 %119, %120
  %122 = load i32, i32* %10, align 4
  %123 = or i32 %121, %122
  store i32 %123, i32* %5, align 4
  %124 = load i32, i32* %6, align 4
  %125 = load i32, i32* %15, align 4
  %126 = and i32 %124, %125
  %127 = load i32, i32* %11, align 4
  %128 = or i32 %126, %127
  store i32 %128, i32* %6, align 4
  %129 = load i32, i32* %7, align 4
  %130 = load i32, i32* %15, align 4
  %131 = and i32 %129, %130
  %132 = load i32, i32* %12, align 4
  %133 = or i32 %131, %132
  store i32 %133, i32* %7, align 4
  %134 = load i32, i32* %8, align 4
  %135 = load i32, i32* %15, align 4
  %136 = and i32 %134, %135
  %137 = load i32, i32* %13, align 4
  %138 = or i32 %136, %137
  store i32 %138, i32* %8, align 4
  %139 = load i32, i32* %9, align 4
  %140 = load i32, i32* %15, align 4
  %141 = and i32 %139, %140
  %142 = load i32, i32* %14, align 4
  %143 = or i32 %141, %142
  store i32 %143, i32* %9, align 4
  %144 = load i32, i32* %5, align 4
  %145 = ashr i32 %144, 0
  %146 = load i32, i32* %6, align 4
  %147 = shl i32 %146, 26
  %148 = or i32 %145, %147
  %149 = load i8*, i8** %4, align 8
  %150 = getelementptr i8, i8* %149, i64 0
  %151 = call i32 @put_unaligned_le32(i32 %148, i8* %150)
  %152 = load i32, i32* %6, align 4
  %153 = ashr i32 %152, 6
  %154 = load i32, i32* %7, align 4
  %155 = shl i32 %154, 20
  %156 = or i32 %153, %155
  %157 = load i8*, i8** %4, align 8
  %158 = getelementptr i8, i8* %157, i64 4
  %159 = call i32 @put_unaligned_le32(i32 %156, i8* %158)
  %160 = load i32, i32* %7, align 4
  %161 = ashr i32 %160, 12
  %162 = load i32, i32* %8, align 4
  %163 = shl i32 %162, 14
  %164 = or i32 %161, %163
  %165 = load i8*, i8** %4, align 8
  %166 = getelementptr i8, i8* %165, i64 8
  %167 = call i32 @put_unaligned_le32(i32 %164, i8* %166)
  %168 = load i32, i32* %8, align 4
  %169 = ashr i32 %168, 18
  %170 = load i32, i32* %9, align 4
  %171 = shl i32 %170, 8
  %172 = or i32 %169, %171
  %173 = load i8*, i8** %4, align 8
  %174 = getelementptr i8, i8* %173, i64 12
  %175 = call i32 @put_unaligned_le32(i32 %172, i8* %174)
  ret void
}

declare dso_local i32 @put_unaligned_le32(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
