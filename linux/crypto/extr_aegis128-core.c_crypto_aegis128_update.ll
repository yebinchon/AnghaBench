; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_aegis128-core.c_crypto_aegis128_update.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_aegis128-core.c_crypto_aegis128_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aegis_state = type { %union.aegis_block* }
%union.aegis_block = type { i32 }

@AEGIS128_STATE_BLOCKS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.aegis_state*)* @crypto_aegis128_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @crypto_aegis128_update(%struct.aegis_state* %0) #0 {
  %2 = alloca %struct.aegis_state*, align 8
  %3 = alloca %union.aegis_block, align 4
  %4 = alloca i32, align 4
  store %struct.aegis_state* %0, %struct.aegis_state** %2, align 8
  %5 = load %struct.aegis_state*, %struct.aegis_state** %2, align 8
  %6 = getelementptr inbounds %struct.aegis_state, %struct.aegis_state* %5, i32 0, i32 0
  %7 = load %union.aegis_block*, %union.aegis_block** %6, align 8
  %8 = load i32, i32* @AEGIS128_STATE_BLOCKS, align 4
  %9 = sub nsw i32 %8, 1
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds %union.aegis_block, %union.aegis_block* %7, i64 %10
  %12 = bitcast %union.aegis_block* %3 to i8*
  %13 = bitcast %union.aegis_block* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %12, i8* align 4 %13, i64 4, i1 false)
  %14 = load i32, i32* @AEGIS128_STATE_BLOCKS, align 4
  %15 = sub nsw i32 %14, 1
  store i32 %15, i32* %4, align 4
  br label %16

16:                                               ; preds = %40, %1
  %17 = load i32, i32* %4, align 4
  %18 = icmp ugt i32 %17, 0
  br i1 %18, label %19, label %43

19:                                               ; preds = %16
  %20 = load %struct.aegis_state*, %struct.aegis_state** %2, align 8
  %21 = getelementptr inbounds %struct.aegis_state, %struct.aegis_state* %20, i32 0, i32 0
  %22 = load %union.aegis_block*, %union.aegis_block** %21, align 8
  %23 = load i32, i32* %4, align 4
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds %union.aegis_block, %union.aegis_block* %22, i64 %24
  %26 = load %struct.aegis_state*, %struct.aegis_state** %2, align 8
  %27 = getelementptr inbounds %struct.aegis_state, %struct.aegis_state* %26, i32 0, i32 0
  %28 = load %union.aegis_block*, %union.aegis_block** %27, align 8
  %29 = load i32, i32* %4, align 4
  %30 = sub i32 %29, 1
  %31 = zext i32 %30 to i64
  %32 = getelementptr inbounds %union.aegis_block, %union.aegis_block* %28, i64 %31
  %33 = load %struct.aegis_state*, %struct.aegis_state** %2, align 8
  %34 = getelementptr inbounds %struct.aegis_state, %struct.aegis_state* %33, i32 0, i32 0
  %35 = load %union.aegis_block*, %union.aegis_block** %34, align 8
  %36 = load i32, i32* %4, align 4
  %37 = zext i32 %36 to i64
  %38 = getelementptr inbounds %union.aegis_block, %union.aegis_block* %35, i64 %37
  %39 = call i32 @crypto_aegis_aesenc(%union.aegis_block* %25, %union.aegis_block* %32, %union.aegis_block* %38)
  br label %40

40:                                               ; preds = %19
  %41 = load i32, i32* %4, align 4
  %42 = add i32 %41, -1
  store i32 %42, i32* %4, align 4
  br label %16

43:                                               ; preds = %16
  %44 = load %struct.aegis_state*, %struct.aegis_state** %2, align 8
  %45 = getelementptr inbounds %struct.aegis_state, %struct.aegis_state* %44, i32 0, i32 0
  %46 = load %union.aegis_block*, %union.aegis_block** %45, align 8
  %47 = getelementptr inbounds %union.aegis_block, %union.aegis_block* %46, i64 0
  %48 = load %struct.aegis_state*, %struct.aegis_state** %2, align 8
  %49 = getelementptr inbounds %struct.aegis_state, %struct.aegis_state* %48, i32 0, i32 0
  %50 = load %union.aegis_block*, %union.aegis_block** %49, align 8
  %51 = getelementptr inbounds %union.aegis_block, %union.aegis_block* %50, i64 0
  %52 = call i32 @crypto_aegis_aesenc(%union.aegis_block* %47, %union.aegis_block* %3, %union.aegis_block* %51)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @crypto_aegis_aesenc(%union.aegis_block*, %union.aegis_block*, %union.aegis_block*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
