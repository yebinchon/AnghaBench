; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_algif_hash.c_hash_sock_destruct.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_algif_hash.c_hash_sock_destruct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.alg_sock = type { %struct.hash_ctx* }
%struct.hash_ctx = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sock*)* @hash_sock_destruct to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hash_sock_destruct(%struct.sock* %0) #0 {
  %2 = alloca %struct.sock*, align 8
  %3 = alloca %struct.alg_sock*, align 8
  %4 = alloca %struct.hash_ctx*, align 8
  store %struct.sock* %0, %struct.sock** %2, align 8
  %5 = load %struct.sock*, %struct.sock** %2, align 8
  %6 = call %struct.alg_sock* @alg_sk(%struct.sock* %5)
  store %struct.alg_sock* %6, %struct.alg_sock** %3, align 8
  %7 = load %struct.alg_sock*, %struct.alg_sock** %3, align 8
  %8 = getelementptr inbounds %struct.alg_sock, %struct.alg_sock* %7, i32 0, i32 0
  %9 = load %struct.hash_ctx*, %struct.hash_ctx** %8, align 8
  store %struct.hash_ctx* %9, %struct.hash_ctx** %4, align 8
  %10 = load %struct.sock*, %struct.sock** %2, align 8
  %11 = load %struct.hash_ctx*, %struct.hash_ctx** %4, align 8
  %12 = call i32 @hash_free_result(%struct.sock* %10, %struct.hash_ctx* %11)
  %13 = load %struct.sock*, %struct.sock** %2, align 8
  %14 = load %struct.hash_ctx*, %struct.hash_ctx** %4, align 8
  %15 = load %struct.hash_ctx*, %struct.hash_ctx** %4, align 8
  %16 = getelementptr inbounds %struct.hash_ctx, %struct.hash_ctx* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @sock_kfree_s(%struct.sock* %13, %struct.hash_ctx* %14, i32 %17)
  %19 = load %struct.sock*, %struct.sock** %2, align 8
  %20 = call i32 @af_alg_release_parent(%struct.sock* %19)
  ret void
}

declare dso_local %struct.alg_sock* @alg_sk(%struct.sock*) #1

declare dso_local i32 @hash_free_result(%struct.sock*, %struct.hash_ctx*) #1

declare dso_local i32 @sock_kfree_s(%struct.sock*, %struct.hash_ctx*, i32) #1

declare dso_local i32 @af_alg_release_parent(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
