; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_algapi.c_crypto_init_spawn.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_algapi.c_crypto_init_spawn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_spawn = type { %struct.crypto_alg*, i32, i32, %struct.crypto_instance* }
%struct.crypto_alg = type { i32 }
%struct.crypto_instance = type { i32 }

@EAGAIN = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@crypto_alg_sem = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @crypto_init_spawn(%struct.crypto_spawn* %0, %struct.crypto_alg* %1, %struct.crypto_instance* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.crypto_spawn*, align 8
  %7 = alloca %struct.crypto_alg*, align 8
  %8 = alloca %struct.crypto_instance*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.crypto_spawn* %0, %struct.crypto_spawn** %6, align 8
  store %struct.crypto_alg* %1, %struct.crypto_alg** %7, align 8
  store %struct.crypto_instance* %2, %struct.crypto_instance** %8, align 8
  store i32 %3, i32* %9, align 4
  %11 = load i32, i32* @EAGAIN, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %10, align 4
  %13 = load %struct.crypto_instance*, %struct.crypto_instance** %8, align 8
  %14 = icmp eq %struct.crypto_instance* %13, null
  %15 = zext i1 %14 to i32
  %16 = call i64 @WARN_ON_ONCE(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %4
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %5, align 4
  br label %44

21:                                               ; preds = %4
  %22 = load %struct.crypto_instance*, %struct.crypto_instance** %8, align 8
  %23 = load %struct.crypto_spawn*, %struct.crypto_spawn** %6, align 8
  %24 = getelementptr inbounds %struct.crypto_spawn, %struct.crypto_spawn* %23, i32 0, i32 3
  store %struct.crypto_instance* %22, %struct.crypto_instance** %24, align 8
  %25 = load i32, i32* %9, align 4
  %26 = load %struct.crypto_spawn*, %struct.crypto_spawn** %6, align 8
  %27 = getelementptr inbounds %struct.crypto_spawn, %struct.crypto_spawn* %26, i32 0, i32 2
  store i32 %25, i32* %27, align 4
  %28 = call i32 @down_write(i32* @crypto_alg_sem)
  %29 = load %struct.crypto_alg*, %struct.crypto_alg** %7, align 8
  %30 = call i32 @crypto_is_moribund(%struct.crypto_alg* %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %41, label %32

32:                                               ; preds = %21
  %33 = load %struct.crypto_spawn*, %struct.crypto_spawn** %6, align 8
  %34 = getelementptr inbounds %struct.crypto_spawn, %struct.crypto_spawn* %33, i32 0, i32 1
  %35 = load %struct.crypto_alg*, %struct.crypto_alg** %7, align 8
  %36 = getelementptr inbounds %struct.crypto_alg, %struct.crypto_alg* %35, i32 0, i32 0
  %37 = call i32 @list_add(i32* %34, i32* %36)
  %38 = load %struct.crypto_alg*, %struct.crypto_alg** %7, align 8
  %39 = load %struct.crypto_spawn*, %struct.crypto_spawn** %6, align 8
  %40 = getelementptr inbounds %struct.crypto_spawn, %struct.crypto_spawn* %39, i32 0, i32 0
  store %struct.crypto_alg* %38, %struct.crypto_alg** %40, align 8
  store i32 0, i32* %10, align 4
  br label %41

41:                                               ; preds = %32, %21
  %42 = call i32 @up_write(i32* @crypto_alg_sem)
  %43 = load i32, i32* %10, align 4
  store i32 %43, i32* %5, align 4
  br label %44

44:                                               ; preds = %41, %18
  %45 = load i32, i32* %5, align 4
  ret i32 %45
}

declare dso_local i64 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @down_write(i32*) #1

declare dso_local i32 @crypto_is_moribund(%struct.crypto_alg*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @up_write(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
