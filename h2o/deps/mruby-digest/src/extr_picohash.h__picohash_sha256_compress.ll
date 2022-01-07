; ModuleID = '/home/carl/AnghaBench/h2o/deps/mruby-digest/src/extr_picohash.h__picohash_sha256_compress.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/mruby-digest/src/extr_picohash.h__picohash_sha256_compress.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32* }

@_picohash_sha256_compress.K = internal constant [64 x i32] [i32 1116352408, i32 1899447441, i32 -1245643825, i32 -373957723, i32 961987163, i32 1508970993, i32 -1841331548, i32 -1424204075, i32 -670586216, i32 310598401, i32 607225278, i32 1426881987, i32 1925078388, i32 -2132889090, i32 -1680079193, i32 -1046744716, i32 -459576895, i32 -272742522, i32 264347078, i32 604807628, i32 770255983, i32 1249150122, i32 1555081692, i32 1996064986, i32 -1740746414, i32 -1473132947, i32 -1341970488, i32 -1084653625, i32 -958395405, i32 -710438585, i32 113926993, i32 338241895, i32 666307205, i32 773529912, i32 1294757372, i32 1396182291, i32 1695183700, i32 1986661051, i32 -2117940946, i32 -1838011259, i32 -1564481375, i32 -1474664885, i32 -1035236496, i32 -949202525, i32 -778901479, i32 -694614492, i32 -200395387, i32 275423344, i32 430227734, i32 506948616, i32 659060556, i32 883997877, i32 958139571, i32 1322822218, i32 1537002063, i32 1747873779, i32 1955562222, i32 2024104815, i32 -2067236844, i32 -1933114872, i32 -1866530822, i32 -1538233109, i32 -1090935817, i32 -965641998], align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i8*)* @_picohash_sha256_compress to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_picohash_sha256_compress(%struct.TYPE_3__* %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca [8 x i32], align 16
  %6 = alloca [64 x i32], align 16
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store i8* %1, i8** %4, align 8
  store i32 0, i32* %10, align 4
  br label %11

11:                                               ; preds = %25, %2
  %12 = load i32, i32* %10, align 4
  %13 = icmp slt i32 %12, 8
  br i1 %13, label %14, label %28

14:                                               ; preds = %11
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = load i32, i32* %10, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i32, i32* %17, i64 %19
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* %10, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 %23
  store i32 %21, i32* %24, align 4
  br label %25

25:                                               ; preds = %14
  %26 = load i32, i32* %10, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %10, align 4
  br label %11

28:                                               ; preds = %11
  store i32 0, i32* %10, align 4
  br label %29

29:                                               ; preds = %73, %28
  %30 = load i32, i32* %10, align 4
  %31 = icmp slt i32 %30, 16
  br i1 %31, label %32, label %76

32:                                               ; preds = %29
  %33 = load i8*, i8** %4, align 8
  %34 = load i32, i32* %10, align 4
  %35 = mul nsw i32 4, %34
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i8, i8* %33, i64 %36
  %38 = load i8, i8* %37, align 1
  %39 = zext i8 %38 to i32
  %40 = shl i32 %39, 24
  %41 = load i8*, i8** %4, align 8
  %42 = load i32, i32* %10, align 4
  %43 = mul nsw i32 4, %42
  %44 = add nsw i32 %43, 1
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i8, i8* %41, i64 %45
  %47 = load i8, i8* %46, align 1
  %48 = zext i8 %47 to i32
  %49 = shl i32 %48, 16
  %50 = or i32 %40, %49
  %51 = load i8*, i8** %4, align 8
  %52 = load i32, i32* %10, align 4
  %53 = mul nsw i32 4, %52
  %54 = add nsw i32 %53, 2
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i8, i8* %51, i64 %55
  %57 = load i8, i8* %56, align 1
  %58 = zext i8 %57 to i32
  %59 = shl i32 %58, 8
  %60 = or i32 %50, %59
  %61 = load i8*, i8** %4, align 8
  %62 = load i32, i32* %10, align 4
  %63 = mul nsw i32 4, %62
  %64 = add nsw i32 %63, 3
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i8, i8* %61, i64 %65
  %67 = load i8, i8* %66, align 1
  %68 = zext i8 %67 to i32
  %69 = or i32 %60, %68
  %70 = load i32, i32* %10, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds [64 x i32], [64 x i32]* %6, i64 0, i64 %71
  store i32 %69, i32* %72, align 4
  br label %73

73:                                               ; preds = %32
  %74 = load i32, i32* %10, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %10, align 4
  br label %29

76:                                               ; preds = %29
  store i32 16, i32* %10, align 4
  br label %77

77:                                               ; preds = %109, %76
  %78 = load i32, i32* %10, align 4
  %79 = icmp slt i32 %78, 64
  br i1 %79, label %80, label %112

80:                                               ; preds = %77
  %81 = load i32, i32* %10, align 4
  %82 = sub nsw i32 %81, 2
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds [64 x i32], [64 x i32]* %6, i64 0, i64 %83
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @_picohash_sha256_gamma1(i32 %85)
  %87 = load i32, i32* %10, align 4
  %88 = sub nsw i32 %87, 7
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds [64 x i32], [64 x i32]* %6, i64 0, i64 %89
  %91 = load i32, i32* %90, align 4
  %92 = add nsw i32 %86, %91
  %93 = load i32, i32* %10, align 4
  %94 = sub nsw i32 %93, 15
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds [64 x i32], [64 x i32]* %6, i64 0, i64 %95
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @_picohash_sha256_gamma0(i32 %97)
  %99 = add nsw i32 %92, %98
  %100 = load i32, i32* %10, align 4
  %101 = sub nsw i32 %100, 16
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds [64 x i32], [64 x i32]* %6, i64 0, i64 %102
  %104 = load i32, i32* %103, align 4
  %105 = add nsw i32 %99, %104
  %106 = load i32, i32* %10, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds [64 x i32], [64 x i32]* %6, i64 0, i64 %107
  store i32 %105, i32* %108, align 4
  br label %109

109:                                              ; preds = %80
  %110 = load i32, i32* %10, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %10, align 4
  br label %77

112:                                              ; preds = %77
  store i32 0, i32* %10, align 4
  br label %113

113:                                              ; preds = %160, %112
  %114 = load i32, i32* %10, align 4
  %115 = icmp slt i32 %114, 64
  br i1 %115, label %116, label %163

116:                                              ; preds = %113
  %117 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 0
  %118 = load i32, i32* %117, align 16
  %119 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 1
  %120 = load i32, i32* %119, align 4
  %121 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 2
  %122 = load i32, i32* %121, align 8
  %123 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 3
  %124 = load i32, i32* %123, align 4
  %125 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 4
  %126 = load i32, i32* %125, align 16
  %127 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 5
  %128 = load i32, i32* %127, align 4
  %129 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 6
  %130 = load i32, i32* %129, align 8
  %131 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 7
  %132 = load i32, i32* %131, align 4
  %133 = load i32, i32* %10, align 4
  %134 = call i32 @_picohash_sha256_rnd(i32 %118, i32 %120, i32 %122, i32 %124, i32 %126, i32 %128, i32 %130, i32 %132, i32 %133)
  %135 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 7
  %136 = load i32, i32* %135, align 4
  store i32 %136, i32* %7, align 4
  %137 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 6
  %138 = load i32, i32* %137, align 8
  %139 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 7
  store i32 %138, i32* %139, align 4
  %140 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 5
  %141 = load i32, i32* %140, align 4
  %142 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 6
  store i32 %141, i32* %142, align 8
  %143 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 4
  %144 = load i32, i32* %143, align 16
  %145 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 5
  store i32 %144, i32* %145, align 4
  %146 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 3
  %147 = load i32, i32* %146, align 4
  %148 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 4
  store i32 %147, i32* %148, align 16
  %149 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 2
  %150 = load i32, i32* %149, align 8
  %151 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 3
  store i32 %150, i32* %151, align 4
  %152 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 1
  %153 = load i32, i32* %152, align 4
  %154 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 2
  store i32 %153, i32* %154, align 8
  %155 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 0
  %156 = load i32, i32* %155, align 16
  %157 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 1
  store i32 %156, i32* %157, align 4
  %158 = load i32, i32* %7, align 4
  %159 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 0
  store i32 %158, i32* %159, align 16
  br label %160

160:                                              ; preds = %116
  %161 = load i32, i32* %10, align 4
  %162 = add nsw i32 %161, 1
  store i32 %162, i32* %10, align 4
  br label %113

163:                                              ; preds = %113
  store i32 0, i32* %10, align 4
  br label %164

164:                                              ; preds = %186, %163
  %165 = load i32, i32* %10, align 4
  %166 = icmp slt i32 %165, 8
  br i1 %166, label %167, label %189

167:                                              ; preds = %164
  %168 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %169 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %168, i32 0, i32 0
  %170 = load i32*, i32** %169, align 8
  %171 = load i32, i32* %10, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds i32, i32* %170, i64 %172
  %174 = load i32, i32* %173, align 4
  %175 = load i32, i32* %10, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 %176
  %178 = load i32, i32* %177, align 4
  %179 = add nsw i32 %174, %178
  %180 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %181 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %180, i32 0, i32 0
  %182 = load i32*, i32** %181, align 8
  %183 = load i32, i32* %10, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds i32, i32* %182, i64 %184
  store i32 %179, i32* %185, align 4
  br label %186

186:                                              ; preds = %167
  %187 = load i32, i32* %10, align 4
  %188 = add nsw i32 %187, 1
  store i32 %188, i32* %10, align 4
  br label %164

189:                                              ; preds = %164
  ret void
}

declare dso_local i32 @_picohash_sha256_gamma1(i32) #1

declare dso_local i32 @_picohash_sha256_gamma0(i32) #1

declare dso_local i32 @_picohash_sha256_rnd(i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
