; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/crypto/extr_sha3_512_s390.c_sha3_384_import.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/crypto/extr_sha3_512_s390.c_sha3_384_import.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.shash_desc = type { i32 }
%struct.s390_sha_ctx = type { i32, i32, i32, i32 }
%struct.sha3_state = type { i32, i32, i32, i32 }

@ERANGE = common dso_local global i32 0, align 4
@CPACF_KIMD_SHA3_384 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.shash_desc*, i8*)* @sha3_384_import to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sha3_384_import(%struct.shash_desc* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.shash_desc*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.s390_sha_ctx*, align 8
  %7 = alloca %struct.sha3_state*, align 8
  store %struct.shash_desc* %0, %struct.shash_desc** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load %struct.shash_desc*, %struct.shash_desc** %4, align 8
  %9 = call %struct.s390_sha_ctx* @shash_desc_ctx(%struct.shash_desc* %8)
  store %struct.s390_sha_ctx* %9, %struct.s390_sha_ctx** %6, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.sha3_state*
  store %struct.sha3_state* %11, %struct.sha3_state** %7, align 8
  %12 = load %struct.sha3_state*, %struct.sha3_state** %7, align 8
  %13 = getelementptr inbounds %struct.sha3_state, %struct.sha3_state* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 4
  %15 = call i64 @unlikely(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %2
  %18 = load i32, i32* @ERANGE, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %43

20:                                               ; preds = %2
  %21 = load %struct.sha3_state*, %struct.sha3_state** %7, align 8
  %22 = getelementptr inbounds %struct.sha3_state, %struct.sha3_state* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.s390_sha_ctx*, %struct.s390_sha_ctx** %6, align 8
  %25 = getelementptr inbounds %struct.s390_sha_ctx, %struct.s390_sha_ctx* %24, i32 0, i32 3
  store i32 %23, i32* %25, align 4
  %26 = load %struct.s390_sha_ctx*, %struct.s390_sha_ctx** %6, align 8
  %27 = getelementptr inbounds %struct.s390_sha_ctx, %struct.s390_sha_ctx* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.sha3_state*, %struct.sha3_state** %7, align 8
  %30 = getelementptr inbounds %struct.sha3_state, %struct.sha3_state* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @memcpy(i32 %28, i32 %31, i32 4)
  %33 = load %struct.s390_sha_ctx*, %struct.s390_sha_ctx** %6, align 8
  %34 = getelementptr inbounds %struct.s390_sha_ctx, %struct.s390_sha_ctx* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.sha3_state*, %struct.sha3_state** %7, align 8
  %37 = getelementptr inbounds %struct.sha3_state, %struct.sha3_state* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @memcpy(i32 %35, i32 %38, i32 4)
  %40 = load i32, i32* @CPACF_KIMD_SHA3_384, align 4
  %41 = load %struct.s390_sha_ctx*, %struct.s390_sha_ctx** %6, align 8
  %42 = getelementptr inbounds %struct.s390_sha_ctx, %struct.s390_sha_ctx* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 4
  store i32 0, i32* %3, align 4
  br label %43

43:                                               ; preds = %20, %17
  %44 = load i32, i32* %3, align 4
  ret i32 %44
}

declare dso_local %struct.s390_sha_ctx* @shash_desc_ctx(%struct.shash_desc*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
