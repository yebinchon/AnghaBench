; ModuleID = '/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_ldc.c___ldc_print.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_ldc.c___ldc_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ldc_channel = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [147 x i8] c"%s: id=0x%lx flags=0x%x state=%s cstate=0x%lx hsstate=0x%x\0A\09rx_h=0x%lx rx_t=0x%lx rx_n=%ld\0A\09tx_h=0x%lx tx_t=0x%lx tx_n=%ld\0A\09rcv_nxt=%u snd_nxt=%u\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__ldc_print(%struct.ldc_channel* %0, i8* %1) #0 {
  %3 = alloca %struct.ldc_channel*, align 8
  %4 = alloca i8*, align 8
  store %struct.ldc_channel* %0, %struct.ldc_channel** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load i8*, i8** %4, align 8
  %6 = load %struct.ldc_channel*, %struct.ldc_channel** %3, align 8
  %7 = getelementptr inbounds %struct.ldc_channel, %struct.ldc_channel* %6, i32 0, i32 12
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.ldc_channel*, %struct.ldc_channel** %3, align 8
  %10 = getelementptr inbounds %struct.ldc_channel, %struct.ldc_channel* %9, i32 0, i32 11
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.ldc_channel*, %struct.ldc_channel** %3, align 8
  %13 = getelementptr inbounds %struct.ldc_channel, %struct.ldc_channel* %12, i32 0, i32 10
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @state_to_str(i32 %14)
  %16 = load %struct.ldc_channel*, %struct.ldc_channel** %3, align 8
  %17 = getelementptr inbounds %struct.ldc_channel, %struct.ldc_channel* %16, i32 0, i32 9
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.ldc_channel*, %struct.ldc_channel** %3, align 8
  %20 = getelementptr inbounds %struct.ldc_channel, %struct.ldc_channel* %19, i32 0, i32 8
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.ldc_channel*, %struct.ldc_channel** %3, align 8
  %23 = getelementptr inbounds %struct.ldc_channel, %struct.ldc_channel* %22, i32 0, i32 7
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.ldc_channel*, %struct.ldc_channel** %3, align 8
  %26 = getelementptr inbounds %struct.ldc_channel, %struct.ldc_channel* %25, i32 0, i32 6
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.ldc_channel*, %struct.ldc_channel** %3, align 8
  %29 = getelementptr inbounds %struct.ldc_channel, %struct.ldc_channel* %28, i32 0, i32 5
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.ldc_channel*, %struct.ldc_channel** %3, align 8
  %32 = getelementptr inbounds %struct.ldc_channel, %struct.ldc_channel* %31, i32 0, i32 4
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.ldc_channel*, %struct.ldc_channel** %3, align 8
  %35 = getelementptr inbounds %struct.ldc_channel, %struct.ldc_channel* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.ldc_channel*, %struct.ldc_channel** %3, align 8
  %38 = getelementptr inbounds %struct.ldc_channel, %struct.ldc_channel* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.ldc_channel*, %struct.ldc_channel** %3, align 8
  %41 = getelementptr inbounds %struct.ldc_channel, %struct.ldc_channel* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.ldc_channel*, %struct.ldc_channel** %3, align 8
  %44 = getelementptr inbounds %struct.ldc_channel, %struct.ldc_channel* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @pr_info(i8* getelementptr inbounds ([147 x i8], [147 x i8]* @.str, i64 0, i64 0), i8* %5, i32 %8, i32 %11, i32 %15, i32 %18, i32 %21, i32 %24, i32 %27, i32 %30, i32 %33, i32 %36, i32 %39, i32 %42, i32 %45)
  ret void
}

declare dso_local i32 @pr_info(i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @state_to_str(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
