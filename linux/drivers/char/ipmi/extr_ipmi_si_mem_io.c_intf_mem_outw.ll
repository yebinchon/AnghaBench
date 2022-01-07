; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/ipmi/extr_ipmi_si_mem_io.c_intf_mem_outw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/ipmi/extr_ipmi_si_mem_io.c_intf_mem_outw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.si_sm_io = type { i8, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.si_sm_io*, i32, i8)* @intf_mem_outw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @intf_mem_outw(%struct.si_sm_io* %0, i32 %1, i8 zeroext %2) #0 {
  %4 = alloca %struct.si_sm_io*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8, align 1
  store %struct.si_sm_io* %0, %struct.si_sm_io** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8 %2, i8* %6, align 1
  %7 = load i8, i8* %6, align 1
  %8 = zext i8 %7 to i32
  %9 = load %struct.si_sm_io*, %struct.si_sm_io** %4, align 8
  %10 = getelementptr inbounds %struct.si_sm_io, %struct.si_sm_io* %9, i32 0, i32 0
  %11 = load i8, i8* %10, align 8
  %12 = zext i8 %11 to i32
  %13 = shl i32 %8, %12
  %14 = trunc i32 %13 to i8
  %15 = load %struct.si_sm_io*, %struct.si_sm_io** %4, align 8
  %16 = getelementptr inbounds %struct.si_sm_io, %struct.si_sm_io* %15, i32 0, i32 2
  %17 = load i64, i64* %16, align 8
  %18 = load i32, i32* %5, align 4
  %19 = load %struct.si_sm_io*, %struct.si_sm_io** %4, align 8
  %20 = getelementptr inbounds %struct.si_sm_io, %struct.si_sm_io* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = mul i32 %18, %21
  %23 = zext i32 %22 to i64
  %24 = add nsw i64 %17, %23
  %25 = call i32 @writeb(i8 zeroext %14, i64 %24)
  ret void
}

declare dso_local i32 @writeb(i8 zeroext, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
