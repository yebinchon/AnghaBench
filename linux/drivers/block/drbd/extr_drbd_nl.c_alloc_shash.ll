; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_nl.c_alloc_shash.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_nl.c_alloc_shash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_shash = type { i32 }

@NO_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crypto_shash**, i8*, i32)* @alloc_shash to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alloc_shash(%struct.crypto_shash** %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.crypto_shash**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store %struct.crypto_shash** %0, %struct.crypto_shash*** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load i8*, i8** %6, align 8
  %9 = getelementptr inbounds i8, i8* %8, i64 0
  %10 = load i8, i8* %9, align 1
  %11 = icmp ne i8 %10, 0
  br i1 %11, label %14, label %12

12:                                               ; preds = %3
  %13 = load i32, i32* @NO_ERROR, align 4
  store i32 %13, i32* %4, align 4
  br label %27

14:                                               ; preds = %3
  %15 = load i8*, i8** %6, align 8
  %16 = call %struct.crypto_shash* @crypto_alloc_shash(i8* %15, i32 0, i32 0)
  %17 = load %struct.crypto_shash**, %struct.crypto_shash*** %5, align 8
  store %struct.crypto_shash* %16, %struct.crypto_shash** %17, align 8
  %18 = load %struct.crypto_shash**, %struct.crypto_shash*** %5, align 8
  %19 = load %struct.crypto_shash*, %struct.crypto_shash** %18, align 8
  %20 = call i64 @IS_ERR(%struct.crypto_shash* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %14
  %23 = load %struct.crypto_shash**, %struct.crypto_shash*** %5, align 8
  store %struct.crypto_shash* null, %struct.crypto_shash** %23, align 8
  %24 = load i32, i32* %7, align 4
  store i32 %24, i32* %4, align 4
  br label %27

25:                                               ; preds = %14
  %26 = load i32, i32* @NO_ERROR, align 4
  store i32 %26, i32* %4, align 4
  br label %27

27:                                               ; preds = %25, %22, %12
  %28 = load i32, i32* %4, align 4
  ret i32 %28
}

declare dso_local %struct.crypto_shash* @crypto_alloc_shash(i8*, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.crypto_shash*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
