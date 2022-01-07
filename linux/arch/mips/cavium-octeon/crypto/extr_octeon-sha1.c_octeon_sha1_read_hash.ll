; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/cavium-octeon/crypto/extr_octeon-sha1.c_octeon_sha1_read_hash.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/cavium-octeon/crypto/extr_octeon-sha1.c_octeon_sha1_read_hash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sha1_state = type { i32* }
%union.anon = type { i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sha1_state*)* @octeon_sha1_read_hash to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @octeon_sha1_read_hash(%struct.sha1_state* %0) #0 {
  %2 = alloca %struct.sha1_state*, align 8
  %3 = alloca i8**, align 8
  %4 = alloca %union.anon, align 8
  store %struct.sha1_state* %0, %struct.sha1_state** %2, align 8
  %5 = load %struct.sha1_state*, %struct.sha1_state** %2, align 8
  %6 = getelementptr inbounds %struct.sha1_state, %struct.sha1_state* %5, i32 0, i32 0
  %7 = load i32*, i32** %6, align 8
  %8 = bitcast i32* %7 to i8**
  store i8** %8, i8*** %3, align 8
  %9 = call i8* @read_octeon_64bit_hash_dword(i32 0)
  %10 = load i8**, i8*** %3, align 8
  %11 = getelementptr inbounds i8*, i8** %10, i64 0
  store i8* %9, i8** %11, align 8
  %12 = call i8* @read_octeon_64bit_hash_dword(i32 1)
  %13 = load i8**, i8*** %3, align 8
  %14 = getelementptr inbounds i8*, i8** %13, i64 1
  store i8* %12, i8** %14, align 8
  %15 = call i8* @read_octeon_64bit_hash_dword(i32 2)
  %16 = bitcast %union.anon* %4 to i8**
  store i8* %15, i8** %16, align 8
  %17 = bitcast %union.anon* %4 to [2 x i32]*
  %18 = getelementptr inbounds [2 x i32], [2 x i32]* %17, i64 0, i64 0
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.sha1_state*, %struct.sha1_state** %2, align 8
  %21 = getelementptr inbounds %struct.sha1_state, %struct.sha1_state* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 4
  store i32 %19, i32* %23, align 4
  %24 = bitcast %union.anon* %4 to i8**
  %25 = call i32 @memzero_explicit(i8** %24, i32 8)
  ret void
}

declare dso_local i8* @read_octeon_64bit_hash_dword(i32) #1

declare dso_local i32 @memzero_explicit(i8**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
