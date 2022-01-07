; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_gcm.c_gcm_hash_init_continue.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_gcm.c_gcm_hash_init_continue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aead_request = type { i64, i32 }

@gcm_hash_assoc_done = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.aead_request*, i32)* @gcm_hash_init_continue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gcm_hash_init_continue(%struct.aead_request* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.aead_request*, align 8
  %5 = alloca i32, align 4
  store %struct.aead_request* %0, %struct.aead_request** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.aead_request*, %struct.aead_request** %4, align 8
  %7 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %31

10:                                               ; preds = %2
  %11 = load %struct.aead_request*, %struct.aead_request** %4, align 8
  %12 = load i32, i32* @gcm_hash_assoc_done, align 4
  %13 = load %struct.aead_request*, %struct.aead_request** %4, align 8
  %14 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.aead_request*, %struct.aead_request** %4, align 8
  %17 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i32, i32* %5, align 4
  %20 = call i64 @gcm_hash_update(%struct.aead_request* %11, i32 %12, i32 %15, i64 %18, i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %10
  br label %28

23:                                               ; preds = %10
  %24 = load %struct.aead_request*, %struct.aead_request** %4, align 8
  %25 = load i32, i32* %5, align 4
  %26 = call i32 @gcm_hash_assoc_continue(%struct.aead_request* %24, i32 %25)
  %27 = sext i32 %26 to i64
  br label %28

28:                                               ; preds = %23, %22
  %29 = phi i64 [ %20, %22 ], [ %27, %23 ]
  %30 = trunc i64 %29 to i32
  store i32 %30, i32* %3, align 4
  br label %35

31:                                               ; preds = %2
  %32 = load %struct.aead_request*, %struct.aead_request** %4, align 8
  %33 = load i32, i32* %5, align 4
  %34 = call i32 @gcm_hash_assoc_remain_continue(%struct.aead_request* %32, i32 %33)
  store i32 %34, i32* %3, align 4
  br label %35

35:                                               ; preds = %31, %28
  %36 = load i32, i32* %3, align 4
  ret i32 %36
}

declare dso_local i64 @gcm_hash_update(%struct.aead_request*, i32, i32, i64, i32) #1

declare dso_local i32 @gcm_hash_assoc_continue(%struct.aead_request*, i32) #1

declare dso_local i32 @gcm_hash_assoc_remain_continue(%struct.aead_request*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
