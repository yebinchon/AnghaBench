; ModuleID = '/home/carl/AnghaBench/kphp-kdb/net/extr_net-crypto-aes.c_aes_generate_nonce.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/net/extr_net-crypto-aes.c_aes_generate_nonce.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timespec = type { i32, i32 }

@rand_buf = common dso_local global i64 0, align 8
@CLOCK_REALTIME = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @aes_generate_nonce(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.timespec, align 4
  store i8* %0, i8** %2, align 8
  %4 = call i32 (...) @lrand48()
  %5 = load i64, i64* @rand_buf, align 8
  %6 = add nsw i64 %5, 16
  %7 = inttoptr i64 %6 to i32*
  store i32 %4, i32* %7, align 4
  %8 = call i32 (...) @lrand48()
  %9 = load i64, i64* @rand_buf, align 8
  %10 = add nsw i64 %9, 20
  %11 = inttoptr i64 %10 to i32*
  store i32 %8, i32* %11, align 4
  %12 = call i64 (...) @rdtsc()
  %13 = load i64, i64* @rand_buf, align 8
  %14 = add nsw i64 %13, 24
  %15 = inttoptr i64 %14 to i64*
  store i64 %12, i64* %15, align 8
  %16 = load i32, i32* @CLOCK_REALTIME, align 4
  %17 = call i64 @clock_gettime(i32 %16, %struct.timespec* %3)
  %18 = icmp sge i64 %17, 0
  %19 = zext i1 %18 to i32
  %20 = call i32 @assert(i32 %19)
  %21 = getelementptr inbounds %struct.timespec, %struct.timespec* %3, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i64, i64* @rand_buf, align 8
  %24 = add nsw i64 %23, 32
  %25 = inttoptr i64 %24 to i32*
  store i32 %22, i32* %25, align 4
  %26 = getelementptr inbounds %struct.timespec, %struct.timespec* %3, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load i64, i64* @rand_buf, align 8
  %29 = add nsw i64 %28, 36
  %30 = inttoptr i64 %29 to i32*
  store i32 %27, i32* %30, align 4
  %31 = load i64, i64* @rand_buf, align 8
  %32 = add nsw i64 %31, 40
  %33 = inttoptr i64 %32 to i32*
  %34 = load i32, i32* %33, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %33, align 4
  %36 = load i64, i64* @rand_buf, align 8
  %37 = inttoptr i64 %36 to i8*
  %38 = load i8*, i8** %2, align 8
  %39 = call i32 @md5(i8* %37, i32 44, i8* %38)
  ret i32 0
}

declare dso_local i32 @lrand48(...) #1

declare dso_local i64 @rdtsc(...) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @clock_gettime(i32, %struct.timespec*) #1

declare dso_local i32 @md5(i8*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
