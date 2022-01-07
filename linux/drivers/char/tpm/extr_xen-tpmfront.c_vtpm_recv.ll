; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/tpm/extr_xen-tpmfront.c_vtpm_recv.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/tpm/extr_xen-tpmfront.c_vtpm_recv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tpm_chip = type { i32, i32 }
%struct.tpm_private = type { i32, %struct.vtpm_shared_page* }
%struct.vtpm_shared_page = type { i64, i64 }

@VTPM_STATE_IDLE = common dso_local global i64 0, align 8
@ECANCELED = common dso_local global i32 0, align 4
@VTPM_STATUS_RESULT = common dso_local global i32 0, align 4
@ETIME = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tpm_chip*, i32*, i64)* @vtpm_recv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vtpm_recv(%struct.tpm_chip* %0, i32* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.tpm_chip*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.tpm_private*, align 8
  %9 = alloca %struct.vtpm_shared_page*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.tpm_chip* %0, %struct.tpm_chip** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  %12 = load %struct.tpm_chip*, %struct.tpm_chip** %5, align 8
  %13 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %12, i32 0, i32 1
  %14 = call %struct.tpm_private* @dev_get_drvdata(i32* %13)
  store %struct.tpm_private* %14, %struct.tpm_private** %8, align 8
  %15 = load %struct.tpm_private*, %struct.tpm_private** %8, align 8
  %16 = getelementptr inbounds %struct.tpm_private, %struct.tpm_private* %15, i32 0, i32 1
  %17 = load %struct.vtpm_shared_page*, %struct.vtpm_shared_page** %16, align 8
  store %struct.vtpm_shared_page* %17, %struct.vtpm_shared_page** %9, align 8
  %18 = load %struct.vtpm_shared_page*, %struct.vtpm_shared_page** %9, align 8
  %19 = call i32 @shr_data_offset(%struct.vtpm_shared_page* %18)
  store i32 %19, i32* %10, align 4
  %20 = load %struct.vtpm_shared_page*, %struct.vtpm_shared_page** %9, align 8
  %21 = getelementptr inbounds %struct.vtpm_shared_page, %struct.vtpm_shared_page* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  store i64 %22, i64* %11, align 8
  %23 = load %struct.vtpm_shared_page*, %struct.vtpm_shared_page** %9, align 8
  %24 = getelementptr inbounds %struct.vtpm_shared_page, %struct.vtpm_shared_page* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @VTPM_STATE_IDLE, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %3
  %29 = load i32, i32* @ECANCELED, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %4, align 4
  br label %83

31:                                               ; preds = %3
  %32 = load %struct.tpm_chip*, %struct.tpm_chip** %5, align 8
  %33 = load i32, i32* @VTPM_STATUS_RESULT, align 4
  %34 = load %struct.tpm_chip*, %struct.tpm_chip** %5, align 8
  %35 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.tpm_private*, %struct.tpm_private** %8, align 8
  %38 = getelementptr inbounds %struct.tpm_private, %struct.tpm_private* %37, i32 0, i32 0
  %39 = call i64 @wait_for_tpm_stat(%struct.tpm_chip* %32, i32 %33, i32 %36, i32* %38, i32 1)
  %40 = icmp slt i64 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %31
  %42 = load %struct.tpm_chip*, %struct.tpm_chip** %5, align 8
  %43 = call i32 @vtpm_cancel(%struct.tpm_chip* %42)
  %44 = load i32, i32* @ETIME, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %4, align 4
  br label %83

46:                                               ; preds = %31
  %47 = load i32, i32* %10, align 4
  %48 = load i32, i32* @PAGE_SIZE, align 4
  %49 = icmp ugt i32 %47, %48
  br i1 %49, label %50, label %53

50:                                               ; preds = %46
  %51 = load i32, i32* @EIO, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %4, align 4
  br label %83

53:                                               ; preds = %46
  %54 = load i32, i32* %10, align 4
  %55 = zext i32 %54 to i64
  %56 = load i64, i64* %11, align 8
  %57 = add i64 %55, %56
  %58 = load i32, i32* @PAGE_SIZE, align 4
  %59 = zext i32 %58 to i64
  %60 = icmp ugt i64 %57, %59
  br i1 %60, label %61, label %66

61:                                               ; preds = %53
  %62 = load i32, i32* @PAGE_SIZE, align 4
  %63 = load i32, i32* %10, align 4
  %64 = sub i32 %62, %63
  %65 = zext i32 %64 to i64
  store i64 %65, i64* %11, align 8
  br label %66

66:                                               ; preds = %61, %53
  %67 = load i64, i64* %11, align 8
  %68 = load i64, i64* %7, align 8
  %69 = icmp ugt i64 %67, %68
  br i1 %69, label %70, label %72

70:                                               ; preds = %66
  %71 = load i64, i64* %7, align 8
  store i64 %71, i64* %11, align 8
  br label %72

72:                                               ; preds = %70, %66
  %73 = load i32*, i32** %6, align 8
  %74 = load i32, i32* %10, align 4
  %75 = load %struct.vtpm_shared_page*, %struct.vtpm_shared_page** %9, align 8
  %76 = bitcast %struct.vtpm_shared_page* %75 to i32*
  %77 = zext i32 %74 to i64
  %78 = getelementptr inbounds i32, i32* %76, i64 %77
  %79 = load i64, i64* %11, align 8
  %80 = call i32 @memcpy(i32* %73, i32* %78, i64 %79)
  %81 = load i64, i64* %11, align 8
  %82 = trunc i64 %81 to i32
  store i32 %82, i32* %4, align 4
  br label %83

83:                                               ; preds = %72, %50, %41, %28
  %84 = load i32, i32* %4, align 4
  ret i32 %84
}

declare dso_local %struct.tpm_private* @dev_get_drvdata(i32*) #1

declare dso_local i32 @shr_data_offset(%struct.vtpm_shared_page*) #1

declare dso_local i64 @wait_for_tpm_stat(%struct.tpm_chip*, i32, i32, i32*, i32) #1

declare dso_local i32 @vtpm_cancel(%struct.tpm_chip*) #1

declare dso_local i32 @memcpy(i32*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
