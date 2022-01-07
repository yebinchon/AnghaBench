; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_ahash.c_ahash_def_finup.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_ahash.c_ahash_def_finup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahash_request = type { i32 }
%struct.crypto_ahash = type { i32 (%struct.ahash_request.0*)* }
%struct.ahash_request.0 = type opaque

@ahash_def_finup_done1 = common dso_local global i32 0, align 4
@EINPROGRESS = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ahash_request*)* @ahash_def_finup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ahash_def_finup(%struct.ahash_request* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ahash_request*, align 8
  %4 = alloca %struct.crypto_ahash*, align 8
  %5 = alloca i32, align 4
  store %struct.ahash_request* %0, %struct.ahash_request** %3, align 8
  %6 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %7 = call %struct.crypto_ahash* @crypto_ahash_reqtfm(%struct.ahash_request* %6)
  store %struct.crypto_ahash* %7, %struct.crypto_ahash** %4, align 8
  %8 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %9 = load i32, i32* @ahash_def_finup_done1, align 4
  %10 = call i32 @ahash_save_req(%struct.ahash_request* %8, i32 %9)
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = load i32, i32* %5, align 4
  store i32 %14, i32* %2, align 4
  br label %37

15:                                               ; preds = %1
  %16 = load %struct.crypto_ahash*, %struct.crypto_ahash** %4, align 8
  %17 = getelementptr inbounds %struct.crypto_ahash, %struct.crypto_ahash* %16, i32 0, i32 0
  %18 = load i32 (%struct.ahash_request.0*)*, i32 (%struct.ahash_request.0*)** %17, align 8
  %19 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %20 = bitcast %struct.ahash_request* %19 to %struct.ahash_request.0*
  %21 = call i32 %18(%struct.ahash_request.0* %20)
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* @EINPROGRESS, align 4
  %24 = sub nsw i32 0, %23
  %25 = icmp eq i32 %22, %24
  br i1 %25, label %31, label %26

26:                                               ; preds = %15
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* @EBUSY, align 4
  %29 = sub nsw i32 0, %28
  %30 = icmp eq i32 %27, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %26, %15
  %32 = load i32, i32* %5, align 4
  store i32 %32, i32* %2, align 4
  br label %37

33:                                               ; preds = %26
  %34 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %35 = load i32, i32* %5, align 4
  %36 = call i32 @ahash_def_finup_finish1(%struct.ahash_request* %34, i32 %35)
  store i32 %36, i32* %2, align 4
  br label %37

37:                                               ; preds = %33, %31, %13
  %38 = load i32, i32* %2, align 4
  ret i32 %38
}

declare dso_local %struct.crypto_ahash* @crypto_ahash_reqtfm(%struct.ahash_request*) #1

declare dso_local i32 @ahash_save_req(%struct.ahash_request*, i32) #1

declare dso_local i32 @ahash_def_finup_finish1(%struct.ahash_request*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
