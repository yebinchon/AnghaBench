; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/tpm/extr_tpm_vtpm_proxy.c_vtpm_proxy_create_proxy_dev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/tpm/extr_tpm_vtpm_proxy.c_vtpm_proxy_create_proxy_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.proxy_dev = type { %struct.tpm_chip*, i32, i32, i32 }
%struct.tpm_chip = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@vtpm_proxy_work = common dso_local global i32 0, align 4
@vtpm_proxy_tpm_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.proxy_dev* ()* @vtpm_proxy_create_proxy_dev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.proxy_dev* @vtpm_proxy_create_proxy_dev() #0 {
  %1 = alloca %struct.proxy_dev*, align 8
  %2 = alloca %struct.proxy_dev*, align 8
  %3 = alloca %struct.tpm_chip*, align 8
  %4 = alloca i32, align 4
  %5 = load i32, i32* @GFP_KERNEL, align 4
  %6 = call %struct.proxy_dev* @kzalloc(i32 24, i32 %5)
  store %struct.proxy_dev* %6, %struct.proxy_dev** %2, align 8
  %7 = load %struct.proxy_dev*, %struct.proxy_dev** %2, align 8
  %8 = icmp eq %struct.proxy_dev* %7, null
  br i1 %8, label %9, label %13

9:                                                ; preds = %0
  %10 = load i32, i32* @ENOMEM, align 4
  %11 = sub nsw i32 0, %10
  %12 = call %struct.proxy_dev* @ERR_PTR(i32 %11)
  store %struct.proxy_dev* %12, %struct.proxy_dev** %1, align 8
  br label %45

13:                                               ; preds = %0
  %14 = load %struct.proxy_dev*, %struct.proxy_dev** %2, align 8
  %15 = getelementptr inbounds %struct.proxy_dev, %struct.proxy_dev* %14, i32 0, i32 3
  %16 = call i32 @init_waitqueue_head(i32* %15)
  %17 = load %struct.proxy_dev*, %struct.proxy_dev** %2, align 8
  %18 = getelementptr inbounds %struct.proxy_dev, %struct.proxy_dev* %17, i32 0, i32 2
  %19 = call i32 @mutex_init(i32* %18)
  %20 = load %struct.proxy_dev*, %struct.proxy_dev** %2, align 8
  %21 = getelementptr inbounds %struct.proxy_dev, %struct.proxy_dev* %20, i32 0, i32 1
  %22 = load i32, i32* @vtpm_proxy_work, align 4
  %23 = call i32 @INIT_WORK(i32* %21, i32 %22)
  %24 = call %struct.tpm_chip* @tpm_chip_alloc(i32* null, i32* @vtpm_proxy_tpm_ops)
  store %struct.tpm_chip* %24, %struct.tpm_chip** %3, align 8
  %25 = load %struct.tpm_chip*, %struct.tpm_chip** %3, align 8
  %26 = call i64 @IS_ERR(%struct.tpm_chip* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %13
  %29 = load %struct.tpm_chip*, %struct.tpm_chip** %3, align 8
  %30 = call i32 @PTR_ERR(%struct.tpm_chip* %29)
  store i32 %30, i32* %4, align 4
  br label %40

31:                                               ; preds = %13
  %32 = load %struct.tpm_chip*, %struct.tpm_chip** %3, align 8
  %33 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %32, i32 0, i32 0
  %34 = load %struct.proxy_dev*, %struct.proxy_dev** %2, align 8
  %35 = call i32 @dev_set_drvdata(i32* %33, %struct.proxy_dev* %34)
  %36 = load %struct.tpm_chip*, %struct.tpm_chip** %3, align 8
  %37 = load %struct.proxy_dev*, %struct.proxy_dev** %2, align 8
  %38 = getelementptr inbounds %struct.proxy_dev, %struct.proxy_dev* %37, i32 0, i32 0
  store %struct.tpm_chip* %36, %struct.tpm_chip** %38, align 8
  %39 = load %struct.proxy_dev*, %struct.proxy_dev** %2, align 8
  store %struct.proxy_dev* %39, %struct.proxy_dev** %1, align 8
  br label %45

40:                                               ; preds = %28
  %41 = load %struct.proxy_dev*, %struct.proxy_dev** %2, align 8
  %42 = call i32 @kfree(%struct.proxy_dev* %41)
  %43 = load i32, i32* %4, align 4
  %44 = call %struct.proxy_dev* @ERR_PTR(i32 %43)
  store %struct.proxy_dev* %44, %struct.proxy_dev** %1, align 8
  br label %45

45:                                               ; preds = %40, %31, %9
  %46 = load %struct.proxy_dev*, %struct.proxy_dev** %1, align 8
  ret %struct.proxy_dev* %46
}

declare dso_local %struct.proxy_dev* @kzalloc(i32, i32) #1

declare dso_local %struct.proxy_dev* @ERR_PTR(i32) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local %struct.tpm_chip* @tpm_chip_alloc(i32*, i32*) #1

declare dso_local i64 @IS_ERR(%struct.tpm_chip*) #1

declare dso_local i32 @PTR_ERR(%struct.tpm_chip*) #1

declare dso_local i32 @dev_set_drvdata(i32*, %struct.proxy_dev*) #1

declare dso_local i32 @kfree(%struct.proxy_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
