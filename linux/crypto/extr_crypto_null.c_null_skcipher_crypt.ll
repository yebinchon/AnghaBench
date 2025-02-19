; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_crypto_null.c_null_skcipher_crypt.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_crypto_null.c_null_skcipher_crypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.skcipher_request = type { i32 }
%struct.skcipher_walk = type { i64, %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.skcipher_request*)* @null_skcipher_crypt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @null_skcipher_crypt(%struct.skcipher_request* %0) #0 {
  %2 = alloca %struct.skcipher_request*, align 8
  %3 = alloca %struct.skcipher_walk, align 8
  %4 = alloca i32, align 4
  store %struct.skcipher_request* %0, %struct.skcipher_request** %2, align 8
  %5 = load %struct.skcipher_request*, %struct.skcipher_request** %2, align 8
  %6 = call i32 @skcipher_walk_virt(%struct.skcipher_walk* %3, %struct.skcipher_request* %5, i32 0)
  store i32 %6, i32* %4, align 4
  br label %7

7:                                                ; preds = %33, %1
  %8 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %3, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %35

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %3, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %3, i32 0, i32 2
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %15, %19
  br i1 %20, label %21, label %33

21:                                               ; preds = %11
  %22 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %3, i32 0, i32 2
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %3, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %3, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = call i32 @memcpy(i64 %25, i64 %29, i64 %31)
  br label %33

33:                                               ; preds = %21, %11
  %34 = call i32 @skcipher_walk_done(%struct.skcipher_walk* %3, i32 0)
  store i32 %34, i32* %4, align 4
  br label %7

35:                                               ; preds = %7
  %36 = load i32, i32* %4, align 4
  ret i32 %36
}

declare dso_local i32 @skcipher_walk_virt(%struct.skcipher_walk*, %struct.skcipher_request*, i32) #1

declare dso_local i32 @memcpy(i64, i64, i64) #1

declare dso_local i32 @skcipher_walk_done(%struct.skcipher_walk*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
