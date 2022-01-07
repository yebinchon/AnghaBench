; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/crypto/extr_glue_helper.c_glue_ctr_req_128bit.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/crypto/extr_glue_helper.c_glue_ctr_req_128bit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.common_glue_ctx = type { i32, %struct.TYPE_10__*, i32 }
%struct.TYPE_10__ = type { i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 (i8*, i32*, i32*, i32*)* }
%struct.skcipher_request = type { i32 }
%struct.skcipher_walk = type { i32, i64, %struct.TYPE_12__, %struct.TYPE_8__ }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32* }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @glue_ctr_req_128bit(%struct.common_glue_ctx* %0, %struct.skcipher_request* %1) #0 {
  %3 = alloca %struct.common_glue_ctx*, align 8
  %4 = alloca %struct.skcipher_request*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.skcipher_walk, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.common_glue_ctx* %0, %struct.common_glue_ctx** %3, align 8
  store %struct.skcipher_request* %1, %struct.skcipher_request** %4, align 8
  %19 = load %struct.skcipher_request*, %struct.skcipher_request** %4, align 8
  %20 = call i32 @crypto_skcipher_reqtfm(%struct.skcipher_request* %19)
  %21 = call i8* @crypto_skcipher_ctx(i32 %20)
  store i8* %21, i8** %5, align 8
  store i32 16, i32* %6, align 4
  store i32 0, i32* %8, align 4
  %22 = load %struct.skcipher_request*, %struct.skcipher_request** %4, align 8
  %23 = call i32 @skcipher_walk_virt(%struct.skcipher_walk* %7, %struct.skcipher_request* %22, i32 0)
  store i32 %23, i32* %10, align 4
  br label %24

24:                                               ; preds = %106, %2
  %25 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %7, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  store i32 %26, i32* %9, align 4
  %27 = icmp uge i32 %26, 16
  br i1 %27, label %28, label %113

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %7, i32 0, i32 3
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  store i32* %32, i32** %11, align 8
  %33 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %7, i32 0, i32 2
  %34 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  store i32* %36, i32** %12, align 8
  %37 = load %struct.common_glue_ctx*, %struct.common_glue_ctx** %3, align 8
  %38 = getelementptr inbounds %struct.common_glue_ctx, %struct.common_glue_ctx* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* %8, align 4
  %41 = load i32, i32* %9, align 4
  %42 = call i32 @glue_fpu_begin(i32 16, i32 %39, %struct.skcipher_walk* %7, i32 %40, i32 %41)
  store i32 %42, i32* %8, align 4
  %43 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %7, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = inttoptr i64 %44 to i32*
  %46 = call i32 @be128_to_le128(i32* %16, i32* %45)
  store i32 0, i32* %15, align 4
  br label %47

47:                                               ; preds = %103, %28
  %48 = load i32, i32* %15, align 4
  %49 = load %struct.common_glue_ctx*, %struct.common_glue_ctx** %3, align 8
  %50 = getelementptr inbounds %struct.common_glue_ctx, %struct.common_glue_ctx* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = icmp ult i32 %48, %51
  br i1 %52, label %53, label %106

53:                                               ; preds = %47
  %54 = load %struct.common_glue_ctx*, %struct.common_glue_ctx** %3, align 8
  %55 = getelementptr inbounds %struct.common_glue_ctx, %struct.common_glue_ctx* %54, i32 0, i32 1
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** %55, align 8
  %57 = load i32, i32* %15, align 4
  %58 = zext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  store i32 %61, i32* %14, align 4
  %62 = load i32, i32* %14, align 4
  %63 = mul i32 16, %62
  store i32 %63, i32* %13, align 4
  %64 = load i32, i32* %9, align 4
  %65 = load i32, i32* %13, align 4
  %66 = icmp ult i32 %64, %65
  br i1 %66, label %67, label %68

67:                                               ; preds = %53
  br label %103

68:                                               ; preds = %53
  br label %69

69:                                               ; preds = %94, %68
  %70 = load %struct.common_glue_ctx*, %struct.common_glue_ctx** %3, align 8
  %71 = getelementptr inbounds %struct.common_glue_ctx, %struct.common_glue_ctx* %70, i32 0, i32 1
  %72 = load %struct.TYPE_10__*, %struct.TYPE_10__** %71, align 8
  %73 = load i32, i32* %15, align 4
  %74 = zext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %72, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %76, i32 0, i32 0
  %78 = load i32 (i8*, i32*, i32*, i32*)*, i32 (i8*, i32*, i32*, i32*)** %77, align 8
  %79 = load i8*, i8** %5, align 8
  %80 = load i32*, i32** %12, align 8
  %81 = load i32*, i32** %11, align 8
  %82 = call i32 %78(i8* %79, i32* %80, i32* %81, i32* %16)
  %83 = load i32, i32* %14, align 4
  %84 = load i32*, i32** %11, align 8
  %85 = zext i32 %83 to i64
  %86 = getelementptr inbounds i32, i32* %84, i64 %85
  store i32* %86, i32** %11, align 8
  %87 = load i32, i32* %14, align 4
  %88 = load i32*, i32** %12, align 8
  %89 = zext i32 %87 to i64
  %90 = getelementptr inbounds i32, i32* %88, i64 %89
  store i32* %90, i32** %12, align 8
  %91 = load i32, i32* %13, align 4
  %92 = load i32, i32* %9, align 4
  %93 = sub i32 %92, %91
  store i32 %93, i32* %9, align 4
  br label %94

94:                                               ; preds = %69
  %95 = load i32, i32* %9, align 4
  %96 = load i32, i32* %13, align 4
  %97 = icmp uge i32 %95, %96
  br i1 %97, label %69, label %98

98:                                               ; preds = %94
  %99 = load i32, i32* %9, align 4
  %100 = icmp ult i32 %99, 16
  br i1 %100, label %101, label %102

101:                                              ; preds = %98
  br label %106

102:                                              ; preds = %98
  br label %103

103:                                              ; preds = %102, %67
  %104 = load i32, i32* %15, align 4
  %105 = add i32 %104, 1
  store i32 %105, i32* %15, align 4
  br label %47

106:                                              ; preds = %101, %47
  %107 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %7, i32 0, i32 1
  %108 = load i64, i64* %107, align 8
  %109 = inttoptr i64 %108 to i32*
  %110 = call i32 @le128_to_be128(i32* %109, i32* %16)
  %111 = load i32, i32* %9, align 4
  %112 = call i32 @skcipher_walk_done(%struct.skcipher_walk* %7, i32 %111)
  store i32 %112, i32* %10, align 4
  br label %24

113:                                              ; preds = %24
  %114 = load i32, i32* %8, align 4
  %115 = call i32 @glue_fpu_end(i32 %114)
  %116 = load i32, i32* %9, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %154

118:                                              ; preds = %113
  %119 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %7, i32 0, i32 1
  %120 = load i64, i64* %119, align 8
  %121 = inttoptr i64 %120 to i32*
  %122 = call i32 @be128_to_le128(i32* %17, i32* %121)
  %123 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %7, i32 0, i32 3
  %124 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %124, i32 0, i32 0
  %126 = load i32*, i32** %125, align 8
  %127 = load i32, i32* %9, align 4
  %128 = call i32 @memcpy(i32* %18, i32* %126, i32 %127)
  %129 = load %struct.common_glue_ctx*, %struct.common_glue_ctx** %3, align 8
  %130 = getelementptr inbounds %struct.common_glue_ctx, %struct.common_glue_ctx* %129, i32 0, i32 1
  %131 = load %struct.TYPE_10__*, %struct.TYPE_10__** %130, align 8
  %132 = load %struct.common_glue_ctx*, %struct.common_glue_ctx** %3, align 8
  %133 = getelementptr inbounds %struct.common_glue_ctx, %struct.common_glue_ctx* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = sub i32 %134, 1
  %136 = zext i32 %135 to i64
  %137 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %131, i64 %136
  %138 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %137, i32 0, i32 1
  %139 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %138, i32 0, i32 0
  %140 = load i32 (i8*, i32*, i32*, i32*)*, i32 (i8*, i32*, i32*, i32*)** %139, align 8
  %141 = load i8*, i8** %5, align 8
  %142 = call i32 %140(i8* %141, i32* %18, i32* %18, i32* %17)
  %143 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %7, i32 0, i32 2
  %144 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %144, i32 0, i32 0
  %146 = load i32*, i32** %145, align 8
  %147 = load i32, i32* %9, align 4
  %148 = call i32 @memcpy(i32* %146, i32* %18, i32 %147)
  %149 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %7, i32 0, i32 1
  %150 = load i64, i64* %149, align 8
  %151 = inttoptr i64 %150 to i32*
  %152 = call i32 @le128_to_be128(i32* %151, i32* %17)
  %153 = call i32 @skcipher_walk_done(%struct.skcipher_walk* %7, i32 0)
  store i32 %153, i32* %10, align 4
  br label %154

154:                                              ; preds = %118, %113
  %155 = load i32, i32* %10, align 4
  ret i32 %155
}

declare dso_local i8* @crypto_skcipher_ctx(i32) #1

declare dso_local i32 @crypto_skcipher_reqtfm(%struct.skcipher_request*) #1

declare dso_local i32 @skcipher_walk_virt(%struct.skcipher_walk*, %struct.skcipher_request*, i32) #1

declare dso_local i32 @glue_fpu_begin(i32, i32, %struct.skcipher_walk*, i32, i32) #1

declare dso_local i32 @be128_to_le128(i32*, i32*) #1

declare dso_local i32 @le128_to_be128(i32*, i32*) #1

declare dso_local i32 @skcipher_walk_done(%struct.skcipher_walk*, i32) #1

declare dso_local i32 @glue_fpu_end(i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
