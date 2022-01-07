; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_fadump.c_init_fadump_header.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_fadump.c_init_fadump_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fadump_crash_info_header = type { i64, i32, i32 }

@FADUMP_CRASH_INFO_MAGIC = common dso_local global i32 0, align 4
@FADUMP_CPU_UNKNOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64)* @init_fadump_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @init_fadump_header(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.fadump_crash_info_header*, align 8
  store i64 %0, i64* %3, align 8
  %5 = load i64, i64* %3, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  store i64 0, i64* %2, align 8
  br label %25

8:                                                ; preds = %1
  %9 = load i64, i64* %3, align 8
  %10 = call %struct.fadump_crash_info_header* @__va(i64 %9)
  store %struct.fadump_crash_info_header* %10, %struct.fadump_crash_info_header** %4, align 8
  %11 = load i64, i64* %3, align 8
  %12 = add i64 %11, 16
  store i64 %12, i64* %3, align 8
  %13 = load %struct.fadump_crash_info_header*, %struct.fadump_crash_info_header** %4, align 8
  %14 = call i32 @memset(%struct.fadump_crash_info_header* %13, i32 0, i32 16)
  %15 = load i32, i32* @FADUMP_CRASH_INFO_MAGIC, align 4
  %16 = load %struct.fadump_crash_info_header*, %struct.fadump_crash_info_header** %4, align 8
  %17 = getelementptr inbounds %struct.fadump_crash_info_header, %struct.fadump_crash_info_header* %16, i32 0, i32 2
  store i32 %15, i32* %17, align 4
  %18 = load i64, i64* %3, align 8
  %19 = load %struct.fadump_crash_info_header*, %struct.fadump_crash_info_header** %4, align 8
  %20 = getelementptr inbounds %struct.fadump_crash_info_header, %struct.fadump_crash_info_header* %19, i32 0, i32 0
  store i64 %18, i64* %20, align 8
  %21 = load i32, i32* @FADUMP_CPU_UNKNOWN, align 4
  %22 = load %struct.fadump_crash_info_header*, %struct.fadump_crash_info_header** %4, align 8
  %23 = getelementptr inbounds %struct.fadump_crash_info_header, %struct.fadump_crash_info_header* %22, i32 0, i32 1
  store i32 %21, i32* %23, align 8
  %24 = load i64, i64* %3, align 8
  store i64 %24, i64* %2, align 8
  br label %25

25:                                               ; preds = %8, %7
  %26 = load i64, i64* %2, align 8
  ret i64 %26
}

declare dso_local %struct.fadump_crash_info_header* @__va(i64) #1

declare dso_local i32 @memset(%struct.fadump_crash_info_header*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
