; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/kernel/extr_time.c_ext_to_timespec64.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/kernel/extr_time.c_ext_to_timespec64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timespec64 = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.timespec64*)* @ext_to_timespec64 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ext_to_timespec64(i8* %0, %struct.timespec64* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.timespec64*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store %struct.timespec64* %1, %struct.timespec64** %4, align 8
  %10 = load i8*, i8** %3, align 8
  %11 = bitcast i8* %10 to i64*
  %12 = load i64, i64* %11, align 8
  %13 = lshr i64 %12, 4
  store i64 %13, i64* %5, align 8
  %14 = load i8*, i8** %3, align 8
  %15 = getelementptr inbounds i8, i8* %14, i64 7
  %16 = bitcast i8* %15 to i64*
  %17 = load i64, i64* %16, align 8
  %18 = shl i64 %17, 4
  store i64 %18, i64* %6, align 8
  %19 = load i64, i64* %5, align 8
  store i64 %19, i64* %8, align 8
  %20 = load i64, i64* %8, align 8
  %21 = call i64 @do_div(i64 %20, i32 1000000)
  store i64 %21, i64* %7, align 8
  %22 = load i64, i64* %6, align 8
  %23 = lshr i64 %22, 32
  %24 = load i64, i64* %7, align 8
  %25 = shl i64 %24, 32
  %26 = add i64 %23, %25
  %27 = mul i64 %26, 1000
  %28 = lshr i64 %27, 32
  store i64 %28, i64* %9, align 8
  %29 = load i64, i64* %8, align 8
  %30 = load %struct.timespec64*, %struct.timespec64** %4, align 8
  %31 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %30, i32 0, i32 0
  store i64 %29, i64* %31, align 8
  %32 = load i64, i64* %9, align 8
  %33 = load %struct.timespec64*, %struct.timespec64** %4, align 8
  %34 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %33, i32 0, i32 1
  store i64 %32, i64* %34, align 8
  ret void
}

declare dso_local i64 @do_div(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
