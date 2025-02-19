; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/ipmi/extr_ipmi_msghandler.c_check_addr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/ipmi/extr_ipmi_msghandler.c_check_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipmi_smi = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i8, i8 }
%struct.ipmi_addr = type { i64 }

@IPMI_MAX_CHANNELS = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ipmi_smi*, %struct.ipmi_addr*, i8*, i8*)* @check_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_addr(%struct.ipmi_smi* %0, %struct.ipmi_addr* %1, i8* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ipmi_smi*, align 8
  %7 = alloca %struct.ipmi_addr*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store %struct.ipmi_smi* %0, %struct.ipmi_smi** %6, align 8
  store %struct.ipmi_addr* %1, %struct.ipmi_addr** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  %10 = load %struct.ipmi_addr*, %struct.ipmi_addr** %7, align 8
  %11 = getelementptr inbounds %struct.ipmi_addr, %struct.ipmi_addr* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @IPMI_MAX_CHANNELS, align 8
  %14 = icmp uge i64 %12, %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %4
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %5, align 4
  br label %46

18:                                               ; preds = %4
  %19 = load %struct.ipmi_addr*, %struct.ipmi_addr** %7, align 8
  %20 = getelementptr inbounds %struct.ipmi_addr, %struct.ipmi_addr* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @IPMI_MAX_CHANNELS, align 8
  %23 = call i64 @array_index_nospec(i64 %21, i64 %22)
  %24 = load %struct.ipmi_addr*, %struct.ipmi_addr** %7, align 8
  %25 = getelementptr inbounds %struct.ipmi_addr, %struct.ipmi_addr* %24, i32 0, i32 0
  store i64 %23, i64* %25, align 8
  %26 = load %struct.ipmi_smi*, %struct.ipmi_smi** %6, align 8
  %27 = getelementptr inbounds %struct.ipmi_smi, %struct.ipmi_smi* %26, i32 0, i32 0
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = load %struct.ipmi_addr*, %struct.ipmi_addr** %7, align 8
  %30 = getelementptr inbounds %struct.ipmi_addr, %struct.ipmi_addr* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i8, i8* %33, align 1
  %35 = load i8*, i8** %9, align 8
  store i8 %34, i8* %35, align 1
  %36 = load %struct.ipmi_smi*, %struct.ipmi_smi** %6, align 8
  %37 = getelementptr inbounds %struct.ipmi_smi, %struct.ipmi_smi* %36, i32 0, i32 0
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = load %struct.ipmi_addr*, %struct.ipmi_addr** %7, align 8
  %40 = getelementptr inbounds %struct.ipmi_addr, %struct.ipmi_addr* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 1
  %44 = load i8, i8* %43, align 1
  %45 = load i8*, i8** %8, align 8
  store i8 %44, i8* %45, align 1
  store i32 0, i32* %5, align 4
  br label %46

46:                                               ; preds = %18, %15
  %47 = load i32, i32* %5, align 4
  ret i32 %47
}

declare dso_local i64 @array_index_nospec(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
