; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/boot/extr_startup.c_copy_bootdata.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/boot/extr_startup.c_copy_bootdata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64, i64, i64 }

@__boot_data_end = common dso_local global i64 0, align 8
@__boot_data_start = common dso_local global i64 0, align 8
@vmlinux = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@.str = private unnamed_addr constant [33 x i8] c".boot.data section size mismatch\00", align 1
@__boot_data_preserved_end = common dso_local global i64 0, align 8
@__boot_data_preserved_start = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [43 x i8] c".boot.preserved.data section size mismatch\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @copy_bootdata to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @copy_bootdata() #0 {
  %1 = load i64, i64* @__boot_data_end, align 8
  %2 = load i64, i64* @__boot_data_start, align 8
  %3 = sub nsw i64 %1, %2
  %4 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @vmlinux, i32 0, i32 0), align 8
  %5 = icmp ne i64 %3, %4
  br i1 %5, label %6, label %8

6:                                                ; preds = %0
  %7 = call i32 @error(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  br label %8

8:                                                ; preds = %6, %0
  %9 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @vmlinux, i32 0, i32 3), align 8
  %10 = inttoptr i64 %9 to i8*
  %11 = load i64, i64* @__boot_data_start, align 8
  %12 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @vmlinux, i32 0, i32 0), align 8
  %13 = call i32 @memcpy(i8* %10, i64 %11, i64 %12)
  %14 = load i64, i64* @__boot_data_preserved_end, align 8
  %15 = load i64, i64* @__boot_data_preserved_start, align 8
  %16 = sub nsw i64 %14, %15
  %17 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @vmlinux, i32 0, i32 1), align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %8
  %20 = call i32 @error(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0))
  br label %21

21:                                               ; preds = %19, %8
  %22 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @vmlinux, i32 0, i32 2), align 8
  %23 = inttoptr i64 %22 to i8*
  %24 = load i64, i64* @__boot_data_preserved_start, align 8
  %25 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @vmlinux, i32 0, i32 1), align 8
  %26 = call i32 @memcpy(i8* %23, i64 %24, i64 %25)
  ret void
}

declare dso_local i32 @error(i8*) #1

declare dso_local i32 @memcpy(i8*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
