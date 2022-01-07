; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_libata-transport.c_ata_show_ering.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_libata-transport.c_ata_show_ering.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_ering_entry = type { i32, i32 }
%struct.ata_show_ering_arg = type { i64, i64 }

@HZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"[%5llu.%09lu]\00", align 1
@NSEC_PER_SEC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ata_ering_entry*, i8*)* @ata_show_ering to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ata_show_ering(%struct.ata_ering_entry* %0, i8* %1) #0 {
  %3 = alloca %struct.ata_ering_entry*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.ata_show_ering_arg*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ata_ering_entry* %0, %struct.ata_ering_entry** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.ata_show_ering_arg*
  store %struct.ata_show_ering_arg* %9, %struct.ata_show_ering_arg** %5, align 8
  %10 = load %struct.ata_ering_entry*, %struct.ata_ering_entry** %3, align 8
  %11 = getelementptr inbounds %struct.ata_ering_entry, %struct.ata_ering_entry* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @HZ, align 4
  %14 = call i32 @div_u64_rem(i32 %12, i32 %13, i32* %7)
  store i32 %14, i32* %6, align 4
  %15 = load %struct.ata_show_ering_arg*, %struct.ata_show_ering_arg** %5, align 8
  %16 = getelementptr inbounds %struct.ata_show_ering_arg, %struct.ata_show_ering_arg* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.ata_show_ering_arg*, %struct.ata_show_ering_arg** %5, align 8
  %19 = getelementptr inbounds %struct.ata_show_ering_arg, %struct.ata_show_ering_arg* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = add nsw i64 %17, %20
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* @NSEC_PER_SEC, align 4
  %25 = mul nsw i32 %23, %24
  %26 = load i32, i32* @HZ, align 4
  %27 = sdiv i32 %25, %26
  %28 = call i64 @sprintf(i64 %21, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %22, i32 %27)
  %29 = load %struct.ata_show_ering_arg*, %struct.ata_show_ering_arg** %5, align 8
  %30 = getelementptr inbounds %struct.ata_show_ering_arg, %struct.ata_show_ering_arg* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = add nsw i64 %31, %28
  store i64 %32, i64* %30, align 8
  %33 = load %struct.ata_ering_entry*, %struct.ata_ering_entry** %3, align 8
  %34 = getelementptr inbounds %struct.ata_ering_entry, %struct.ata_ering_entry* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.ata_show_ering_arg*, %struct.ata_show_ering_arg** %5, align 8
  %37 = getelementptr inbounds %struct.ata_show_ering_arg, %struct.ata_show_ering_arg* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.ata_show_ering_arg*, %struct.ata_show_ering_arg** %5, align 8
  %40 = getelementptr inbounds %struct.ata_show_ering_arg, %struct.ata_show_ering_arg* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = add nsw i64 %38, %41
  %43 = call i64 @get_ata_err_names(i32 %35, i64 %42)
  %44 = load %struct.ata_show_ering_arg*, %struct.ata_show_ering_arg** %5, align 8
  %45 = getelementptr inbounds %struct.ata_show_ering_arg, %struct.ata_show_ering_arg* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = add nsw i64 %46, %43
  store i64 %47, i64* %45, align 8
  ret i32 0
}

declare dso_local i32 @div_u64_rem(i32, i32, i32*) #1

declare dso_local i64 @sprintf(i64, i8*, i32, i32) #1

declare dso_local i64 @get_ata_err_names(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
