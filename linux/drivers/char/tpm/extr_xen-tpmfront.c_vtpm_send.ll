; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/tpm/extr_xen-tpmfront.c_vtpm_send.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/tpm/extr_xen-tpmfront.c_vtpm_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tpm_chip = type { i64, i32 }
%struct.tpm_private = type { i32, i32, %struct.vtpm_shared_page* }
%struct.vtpm_shared_page = type { i64, i32 }
%struct.tpm_header = type { i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@VTPM_STATUS_IDLE = common dso_local global i32 0, align 4
@ETIME = common dso_local global i32 0, align 4
@VTPM_STATE_SUBMIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tpm_chip*, i32*, i64)* @vtpm_send to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vtpm_send(%struct.tpm_chip* %0, i32* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.tpm_chip*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.tpm_private*, align 8
  %9 = alloca %struct.vtpm_shared_page*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store %struct.tpm_chip* %0, %struct.tpm_chip** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  %13 = load %struct.tpm_chip*, %struct.tpm_chip** %5, align 8
  %14 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %13, i32 0, i32 1
  %15 = call %struct.tpm_private* @dev_get_drvdata(i32* %14)
  store %struct.tpm_private* %15, %struct.tpm_private** %8, align 8
  %16 = load %struct.tpm_private*, %struct.tpm_private** %8, align 8
  %17 = getelementptr inbounds %struct.tpm_private, %struct.tpm_private* %16, i32 0, i32 2
  %18 = load %struct.vtpm_shared_page*, %struct.vtpm_shared_page** %17, align 8
  store %struct.vtpm_shared_page* %18, %struct.vtpm_shared_page** %9, align 8
  %19 = load %struct.vtpm_shared_page*, %struct.vtpm_shared_page** %9, align 8
  %20 = call i32 @shr_data_offset(%struct.vtpm_shared_page* %19)
  store i32 %20, i32* %10, align 4
  %21 = load i32, i32* %10, align 4
  %22 = load i32, i32* @PAGE_SIZE, align 4
  %23 = icmp ugt i32 %21, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %3
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %4, align 4
  br label %95

27:                                               ; preds = %3
  %28 = load i32, i32* %10, align 4
  %29 = zext i32 %28 to i64
  %30 = load i64, i64* %7, align 8
  %31 = add i64 %29, %30
  %32 = load i32, i32* @PAGE_SIZE, align 4
  %33 = zext i32 %32 to i64
  %34 = icmp ugt i64 %31, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %27
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %4, align 4
  br label %95

38:                                               ; preds = %27
  %39 = load %struct.tpm_chip*, %struct.tpm_chip** %5, align 8
  %40 = load i32, i32* @VTPM_STATUS_IDLE, align 4
  %41 = load %struct.tpm_chip*, %struct.tpm_chip** %5, align 8
  %42 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.tpm_private*, %struct.tpm_private** %8, align 8
  %45 = getelementptr inbounds %struct.tpm_private, %struct.tpm_private* %44, i32 0, i32 0
  %46 = call i64 @wait_for_tpm_stat(%struct.tpm_chip* %39, i32 %40, i64 %43, i32* %45, i32 1)
  %47 = icmp slt i64 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %38
  %49 = load %struct.tpm_chip*, %struct.tpm_chip** %5, align 8
  %50 = call i32 @vtpm_cancel(%struct.tpm_chip* %49)
  %51 = load i32, i32* @ETIME, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %4, align 4
  br label %95

53:                                               ; preds = %38
  %54 = load i32, i32* %10, align 4
  %55 = load %struct.vtpm_shared_page*, %struct.vtpm_shared_page** %9, align 8
  %56 = bitcast %struct.vtpm_shared_page* %55 to i32*
  %57 = zext i32 %54 to i64
  %58 = getelementptr inbounds i32, i32* %56, i64 %57
  %59 = load i32*, i32** %6, align 8
  %60 = load i64, i64* %7, align 8
  %61 = call i32 @memcpy(i32* %58, i32* %59, i64 %60)
  %62 = load i64, i64* %7, align 8
  %63 = load %struct.vtpm_shared_page*, %struct.vtpm_shared_page** %9, align 8
  %64 = getelementptr inbounds %struct.vtpm_shared_page, %struct.vtpm_shared_page* %63, i32 0, i32 0
  store i64 %62, i64* %64, align 8
  %65 = call i32 (...) @barrier()
  %66 = load i32, i32* @VTPM_STATE_SUBMIT, align 4
  %67 = load %struct.vtpm_shared_page*, %struct.vtpm_shared_page** %9, align 8
  %68 = getelementptr inbounds %struct.vtpm_shared_page, %struct.vtpm_shared_page* %67, i32 0, i32 1
  store i32 %66, i32* %68, align 8
  %69 = call i32 (...) @wmb()
  %70 = load %struct.tpm_private*, %struct.tpm_private** %8, align 8
  %71 = getelementptr inbounds %struct.tpm_private, %struct.tpm_private* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @notify_remote_via_evtchn(i32 %72)
  %74 = load i32*, i32** %6, align 8
  %75 = bitcast i32* %74 to %struct.tpm_header*
  %76 = getelementptr inbounds %struct.tpm_header, %struct.tpm_header* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @be32_to_cpu(i32 %77)
  store i32 %78, i32* %11, align 4
  %79 = load %struct.tpm_chip*, %struct.tpm_chip** %5, align 8
  %80 = load i32, i32* %11, align 4
  %81 = call i64 @tpm_calc_ordinal_duration(%struct.tpm_chip* %79, i32 %80)
  store i64 %81, i64* %12, align 8
  %82 = load %struct.tpm_chip*, %struct.tpm_chip** %5, align 8
  %83 = load i32, i32* @VTPM_STATUS_IDLE, align 4
  %84 = load i64, i64* %12, align 8
  %85 = load %struct.tpm_private*, %struct.tpm_private** %8, align 8
  %86 = getelementptr inbounds %struct.tpm_private, %struct.tpm_private* %85, i32 0, i32 0
  %87 = call i64 @wait_for_tpm_stat(%struct.tpm_chip* %82, i32 %83, i64 %84, i32* %86, i32 1)
  %88 = icmp slt i64 %87, 0
  br i1 %88, label %89, label %94

89:                                               ; preds = %53
  %90 = load %struct.tpm_chip*, %struct.tpm_chip** %5, align 8
  %91 = call i32 @vtpm_cancel(%struct.tpm_chip* %90)
  %92 = load i32, i32* @ETIME, align 4
  %93 = sub nsw i32 0, %92
  store i32 %93, i32* %4, align 4
  br label %95

94:                                               ; preds = %53
  store i32 0, i32* %4, align 4
  br label %95

95:                                               ; preds = %94, %89, %48, %35, %24
  %96 = load i32, i32* %4, align 4
  ret i32 %96
}

declare dso_local %struct.tpm_private* @dev_get_drvdata(i32*) #1

declare dso_local i32 @shr_data_offset(%struct.vtpm_shared_page*) #1

declare dso_local i64 @wait_for_tpm_stat(%struct.tpm_chip*, i32, i64, i32*, i32) #1

declare dso_local i32 @vtpm_cancel(%struct.tpm_chip*) #1

declare dso_local i32 @memcpy(i32*, i32*, i64) #1

declare dso_local i32 @barrier(...) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @notify_remote_via_evtchn(i32) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i64 @tpm_calc_ordinal_duration(%struct.tpm_chip*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
