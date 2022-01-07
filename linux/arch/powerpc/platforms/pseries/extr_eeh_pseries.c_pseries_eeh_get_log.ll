; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/pseries/extr_eeh_pseries.c_pseries_eeh_get_log.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/pseries/extr_eeh_pseries.c_pseries_eeh_get_log.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eeh_pe = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@slot_errbuf_lock = common dso_local global i32 0, align 4
@slot_errbuf = common dso_local global i8* null, align 8
@eeh_error_buf_size = common dso_local global i32 0, align 4
@ibm_slot_error_detail = common dso_local global i32 0, align 4
@ERR_TYPE_RTAS_LOG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.eeh_pe*, i32, i8*, i64)* @pseries_eeh_get_log to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pseries_eeh_get_log(%struct.eeh_pe* %0, i32 %1, i8* %2, i64 %3) #0 {
  %5 = alloca %struct.eeh_pe*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.eeh_pe* %0, %struct.eeh_pe** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %12 = load i64, i64* %10, align 8
  %13 = call i32 @spin_lock_irqsave(i32* @slot_errbuf_lock, i64 %12)
  %14 = load i8*, i8** @slot_errbuf, align 8
  %15 = load i32, i32* @eeh_error_buf_size, align 4
  %16 = call i32 @memset(i8* %14, i32 0, i32 %15)
  %17 = load %struct.eeh_pe*, %struct.eeh_pe** %5, align 8
  %18 = getelementptr inbounds %struct.eeh_pe, %struct.eeh_pe* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* %9, align 4
  %20 = load %struct.eeh_pe*, %struct.eeh_pe** %5, align 8
  %21 = getelementptr inbounds %struct.eeh_pe, %struct.eeh_pe* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %4
  %25 = load %struct.eeh_pe*, %struct.eeh_pe** %5, align 8
  %26 = getelementptr inbounds %struct.eeh_pe, %struct.eeh_pe* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %9, align 4
  br label %28

28:                                               ; preds = %24, %4
  %29 = load i32, i32* @ibm_slot_error_detail, align 4
  %30 = load i32, i32* %9, align 4
  %31 = load %struct.eeh_pe*, %struct.eeh_pe** %5, align 8
  %32 = getelementptr inbounds %struct.eeh_pe, %struct.eeh_pe* %31, i32 0, i32 2
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @BUID_HI(i32 %35)
  %37 = load %struct.eeh_pe*, %struct.eeh_pe** %5, align 8
  %38 = getelementptr inbounds %struct.eeh_pe, %struct.eeh_pe* %37, i32 0, i32 2
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @BUID_LO(i32 %41)
  %43 = load i8*, i8** %7, align 8
  %44 = call i32 @virt_to_phys(i8* %43)
  %45 = load i64, i64* %8, align 8
  %46 = load i8*, i8** @slot_errbuf, align 8
  %47 = call i32 @virt_to_phys(i8* %46)
  %48 = load i32, i32* @eeh_error_buf_size, align 4
  %49 = load i32, i32* %6, align 4
  %50 = call i32 @rtas_call(i32 %29, i32 8, i32 1, i32* null, i32 %30, i32 %36, i32 %42, i32 %44, i64 %45, i32 %47, i32 %48, i32 %49)
  store i32 %50, i32* %11, align 4
  %51 = load i32, i32* %11, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %57, label %53

53:                                               ; preds = %28
  %54 = load i8*, i8** @slot_errbuf, align 8
  %55 = load i32, i32* @ERR_TYPE_RTAS_LOG, align 4
  %56 = call i32 @log_error(i8* %54, i32 %55, i32 0)
  br label %57

57:                                               ; preds = %53, %28
  %58 = load i64, i64* %10, align 8
  %59 = call i32 @spin_unlock_irqrestore(i32* @slot_errbuf_lock, i64 %58)
  %60 = load i32, i32* %11, align 4
  ret i32 %60
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @rtas_call(i32, i32, i32, i32*, i32, i32, i32, i32, i64, i32, i32, i32) #1

declare dso_local i32 @BUID_HI(i32) #1

declare dso_local i32 @BUID_LO(i32) #1

declare dso_local i32 @virt_to_phys(i8*) #1

declare dso_local i32 @log_error(i8*, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
