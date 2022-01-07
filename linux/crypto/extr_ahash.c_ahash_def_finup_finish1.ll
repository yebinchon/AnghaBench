; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_ahash.c_ahash_def_finup_finish1.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_ahash.c_ahash_def_finup_finish1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahash_request = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32 (%struct.ahash_request*)* }

@ahash_def_finup_done2 = common dso_local global i32 0, align 4
@EINPROGRESS = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ahash_request*, i32)* @ahash_def_finup_finish1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ahash_def_finup_finish1(%struct.ahash_request* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ahash_request*, align 8
  %5 = alloca i32, align 4
  store %struct.ahash_request* %0, %struct.ahash_request** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %2
  br label %32

9:                                                ; preds = %2
  %10 = load i32, i32* @ahash_def_finup_done2, align 4
  %11 = load %struct.ahash_request*, %struct.ahash_request** %4, align 8
  %12 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  store i32 %10, i32* %13, align 4
  %14 = load %struct.ahash_request*, %struct.ahash_request** %4, align 8
  %15 = call %struct.TYPE_4__* @crypto_ahash_reqtfm(%struct.ahash_request* %14)
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32 (%struct.ahash_request*)*, i32 (%struct.ahash_request*)** %16, align 8
  %18 = load %struct.ahash_request*, %struct.ahash_request** %4, align 8
  %19 = call i32 %17(%struct.ahash_request* %18)
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* @EINPROGRESS, align 4
  %22 = sub nsw i32 0, %21
  %23 = icmp eq i32 %20, %22
  br i1 %23, label %29, label %24

24:                                               ; preds = %9
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* @EBUSY, align 4
  %27 = sub nsw i32 0, %26
  %28 = icmp eq i32 %25, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %24, %9
  %30 = load i32, i32* %5, align 4
  store i32 %30, i32* %3, align 4
  br label %37

31:                                               ; preds = %24
  br label %32

32:                                               ; preds = %31, %8
  %33 = load %struct.ahash_request*, %struct.ahash_request** %4, align 8
  %34 = load i32, i32* %5, align 4
  %35 = call i32 @ahash_restore_req(%struct.ahash_request* %33, i32 %34)
  %36 = load i32, i32* %5, align 4
  store i32 %36, i32* %3, align 4
  br label %37

37:                                               ; preds = %32, %29
  %38 = load i32, i32* %3, align 4
  ret i32 %38
}

declare dso_local %struct.TYPE_4__* @crypto_ahash_reqtfm(%struct.ahash_request*) #1

declare dso_local i32 @ahash_restore_req(%struct.ahash_request*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
