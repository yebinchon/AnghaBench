; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_xts.c_xor_tweak.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_xts.c_xor_tweak.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.skcipher_request = type { i32 }
%struct.rctx = type { i32, %struct.skcipher_request }
%struct.crypto_skcipher = type { i32 }
%struct.skcipher_walk = type { i32, i32, %struct.TYPE_8__, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32* }

@XTS_BLOCK_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.skcipher_request*, i32, i32)* @xor_tweak to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xor_tweak(%struct.skcipher_request* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.skcipher_request*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.rctx*, align 8
  %9 = alloca %struct.crypto_skcipher*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.skcipher_walk, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  store %struct.skcipher_request* %0, %struct.skcipher_request** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %18 = load %struct.skcipher_request*, %struct.skcipher_request** %5, align 8
  %19 = call %struct.rctx* @skcipher_request_ctx(%struct.skcipher_request* %18)
  store %struct.rctx* %19, %struct.rctx** %8, align 8
  %20 = load %struct.skcipher_request*, %struct.skcipher_request** %5, align 8
  %21 = call %struct.crypto_skcipher* @crypto_skcipher_reqtfm(%struct.skcipher_request* %20)
  store %struct.crypto_skcipher* %21, %struct.crypto_skcipher** %9, align 8
  %22 = load %struct.skcipher_request*, %struct.skcipher_request** %5, align 8
  %23 = getelementptr inbounds %struct.skcipher_request, %struct.skcipher_request* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @XTS_BLOCK_SIZE, align 4
  %26 = srem i32 %24, %25
  store i32 %26, i32* %10, align 4
  %27 = load i32, i32* @XTS_BLOCK_SIZE, align 4
  store i32 %27, i32* %11, align 4
  %28 = load %struct.rctx*, %struct.rctx** %8, align 8
  %29 = getelementptr inbounds %struct.rctx, %struct.rctx* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %13, align 4
  %31 = load i32, i32* %6, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %3
  %34 = load %struct.rctx*, %struct.rctx** %8, align 8
  %35 = getelementptr inbounds %struct.rctx, %struct.rctx* %34, i32 0, i32 1
  store %struct.skcipher_request* %35, %struct.skcipher_request** %5, align 8
  %36 = load %struct.skcipher_request*, %struct.skcipher_request** %5, align 8
  %37 = load %struct.crypto_skcipher*, %struct.crypto_skcipher** %9, align 8
  %38 = call i32 @skcipher_request_set_tfm(%struct.skcipher_request* %36, %struct.crypto_skcipher* %37)
  br label %39

39:                                               ; preds = %33, %3
  %40 = load %struct.skcipher_request*, %struct.skcipher_request** %5, align 8
  %41 = call i32 @skcipher_walk_virt(%struct.skcipher_walk* %12, %struct.skcipher_request* %40, i32 0)
  store i32 %41, i32* %14, align 4
  br label %42

42:                                               ; preds = %115, %39
  %43 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %12, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %118

46:                                               ; preds = %42
  %47 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %12, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  store i32 %48, i32* %15, align 4
  %49 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %12, i32 0, i32 3
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  store i32* %52, i32** %16, align 8
  %53 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %12, i32 0, i32 2
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  store i32* %56, i32** %17, align 8
  br label %57

57:                                               ; preds = %109, %46
  %58 = load i32, i32* %10, align 4
  %59 = call i64 @unlikely(i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %102

61:                                               ; preds = %57
  %62 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %12, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %12, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = sub i32 %63, %65
  %67 = load i32, i32* %15, align 4
  %68 = add i32 %66, %67
  %69 = load i32, i32* @XTS_BLOCK_SIZE, align 4
  %70 = mul nsw i32 2, %69
  %71 = icmp ult i32 %68, %70
  br i1 %71, label %72, label %102

72:                                               ; preds = %61
  %73 = load i32, i32* %7, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %84, label %75

75:                                               ; preds = %72
  %76 = load i32, i32* %6, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %82

78:                                               ; preds = %75
  %79 = load i32, i32* %13, align 4
  %80 = load %struct.rctx*, %struct.rctx** %8, align 8
  %81 = getelementptr inbounds %struct.rctx, %struct.rctx* %80, i32 0, i32 0
  store i32 %79, i32* %81, align 4
  br label %82

82:                                               ; preds = %78, %75
  %83 = call i32 @gf128mul_x_ble(i32* %13, i32* %13)
  br label %84

84:                                               ; preds = %82, %72
  %85 = load i32*, i32** %17, align 8
  %86 = load i32*, i32** %16, align 8
  %87 = call i32 @le128_xor(i32* %85, i32* %13, i32* %86)
  %88 = load i32, i32* %7, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %97

90:                                               ; preds = %84
  %91 = load i32, i32* %6, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %97

93:                                               ; preds = %90
  %94 = load %struct.rctx*, %struct.rctx** %8, align 8
  %95 = getelementptr inbounds %struct.rctx, %struct.rctx* %94, i32 0, i32 0
  %96 = call i32 @gf128mul_x_ble(i32* %95, i32* %13)
  br label %97

97:                                               ; preds = %93, %90, %84
  %98 = load i32, i32* %15, align 4
  %99 = load i32, i32* %11, align 4
  %100 = sub i32 %98, %99
  %101 = call i32 @skcipher_walk_done(%struct.skcipher_walk* %12, i32 %100)
  store i32 0, i32* %4, align 4
  br label %120

102:                                              ; preds = %61, %57
  %103 = load i32*, i32** %17, align 8
  %104 = getelementptr inbounds i32, i32* %103, i32 1
  store i32* %104, i32** %17, align 8
  %105 = load i32*, i32** %16, align 8
  %106 = getelementptr inbounds i32, i32* %105, i32 1
  store i32* %106, i32** %16, align 8
  %107 = call i32 @le128_xor(i32* %103, i32* %13, i32* %105)
  %108 = call i32 @gf128mul_x_ble(i32* %13, i32* %13)
  br label %109

109:                                              ; preds = %102
  %110 = load i32, i32* %11, align 4
  %111 = load i32, i32* %15, align 4
  %112 = sub i32 %111, %110
  store i32 %112, i32* %15, align 4
  %113 = load i32, i32* %11, align 4
  %114 = icmp uge i32 %112, %113
  br i1 %114, label %57, label %115

115:                                              ; preds = %109
  %116 = load i32, i32* %15, align 4
  %117 = call i32 @skcipher_walk_done(%struct.skcipher_walk* %12, i32 %116)
  store i32 %117, i32* %14, align 4
  br label %42

118:                                              ; preds = %42
  %119 = load i32, i32* %14, align 4
  store i32 %119, i32* %4, align 4
  br label %120

120:                                              ; preds = %118, %97
  %121 = load i32, i32* %4, align 4
  ret i32 %121
}

declare dso_local %struct.rctx* @skcipher_request_ctx(%struct.skcipher_request*) #1

declare dso_local %struct.crypto_skcipher* @crypto_skcipher_reqtfm(%struct.skcipher_request*) #1

declare dso_local i32 @skcipher_request_set_tfm(%struct.skcipher_request*, %struct.crypto_skcipher*) #1

declare dso_local i32 @skcipher_walk_virt(%struct.skcipher_walk*, %struct.skcipher_request*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @gf128mul_x_ble(i32*, i32*) #1

declare dso_local i32 @le128_xor(i32*, i32*, i32*) #1

declare dso_local i32 @skcipher_walk_done(%struct.skcipher_walk*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
