; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/powernv/extr_pci.c_pnv_pci_set_power_state.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/powernv/extr_pci.c_pnv_pci_set_power_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.opal_msg = type { i32 }

@OPAL_PCI_SET_POWER_STATE = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@OPAL_SUCCESS = common dso_local global i64 0, align 8
@OPAL_ASYNC_COMPLETION = common dso_local global i64 0, align 8
@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pnv_pci_set_power_state(i32 %0, i32 %1, %struct.opal_msg* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.opal_msg*, align 8
  %8 = alloca %struct.opal_msg, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store %struct.opal_msg* %2, %struct.opal_msg** %7, align 8
  %12 = load i32, i32* @OPAL_PCI_SET_POWER_STATE, align 4
  %13 = call i32 @opal_check_token(i32 %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %3
  %16 = load i32, i32* @ENXIO, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %4, align 4
  br label %61

18:                                               ; preds = %3
  %19 = call i32 (...) @opal_async_get_token_interruptible()
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* %9, align 4
  %21 = icmp slt i32 %20, 0
  %22 = zext i1 %21 to i32
  %23 = call i64 @unlikely(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %18
  %26 = load i32, i32* %9, align 4
  store i32 %26, i32* %4, align 4
  br label %61

27:                                               ; preds = %18
  %28 = load i32, i32* %9, align 4
  %29 = load i32, i32* %5, align 4
  %30 = ptrtoint i32* %6 to i32
  %31 = call i64 @opal_pci_set_power_state(i32 %28, i32 %29, i32 %30)
  store i64 %31, i64* %11, align 8
  %32 = load i64, i64* %11, align 8
  %33 = load i64, i64* @OPAL_SUCCESS, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %27
  store i32 0, i32* %10, align 4
  br label %57

36:                                               ; preds = %27
  %37 = load i64, i64* %11, align 8
  %38 = load i64, i64* @OPAL_ASYNC_COMPLETION, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %36
  %41 = load i32, i32* @EIO, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %10, align 4
  br label %57

43:                                               ; preds = %36
  br label %44

44:                                               ; preds = %43
  %45 = load i32, i32* %9, align 4
  %46 = call i32 @opal_async_wait_response(i32 %45, %struct.opal_msg* %8)
  store i32 %46, i32* %10, align 4
  %47 = load i32, i32* %10, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %44
  br label %57

50:                                               ; preds = %44
  %51 = load %struct.opal_msg*, %struct.opal_msg** %7, align 8
  %52 = icmp ne %struct.opal_msg* %51, null
  br i1 %52, label %53, label %56

53:                                               ; preds = %50
  store i32 1, i32* %10, align 4
  %54 = load %struct.opal_msg*, %struct.opal_msg** %7, align 8
  %55 = call i32 @memcpy(%struct.opal_msg* %54, %struct.opal_msg* %8, i32 4)
  br label %56

56:                                               ; preds = %53, %50
  br label %57

57:                                               ; preds = %56, %49, %40, %35
  %58 = load i32, i32* %9, align 4
  %59 = call i32 @opal_async_release_token(i32 %58)
  %60 = load i32, i32* %10, align 4
  store i32 %60, i32* %4, align 4
  br label %61

61:                                               ; preds = %57, %25, %15
  %62 = load i32, i32* %4, align 4
  ret i32 %62
}

declare dso_local i32 @opal_check_token(i32) #1

declare dso_local i32 @opal_async_get_token_interruptible(...) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @opal_pci_set_power_state(i32, i32, i32) #1

declare dso_local i32 @opal_async_wait_response(i32, %struct.opal_msg*) #1

declare dso_local i32 @memcpy(%struct.opal_msg*, %struct.opal_msg*, i32) #1

declare dso_local i32 @opal_async_release_token(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
