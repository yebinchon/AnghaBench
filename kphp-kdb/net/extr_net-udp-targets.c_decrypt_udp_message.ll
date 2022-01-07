; ModuleID = '/home/carl/AnghaBench/kphp-kdb/net/extr_net-udp-targets.c_decrypt_udp_message.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/net/extr_net-udp-targets.c_decrypt_udp_message.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.raw_message = type { i32 }
%struct.vk_aes_ctx = type { i32 }

@.str = private unnamed_addr constant [48 x i8] c"Length of encrypted part is not multiple of 16\0A\00", align 1
@decrypt_udp_message.t = internal global [32 x i8] zeroinitializer, align 16
@verbosity = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @decrypt_udp_message(%struct.raw_message* %0, %struct.vk_aes_ctx* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.raw_message*, align 8
  %6 = alloca %struct.vk_aes_ctx*, align 8
  %7 = alloca i8*, align 8
  store %struct.raw_message* %0, %struct.raw_message** %5, align 8
  store %struct.vk_aes_ctx* %1, %struct.vk_aes_ctx** %6, align 8
  store i8* %2, i8** %7, align 8
  %8 = load %struct.raw_message*, %struct.raw_message** %5, align 8
  %9 = getelementptr inbounds %struct.raw_message, %struct.raw_message* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = and i32 %10, 15
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %3
  %14 = call i32 @vkprintf(i32 1, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %51

15:                                               ; preds = %3
  %16 = load i8*, i8** %7, align 8
  %17 = call i32 @memcpy(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @decrypt_udp_message.t, i64 0, i64 0), i8* %16, i32 32)
  %18 = load %struct.raw_message*, %struct.raw_message** %5, align 8
  %19 = getelementptr inbounds %struct.raw_message, %struct.raw_message* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = and i32 %20, 15
  %22 = icmp ne i32 %21, 0
  %23 = xor i1 %22, true
  %24 = zext i1 %23 to i32
  %25 = call i32 @assert(i32 %24)
  %26 = load i32, i32* @verbosity, align 4
  %27 = icmp sge i32 %26, 4
  br i1 %27, label %28, label %31

28:                                               ; preds = %15
  %29 = load %struct.raw_message*, %struct.raw_message** %5, align 8
  %30 = call i32 @rwm_dump(%struct.raw_message* %29)
  br label %31

31:                                               ; preds = %28, %15
  %32 = load %struct.raw_message*, %struct.raw_message** %5, align 8
  %33 = load %struct.raw_message*, %struct.raw_message** %5, align 8
  %34 = getelementptr inbounds %struct.raw_message, %struct.raw_message* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.vk_aes_ctx*, %struct.vk_aes_ctx** %6, align 8
  %37 = load i8*, i8** %7, align 8
  %38 = call i32 @rwm_encrypt_decrypt(%struct.raw_message* %32, i32 %35, %struct.vk_aes_ctx* %36, i8* %37)
  %39 = load %struct.raw_message*, %struct.raw_message** %5, align 8
  %40 = getelementptr inbounds %struct.raw_message, %struct.raw_message* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = icmp eq i32 %38, %41
  %43 = zext i1 %42 to i32
  %44 = call i32 @assert(i32 %43)
  %45 = load i32, i32* @verbosity, align 4
  %46 = icmp sge i32 %45, 4
  br i1 %46, label %47, label %50

47:                                               ; preds = %31
  %48 = load %struct.raw_message*, %struct.raw_message** %5, align 8
  %49 = call i32 @rwm_dump(%struct.raw_message* %48)
  br label %50

50:                                               ; preds = %47, %31
  store i32 0, i32* %4, align 4
  br label %51

51:                                               ; preds = %50, %13
  %52 = load i32, i32* %4, align 4
  ret i32 %52
}

declare dso_local i32 @vkprintf(i32, i8*) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @rwm_dump(%struct.raw_message*) #1

declare dso_local i32 @rwm_encrypt_decrypt(%struct.raw_message*, i32, %struct.vk_aes_ctx*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
