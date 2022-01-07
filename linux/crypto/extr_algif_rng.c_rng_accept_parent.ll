; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_algif_rng.c_rng_accept_parent.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_algif_rng.c_rng_accept_parent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.rng_ctx = type { i32, i8* }
%struct.alg_sock = type { %struct.rng_ctx* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@rng_sock_destruct = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.sock*)* @rng_accept_parent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rng_accept_parent(i8* %0, %struct.sock* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.sock*, align 8
  %6 = alloca %struct.rng_ctx*, align 8
  %7 = alloca %struct.alg_sock*, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.sock* %1, %struct.sock** %5, align 8
  %9 = load %struct.sock*, %struct.sock** %5, align 8
  %10 = call %struct.alg_sock* @alg_sk(%struct.sock* %9)
  store %struct.alg_sock* %10, %struct.alg_sock** %7, align 8
  store i32 16, i32* %8, align 4
  %11 = load %struct.sock*, %struct.sock** %5, align 8
  %12 = load i32, i32* %8, align 4
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.rng_ctx* @sock_kmalloc(%struct.sock* %11, i32 %12, i32 %13)
  store %struct.rng_ctx* %14, %struct.rng_ctx** %6, align 8
  %15 = load %struct.rng_ctx*, %struct.rng_ctx** %6, align 8
  %16 = icmp ne %struct.rng_ctx* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %2
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %33

20:                                               ; preds = %2
  %21 = load i32, i32* %8, align 4
  %22 = load %struct.rng_ctx*, %struct.rng_ctx** %6, align 8
  %23 = getelementptr inbounds %struct.rng_ctx, %struct.rng_ctx* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 8
  %24 = load i8*, i8** %4, align 8
  %25 = load %struct.rng_ctx*, %struct.rng_ctx** %6, align 8
  %26 = getelementptr inbounds %struct.rng_ctx, %struct.rng_ctx* %25, i32 0, i32 1
  store i8* %24, i8** %26, align 8
  %27 = load %struct.rng_ctx*, %struct.rng_ctx** %6, align 8
  %28 = load %struct.alg_sock*, %struct.alg_sock** %7, align 8
  %29 = getelementptr inbounds %struct.alg_sock, %struct.alg_sock* %28, i32 0, i32 0
  store %struct.rng_ctx* %27, %struct.rng_ctx** %29, align 8
  %30 = load i32, i32* @rng_sock_destruct, align 4
  %31 = load %struct.sock*, %struct.sock** %5, align 8
  %32 = getelementptr inbounds %struct.sock, %struct.sock* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 4
  store i32 0, i32* %3, align 4
  br label %33

33:                                               ; preds = %20, %17
  %34 = load i32, i32* %3, align 4
  ret i32 %34
}

declare dso_local %struct.alg_sock* @alg_sk(%struct.sock*) #1

declare dso_local %struct.rng_ctx* @sock_kmalloc(%struct.sock*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
