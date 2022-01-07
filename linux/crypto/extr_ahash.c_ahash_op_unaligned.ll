; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_ahash.c_ahash_op_unaligned.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_ahash.c_ahash_op_unaligned.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahash_request = type { i32 }

@ahash_op_unaligned_done = common dso_local global i32 0, align 4
@EINPROGRESS = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ahash_request*, i32 (%struct.ahash_request*)*)* @ahash_op_unaligned to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ahash_op_unaligned(%struct.ahash_request* %0, i32 (%struct.ahash_request*)* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ahash_request*, align 8
  %5 = alloca i32 (%struct.ahash_request*)*, align 8
  %6 = alloca i32, align 4
  store %struct.ahash_request* %0, %struct.ahash_request** %4, align 8
  store i32 (%struct.ahash_request*)* %1, i32 (%struct.ahash_request*)** %5, align 8
  %7 = load %struct.ahash_request*, %struct.ahash_request** %4, align 8
  %8 = load i32, i32* @ahash_op_unaligned_done, align 4
  %9 = call i32 @ahash_save_req(%struct.ahash_request* %7, i32 %8)
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load i32, i32* %6, align 4
  store i32 %13, i32* %3, align 4
  br label %34

14:                                               ; preds = %2
  %15 = load i32 (%struct.ahash_request*)*, i32 (%struct.ahash_request*)** %5, align 8
  %16 = load %struct.ahash_request*, %struct.ahash_request** %4, align 8
  %17 = call i32 %15(%struct.ahash_request* %16)
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* @EINPROGRESS, align 4
  %20 = sub nsw i32 0, %19
  %21 = icmp eq i32 %18, %20
  br i1 %21, label %27, label %22

22:                                               ; preds = %14
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* @EBUSY, align 4
  %25 = sub nsw i32 0, %24
  %26 = icmp eq i32 %23, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %22, %14
  %28 = load i32, i32* %6, align 4
  store i32 %28, i32* %3, align 4
  br label %34

29:                                               ; preds = %22
  %30 = load %struct.ahash_request*, %struct.ahash_request** %4, align 8
  %31 = load i32, i32* %6, align 4
  %32 = call i32 @ahash_restore_req(%struct.ahash_request* %30, i32 %31)
  %33 = load i32, i32* %6, align 4
  store i32 %33, i32* %3, align 4
  br label %34

34:                                               ; preds = %29, %27, %12
  %35 = load i32, i32* %3, align 4
  ret i32 %35
}

declare dso_local i32 @ahash_save_req(%struct.ahash_request*, i32) #1

declare dso_local i32 @ahash_restore_req(%struct.ahash_request*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
