; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_af_alg.c_af_alg_release_parent.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_af_alg.c_af_alg_release_parent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.alg_sock = type { i32, i32, %struct.sock* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @af_alg_release_parent(%struct.sock* %0) #0 {
  %2 = alloca %struct.sock*, align 8
  %3 = alloca %struct.alg_sock*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %2, align 8
  %6 = load %struct.sock*, %struct.sock** %2, align 8
  %7 = call %struct.alg_sock* @alg_sk(%struct.sock* %6)
  store %struct.alg_sock* %7, %struct.alg_sock** %3, align 8
  %8 = load %struct.alg_sock*, %struct.alg_sock** %3, align 8
  %9 = getelementptr inbounds %struct.alg_sock, %struct.alg_sock* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %19

13:                                               ; preds = %1
  %14 = load %struct.alg_sock*, %struct.alg_sock** %3, align 8
  %15 = getelementptr inbounds %struct.alg_sock, %struct.alg_sock* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  %18 = xor i1 %17, true
  br label %19

19:                                               ; preds = %13, %1
  %20 = phi i1 [ false, %1 ], [ %18, %13 ]
  %21 = zext i1 %20 to i32
  store i32 %21, i32* %5, align 4
  %22 = load %struct.alg_sock*, %struct.alg_sock** %3, align 8
  %23 = getelementptr inbounds %struct.alg_sock, %struct.alg_sock* %22, i32 0, i32 2
  %24 = load %struct.sock*, %struct.sock** %23, align 8
  store %struct.sock* %24, %struct.sock** %2, align 8
  %25 = load %struct.sock*, %struct.sock** %2, align 8
  %26 = call %struct.alg_sock* @alg_sk(%struct.sock* %25)
  store %struct.alg_sock* %26, %struct.alg_sock** %3, align 8
  %27 = load %struct.sock*, %struct.sock** %2, align 8
  %28 = call i32 @lock_sock(%struct.sock* %27)
  %29 = load i32, i32* %4, align 4
  %30 = load %struct.alg_sock*, %struct.alg_sock** %3, align 8
  %31 = getelementptr inbounds %struct.alg_sock, %struct.alg_sock* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = sub i32 %32, %29
  store i32 %33, i32* %31, align 8
  %34 = load i32, i32* %5, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %44, label %36

36:                                               ; preds = %19
  %37 = load %struct.alg_sock*, %struct.alg_sock** %3, align 8
  %38 = getelementptr inbounds %struct.alg_sock, %struct.alg_sock* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = add nsw i32 %39, -1
  store i32 %40, i32* %38, align 4
  %41 = icmp ne i32 %40, 0
  %42 = xor i1 %41, true
  %43 = zext i1 %42 to i32
  store i32 %43, i32* %5, align 4
  br label %44

44:                                               ; preds = %36, %19
  %45 = load %struct.sock*, %struct.sock** %2, align 8
  %46 = call i32 @release_sock(%struct.sock* %45)
  %47 = load i32, i32* %5, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %44
  %50 = load %struct.sock*, %struct.sock** %2, align 8
  %51 = call i32 @sock_put(%struct.sock* %50)
  br label %52

52:                                               ; preds = %49, %44
  ret void
}

declare dso_local %struct.alg_sock* @alg_sk(%struct.sock*) #1

declare dso_local i32 @lock_sock(%struct.sock*) #1

declare dso_local i32 @release_sock(%struct.sock*) #1

declare dso_local i32 @sock_put(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
