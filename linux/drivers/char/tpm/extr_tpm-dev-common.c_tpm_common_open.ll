; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/tpm/extr_tpm-dev-common.c_tpm_common_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/tpm/extr_tpm-dev-common.c_tpm_common_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.file_priv* }
%struct.tpm_chip = type { i32 }
%struct.file_priv = type { i32, i32, i32, i32, i32, i32, %struct.tpm_space*, %struct.tpm_chip* }
%struct.tpm_space = type { i32 }

@user_reader_timeout = common dso_local global i32 0, align 4
@tpm_timeout_work = common dso_local global i32 0, align 4
@tpm_dev_async_work = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tpm_common_open(%struct.file* %0, %struct.tpm_chip* %1, %struct.file_priv* %2, %struct.tpm_space* %3) #0 {
  %5 = alloca %struct.file*, align 8
  %6 = alloca %struct.tpm_chip*, align 8
  %7 = alloca %struct.file_priv*, align 8
  %8 = alloca %struct.tpm_space*, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store %struct.tpm_chip* %1, %struct.tpm_chip** %6, align 8
  store %struct.file_priv* %2, %struct.file_priv** %7, align 8
  store %struct.tpm_space* %3, %struct.tpm_space** %8, align 8
  %9 = load %struct.tpm_chip*, %struct.tpm_chip** %6, align 8
  %10 = load %struct.file_priv*, %struct.file_priv** %7, align 8
  %11 = getelementptr inbounds %struct.file_priv, %struct.file_priv* %10, i32 0, i32 7
  store %struct.tpm_chip* %9, %struct.tpm_chip** %11, align 8
  %12 = load %struct.tpm_space*, %struct.tpm_space** %8, align 8
  %13 = load %struct.file_priv*, %struct.file_priv** %7, align 8
  %14 = getelementptr inbounds %struct.file_priv, %struct.file_priv* %13, i32 0, i32 6
  store %struct.tpm_space* %12, %struct.tpm_space** %14, align 8
  %15 = load %struct.file_priv*, %struct.file_priv** %7, align 8
  %16 = getelementptr inbounds %struct.file_priv, %struct.file_priv* %15, i32 0, i32 0
  store i32 1, i32* %16, align 8
  %17 = load %struct.file_priv*, %struct.file_priv** %7, align 8
  %18 = getelementptr inbounds %struct.file_priv, %struct.file_priv* %17, i32 0, i32 5
  %19 = call i32 @mutex_init(i32* %18)
  %20 = load %struct.file_priv*, %struct.file_priv** %7, align 8
  %21 = getelementptr inbounds %struct.file_priv, %struct.file_priv* %20, i32 0, i32 4
  %22 = load i32, i32* @user_reader_timeout, align 4
  %23 = call i32 @timer_setup(i32* %21, i32 %22, i32 0)
  %24 = load %struct.file_priv*, %struct.file_priv** %7, align 8
  %25 = getelementptr inbounds %struct.file_priv, %struct.file_priv* %24, i32 0, i32 3
  %26 = load i32, i32* @tpm_timeout_work, align 4
  %27 = call i32 @INIT_WORK(i32* %25, i32 %26)
  %28 = load %struct.file_priv*, %struct.file_priv** %7, align 8
  %29 = getelementptr inbounds %struct.file_priv, %struct.file_priv* %28, i32 0, i32 2
  %30 = load i32, i32* @tpm_dev_async_work, align 4
  %31 = call i32 @INIT_WORK(i32* %29, i32 %30)
  %32 = load %struct.file_priv*, %struct.file_priv** %7, align 8
  %33 = getelementptr inbounds %struct.file_priv, %struct.file_priv* %32, i32 0, i32 1
  %34 = call i32 @init_waitqueue_head(i32* %33)
  %35 = load %struct.file_priv*, %struct.file_priv** %7, align 8
  %36 = load %struct.file*, %struct.file** %5, align 8
  %37 = getelementptr inbounds %struct.file, %struct.file* %36, i32 0, i32 0
  store %struct.file_priv* %35, %struct.file_priv** %37, align 8
  ret void
}

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @timer_setup(i32*, i32, i32) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
