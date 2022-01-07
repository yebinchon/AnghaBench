; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_algapi.c_crypto_unregister_alg.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_algapi.c_crypto_unregister_alg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_alg = type { {}*, i32 }

@list = common dso_local global i32 0, align 4
@crypto_alg_sem = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @crypto_unregister_alg(%struct.crypto_alg* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.crypto_alg*, align 8
  %4 = alloca i32, align 4
  store %struct.crypto_alg* %0, %struct.crypto_alg** %3, align 8
  %5 = load i32, i32* @list, align 4
  %6 = call i32 @LIST_HEAD(i32 %5)
  %7 = call i32 @down_write(i32* @crypto_alg_sem)
  %8 = load %struct.crypto_alg*, %struct.crypto_alg** %3, align 8
  %9 = call i32 @crypto_remove_alg(%struct.crypto_alg* %8, i32* @list)
  store i32 %9, i32* %4, align 4
  %10 = call i32 @up_write(i32* @crypto_alg_sem)
  %11 = load i32, i32* %4, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = load i32, i32* %4, align 4
  store i32 %14, i32* %2, align 4
  br label %36

15:                                               ; preds = %1
  %16 = load %struct.crypto_alg*, %struct.crypto_alg** %3, align 8
  %17 = getelementptr inbounds %struct.crypto_alg, %struct.crypto_alg* %16, i32 0, i32 1
  %18 = call i32 @refcount_read(i32* %17)
  %19 = icmp ne i32 %18, 1
  %20 = zext i1 %19 to i32
  %21 = call i32 @BUG_ON(i32 %20)
  %22 = load %struct.crypto_alg*, %struct.crypto_alg** %3, align 8
  %23 = getelementptr inbounds %struct.crypto_alg, %struct.crypto_alg* %22, i32 0, i32 0
  %24 = bitcast {}** %23 to i32 (%struct.crypto_alg*)**
  %25 = load i32 (%struct.crypto_alg*)*, i32 (%struct.crypto_alg*)** %24, align 8
  %26 = icmp ne i32 (%struct.crypto_alg*)* %25, null
  br i1 %26, label %27, label %34

27:                                               ; preds = %15
  %28 = load %struct.crypto_alg*, %struct.crypto_alg** %3, align 8
  %29 = getelementptr inbounds %struct.crypto_alg, %struct.crypto_alg* %28, i32 0, i32 0
  %30 = bitcast {}** %29 to i32 (%struct.crypto_alg*)**
  %31 = load i32 (%struct.crypto_alg*)*, i32 (%struct.crypto_alg*)** %30, align 8
  %32 = load %struct.crypto_alg*, %struct.crypto_alg** %3, align 8
  %33 = call i32 %31(%struct.crypto_alg* %32)
  br label %34

34:                                               ; preds = %27, %15
  %35 = call i32 @crypto_remove_final(i32* @list)
  store i32 0, i32* %2, align 4
  br label %36

36:                                               ; preds = %34, %13
  %37 = load i32, i32* %2, align 4
  ret i32 %37
}

declare dso_local i32 @LIST_HEAD(i32) #1

declare dso_local i32 @down_write(i32*) #1

declare dso_local i32 @crypto_remove_alg(%struct.crypto_alg*, i32*) #1

declare dso_local i32 @up_write(i32*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @refcount_read(i32*) #1

declare dso_local i32 @crypto_remove_final(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
