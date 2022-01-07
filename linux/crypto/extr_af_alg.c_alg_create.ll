; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_af_alg.c_alg_create.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_af_alg.c_alg_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.socket = type { i64, i32* }
%struct.sock = type { i32 }

@SOCK_SEQPACKET = common dso_local global i64 0, align 8
@ESOCKTNOSUPPORT = common dso_local global i32 0, align 4
@EPROTONOSUPPORT = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@PF_ALG = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@alg_proto = common dso_local global i32 0, align 4
@alg_proto_ops = common dso_local global i32 0, align 4
@alg_sock_destruct = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net*, %struct.socket*, i32, i32)* @alg_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alg_create(%struct.net* %0, %struct.socket* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.net*, align 8
  %7 = alloca %struct.socket*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.sock*, align 8
  %11 = alloca i32, align 4
  store %struct.net* %0, %struct.net** %6, align 8
  store %struct.socket* %1, %struct.socket** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load %struct.socket*, %struct.socket** %7, align 8
  %13 = getelementptr inbounds %struct.socket, %struct.socket* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @SOCK_SEQPACKET, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %4
  %18 = load i32, i32* @ESOCKTNOSUPPORT, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %5, align 4
  br label %48

20:                                               ; preds = %4
  %21 = load i32, i32* %8, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %20
  %24 = load i32, i32* @EPROTONOSUPPORT, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %5, align 4
  br label %48

26:                                               ; preds = %20
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %11, align 4
  %29 = load %struct.net*, %struct.net** %6, align 8
  %30 = load i32, i32* @PF_ALG, align 4
  %31 = load i32, i32* @GFP_KERNEL, align 4
  %32 = load i32, i32* %9, align 4
  %33 = call %struct.sock* @sk_alloc(%struct.net* %29, i32 %30, i32 %31, i32* @alg_proto, i32 %32)
  store %struct.sock* %33, %struct.sock** %10, align 8
  %34 = load %struct.sock*, %struct.sock** %10, align 8
  %35 = icmp ne %struct.sock* %34, null
  br i1 %35, label %37, label %36

36:                                               ; preds = %26
  br label %46

37:                                               ; preds = %26
  %38 = load %struct.socket*, %struct.socket** %7, align 8
  %39 = getelementptr inbounds %struct.socket, %struct.socket* %38, i32 0, i32 1
  store i32* @alg_proto_ops, i32** %39, align 8
  %40 = load %struct.socket*, %struct.socket** %7, align 8
  %41 = load %struct.sock*, %struct.sock** %10, align 8
  %42 = call i32 @sock_init_data(%struct.socket* %40, %struct.sock* %41)
  %43 = load i32, i32* @alg_sock_destruct, align 4
  %44 = load %struct.sock*, %struct.sock** %10, align 8
  %45 = getelementptr inbounds %struct.sock, %struct.sock* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 4
  store i32 0, i32* %5, align 4
  br label %48

46:                                               ; preds = %36
  %47 = load i32, i32* %11, align 4
  store i32 %47, i32* %5, align 4
  br label %48

48:                                               ; preds = %46, %37, %23, %17
  %49 = load i32, i32* %5, align 4
  ret i32 %49
}

declare dso_local %struct.sock* @sk_alloc(%struct.net*, i32, i32, i32*, i32) #1

declare dso_local i32 @sock_init_data(%struct.socket*, %struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
