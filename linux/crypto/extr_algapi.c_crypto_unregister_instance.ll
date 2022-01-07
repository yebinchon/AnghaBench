; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_algapi.c_crypto_unregister_instance.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_algapi.c_crypto_unregister_instance.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_instance = type { i32 }

@list = common dso_local global i32 0, align 4
@crypto_alg_sem = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @crypto_unregister_instance(%struct.crypto_instance* %0) #0 {
  %2 = alloca %struct.crypto_instance*, align 8
  store %struct.crypto_instance* %0, %struct.crypto_instance** %2, align 8
  %3 = load i32, i32* @list, align 4
  %4 = call i32 @LIST_HEAD(i32 %3)
  %5 = call i32 @down_write(i32* @crypto_alg_sem)
  %6 = load %struct.crypto_instance*, %struct.crypto_instance** %2, align 8
  %7 = getelementptr inbounds %struct.crypto_instance, %struct.crypto_instance* %6, i32 0, i32 0
  %8 = call i32 @crypto_remove_spawns(i32* %7, i32* @list, i32* null)
  %9 = load %struct.crypto_instance*, %struct.crypto_instance** %2, align 8
  %10 = call i32 @crypto_remove_instance(%struct.crypto_instance* %9, i32* @list)
  %11 = call i32 @up_write(i32* @crypto_alg_sem)
  %12 = call i32 @crypto_remove_final(i32* @list)
  ret i32 0
}

declare dso_local i32 @LIST_HEAD(i32) #1

declare dso_local i32 @down_write(i32*) #1

declare dso_local i32 @crypto_remove_spawns(i32*, i32*, i32*) #1

declare dso_local i32 @crypto_remove_instance(%struct.crypto_instance*, i32*) #1

declare dso_local i32 @up_write(i32*) #1

declare dso_local i32 @crypto_remove_final(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
