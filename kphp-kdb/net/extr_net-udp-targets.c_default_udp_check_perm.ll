; ModuleID = '/home/carl/AnghaBench/kphp-kdb/net/extr_net-udp-targets.c_default_udp_check_perm.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/net/extr_net-udp-targets.c_default_udp_check_perm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }
%struct.process_id = type { i64 }
%struct.udp_message = type { i32 }

@.str = private unnamed_addr constant [47 x i8] c"default_udp_check_perm: crypto_flags = 0x%02x\0A\00", align 1
@UDP_ALLOW_UNENC = common dso_local global i32 0, align 4
@UDP_CRYPTO_NONE = common dso_local global i32 0, align 4
@UDP_CRYPTO_AES = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"unknown crypto protocol %d\0A\00", align 1
@PID = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@UDP_ALLOW_ENC = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"check_perm returns %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @default_udp_check_perm(%struct.process_id* %0, i32 %1, %struct.udp_message* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.process_id*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.udp_message*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.process_id* %0, %struct.process_id** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.udp_message* %2, %struct.udp_message** %7, align 8
  %12 = load i32, i32* %6, align 4
  %13 = and i32 %12, 255
  %14 = call i32 @vkprintf(i32 3, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %13)
  %15 = load i32, i32* @UDP_ALLOW_UNENC, align 4
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* %6, align 4
  %17 = and i32 %16, 127
  store i32 %17, i32* %9, align 4
  %18 = load i32, i32* %9, align 4
  %19 = load i32, i32* @UDP_CRYPTO_NONE, align 4
  %20 = icmp ne i32 %18, %19
  br i1 %20, label %21, label %28

21:                                               ; preds = %3
  %22 = load i32, i32* %9, align 4
  %23 = load i32, i32* @UDP_CRYPTO_AES, align 4
  %24 = icmp ne i32 %22, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %21
  %26 = load i32, i32* %9, align 4
  %27 = call i32 @vkprintf(i32 1, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %26)
  store i32 -1, i32* %4, align 4
  br label %74

28:                                               ; preds = %21, %3
  %29 = load %struct.process_id*, %struct.process_id** %5, align 8
  %30 = getelementptr inbounds %struct.process_id, %struct.process_id* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @PID, i32 0, i32 0), align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %28
  store i32 0, i32* %8, align 4
  br label %35

35:                                               ; preds = %34, %28
  %36 = load i32, i32* %6, align 4
  %37 = and i32 %36, 128
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %35
  store i32 0, i32* %8, align 4
  br label %40

40:                                               ; preds = %39, %35
  %41 = load %struct.udp_message*, %struct.udp_message** %7, align 8
  %42 = getelementptr inbounds %struct.udp_message, %struct.udp_message* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = icmp ne i32 %43, 1
  br i1 %44, label %45, label %51

45:                                               ; preds = %40
  %46 = load %struct.udp_message*, %struct.udp_message** %7, align 8
  %47 = getelementptr inbounds %struct.udp_message, %struct.udp_message* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = icmp ne i32 %48, 2
  br i1 %49, label %50, label %51

50:                                               ; preds = %45
  store i32 0, i32* %8, align 4
  br label %51

51:                                               ; preds = %50, %45, %40
  %52 = load i32, i32* %6, align 4
  %53 = ashr i32 %52, 8
  %54 = and i32 %53, 4095
  store i32 %54, i32* %10, align 4
  %55 = load i32, i32* @UDP_ALLOW_ENC, align 4
  store i32 %55, i32* %11, align 4
  %56 = load i32, i32* %9, align 4
  %57 = load i32, i32* @UDP_CRYPTO_NONE, align 4
  %58 = icmp eq i32 %56, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %51
  store i32 0, i32* %11, align 4
  br label %60

60:                                               ; preds = %59, %51
  %61 = load i32, i32* %10, align 4
  %62 = call i32 (...) @get_crypto_key_id()
  %63 = and i32 %62, 4095
  %64 = icmp ne i32 %61, %63
  br i1 %64, label %65, label %66

65:                                               ; preds = %60
  store i32 0, i32* %11, align 4
  br label %66

66:                                               ; preds = %65, %60
  %67 = load i32, i32* %8, align 4
  %68 = load i32, i32* %11, align 4
  %69 = or i32 %67, %68
  %70 = call i32 @vkprintf(i32 3, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 %69)
  %71 = load i32, i32* %8, align 4
  %72 = load i32, i32* %11, align 4
  %73 = or i32 %71, %72
  store i32 %73, i32* %4, align 4
  br label %74

74:                                               ; preds = %66, %25
  %75 = load i32, i32* %4, align 4
  ret i32 %75
}

declare dso_local i32 @vkprintf(i32, i8*, i32) #1

declare dso_local i32 @get_crypto_key_id(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
