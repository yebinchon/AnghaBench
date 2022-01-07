; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/tpm/extr_tpm_vtpm_proxy.c_vtpm_proxy_tpm_req_canceled.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/tpm/extr_tpm_vtpm_proxy.c_vtpm_proxy_tpm_req_canceled.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tpm_chip = type { i32 }
%struct.proxy_dev = type { i32, i32 }

@STATE_OPENED_FLAG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tpm_chip*, i32)* @vtpm_proxy_tpm_req_canceled to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vtpm_proxy_tpm_req_canceled(%struct.tpm_chip* %0, i32 %1) #0 {
  %3 = alloca %struct.tpm_chip*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.proxy_dev*, align 8
  %6 = alloca i32, align 4
  store %struct.tpm_chip* %0, %struct.tpm_chip** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.tpm_chip*, %struct.tpm_chip** %3, align 8
  %8 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %7, i32 0, i32 0
  %9 = call %struct.proxy_dev* @dev_get_drvdata(i32* %8)
  store %struct.proxy_dev* %9, %struct.proxy_dev** %5, align 8
  %10 = load %struct.proxy_dev*, %struct.proxy_dev** %5, align 8
  %11 = getelementptr inbounds %struct.proxy_dev, %struct.proxy_dev* %10, i32 0, i32 1
  %12 = call i32 @mutex_lock(i32* %11)
  %13 = load %struct.proxy_dev*, %struct.proxy_dev** %5, align 8
  %14 = getelementptr inbounds %struct.proxy_dev, %struct.proxy_dev* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @STATE_OPENED_FLAG, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  %19 = xor i1 %18, true
  %20 = zext i1 %19 to i32
  store i32 %20, i32* %6, align 4
  %21 = load %struct.proxy_dev*, %struct.proxy_dev** %5, align 8
  %22 = getelementptr inbounds %struct.proxy_dev, %struct.proxy_dev* %21, i32 0, i32 1
  %23 = call i32 @mutex_unlock(i32* %22)
  %24 = load i32, i32* %6, align 4
  ret i32 %24
}

declare dso_local %struct.proxy_dev* @dev_get_drvdata(i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
