; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/crypto/extr_sha3_512_s390.c_sha3_512_export.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/crypto/extr_sha3_512_s390.c_sha3_512_export.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.shash_desc = type { i32 }
%struct.s390_sha_ctx = type { i32, i32, i32 }
%struct.sha3_state = type { i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.shash_desc*, i8*)* @sha3_512_export to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sha3_512_export(%struct.shash_desc* %0, i8* %1) #0 {
  %3 = alloca %struct.shash_desc*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.s390_sha_ctx*, align 8
  %6 = alloca %struct.sha3_state*, align 8
  store %struct.shash_desc* %0, %struct.shash_desc** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load %struct.shash_desc*, %struct.shash_desc** %3, align 8
  %8 = call %struct.s390_sha_ctx* @shash_desc_ctx(%struct.shash_desc* %7)
  store %struct.s390_sha_ctx* %8, %struct.s390_sha_ctx** %5, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.sha3_state*
  store %struct.sha3_state* %10, %struct.sha3_state** %6, align 8
  %11 = load %struct.s390_sha_ctx*, %struct.s390_sha_ctx** %5, align 8
  %12 = getelementptr inbounds %struct.s390_sha_ctx, %struct.s390_sha_ctx* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.sha3_state*, %struct.sha3_state** %6, align 8
  %15 = getelementptr inbounds %struct.sha3_state, %struct.sha3_state* %14, i32 0, i32 0
  store i32 %13, i32* %15, align 4
  %16 = load %struct.s390_sha_ctx*, %struct.s390_sha_ctx** %5, align 8
  %17 = getelementptr inbounds %struct.s390_sha_ctx, %struct.s390_sha_ctx* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = ashr i32 %18, 32
  %20 = load %struct.sha3_state*, %struct.sha3_state** %6, align 8
  %21 = getelementptr inbounds %struct.sha3_state, %struct.sha3_state* %20, i32 0, i32 1
  store i32 %19, i32* %21, align 4
  %22 = load %struct.sha3_state*, %struct.sha3_state** %6, align 8
  %23 = getelementptr inbounds %struct.sha3_state, %struct.sha3_state* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.s390_sha_ctx*, %struct.s390_sha_ctx** %5, align 8
  %26 = getelementptr inbounds %struct.s390_sha_ctx, %struct.s390_sha_ctx* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @memcpy(i32 %24, i32 %27, i32 4)
  %29 = load %struct.sha3_state*, %struct.sha3_state** %6, align 8
  %30 = getelementptr inbounds %struct.sha3_state, %struct.sha3_state* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.s390_sha_ctx*, %struct.s390_sha_ctx** %5, align 8
  %33 = getelementptr inbounds %struct.s390_sha_ctx, %struct.s390_sha_ctx* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @memcpy(i32 %31, i32 %34, i32 4)
  ret i32 0
}

declare dso_local %struct.s390_sha_ctx* @shash_desc_ctx(%struct.shash_desc*) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
