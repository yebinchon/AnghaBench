; ModuleID = '/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_ldc.c_tx_has_space_for.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_ldc.c_tx_has_space_for.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ldc_channel = type { i64, i64, i32 }

@LDC_PACKET_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ldc_channel*, i32)* @tx_has_space_for to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tx_has_space_for(%struct.ldc_channel* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ldc_channel*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.ldc_channel* %0, %struct.ldc_channel** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.ldc_channel*, %struct.ldc_channel** %4, align 8
  %12 = call i64 @head_for_data(%struct.ldc_channel* %11)
  store i64 %12, i64* %6, align 8
  %13 = load %struct.ldc_channel*, %struct.ldc_channel** %4, align 8
  %14 = getelementptr inbounds %struct.ldc_channel, %struct.ldc_channel* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  store i64 %15, i64* %7, align 8
  %16 = load %struct.ldc_channel*, %struct.ldc_channel** %4, align 8
  %17 = load i64, i64* %7, align 8
  %18 = call i64 @tx_advance(%struct.ldc_channel* %16, i64 %17)
  store i64 %18, i64* %8, align 8
  %19 = load i64, i64* %8, align 8
  %20 = load i64, i64* %6, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %57

23:                                               ; preds = %2
  %24 = load i64, i64* %6, align 8
  %25 = load i64, i64* %8, align 8
  %26 = icmp ugt i64 %24, %25
  br i1 %26, label %27, label %31

27:                                               ; preds = %23
  %28 = load i64, i64* %6, align 8
  %29 = load i64, i64* %8, align 8
  %30 = sub i64 %28, %29
  store i64 %30, i64* %9, align 8
  br label %41

31:                                               ; preds = %23
  %32 = load i64, i64* %6, align 8
  %33 = load %struct.ldc_channel*, %struct.ldc_channel** %4, align 8
  %34 = getelementptr inbounds %struct.ldc_channel, %struct.ldc_channel* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @LDC_PACKET_SIZE, align 8
  %37 = mul i64 %35, %36
  %38 = load i64, i64* %8, align 8
  %39 = sub i64 %37, %38
  %40 = add i64 %32, %39
  store i64 %40, i64* %9, align 8
  br label %41

41:                                               ; preds = %31, %27
  %42 = load i64, i64* @LDC_PACKET_SIZE, align 8
  %43 = load i64, i64* %9, align 8
  %44 = udiv i64 %43, %42
  store i64 %44, i64* %9, align 8
  %45 = load %struct.ldc_channel*, %struct.ldc_channel** %4, align 8
  %46 = getelementptr inbounds %struct.ldc_channel, %struct.ldc_channel* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  store i32 %47, i32* %10, align 4
  %48 = load i64, i64* %9, align 8
  %49 = load i32, i32* %10, align 4
  %50 = zext i32 %49 to i64
  %51 = mul i64 %48, %50
  %52 = load i32, i32* %5, align 4
  %53 = zext i32 %52 to i64
  %54 = icmp ult i64 %51, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %41
  store i32 0, i32* %3, align 4
  br label %57

56:                                               ; preds = %41
  store i32 1, i32* %3, align 4
  br label %57

57:                                               ; preds = %56, %55, %22
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

declare dso_local i64 @head_for_data(%struct.ldc_channel*) #1

declare dso_local i64 @tx_advance(%struct.ldc_channel*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
