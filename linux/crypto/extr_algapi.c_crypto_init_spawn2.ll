; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_algapi.c_crypto_init_spawn2.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_algapi.c_crypto_init_spawn2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_spawn = type { %struct.crypto_type* }
%struct.crypto_alg = type { i32 }
%struct.crypto_instance = type { i32 }
%struct.crypto_type = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @crypto_init_spawn2(%struct.crypto_spawn* %0, %struct.crypto_alg* %1, %struct.crypto_instance* %2, %struct.crypto_type* %3) #0 {
  %5 = alloca %struct.crypto_spawn*, align 8
  %6 = alloca %struct.crypto_alg*, align 8
  %7 = alloca %struct.crypto_instance*, align 8
  %8 = alloca %struct.crypto_type*, align 8
  %9 = alloca i32, align 4
  store %struct.crypto_spawn* %0, %struct.crypto_spawn** %5, align 8
  store %struct.crypto_alg* %1, %struct.crypto_alg** %6, align 8
  store %struct.crypto_instance* %2, %struct.crypto_instance** %7, align 8
  store %struct.crypto_type* %3, %struct.crypto_type** %8, align 8
  %10 = load i32, i32* @EINVAL, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %9, align 4
  %12 = load %struct.crypto_alg*, %struct.crypto_alg** %6, align 8
  %13 = getelementptr inbounds %struct.crypto_alg, %struct.crypto_alg* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.crypto_type*, %struct.crypto_type** %8, align 8
  %16 = getelementptr inbounds %struct.crypto_type, %struct.crypto_type* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = xor i32 %14, %17
  %19 = load %struct.crypto_type*, %struct.crypto_type** %8, align 8
  %20 = getelementptr inbounds %struct.crypto_type, %struct.crypto_type* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = and i32 %18, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %4
  br label %36

25:                                               ; preds = %4
  %26 = load %struct.crypto_type*, %struct.crypto_type** %8, align 8
  %27 = load %struct.crypto_spawn*, %struct.crypto_spawn** %5, align 8
  %28 = getelementptr inbounds %struct.crypto_spawn, %struct.crypto_spawn* %27, i32 0, i32 0
  store %struct.crypto_type* %26, %struct.crypto_type** %28, align 8
  %29 = load %struct.crypto_spawn*, %struct.crypto_spawn** %5, align 8
  %30 = load %struct.crypto_alg*, %struct.crypto_alg** %6, align 8
  %31 = load %struct.crypto_instance*, %struct.crypto_instance** %7, align 8
  %32 = load %struct.crypto_type*, %struct.crypto_type** %8, align 8
  %33 = getelementptr inbounds %struct.crypto_type, %struct.crypto_type* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @crypto_init_spawn(%struct.crypto_spawn* %29, %struct.crypto_alg* %30, %struct.crypto_instance* %31, i32 %34)
  store i32 %35, i32* %9, align 4
  br label %36

36:                                               ; preds = %25, %24
  %37 = load i32, i32* %9, align 4
  ret i32 %37
}

declare dso_local i32 @crypto_init_spawn(%struct.crypto_spawn*, %struct.crypto_alg*, %struct.crypto_instance*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
