; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/ps3/extr_setup.c_ps3_compare_firmware_version.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/ps3/extr_setup.c_ps3_compare_firmware_version.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }
%union.ps3_firmware_version = type { i64 }

@ps3_firmware_version = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ps3_compare_firmware_version(i8* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %union.ps3_firmware_version, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %8 = bitcast %union.ps3_firmware_version* %7 to i64*
  store i64 0, i64* %8, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast %union.ps3_firmware_version* %7 to i8**
  store i8* %9, i8** %10, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = bitcast %union.ps3_firmware_version* %7 to i8**
  store i8* %11, i8** %12, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = bitcast %union.ps3_firmware_version* %7 to i8**
  store i8* %13, i8** %14, align 8
  %15 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ps3_firmware_version, i32 0, i32 0), align 8
  %16 = bitcast %union.ps3_firmware_version* %7 to i64*
  %17 = load i64, i64* %16, align 8
  %18 = icmp sgt i64 %15, %17
  %19 = zext i1 %18 to i32
  %20 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ps3_firmware_version, i32 0, i32 0), align 8
  %21 = bitcast %union.ps3_firmware_version* %7 to i64*
  %22 = load i64, i64* %21, align 8
  %23 = icmp slt i64 %20, %22
  %24 = zext i1 %23 to i32
  %25 = sub nsw i32 %19, %24
  ret i32 %25
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
