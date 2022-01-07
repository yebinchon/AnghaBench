; ModuleID = '/home/carl/AnghaBench/h2o/deps/picotls/deps/cifra/src/extr_chacha20poly1305.c_process.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/picotls/deps/cifra/src/extr_chacha20poly1305.c_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ENCRYPT = common dso_local global i32 0, align 4
@SUCCESS = common dso_local global i32 0, align 4
@FAILURE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32*, i64, i32*, i64, i32*, i32, i32*)* @process to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @process(i32* %0, i32* %1, i32* %2, i64 %3, i32* %4, i64 %5, i32* %6, i32 %7, i32* %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32*, align 8
  %20 = alloca [16 x i32], align 16
  %21 = alloca [32 x i32], align 16
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca [16 x i32], align 16
  %25 = alloca [16 x i32], align 16
  store i32* %0, i32** %11, align 8
  store i32* %1, i32** %12, align 8
  store i32* %2, i32** %13, align 8
  store i64 %3, i64* %14, align 8
  store i32* %4, i32** %15, align 8
  store i64 %5, i64* %16, align 8
  store i32* %6, i32** %17, align 8
  store i32 %7, i32* %18, align 4
  store i32* %8, i32** %19, align 8
  %26 = bitcast [16 x i32]* %20 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %26, i8 0, i64 64, i1 false)
  %27 = getelementptr inbounds [16 x i32], [16 x i32]* %20, i64 0, i64 0
  %28 = getelementptr inbounds i32, i32* %27, i64 4
  %29 = load i32*, i32** %12, align 8
  %30 = call i32 @memcpy(i32* %28, i32* %29, i32 12)
  %31 = bitcast [32 x i32]* %21 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %31, i8 0, i64 128, i1 false)
  %32 = load i32*, i32** %11, align 8
  %33 = getelementptr inbounds [16 x i32], [16 x i32]* %20, i64 0, i64 0
  %34 = call i32 @cf_chacha20_init_custom(i32* %22, i32* %32, i32 32, i32* %33, i32 4)
  %35 = getelementptr inbounds [32 x i32], [32 x i32]* %21, i64 0, i64 0
  %36 = getelementptr inbounds [32 x i32], [32 x i32]* %21, i64 0, i64 0
  %37 = call i32 @cf_chacha20_cipher(i32* %22, i32* %35, i32* %36, i64 128)
  %38 = getelementptr inbounds [32 x i32], [32 x i32]* %21, i64 0, i64 0
  %39 = getelementptr inbounds [32 x i32], [32 x i32]* %21, i64 0, i64 0
  %40 = getelementptr inbounds i32, i32* %39, i64 16
  %41 = call i32 @cf_poly1305_init(i32* %23, i32* %38, i32* %40)
  %42 = getelementptr inbounds [32 x i32], [32 x i32]* %21, i64 0, i64 0
  %43 = call i32 @mem_clean(i32* %42, i32 128)
  %44 = getelementptr inbounds [32 x i32], [32 x i32]* %21, i64 0, i64 0
  %45 = getelementptr inbounds [32 x i32], [32 x i32]* %21, i64 0, i64 0
  %46 = call i32 @cf_chacha20_cipher(i32* %22, i32* %44, i32* %45, i64 128)
  %47 = getelementptr inbounds [32 x i32], [32 x i32]* %21, i64 0, i64 0
  %48 = call i32 @mem_clean(i32* %47, i32 128)
  %49 = bitcast [16 x i32]* %24 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %49, i8 0, i64 64, i1 false)
  %50 = load i32*, i32** %13, align 8
  %51 = load i64, i64* %14, align 8
  %52 = trunc i64 %51 to i32
  %53 = call i32 @cf_poly1305_update(i32* %23, i32* %50, i32 %52)
  %54 = getelementptr inbounds [16 x i32], [16 x i32]* %24, i64 0, i64 0
  %55 = load i64, i64* %14, align 8
  %56 = and i64 %55, 15
  %57 = sub i64 16, %56
  %58 = trunc i64 %57 to i32
  %59 = call i32 @cf_poly1305_update(i32* %23, i32* %54, i32 %58)
  %60 = load i32, i32* %18, align 4
  %61 = load i32, i32* @ENCRYPT, align 4
  %62 = icmp eq i32 %60, %61
  br i1 %62, label %63, label %72

63:                                               ; preds = %9
  %64 = load i32*, i32** %15, align 8
  %65 = load i32*, i32** %17, align 8
  %66 = load i64, i64* %16, align 8
  %67 = call i32 @cf_chacha20_cipher(i32* %22, i32* %64, i32* %65, i64 %66)
  %68 = load i32*, i32** %17, align 8
  %69 = load i64, i64* %16, align 8
  %70 = trunc i64 %69 to i32
  %71 = call i32 @cf_poly1305_update(i32* %23, i32* %68, i32 %70)
  br label %77

72:                                               ; preds = %9
  %73 = load i32*, i32** %15, align 8
  %74 = load i64, i64* %16, align 8
  %75 = trunc i64 %74 to i32
  %76 = call i32 @cf_poly1305_update(i32* %23, i32* %73, i32 %75)
  br label %77

77:                                               ; preds = %72, %63
  %78 = getelementptr inbounds [16 x i32], [16 x i32]* %24, i64 0, i64 0
  %79 = load i64, i64* %16, align 8
  %80 = and i64 %79, 15
  %81 = sub i64 16, %80
  %82 = trunc i64 %81 to i32
  %83 = call i32 @cf_poly1305_update(i32* %23, i32* %78, i32 %82)
  %84 = load i64, i64* %14, align 8
  %85 = getelementptr inbounds [16 x i32], [16 x i32]* %24, i64 0, i64 0
  %86 = call i32 @write64_le(i64 %84, i32* %85)
  %87 = load i64, i64* %16, align 8
  %88 = getelementptr inbounds [16 x i32], [16 x i32]* %24, i64 0, i64 0
  %89 = getelementptr inbounds i32, i32* %88, i64 8
  %90 = call i32 @write64_le(i64 %87, i32* %89)
  %91 = getelementptr inbounds [16 x i32], [16 x i32]* %24, i64 0, i64 0
  %92 = call i32 @cf_poly1305_update(i32* %23, i32* %91, i32 64)
  %93 = load i32, i32* %18, align 4
  %94 = load i32, i32* @ENCRYPT, align 4
  %95 = icmp eq i32 %93, %94
  br i1 %95, label %96, label %101

96:                                               ; preds = %77
  %97 = load i32*, i32** %19, align 8
  %98 = call i32 @cf_poly1305_finish(i32* %23, i32* %97)
  %99 = call i32 @mem_clean(i32* %22, i32 4)
  %100 = load i32, i32* @SUCCESS, align 4
  store i32 %100, i32* %10, align 4
  br label %126

101:                                              ; preds = %77
  %102 = getelementptr inbounds [16 x i32], [16 x i32]* %25, i64 0, i64 0
  %103 = call i32 @cf_poly1305_finish(i32* %23, i32* %102)
  %104 = getelementptr inbounds [16 x i32], [16 x i32]* %25, i64 0, i64 0
  %105 = load i32*, i32** %19, align 8
  %106 = call i64 @mem_eq(i32* %104, i32* %105, i32 64)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %117

108:                                              ; preds = %101
  %109 = load i32*, i32** %15, align 8
  %110 = load i32*, i32** %17, align 8
  %111 = load i64, i64* %16, align 8
  %112 = call i32 @cf_chacha20_cipher(i32* %22, i32* %109, i32* %110, i64 %111)
  %113 = call i32 @mem_clean(i32* %22, i32 4)
  %114 = getelementptr inbounds [16 x i32], [16 x i32]* %25, i64 0, i64 0
  %115 = call i32 @mem_clean(i32* %114, i32 64)
  %116 = load i32, i32* @SUCCESS, align 4
  store i32 %116, i32* %10, align 4
  br label %126

117:                                              ; preds = %101
  %118 = load i32*, i32** %17, align 8
  %119 = load i64, i64* %16, align 8
  %120 = trunc i64 %119 to i32
  %121 = call i32 @mem_clean(i32* %118, i32 %120)
  %122 = call i32 @mem_clean(i32* %22, i32 4)
  %123 = getelementptr inbounds [16 x i32], [16 x i32]* %25, i64 0, i64 0
  %124 = call i32 @mem_clean(i32* %123, i32 64)
  %125 = load i32, i32* @FAILURE, align 4
  store i32 %125, i32* %10, align 4
  br label %126

126:                                              ; preds = %117, %108, %96
  %127 = load i32, i32* %10, align 4
  ret i32 %127
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #2

declare dso_local i32 @cf_chacha20_init_custom(i32*, i32*, i32, i32*, i32) #2

declare dso_local i32 @cf_chacha20_cipher(i32*, i32*, i32*, i64) #2

declare dso_local i32 @cf_poly1305_init(i32*, i32*, i32*) #2

declare dso_local i32 @mem_clean(i32*, i32) #2

declare dso_local i32 @cf_poly1305_update(i32*, i32*, i32) #2

declare dso_local i32 @write64_le(i64, i32*) #2

declare dso_local i32 @cf_poly1305_finish(i32*, i32*) #2

declare dso_local i64 @mem_eq(i32*, i32*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
