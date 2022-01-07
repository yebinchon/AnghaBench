; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_algapi.c_crypto_free_instance.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_algapi.c_crypto_free_instance.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_instance = type { %struct.TYPE_6__, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 (%struct.crypto_instance*)* }
%struct.TYPE_4__ = type { i32 (%struct.crypto_instance*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.crypto_instance*)* @crypto_free_instance to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @crypto_free_instance(%struct.crypto_instance* %0) #0 {
  %2 = alloca %struct.crypto_instance*, align 8
  store %struct.crypto_instance* %0, %struct.crypto_instance** %2, align 8
  %3 = load %struct.crypto_instance*, %struct.crypto_instance** %2, align 8
  %4 = getelementptr inbounds %struct.crypto_instance, %struct.crypto_instance* %3, i32 0, i32 0
  %5 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 0
  %6 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  %8 = load i32 (%struct.crypto_instance*)*, i32 (%struct.crypto_instance*)** %7, align 8
  %9 = icmp ne i32 (%struct.crypto_instance*)* %8, null
  br i1 %9, label %18, label %10

10:                                               ; preds = %1
  %11 = load %struct.crypto_instance*, %struct.crypto_instance** %2, align 8
  %12 = getelementptr inbounds %struct.crypto_instance, %struct.crypto_instance* %11, i32 0, i32 1
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i32 (%struct.crypto_instance*)*, i32 (%struct.crypto_instance*)** %14, align 8
  %16 = load %struct.crypto_instance*, %struct.crypto_instance** %2, align 8
  %17 = call i32 %15(%struct.crypto_instance* %16)
  br label %27

18:                                               ; preds = %1
  %19 = load %struct.crypto_instance*, %struct.crypto_instance** %2, align 8
  %20 = getelementptr inbounds %struct.crypto_instance, %struct.crypto_instance* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load i32 (%struct.crypto_instance*)*, i32 (%struct.crypto_instance*)** %23, align 8
  %25 = load %struct.crypto_instance*, %struct.crypto_instance** %2, align 8
  %26 = call i32 %24(%struct.crypto_instance* %25)
  br label %27

27:                                               ; preds = %18, %10
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
