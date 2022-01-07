; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/crypto/extr_sha512_s390.c_sha512_export.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/crypto/extr_sha512_s390.c_sha512_export.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.shash_desc = type { i32 }
%struct.s390_sha_ctx = type { i32, i32, i64 }
%struct.sha512_state = type { i32, i32, i64* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.shash_desc*, i8*)* @sha512_export to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sha512_export(%struct.shash_desc* %0, i8* %1) #0 {
  %3 = alloca %struct.shash_desc*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.s390_sha_ctx*, align 8
  %6 = alloca %struct.sha512_state*, align 8
  store %struct.shash_desc* %0, %struct.shash_desc** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load %struct.shash_desc*, %struct.shash_desc** %3, align 8
  %8 = call %struct.s390_sha_ctx* @shash_desc_ctx(%struct.shash_desc* %7)
  store %struct.s390_sha_ctx* %8, %struct.s390_sha_ctx** %5, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.sha512_state*
  store %struct.sha512_state* %10, %struct.sha512_state** %6, align 8
  %11 = load %struct.s390_sha_ctx*, %struct.s390_sha_ctx** %5, align 8
  %12 = getelementptr inbounds %struct.s390_sha_ctx, %struct.s390_sha_ctx* %11, i32 0, i32 2
  %13 = load i64, i64* %12, align 8
  %14 = load %struct.sha512_state*, %struct.sha512_state** %6, align 8
  %15 = getelementptr inbounds %struct.sha512_state, %struct.sha512_state* %14, i32 0, i32 2
  %16 = load i64*, i64** %15, align 8
  %17 = getelementptr inbounds i64, i64* %16, i64 0
  store i64 %13, i64* %17, align 8
  %18 = load %struct.sha512_state*, %struct.sha512_state** %6, align 8
  %19 = getelementptr inbounds %struct.sha512_state, %struct.sha512_state* %18, i32 0, i32 2
  %20 = load i64*, i64** %19, align 8
  %21 = getelementptr inbounds i64, i64* %20, i64 1
  store i64 0, i64* %21, align 8
  %22 = load %struct.sha512_state*, %struct.sha512_state** %6, align 8
  %23 = getelementptr inbounds %struct.sha512_state, %struct.sha512_state* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.s390_sha_ctx*, %struct.s390_sha_ctx** %5, align 8
  %26 = getelementptr inbounds %struct.s390_sha_ctx, %struct.s390_sha_ctx* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @memcpy(i32 %24, i32 %27, i32 4)
  %29 = load %struct.sha512_state*, %struct.sha512_state** %6, align 8
  %30 = getelementptr inbounds %struct.sha512_state, %struct.sha512_state* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.s390_sha_ctx*, %struct.s390_sha_ctx** %5, align 8
  %33 = getelementptr inbounds %struct.s390_sha_ctx, %struct.s390_sha_ctx* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
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
