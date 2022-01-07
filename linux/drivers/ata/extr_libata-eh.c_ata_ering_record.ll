; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_libata-eh.c_ata_ering_record.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_libata-eh.c_ata_ering_record.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_ering = type { i64, %struct.ata_ering_entry* }
%struct.ata_ering_entry = type { i32, i32, i32 }

@ATA_ERING_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ata_ering*, i32, i32)* @ata_ering_record to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ata_ering_record(%struct.ata_ering* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.ata_ering*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.ata_ering_entry*, align 8
  store %struct.ata_ering* %0, %struct.ata_ering** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %6, align 4
  %9 = icmp ne i32 %8, 0
  %10 = xor i1 %9, true
  %11 = zext i1 %10 to i32
  %12 = call i32 @WARN_ON(i32 %11)
  %13 = load %struct.ata_ering*, %struct.ata_ering** %4, align 8
  %14 = getelementptr inbounds %struct.ata_ering, %struct.ata_ering* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = add i64 %15, 1
  store i64 %16, i64* %14, align 8
  %17 = load i64, i64* @ATA_ERING_SIZE, align 8
  %18 = load %struct.ata_ering*, %struct.ata_ering** %4, align 8
  %19 = getelementptr inbounds %struct.ata_ering, %struct.ata_ering* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = urem i64 %20, %17
  store i64 %21, i64* %19, align 8
  %22 = load %struct.ata_ering*, %struct.ata_ering** %4, align 8
  %23 = getelementptr inbounds %struct.ata_ering, %struct.ata_ering* %22, i32 0, i32 1
  %24 = load %struct.ata_ering_entry*, %struct.ata_ering_entry** %23, align 8
  %25 = load %struct.ata_ering*, %struct.ata_ering** %4, align 8
  %26 = getelementptr inbounds %struct.ata_ering, %struct.ata_ering* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = getelementptr inbounds %struct.ata_ering_entry, %struct.ata_ering_entry* %24, i64 %27
  store %struct.ata_ering_entry* %28, %struct.ata_ering_entry** %7, align 8
  %29 = load i32, i32* %5, align 4
  %30 = load %struct.ata_ering_entry*, %struct.ata_ering_entry** %7, align 8
  %31 = getelementptr inbounds %struct.ata_ering_entry, %struct.ata_ering_entry* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 4
  %32 = load i32, i32* %6, align 4
  %33 = load %struct.ata_ering_entry*, %struct.ata_ering_entry** %7, align 8
  %34 = getelementptr inbounds %struct.ata_ering_entry, %struct.ata_ering_entry* %33, i32 0, i32 1
  store i32 %32, i32* %34, align 4
  %35 = call i32 (...) @get_jiffies_64()
  %36 = load %struct.ata_ering_entry*, %struct.ata_ering_entry** %7, align 8
  %37 = getelementptr inbounds %struct.ata_ering_entry, %struct.ata_ering_entry* %36, i32 0, i32 2
  store i32 %35, i32* %37, align 4
  ret void
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @get_jiffies_64(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
