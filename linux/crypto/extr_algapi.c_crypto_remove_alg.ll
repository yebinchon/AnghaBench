; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_algapi.c_crypto_remove_alg.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_algapi.c_crypto_remove_alg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_alg = type { i32, i32 }
%struct.list_head = type { i32 }

@ENOENT = common dso_local global i32 0, align 4
@CRYPTO_ALG_DEAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crypto_alg*, %struct.list_head*)* @crypto_remove_alg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @crypto_remove_alg(%struct.crypto_alg* %0, %struct.list_head* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.crypto_alg*, align 8
  %5 = alloca %struct.list_head*, align 8
  store %struct.crypto_alg* %0, %struct.crypto_alg** %4, align 8
  store %struct.list_head* %1, %struct.list_head** %5, align 8
  %6 = load %struct.crypto_alg*, %struct.crypto_alg** %4, align 8
  %7 = getelementptr inbounds %struct.crypto_alg, %struct.crypto_alg* %6, i32 0, i32 0
  %8 = call i32 @list_empty(i32* %7)
  %9 = call i64 @unlikely(i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = load i32, i32* @ENOENT, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %3, align 4
  br label %26

14:                                               ; preds = %2
  %15 = load i32, i32* @CRYPTO_ALG_DEAD, align 4
  %16 = load %struct.crypto_alg*, %struct.crypto_alg** %4, align 8
  %17 = getelementptr inbounds %struct.crypto_alg, %struct.crypto_alg* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = or i32 %18, %15
  store i32 %19, i32* %17, align 4
  %20 = load %struct.crypto_alg*, %struct.crypto_alg** %4, align 8
  %21 = getelementptr inbounds %struct.crypto_alg, %struct.crypto_alg* %20, i32 0, i32 0
  %22 = call i32 @list_del_init(i32* %21)
  %23 = load %struct.crypto_alg*, %struct.crypto_alg** %4, align 8
  %24 = load %struct.list_head*, %struct.list_head** %5, align 8
  %25 = call i32 @crypto_remove_spawns(%struct.crypto_alg* %23, %struct.list_head* %24, i32* null)
  store i32 0, i32* %3, align 4
  br label %26

26:                                               ; preds = %14, %11
  %27 = load i32, i32* %3, align 4
  ret i32 %27
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @crypto_remove_spawns(%struct.crypto_alg*, %struct.list_head*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
