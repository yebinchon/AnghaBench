; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_testmgr.c_alloc_cipher_test_sglists.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_testmgr.c_alloc_cipher_test_sglists.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cipher_test_sglists = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.cipher_test_sglists* ()* @alloc_cipher_test_sglists to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.cipher_test_sglists* @alloc_cipher_test_sglists() #0 {
  %1 = alloca %struct.cipher_test_sglists*, align 8
  %2 = alloca %struct.cipher_test_sglists*, align 8
  %3 = load i32, i32* @GFP_KERNEL, align 4
  %4 = call %struct.cipher_test_sglists* @kmalloc(i32 8, i32 %3)
  store %struct.cipher_test_sglists* %4, %struct.cipher_test_sglists** %2, align 8
  %5 = load %struct.cipher_test_sglists*, %struct.cipher_test_sglists** %2, align 8
  %6 = icmp ne %struct.cipher_test_sglists* %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %0
  store %struct.cipher_test_sglists* null, %struct.cipher_test_sglists** %1, align 8
  br label %29

8:                                                ; preds = %0
  %9 = load %struct.cipher_test_sglists*, %struct.cipher_test_sglists** %2, align 8
  %10 = getelementptr inbounds %struct.cipher_test_sglists, %struct.cipher_test_sglists* %9, i32 0, i32 0
  %11 = call i64 @init_test_sglist(i32* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %8
  br label %26

14:                                               ; preds = %8
  %15 = load %struct.cipher_test_sglists*, %struct.cipher_test_sglists** %2, align 8
  %16 = getelementptr inbounds %struct.cipher_test_sglists, %struct.cipher_test_sglists* %15, i32 0, i32 1
  %17 = call i64 @init_test_sglist(i32* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %14
  br label %22

20:                                               ; preds = %14
  %21 = load %struct.cipher_test_sglists*, %struct.cipher_test_sglists** %2, align 8
  store %struct.cipher_test_sglists* %21, %struct.cipher_test_sglists** %1, align 8
  br label %29

22:                                               ; preds = %19
  %23 = load %struct.cipher_test_sglists*, %struct.cipher_test_sglists** %2, align 8
  %24 = getelementptr inbounds %struct.cipher_test_sglists, %struct.cipher_test_sglists* %23, i32 0, i32 0
  %25 = call i32 @destroy_test_sglist(i32* %24)
  br label %26

26:                                               ; preds = %22, %13
  %27 = load %struct.cipher_test_sglists*, %struct.cipher_test_sglists** %2, align 8
  %28 = call i32 @kfree(%struct.cipher_test_sglists* %27)
  store %struct.cipher_test_sglists* null, %struct.cipher_test_sglists** %1, align 8
  br label %29

29:                                               ; preds = %26, %20, %7
  %30 = load %struct.cipher_test_sglists*, %struct.cipher_test_sglists** %1, align 8
  ret %struct.cipher_test_sglists* %30
}

declare dso_local %struct.cipher_test_sglists* @kmalloc(i32, i32) #1

declare dso_local i64 @init_test_sglist(i32*) #1

declare dso_local i32 @destroy_test_sglist(i32*) #1

declare dso_local i32 @kfree(%struct.cipher_test_sglists*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
