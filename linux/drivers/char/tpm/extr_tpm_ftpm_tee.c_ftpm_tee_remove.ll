; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/tpm/extr_tpm_ftpm_tee.c_ftpm_tee_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/tpm/extr_tpm_ftpm_tee.c_ftpm_tee_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.ftpm_tee_private = type { i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @ftpm_tee_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ftpm_tee_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.ftpm_tee_private*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %4 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %5 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %4, i32 0, i32 0
  %6 = call %struct.ftpm_tee_private* @dev_get_drvdata(i32* %5)
  store %struct.ftpm_tee_private* %6, %struct.ftpm_tee_private** %3, align 8
  %7 = load %struct.ftpm_tee_private*, %struct.ftpm_tee_private** %3, align 8
  %8 = getelementptr inbounds %struct.ftpm_tee_private, %struct.ftpm_tee_private* %7, i32 0, i32 3
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = call i32 @tpm_chip_unregister(%struct.TYPE_2__* %9)
  %11 = load %struct.ftpm_tee_private*, %struct.ftpm_tee_private** %3, align 8
  %12 = getelementptr inbounds %struct.ftpm_tee_private, %struct.ftpm_tee_private* %11, i32 0, i32 3
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = call i32 @put_device(i32* %14)
  %16 = load %struct.ftpm_tee_private*, %struct.ftpm_tee_private** %3, align 8
  %17 = getelementptr inbounds %struct.ftpm_tee_private, %struct.ftpm_tee_private* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @tee_shm_free(i32 %18)
  %20 = load %struct.ftpm_tee_private*, %struct.ftpm_tee_private** %3, align 8
  %21 = getelementptr inbounds %struct.ftpm_tee_private, %struct.ftpm_tee_private* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.ftpm_tee_private*, %struct.ftpm_tee_private** %3, align 8
  %24 = getelementptr inbounds %struct.ftpm_tee_private, %struct.ftpm_tee_private* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @tee_client_close_session(i32 %22, i32 %25)
  %27 = load %struct.ftpm_tee_private*, %struct.ftpm_tee_private** %3, align 8
  %28 = getelementptr inbounds %struct.ftpm_tee_private, %struct.ftpm_tee_private* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @tee_client_close_context(i32 %29)
  ret i32 0
}

declare dso_local %struct.ftpm_tee_private* @dev_get_drvdata(i32*) #1

declare dso_local i32 @tpm_chip_unregister(%struct.TYPE_2__*) #1

declare dso_local i32 @put_device(i32*) #1

declare dso_local i32 @tee_shm_free(i32) #1

declare dso_local i32 @tee_client_close_session(i32, i32) #1

declare dso_local i32 @tee_client_close_context(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
