; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_algapi.c_crypto_spawn_alg.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_algapi.c_crypto_spawn_alg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_alg = type { i32 }
%struct.crypto_spawn = type { %struct.crypto_alg* }

@crypto_alg_sem = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.crypto_alg* (%struct.crypto_spawn*)* @crypto_spawn_alg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.crypto_alg* @crypto_spawn_alg(%struct.crypto_spawn* %0) #0 {
  %2 = alloca %struct.crypto_alg*, align 8
  %3 = alloca %struct.crypto_spawn*, align 8
  %4 = alloca %struct.crypto_alg*, align 8
  %5 = alloca %struct.crypto_alg*, align 8
  store %struct.crypto_spawn* %0, %struct.crypto_spawn** %3, align 8
  %6 = call i32 @down_read(i32* @crypto_alg_sem)
  %7 = load %struct.crypto_spawn*, %struct.crypto_spawn** %3, align 8
  %8 = getelementptr inbounds %struct.crypto_spawn, %struct.crypto_spawn* %7, i32 0, i32 0
  %9 = load %struct.crypto_alg*, %struct.crypto_alg** %8, align 8
  store %struct.crypto_alg* %9, %struct.crypto_alg** %4, align 8
  %10 = load %struct.crypto_alg*, %struct.crypto_alg** %4, align 8
  store %struct.crypto_alg* %10, %struct.crypto_alg** %5, align 8
  %11 = load %struct.crypto_alg*, %struct.crypto_alg** %5, align 8
  %12 = icmp ne %struct.crypto_alg* %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %1
  %14 = load %struct.crypto_alg*, %struct.crypto_alg** %5, align 8
  %15 = call %struct.crypto_alg* @crypto_mod_get(%struct.crypto_alg* %14)
  store %struct.crypto_alg* %15, %struct.crypto_alg** %5, align 8
  br label %16

16:                                               ; preds = %13, %1
  %17 = call i32 @up_read(i32* @crypto_alg_sem)
  %18 = load %struct.crypto_alg*, %struct.crypto_alg** %5, align 8
  %19 = icmp ne %struct.crypto_alg* %18, null
  br i1 %19, label %30, label %20

20:                                               ; preds = %16
  %21 = load %struct.crypto_alg*, %struct.crypto_alg** %4, align 8
  %22 = icmp ne %struct.crypto_alg* %21, null
  br i1 %22, label %23, label %26

23:                                               ; preds = %20
  %24 = load %struct.crypto_alg*, %struct.crypto_alg** %4, align 8
  %25 = call i32 @crypto_shoot_alg(%struct.crypto_alg* %24)
  br label %26

26:                                               ; preds = %23, %20
  %27 = load i32, i32* @EAGAIN, align 4
  %28 = sub nsw i32 0, %27
  %29 = call %struct.crypto_alg* @ERR_PTR(i32 %28)
  store %struct.crypto_alg* %29, %struct.crypto_alg** %2, align 8
  br label %32

30:                                               ; preds = %16
  %31 = load %struct.crypto_alg*, %struct.crypto_alg** %4, align 8
  store %struct.crypto_alg* %31, %struct.crypto_alg** %2, align 8
  br label %32

32:                                               ; preds = %30, %26
  %33 = load %struct.crypto_alg*, %struct.crypto_alg** %2, align 8
  ret %struct.crypto_alg* %33
}

declare dso_local i32 @down_read(i32*) #1

declare dso_local %struct.crypto_alg* @crypto_mod_get(%struct.crypto_alg*) #1

declare dso_local i32 @up_read(i32*) #1

declare dso_local i32 @crypto_shoot_alg(%struct.crypto_alg*) #1

declare dso_local %struct.crypto_alg* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
