; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/tpm/extr_tpm_infineon.c_tpm_data_out.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/tpm/extr_tpm_infineon.c_tpm_data_out.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64, i64 }

@tpm_dev = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@TPM_INF_IO_PORT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8, i8)* @tpm_data_out to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tpm_data_out(i8 zeroext %0, i8 zeroext %1) #0 {
  %3 = alloca i8, align 1
  %4 = alloca i8, align 1
  store i8 %0, i8* %3, align 1
  store i8 %1, i8* %4, align 1
  %5 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tpm_dev, i32 0, i32 0), align 8
  %6 = load i64, i64* @TPM_INF_IO_PORT, align 8
  %7 = icmp eq i64 %5, %6
  br i1 %7, label %8, label %15

8:                                                ; preds = %2
  %9 = load i8, i8* %3, align 1
  %10 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tpm_dev, i32 0, i32 1), align 8
  %11 = load i8, i8* %4, align 1
  %12 = zext i8 %11 to i64
  %13 = add nsw i64 %10, %12
  %14 = call i32 @outb(i8 zeroext %9, i64 %13)
  br label %24

15:                                               ; preds = %2
  %16 = load i8, i8* %3, align 1
  %17 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tpm_dev, i32 0, i32 2), align 8
  %18 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tpm_dev, i32 0, i32 1), align 8
  %19 = add nsw i64 %17, %18
  %20 = load i8, i8* %4, align 1
  %21 = zext i8 %20 to i64
  %22 = add nsw i64 %19, %21
  %23 = call i32 @writeb(i8 zeroext %16, i64 %22)
  br label %24

24:                                               ; preds = %15, %8
  ret void
}

declare dso_local i32 @outb(i8 zeroext, i64) #1

declare dso_local i32 @writeb(i8 zeroext, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
