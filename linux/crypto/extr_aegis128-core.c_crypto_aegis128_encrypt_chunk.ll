; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_aegis128-core.c_crypto_aegis128_encrypt_chunk.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_aegis128-core.c_crypto_aegis128_encrypt_chunk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aegis_state = type { %union.aegis_block* }
%union.aegis_block = type { i32* }

@AEGIS_BLOCK_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.aegis_state*, i32*, i32*, i32)* @crypto_aegis128_encrypt_chunk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @crypto_aegis128_encrypt_chunk(%struct.aegis_state* %0, i32* %1, i32* %2, i32 %3) #0 {
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
  br i1 %15, label %16, label %71

16:                                               ; preds = %4
  %17 = load i32*, i32** %6, align 8
  %18 = call i64 @AEGIS_ALIGNED(i32* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %71

20:                                               ; preds = %16
  br label %21

21:                                               ; preds = %25, %20
  %22 = load i32, i32* %8, align 4
  %23 = load i32, i32* @AEGIS_BLOCK_SIZE, align 4
  %24 = icmp uge i32 %22, %23
  br i1 %24, label %25, label %70

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
  %54 = load %union.aegis_block*, %union.aegis_block** %11, align 8
  %55 = call i32 @crypto_aegis128_update_a(%struct.aegis_state* %53, %union.aegis_block* %54)
  %56 = load %union.aegis_block*, %union.aegis_block** %10, align 8
  %57 = bitcast %union.aegis_block* %56 to i8*
  %58 = bitcast %union.aegis_block* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %57, i8* align 8 %58, i64 8, i1 false)
  %59 = load i32, i32* @AEGIS_BLOCK_SIZE, align 4
  %60 = load i32, i32* %8, align 4
  %61 = sub i32 %60, %59
  store i32 %61, i32* %8, align 4
  %62 = load i32, i32* @AEGIS_BLOCK_SIZE, align 4
  %63 = load i32*, i32** %7, align 8
  %64 = zext i32 %62 to i64
  %65 = getelementptr inbounds i32, i32* %63, i64 %64
  store i32* %65, i32** %7, align 8
  %66 = load i32, i32* @AEGIS_BLOCK_SIZE, align 4
  %67 = load i32*, i32** %6, align 8
  %68 = zext i32 %66 to i64
  %69 = getelementptr inbounds i32, i32* %67, i64 %68
  store i32* %69, i32** %6, align 8
  br label %21

70:                                               ; preds = %21
  br label %123

71:                                               ; preds = %16, %4
  br label %72

72:                                               ; preds = %76, %71
  %73 = load i32, i32* %8, align 4
  %74 = load i32, i32* @AEGIS_BLOCK_SIZE, align 4
  %75 = icmp uge i32 %73, %74
  br i1 %75, label %76, label %122

76:                                               ; preds = %72
  %77 = load %struct.aegis_state*, %struct.aegis_state** %5, align 8
  %78 = getelementptr inbounds %struct.aegis_state, %struct.aegis_state* %77, i32 0, i32 0
  %79 = load %union.aegis_block*, %union.aegis_block** %78, align 8
  %80 = getelementptr inbounds %union.aegis_block, %union.aegis_block* %79, i64 2
  %81 = bitcast %union.aegis_block* %9 to i8*
  %82 = bitcast %union.aegis_block* %80 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %81, i8* align 8 %82, i64 8, i1 false)
  %83 = load %struct.aegis_state*, %struct.aegis_state** %5, align 8
  %84 = getelementptr inbounds %struct.aegis_state, %struct.aegis_state* %83, i32 0, i32 0
  %85 = load %union.aegis_block*, %union.aegis_block** %84, align 8
  %86 = getelementptr inbounds %union.aegis_block, %union.aegis_block* %85, i64 3
  %87 = call i32 @crypto_aegis_block_and(%union.aegis_block* %9, %union.aegis_block* %86)
  %88 = load %struct.aegis_state*, %struct.aegis_state** %5, align 8
  %89 = getelementptr inbounds %struct.aegis_state, %struct.aegis_state* %88, i32 0, i32 0
  %90 = load %union.aegis_block*, %union.aegis_block** %89, align 8
  %91 = getelementptr inbounds %union.aegis_block, %union.aegis_block* %90, i64 4
  %92 = call i32 @crypto_aegis_block_xor(%union.aegis_block* %9, %union.aegis_block* %91)
  %93 = load %struct.aegis_state*, %struct.aegis_state** %5, align 8
  %94 = getelementptr inbounds %struct.aegis_state, %struct.aegis_state* %93, i32 0, i32 0
  %95 = load %union.aegis_block*, %union.aegis_block** %94, align 8
  %96 = getelementptr inbounds %union.aegis_block, %union.aegis_block* %95, i64 1
  %97 = call i32 @crypto_aegis_block_xor(%union.aegis_block* %9, %union.aegis_block* %96)
  %98 = bitcast %union.aegis_block* %9 to i32**
  %99 = load i32*, i32** %98, align 8
  %100 = load i32*, i32** %7, align 8
  %101 = load i32, i32* @AEGIS_BLOCK_SIZE, align 4
  %102 = call i32 @crypto_xor(i32* %99, i32* %100, i32 %101)
  %103 = load %struct.aegis_state*, %struct.aegis_state** %5, align 8
  %104 = load i32*, i32** %7, align 8
  %105 = call i32 @crypto_aegis128_update_u(%struct.aegis_state* %103, i32* %104)
  %106 = load i32*, i32** %6, align 8
  %107 = bitcast %union.aegis_block* %9 to i32**
  %108 = load i32*, i32** %107, align 8
  %109 = load i32, i32* @AEGIS_BLOCK_SIZE, align 4
  %110 = call i32 @memcpy(i32* %106, i32* %108, i32 %109)
  %111 = load i32, i32* @AEGIS_BLOCK_SIZE, align 4
  %112 = load i32, i32* %8, align 4
  %113 = sub i32 %112, %111
  store i32 %113, i32* %8, align 4
  %114 = load i32, i32* @AEGIS_BLOCK_SIZE, align 4
  %115 = load i32*, i32** %7, align 8
  %116 = zext i32 %114 to i64
  %117 = getelementptr inbounds i32, i32* %115, i64 %116
  store i32* %117, i32** %7, align 8
  %118 = load i32, i32* @AEGIS_BLOCK_SIZE, align 4
  %119 = load i32*, i32** %6, align 8
  %120 = zext i32 %118 to i64
  %121 = getelementptr inbounds i32, i32* %119, i64 %120
  store i32* %121, i32** %6, align 8
  br label %72

122:                                              ; preds = %72
  br label %123

123:                                              ; preds = %122, %70
  %124 = load i32, i32* %8, align 4
  %125 = icmp ugt i32 %124, 0
  br i1 %125, label %126, label %162

126:                                              ; preds = %123
  %127 = bitcast %union.aegis_block* %12 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %127, i8 0, i64 8, i1 false)
  %128 = bitcast %union.aegis_block* %12 to i32**
  %129 = load i32*, i32** %128, align 8
  %130 = load i32*, i32** %7, align 8
  %131 = load i32, i32* %8, align 4
  %132 = call i32 @memcpy(i32* %129, i32* %130, i32 %131)
  %133 = load %struct.aegis_state*, %struct.aegis_state** %5, align 8
  %134 = getelementptr inbounds %struct.aegis_state, %struct.aegis_state* %133, i32 0, i32 0
  %135 = load %union.aegis_block*, %union.aegis_block** %134, align 8
  %136 = getelementptr inbounds %union.aegis_block, %union.aegis_block* %135, i64 2
  %137 = bitcast %union.aegis_block* %9 to i8*
  %138 = bitcast %union.aegis_block* %136 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %137, i8* align 8 %138, i64 8, i1 false)
  %139 = load %struct.aegis_state*, %struct.aegis_state** %5, align 8
  %140 = getelementptr inbounds %struct.aegis_state, %struct.aegis_state* %139, i32 0, i32 0
  %141 = load %union.aegis_block*, %union.aegis_block** %140, align 8
  %142 = getelementptr inbounds %union.aegis_block, %union.aegis_block* %141, i64 3
  %143 = call i32 @crypto_aegis_block_and(%union.aegis_block* %9, %union.aegis_block* %142)
  %144 = load %struct.aegis_state*, %struct.aegis_state** %5, align 8
  %145 = getelementptr inbounds %struct.aegis_state, %struct.aegis_state* %144, i32 0, i32 0
  %146 = load %union.aegis_block*, %union.aegis_block** %145, align 8
  %147 = getelementptr inbounds %union.aegis_block, %union.aegis_block* %146, i64 4
  %148 = call i32 @crypto_aegis_block_xor(%union.aegis_block* %9, %union.aegis_block* %147)
  %149 = load %struct.aegis_state*, %struct.aegis_state** %5, align 8
  %150 = getelementptr inbounds %struct.aegis_state, %struct.aegis_state* %149, i32 0, i32 0
  %151 = load %union.aegis_block*, %union.aegis_block** %150, align 8
  %152 = getelementptr inbounds %union.aegis_block, %union.aegis_block* %151, i64 1
  %153 = call i32 @crypto_aegis_block_xor(%union.aegis_block* %9, %union.aegis_block* %152)
  %154 = load %struct.aegis_state*, %struct.aegis_state** %5, align 8
  %155 = call i32 @crypto_aegis128_update_a(%struct.aegis_state* %154, %union.aegis_block* %12)
  %156 = call i32 @crypto_aegis_block_xor(%union.aegis_block* %12, %union.aegis_block* %9)
  %157 = load i32*, i32** %6, align 8
  %158 = bitcast %union.aegis_block* %12 to i32**
  %159 = load i32*, i32** %158, align 8
  %160 = load i32, i32* %8, align 4
  %161 = call i32 @memcpy(i32* %157, i32* %159, i32 %160)
  br label %162

162:                                              ; preds = %126, %123
  ret void
}

declare dso_local i64 @AEGIS_ALIGNED(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @crypto_aegis_block_and(%union.aegis_block*, %union.aegis_block*) #1

declare dso_local i32 @crypto_aegis_block_xor(%union.aegis_block*, %union.aegis_block*) #1

declare dso_local i32 @crypto_aegis128_update_a(%struct.aegis_state*, %union.aegis_block*) #1

declare dso_local i32 @crypto_xor(i32*, i32*, i32) #1

declare dso_local i32 @crypto_aegis128_update_u(%struct.aegis_state*, i32*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
