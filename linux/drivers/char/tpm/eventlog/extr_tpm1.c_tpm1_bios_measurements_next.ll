; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/tpm/eventlog/extr_tpm1.c_tpm1_bios_measurements_next.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/tpm/eventlog/extr_tpm1.c_tpm1_bios_measurements_next.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { %struct.tpm_chip* }
%struct.tpm_chip = type { %struct.tpm_bios_log }
%struct.tpm_bios_log = type { i8* }
%struct.tcpa_event = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.seq_file*, i8*, i32*)* @tpm1_bios_measurements_next to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @tpm1_bios_measurements_next(%struct.seq_file* %0, i8* %1, i32* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.seq_file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.tcpa_event*, align 8
  %9 = alloca %struct.tpm_chip*, align 8
  %10 = alloca %struct.tpm_bios_log*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.seq_file* %0, %struct.seq_file** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = bitcast i8* %14 to %struct.tcpa_event*
  store %struct.tcpa_event* %15, %struct.tcpa_event** %8, align 8
  %16 = load %struct.seq_file*, %struct.seq_file** %5, align 8
  %17 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %16, i32 0, i32 0
  %18 = load %struct.tpm_chip*, %struct.tpm_chip** %17, align 8
  store %struct.tpm_chip* %18, %struct.tpm_chip** %9, align 8
  %19 = load %struct.tpm_chip*, %struct.tpm_chip** %9, align 8
  %20 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %19, i32 0, i32 0
  store %struct.tpm_bios_log* %20, %struct.tpm_bios_log** %10, align 8
  %21 = load %struct.tpm_bios_log*, %struct.tpm_bios_log** %10, align 8
  %22 = getelementptr inbounds %struct.tpm_bios_log, %struct.tpm_bios_log* %21, i32 0, i32 0
  %23 = load i8*, i8** %22, align 8
  store i8* %23, i8** %11, align 8
  %24 = load %struct.tcpa_event*, %struct.tcpa_event** %8, align 8
  %25 = getelementptr inbounds %struct.tcpa_event, %struct.tcpa_event* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i64 @do_endian_conversion(i32 %26)
  store i64 %27, i64* %12, align 8
  %28 = load i64, i64* %12, align 8
  %29 = add i64 8, %28
  %30 = load i8*, i8** %6, align 8
  %31 = getelementptr i8, i8* %30, i64 %29
  store i8* %31, i8** %6, align 8
  %32 = load i8*, i8** %6, align 8
  %33 = getelementptr i8, i8* %32, i64 8
  %34 = load i8*, i8** %11, align 8
  %35 = icmp ugt i8* %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %3
  store i8* null, i8** %4, align 8
  br label %66

37:                                               ; preds = %3
  %38 = load i8*, i8** %6, align 8
  %39 = bitcast i8* %38 to %struct.tcpa_event*
  store %struct.tcpa_event* %39, %struct.tcpa_event** %8, align 8
  %40 = load %struct.tcpa_event*, %struct.tcpa_event** %8, align 8
  %41 = getelementptr inbounds %struct.tcpa_event, %struct.tcpa_event* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i64 @do_endian_conversion(i32 %42)
  store i64 %43, i64* %12, align 8
  %44 = load %struct.tcpa_event*, %struct.tcpa_event** %8, align 8
  %45 = getelementptr inbounds %struct.tcpa_event, %struct.tcpa_event* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i64 @do_endian_conversion(i32 %46)
  store i64 %47, i64* %13, align 8
  %48 = load i64, i64* %13, align 8
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %37
  %51 = load i64, i64* %12, align 8
  %52 = icmp eq i64 %51, 0
  br i1 %52, label %60, label %53

53:                                               ; preds = %50, %37
  %54 = load i8*, i8** %6, align 8
  %55 = getelementptr i8, i8* %54, i64 8
  %56 = load i64, i64* %12, align 8
  %57 = getelementptr i8, i8* %55, i64 %56
  %58 = load i8*, i8** %11, align 8
  %59 = icmp ugt i8* %57, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %53, %50
  store i8* null, i8** %4, align 8
  br label %66

61:                                               ; preds = %53
  %62 = load i32*, i32** %7, align 8
  %63 = load i32, i32* %62, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %62, align 4
  %65 = load i8*, i8** %6, align 8
  store i8* %65, i8** %4, align 8
  br label %66

66:                                               ; preds = %61, %60, %36
  %67 = load i8*, i8** %4, align 8
  ret i8* %67
}

declare dso_local i64 @do_endian_conversion(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
