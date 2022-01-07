; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/kernel/extr_smp.c_smp_ctl_bit_callback.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/kernel/extr_smp.c_smp_ctl_bit_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ec_creg_mask_parms = type { i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @smp_ctl_bit_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @smp_ctl_bit_callback(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.ec_creg_mask_parms*, align 8
  %4 = alloca [16 x i64], align 16
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to %struct.ec_creg_mask_parms*
  store %struct.ec_creg_mask_parms* %6, %struct.ec_creg_mask_parms** %3, align 8
  %7 = getelementptr inbounds [16 x i64], [16 x i64]* %4, i64 0, i64 0
  %8 = call i32 @__ctl_store(i64* %7, i32 0, i32 15)
  %9 = load %struct.ec_creg_mask_parms*, %struct.ec_creg_mask_parms** %3, align 8
  %10 = getelementptr inbounds %struct.ec_creg_mask_parms, %struct.ec_creg_mask_parms* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = getelementptr inbounds [16 x i64], [16 x i64]* %4, i64 0, i64 %11
  %13 = load i64, i64* %12, align 8
  %14 = load %struct.ec_creg_mask_parms*, %struct.ec_creg_mask_parms** %3, align 8
  %15 = getelementptr inbounds %struct.ec_creg_mask_parms, %struct.ec_creg_mask_parms* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = and i64 %13, %16
  %18 = load %struct.ec_creg_mask_parms*, %struct.ec_creg_mask_parms** %3, align 8
  %19 = getelementptr inbounds %struct.ec_creg_mask_parms, %struct.ec_creg_mask_parms* %18, i32 0, i32 2
  %20 = load i64, i64* %19, align 8
  %21 = or i64 %17, %20
  %22 = load %struct.ec_creg_mask_parms*, %struct.ec_creg_mask_parms** %3, align 8
  %23 = getelementptr inbounds %struct.ec_creg_mask_parms, %struct.ec_creg_mask_parms* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = getelementptr inbounds [16 x i64], [16 x i64]* %4, i64 0, i64 %24
  store i64 %21, i64* %25, align 8
  %26 = getelementptr inbounds [16 x i64], [16 x i64]* %4, i64 0, i64 0
  %27 = call i32 @__ctl_load(i64* %26, i32 0, i32 15)
  ret void
}

declare dso_local i32 @__ctl_store(i64*, i32, i32) #1

declare dso_local i32 @__ctl_load(i64*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
