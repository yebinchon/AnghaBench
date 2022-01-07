; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/cavium-octeon/crypto/extr_octeon-sha1.c_octeon_sha1_store_hash.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/cavium-octeon/crypto/extr_octeon-sha1.c_octeon_sha1_store_hash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sha1_state = type { i32* }
%union.anon = type { [2 x i32] }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sha1_state*)* @octeon_sha1_store_hash to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @octeon_sha1_store_hash(%struct.sha1_state* %0) #0 {
  %2 = alloca %struct.sha1_state*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca %union.anon, align 4
  store %struct.sha1_state* %0, %struct.sha1_state** %2, align 8
  %5 = load %struct.sha1_state*, %struct.sha1_state** %2, align 8
  %6 = getelementptr inbounds %struct.sha1_state, %struct.sha1_state* %5, i32 0, i32 0
  %7 = load i32*, i32** %6, align 8
  store i32* %7, i32** %3, align 8
  %8 = bitcast %union.anon* %4 to [2 x i32]*
  %9 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  %10 = load %struct.sha1_state*, %struct.sha1_state** %2, align 8
  %11 = getelementptr inbounds %struct.sha1_state, %struct.sha1_state* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  %13 = getelementptr inbounds i32, i32* %12, i64 4
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %9, align 4
  %15 = getelementptr inbounds i32, i32* %9, i64 1
  %16 = getelementptr inbounds i32, i32* %9, i64 2
  br label %17

17:                                               ; preds = %17, %1
  %18 = phi i32* [ %15, %1 ], [ %19, %17 ]
  store i32 0, i32* %18, align 4
  %19 = getelementptr inbounds i32, i32* %18, i64 1
  %20 = icmp eq i32* %19, %16
  br i1 %20, label %21, label %17

21:                                               ; preds = %17
  %22 = load i32*, i32** %3, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @write_octeon_64bit_hash_dword(i32 %24, i32 0)
  %26 = load i32*, i32** %3, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @write_octeon_64bit_hash_dword(i32 %28, i32 1)
  %30 = bitcast %union.anon* %4 to i32*
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @write_octeon_64bit_hash_dword(i32 %31, i32 2)
  %33 = bitcast %union.anon* %4 to [2 x i32]*
  %34 = getelementptr inbounds [2 x i32], [2 x i32]* %33, i64 0, i64 0
  %35 = call i32 @memzero_explicit(i32* %34, i32 4)
  ret void
}

declare dso_local i32 @write_octeon_64bit_hash_dword(i32, i32) #1

declare dso_local i32 @memzero_explicit(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
