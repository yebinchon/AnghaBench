; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_algapi.c_crypto_grab_spawn.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_algapi.c_crypto_grab_spawn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_spawn = type { i32, i32 }
%struct.crypto_alg = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @crypto_grab_spawn(%struct.crypto_spawn* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.crypto_spawn*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.crypto_alg*, align 8
  %11 = alloca i32, align 4
  store %struct.crypto_spawn* %0, %struct.crypto_spawn** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load i8*, i8** %7, align 8
  %13 = load %struct.crypto_spawn*, %struct.crypto_spawn** %6, align 8
  %14 = getelementptr inbounds %struct.crypto_spawn, %struct.crypto_spawn* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* %8, align 4
  %17 = load i32, i32* %9, align 4
  %18 = call %struct.crypto_alg* @crypto_find_alg(i8* %12, i32 %15, i32 %16, i32 %17)
  store %struct.crypto_alg* %18, %struct.crypto_alg** %10, align 8
  %19 = load %struct.crypto_alg*, %struct.crypto_alg** %10, align 8
  %20 = call i64 @IS_ERR(%struct.crypto_alg* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %4
  %23 = load %struct.crypto_alg*, %struct.crypto_alg** %10, align 8
  %24 = call i32 @PTR_ERR(%struct.crypto_alg* %23)
  store i32 %24, i32* %5, align 4
  br label %36

25:                                               ; preds = %4
  %26 = load %struct.crypto_spawn*, %struct.crypto_spawn** %6, align 8
  %27 = load %struct.crypto_alg*, %struct.crypto_alg** %10, align 8
  %28 = load %struct.crypto_spawn*, %struct.crypto_spawn** %6, align 8
  %29 = getelementptr inbounds %struct.crypto_spawn, %struct.crypto_spawn* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %9, align 4
  %32 = call i32 @crypto_init_spawn(%struct.crypto_spawn* %26, %struct.crypto_alg* %27, i32 %30, i32 %31)
  store i32 %32, i32* %11, align 4
  %33 = load %struct.crypto_alg*, %struct.crypto_alg** %10, align 8
  %34 = call i32 @crypto_mod_put(%struct.crypto_alg* %33)
  %35 = load i32, i32* %11, align 4
  store i32 %35, i32* %5, align 4
  br label %36

36:                                               ; preds = %25, %22
  %37 = load i32, i32* %5, align 4
  ret i32 %37
}

declare dso_local %struct.crypto_alg* @crypto_find_alg(i8*, i32, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.crypto_alg*) #1

declare dso_local i32 @PTR_ERR(%struct.crypto_alg*) #1

declare dso_local i32 @crypto_init_spawn(%struct.crypto_spawn*, %struct.crypto_alg*, i32, i32) #1

declare dso_local i32 @crypto_mod_put(%struct.crypto_alg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
