; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/tpm/eventlog/extr_tpm1.c_tpm1_binary_bios_measurements_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/tpm/eventlog/extr_tpm1.c_tpm1_binary_bios_measurements_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }
%struct.tcpa_event = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, i8*)* @tpm1_binary_bios_measurements_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tpm1_binary_bios_measurements_show(%struct.seq_file* %0, i8* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.tcpa_event*, align 8
  %6 = alloca %struct.tcpa_event, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store i8* %1, i8** %4, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.tcpa_event*
  store %struct.tcpa_event* %10, %struct.tcpa_event** %5, align 8
  %11 = load %struct.tcpa_event*, %struct.tcpa_event** %5, align 8
  %12 = call i32 @memcpy(%struct.tcpa_event* %6, %struct.tcpa_event* %11, i32 12)
  %13 = load %struct.tcpa_event*, %struct.tcpa_event** %5, align 8
  %14 = getelementptr inbounds %struct.tcpa_event, %struct.tcpa_event* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i8* @do_endian_conversion(i32 %15)
  %17 = ptrtoint i8* %16 to i32
  %18 = getelementptr inbounds %struct.tcpa_event, %struct.tcpa_event* %6, i32 0, i32 0
  store i32 %17, i32* %18, align 4
  %19 = load %struct.tcpa_event*, %struct.tcpa_event** %5, align 8
  %20 = getelementptr inbounds %struct.tcpa_event, %struct.tcpa_event* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i8* @do_endian_conversion(i32 %21)
  %23 = ptrtoint i8* %22 to i32
  %24 = getelementptr inbounds %struct.tcpa_event, %struct.tcpa_event* %6, i32 0, i32 1
  store i32 %23, i32* %24, align 4
  %25 = load %struct.tcpa_event*, %struct.tcpa_event** %5, align 8
  %26 = getelementptr inbounds %struct.tcpa_event, %struct.tcpa_event* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = call i8* @do_endian_conversion(i32 %27)
  %29 = ptrtoint i8* %28 to i32
  %30 = getelementptr inbounds %struct.tcpa_event, %struct.tcpa_event* %6, i32 0, i32 2
  store i32 %29, i32* %30, align 4
  %31 = bitcast %struct.tcpa_event* %6 to i8*
  store i8* %31, i8** %7, align 8
  store i32 0, i32* %8, align 4
  br label %32

32:                                               ; preds = %44, %2
  %33 = load i32, i32* %8, align 4
  %34 = sext i32 %33 to i64
  %35 = icmp ult i64 %34, 11
  br i1 %35, label %36, label %47

36:                                               ; preds = %32
  %37 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %38 = load i8*, i8** %7, align 8
  %39 = load i32, i32* %8, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i8, i8* %38, i64 %40
  %42 = load i8, i8* %41, align 1
  %43 = call i32 @seq_putc(%struct.seq_file* %37, i8 signext %42)
  br label %44

44:                                               ; preds = %36
  %45 = load i32, i32* %8, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %8, align 4
  br label %32

47:                                               ; preds = %32
  %48 = load i8*, i8** %4, align 8
  store i8* %48, i8** %7, align 8
  store i32 11, i32* %8, align 4
  br label %49

49:                                               ; preds = %65, %47
  %50 = load i32, i32* %8, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.tcpa_event, %struct.tcpa_event* %6, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = sext i32 %53 to i64
  %55 = add i64 12, %54
  %56 = icmp ult i64 %51, %55
  br i1 %56, label %57, label %68

57:                                               ; preds = %49
  %58 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %59 = load i8*, i8** %7, align 8
  %60 = load i32, i32* %8, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i8, i8* %59, i64 %61
  %63 = load i8, i8* %62, align 1
  %64 = call i32 @seq_putc(%struct.seq_file* %58, i8 signext %63)
  br label %65

65:                                               ; preds = %57
  %66 = load i32, i32* %8, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %8, align 4
  br label %49

68:                                               ; preds = %49
  ret i32 0
}

declare dso_local i32 @memcpy(%struct.tcpa_event*, %struct.tcpa_event*, i32) #1

declare dso_local i8* @do_endian_conversion(i32) #1

declare dso_local i32 @seq_putc(%struct.seq_file*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
