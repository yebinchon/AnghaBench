; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_testmgr.c_alg_check_testvec_configs.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_testmgr.c_alg_check_testvec_configs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@default_cipher_testvec_configs = common dso_local global i32* null, align 8
@default_hash_testvec_configs = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @alg_check_testvec_configs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @alg_check_testvec_configs() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  br label %2

2:                                                ; preds = %17, %0
  %3 = load i32, i32* %1, align 4
  %4 = load i32*, i32** @default_cipher_testvec_configs, align 8
  %5 = call i32 @ARRAY_SIZE(i32* %4)
  %6 = icmp slt i32 %3, %5
  br i1 %6, label %7, label %20

7:                                                ; preds = %2
  %8 = load i32*, i32** @default_cipher_testvec_configs, align 8
  %9 = load i32, i32* %1, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds i32, i32* %8, i64 %10
  %12 = call i32 @valid_testvec_config(i32* %11)
  %13 = icmp ne i32 %12, 0
  %14 = xor i1 %13, true
  %15 = zext i1 %14 to i32
  %16 = call i32 @WARN_ON(i32 %15)
  br label %17

17:                                               ; preds = %7
  %18 = load i32, i32* %1, align 4
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* %1, align 4
  br label %2

20:                                               ; preds = %2
  store i32 0, i32* %1, align 4
  br label %21

21:                                               ; preds = %36, %20
  %22 = load i32, i32* %1, align 4
  %23 = load i32*, i32** @default_hash_testvec_configs, align 8
  %24 = call i32 @ARRAY_SIZE(i32* %23)
  %25 = icmp slt i32 %22, %24
  br i1 %25, label %26, label %39

26:                                               ; preds = %21
  %27 = load i32*, i32** @default_hash_testvec_configs, align 8
  %28 = load i32, i32* %1, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  %31 = call i32 @valid_testvec_config(i32* %30)
  %32 = icmp ne i32 %31, 0
  %33 = xor i1 %32, true
  %34 = zext i1 %33 to i32
  %35 = call i32 @WARN_ON(i32 %34)
  br label %36

36:                                               ; preds = %26
  %37 = load i32, i32* %1, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %1, align 4
  br label %21

39:                                               ; preds = %21
  ret void
}

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @valid_testvec_config(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
