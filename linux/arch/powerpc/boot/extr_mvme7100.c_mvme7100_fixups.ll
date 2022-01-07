; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/boot/extr_mvme7100.c_mvme7100_fixups.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/boot/extr_mvme7100.c_mvme7100_fixups.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@bd = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@.str = private unnamed_addr constant [14 x i8] c"/soc@f1000000\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"bus-frequency\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"/soc/serial@4500\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"clock-frequency\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"ethernet0\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"ethernet1\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"ethernet2\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"ethernet3\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @mvme7100_fixups to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mvme7100_fixups() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i64, align 8
  %3 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @bd, i32 0, i32 0), align 4
  %4 = mul nsw i32 %3, 1000000
  %5 = sext i32 %4 to i64
  store i64 %5, i64* %2, align 8
  %6 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @bd, i32 0, i32 1), align 4
  %7 = mul nsw i32 %6, 1000000
  %8 = load i64, i64* %2, align 8
  %9 = udiv i64 %8, 4
  %10 = load i64, i64* %2, align 8
  %11 = call i32 @dt_fixup_cpu_clocks(i32 %7, i64 %9, i64 %10)
  %12 = call i8* @finddevice(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  store i8* %12, i8** %1, align 8
  %13 = load i8*, i8** %1, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %0
  %16 = load i8*, i8** %1, align 8
  %17 = call i32 @setprop(i8* %16, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i64* %2, i32 8)
  br label %18

18:                                               ; preds = %15, %0
  %19 = call i8* @finddevice(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  store i8* %19, i8** %1, align 8
  %20 = load i8*, i8** %1, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %22, label %25

22:                                               ; preds = %18
  %23 = load i8*, i8** %1, align 8
  %24 = call i32 @setprop(i8* %23, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i64* %2, i32 8)
  br label %25

25:                                               ; preds = %22, %18
  %26 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @bd, i32 0, i32 7), align 4
  %27 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @bd, i32 0, i32 6), align 4
  %28 = call i32 @dt_fixup_memory(i32 %26, i32 %27)
  %29 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @bd, i32 0, i32 5), align 4
  %30 = call i32 @dt_fixup_mac_address_by_alias(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i32 %29)
  %31 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @bd, i32 0, i32 4), align 4
  %32 = call i32 @dt_fixup_mac_address_by_alias(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i32 %31)
  %33 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @bd, i32 0, i32 3), align 4
  %34 = call i32 @dt_fixup_mac_address_by_alias(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0), i32 %33)
  %35 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @bd, i32 0, i32 2), align 4
  %36 = call i32 @dt_fixup_mac_address_by_alias(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0), i32 %35)
  ret void
}

declare dso_local i32 @dt_fixup_cpu_clocks(i32, i64, i64) #1

declare dso_local i8* @finddevice(i8*) #1

declare dso_local i32 @setprop(i8*, i8*, i64*, i32) #1

declare dso_local i32 @dt_fixup_memory(i32, i32) #1

declare dso_local i32 @dt_fixup_mac_address_by_alias(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
