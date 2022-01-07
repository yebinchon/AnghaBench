; ModuleID = '/home/carl/AnghaBench/lede/package/utils/jboot-tools/src/extr_jboot_config_read.c_write_eeprom.c'
source_filename = "/home/carl/AnghaBench/lede/package/utils/jboot-tools/src/extr_jboot_config_read.c_write_eeprom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.data_header = type { i64, i64, i32, i32 }

@EXIT_FAILURE = common dso_local global i32 0, align 4
@DATA_HEADER_EEPROM = common dso_local global i64 0, align 8
@DATA_HEADER_ID_CAL = common dso_local global i64 0, align 8
@ofname = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.data_header**, i32)* @write_eeprom to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @write_eeprom(%struct.data_header** %0, i32 %1) #0 {
  %3 = alloca %struct.data_header**, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.data_header** %0, %struct.data_header*** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* @EXIT_FAILURE, align 4
  store i32 %7, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %8

8:                                                ; preds = %50, %2
  %9 = load i32, i32* %6, align 4
  %10 = load i32, i32* %4, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %53

12:                                               ; preds = %8
  %13 = load %struct.data_header**, %struct.data_header*** %3, align 8
  %14 = load i32, i32* %6, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.data_header*, %struct.data_header** %13, i64 %15
  %17 = load %struct.data_header*, %struct.data_header** %16, align 8
  %18 = getelementptr inbounds %struct.data_header, %struct.data_header* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @DATA_HEADER_EEPROM, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %49

22:                                               ; preds = %12
  %23 = load %struct.data_header**, %struct.data_header*** %3, align 8
  %24 = load i32, i32* %6, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.data_header*, %struct.data_header** %23, i64 %25
  %27 = load %struct.data_header*, %struct.data_header** %26, align 8
  %28 = getelementptr inbounds %struct.data_header, %struct.data_header* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @DATA_HEADER_ID_CAL, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %49

32:                                               ; preds = %22
  %33 = load i32, i32* @ofname, align 4
  %34 = load %struct.data_header**, %struct.data_header*** %3, align 8
  %35 = load i32, i32* %6, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.data_header*, %struct.data_header** %34, i64 %36
  %38 = load %struct.data_header*, %struct.data_header** %37, align 8
  %39 = getelementptr inbounds %struct.data_header, %struct.data_header* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.data_header**, %struct.data_header*** %3, align 8
  %42 = load i32, i32* %6, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.data_header*, %struct.data_header** %41, i64 %43
  %45 = load %struct.data_header*, %struct.data_header** %44, align 8
  %46 = getelementptr inbounds %struct.data_header, %struct.data_header* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @write_file(i32 %33, i32 %40, i32 %47)
  store i32 %48, i32* %5, align 4
  br label %53

49:                                               ; preds = %22, %12
  br label %50

50:                                               ; preds = %49
  %51 = load i32, i32* %6, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %6, align 4
  br label %8

53:                                               ; preds = %32, %8
  %54 = load i32, i32* %5, align 4
  ret i32 %54
}

declare dso_local i32 @write_file(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
