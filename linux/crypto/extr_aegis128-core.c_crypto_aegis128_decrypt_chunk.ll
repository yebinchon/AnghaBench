; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_aegis128-core.c_crypto_aegis128_decrypt_chunk.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_aegis128-core.c_crypto_aegis128_decrypt_chunk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aegis_state = type { %union.aegis_block* }
%union.aegis_block = type { i32* }

@AEGIS_BLOCK_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.aegis_state*, i32*, i32*, i32)* @crypto_aegis128_decrypt_chunk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @crypto_aegis128_decrypt_chunk(%struct.aegis_state* %0, i32* %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.aegis_state*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %union.aegis_block, align 8
  %10 = alloca %union.aegis_block*, align 8
  %11 = alloca %union.aegis_block*, align 8
  %12 = alloca %union.aegis_block, align 8
  store %struct.aegis_state* %0, %struct.aegis_state** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %13 = load i32*, i32** %7, align 8
  %14 = call i64 @AEGIS_ALIGNED(i32* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %70

16:                                               ; preds = %4
  %17 = load i32*, i32** %6, align 8
  %18 = call i64 @AEGIS_ALIGNED(i32* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %70

20:                                               ; preds = %16
  br label %21

21:                                               ; preds = %25, %20
  %22 = load i32, i32* %8, align 4
  %23 = load i32, i32* @AEGIS_BLOCK_SIZE, align 4
  %24 = icmp uge i32 %22, %23
  br i1 %24, label %25, label %69

25:                                               ; preds = %21
  %26 = load i32*, i32** %6, align 8
  %27 = bitcast i32* %26 to %union.aegis_block*
  store %union.aegis_block* %27, %union.aegis_block** %10, align 8
  %28 = load i32*, i32** %7, align 8
  %29 = bitcast i32* %28 to %union.aegis_block*
  store %union.aegis_block* %29, %union.aegis_block** %11, align 8
  %30 = load %struct.aegis_state*, %struct.aegis_state** %5, align 8
  %31 = getelementptr inbounds %struct.aegis_state, %struct.aegis_state* %30, i32 0, i32 0
  %32 = load %union.aegis_block*, %union.aegis_block** %31, align 8
  %33 = getelementptr inbounds %union.aegis_block, %union.aegis_block* %32, i64 2
  %34 = bitcast %union.aegis_block* %9 to i8*
  %35 = bitcast %union.aegis_block* %33 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %34, i8* align 8 %35, i64 8, i1 false)
  %36 = load %struct.aegis_state*, %struct.aegis_state** %5, align 8
  %37 = getelementptr inbounds %struct.aegis_state, %struct.aegis_state* %36, i32 0, i32 0
  %38 = load %union.aegis_block*, %union.aegis_block** %37, align 8
  %39 = getelementptr inbounds %union.aegis_block, %union.aegis_block* %38, i64 3
  %40 = call i32 @crypto_aegis_block_and(%union.aegis_block* %9, %union.aegis_block* %39)
  %41 = load %struct.aegis_state*, %struct.aegis_state** %5, align 8
  %42 = getelementptr inbounds %struct.aegis_state, %struct.aegis_state* %41, i32 0, i32 0
  %43 = load %union.aegis_block*, %union.aegis_block** %42, align 8
  %44 = getelementptr inbounds %union.aegis_block, %union.aegis_block* %43, i64 4
  %45 = call i32 @crypto_aegis_block_xor(%union.aegis_block* %9, %union.aegis_block* %44)
  %46 = load %struct.aegis_state*, %struct.aegis_state** %5, align 8
  %47 = getelementptr inbounds %struct.aegis_state, %struct.aegis_state* %46, i32 0, i32 0
  %48 = load %union.aegis_block*, %union.aegis_block** %47, align 8
  %49 = getelementptr inbounds %union.aegis_block, %union.aegis_block* %48, i64 1
  %50 = call i32 @crypto_aegis_block_xor(%union.aegis_block* %9, %union.aegis_block* %49)
  %51 = load %union.aegis_block*, %union.aegis_block** %11, align 8
  %52 = call i32 @crypto_aegis_block_xor(%union.aegis_block* %9, %union.aegis_block* %51)
  %53 = load %struct.aegis_state*, %struct.aegis_state** %5, align 8
  %54 = call i32 @crypto_aegis128_update_a(%struct.aegis_state* %53, %union.aegis_block* %9)
  %55 = load %union.aegis_block*, %union.aegis_block** %10, align 8
  %56 = bitcast %union.aegis_block* %55 to i8*
  %57 = bitcast %union.aegis_block* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %56, i8* align 8 %57, i64 8, i1 false)
  %58 = load i32, i32* @AEGIS_BLOCK_SIZE, align 4
  %59 = load i32, i32* %8, align 4
  %60 = sub i32 %59, %58
  store i32 %60, i32* %8, align 4
  %61 = load i32, i32* @AEGIS_BLOCK_SIZE, align 4
  %62 = load i32*, i32** %7, align 8
  %63 = zext i32 %61 to i64
  %64 = getelementptr inbounds i32, i32* %62, i64 %63
  store i32* %64, i32** %7, align 8
  %65 = load i32, i32* @AEGIS_BLOCK_SIZE, align 4
  %66 = load i32*, i32** %6, align 8
  %67 = zext i32 %65 to i64
  %68 = getelementptr inbounds i32, i32* %66, i64 %67
  store i32* %68, i32** %6, align 8
  br label %21

69:                                               ; preds = %21
  br label %121

70:                                               ; preds = %16, %4
  br label %71

71:                                               ; preds = %75, %70
  %72 = load i32, i32* %8, align 4
  %73 = load i32, i32* @AEGIS_BLOCK_SIZE, align 4
  %74 = icmp uge i32 %72, %73
  br i1 %74, label %75, label %120

75:                                               ; preds = %71
  %76 = load %struct.aegis_state*, %struct.aegis_state** %5, align 8
  %77 = getelementptr inbounds %struct.aegis_state, %struct.aegis_state* %76, i32 0, i32 0
  %78 = load %union.aegis_block*, %union.aegis_block** %77, align 8
  %79 = getelementptr inbounds %union.aegis_block, %union.aegis_block* %78, i64 2
  %80 = bitcast %union.aegis_block* %9 to i8*
  %81 = bitcast %union.aegis_block* %79 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %80, i8* align 8 %81, i64 8, i1 false)
  %82 = load %struct.aegis_state*, %struct.aegis_state** %5, align 8
  %83 = getelementptr inbounds %struct.aegis_state, %struct.aegis_state* %82, i32 0, i32 0
  %84 = load %union.aegis_block*, %union.aegis_block** %83, align 8
  %85 = getelementptr inbounds %union.aegis_block, %union.aegis_block* %84, i64 3
  %86 = call i32 @crypto_aegis_block_and(%union.aegis_block* %9, %union.aegis_block* %85)
  %87 = load %struct.aegis_state*, %struct.aegis_state** %5, align 8
  %88 = getelementptr inbounds %struct.aegis_state, %struct.aegis_state* %87, i32 0, i32 0
  %89 = load %union.aegis_block*, %union.aegis_block** %88, align 8
  %90 = getelementptr inbounds %union.aegis_block, %union.aegis_block* %89, i64 4
  %91 = call i32 @crypto_aegis_block_xor(%union.aegis_block* %9, %union.aegis_block* %90)
  %92 = load %struct.aegis_state*, %struct.aegis_state** %5, align 8
  %93 = getelementptr inbounds %struct.aegis_state, %struct.aegis_state* %92, i32 0, i32 0
  %94 = load %union.aegis_block*, %union.aegis_block** %93, align 8
  %95 = getelementptr inbounds %union.aegis_block, %union.aegis_block* %94, i64 1
  %96 = call i32 @crypto_aegis_block_xor(%union.aegis_block* %9, %union.aegis_block* %95)
  %97 = bitcast %union.aegis_block* %9 to i32**
  %98 = load i32*, i32** %97, align 8
  %99 = load i32*, i32** %7, align 8
  %100 = load i32, i32* @AEGIS_BLOCK_SIZE, align 4
  %101 = call i32 @crypto_xor(i32* %98, i32* %99, i32 %100)
  %102 = load %struct.aegis_state*, %struct.aegis_state** %5, align 8
  %103 = call i32 @crypto_aegis128_update_a(%struct.aegis_state* %102, %union.aegis_block* %9)
  %104 = load i32*, i32** %6, align 8
  %105 = bitcast %union.aegis_block* %9 to i32**
  %106 = load i32*, i32** %105, align 8
  %107 = load i32, i32* @AEGIS_BLOCK_SIZE, align 4
  %108 = call i32 @memcpy(i32* %104, i32* %106, i32 %107)
  %109 = load i32, i32* @AEGIS_BLOCK_SIZE, align 4
  %110 = load i32, i32* %8, align 4
  %111 = sub i32 %110, %109
  store i32 %111, i32* %8, align 4
  %112 = load i32, i32* @AEGIS_BLOCK_SIZE, align 4
  %113 = load i32*, i32** %7, align 8
  %114 = zext i32 %112 to i64
  %115 = getelementptr inbounds i32, i32* %113, i64 %114
  store i32* %115, i32** %7, align 8
  %116 = load i32, i32* @AEGIS_BLOCK_SIZE, align 4
  %117 = load i32*, i32** %6, align 8
  %118 = zext i32 %116 to i64
  %119 = getelementptr inbounds i32, i32* %117, i64 %118
  store i32* %119, i32** %6, align 8
  br label %71

120:                                              ; preds = %71
  br label %121

121:                                              ; preds = %120, %69
  %122 = load i32, i32* %8, align 4
  %123 = icmp ugt i32 %122, 0
  br i1 %123, label %124, label %169

124:                                              ; preds = %121
  %125 = bitcast %union.aegis_block* %12 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %125, i8 0, i64 8, i1 false)
  %126 = bitcast %union.aegis_block* %12 to i32**
  %127 = load i32*, i32** %126, align 8
  %128 = load i32*, i32** %7, align 8
  %129 = load i32, i32* %8, align 4
  %130 = call i32 @memcpy(i32* %127, i32* %128, i32 %129)
  %131 = load %struct.aegis_state*, %struct.aegis_state** %5, align 8
  %132 = getelementptr inbounds %struct.aegis_state, %struct.aegis_state* %131, i32 0, i32 0
  %133 = load %union.aegis_block*, %union.aegis_block** %132, align 8
  %134 = getelementptr inbounds %union.aegis_block, %union.aegis_block* %133, i64 2
  %135 = bitcast %union.aegis_block* %9 to i8*
  %136 = bitcast %union.aegis_block* %134 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %135, i8* align 8 %136, i64 8, i1 false)
  %137 = load %struct.aegis_state*, %struct.aegis_state** %5, align 8
  %138 = getelementptr inbounds %struct.aegis_state, %struct.aegis_state* %137, i32 0, i32 0
  %139 = load %union.aegis_block*, %union.aegis_block** %138, align 8
  %140 = getelementptr inbounds %union.aegis_block, %union.aegis_block* %139, i64 3
  %141 = call i32 @crypto_aegis_block_and(%union.aegis_block* %9, %union.aegis_block* %140)
  %142 = load %struct.aegis_state*, %struct.aegis_state** %5, align 8
  %143 = getelementptr inbounds %struct.aegis_state, %struct.aegis_state* %142, i32 0, i32 0
  %144 = load %union.aegis_block*, %union.aegis_block** %143, align 8
  %145 = getelementptr inbounds %union.aegis_block, %union.aegis_block* %144, i64 4
  %146 = call i32 @crypto_aegis_block_xor(%union.aegis_block* %9, %union.aegis_block* %145)
  %147 = load %struct.aegis_state*, %struct.aegis_state** %5, align 8
  %148 = getelementptr inbounds %struct.aegis_state, %struct.aegis_state* %147, i32 0, i32 0
  %149 = load %union.aegis_block*, %union.aegis_block** %148, align 8
  %150 = getelementptr inbounds %union.aegis_block, %union.aegis_block* %149, i64 1
  %151 = call i32 @crypto_aegis_block_xor(%union.aegis_block* %9, %union.aegis_block* %150)
  %152 = call i32 @crypto_aegis_block_xor(%union.aegis_block* %12, %union.aegis_block* %9)
  %153 = bitcast %union.aegis_block* %12 to i32**
  %154 = load i32*, i32** %153, align 8
  %155 = load i32, i32* %8, align 4
  %156 = zext i32 %155 to i64
  %157 = getelementptr inbounds i32, i32* %154, i64 %156
  %158 = load i32, i32* @AEGIS_BLOCK_SIZE, align 4
  %159 = load i32, i32* %8, align 4
  %160 = sub i32 %158, %159
  %161 = call i32 @memset(i32* %157, i32 0, i32 %160)
  %162 = load %struct.aegis_state*, %struct.aegis_state** %5, align 8
  %163 = call i32 @crypto_aegis128_update_a(%struct.aegis_state* %162, %union.aegis_block* %12)
  %164 = load i32*, i32** %6, align 8
  %165 = bitcast %union.aegis_block* %12 to i32**
  %166 = load i32*, i32** %165, align 8
  %167 = load i32, i32* %8, align 4
  %168 = call i32 @memcpy(i32* %164, i32* %166, i32 %167)
  br label %169

169:                                              ; preds = %124, %121
  ret void
}

declare dso_local i64 @AEGIS_ALIGNED(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @crypto_aegis_block_and(%union.aegis_block*, %union.aegis_block*) #1

declare dso_local i32 @crypto_aegis_block_xor(%union.aegis_block*, %union.aegis_block*) #1

declare dso_local i32 @crypto_aegis128_update_a(%struct.aegis_state*, %union.aegis_block*) #1

declare dso_local i32 @crypto_xor(i32*, i32*, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @memset(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
