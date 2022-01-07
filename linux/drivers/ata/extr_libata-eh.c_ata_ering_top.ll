; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_libata-eh.c_ata_ering_top.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_libata-eh.c_ata_ering_top.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_ering_entry = type { i64 }
%struct.ata_ering = type { i64, %struct.ata_ering_entry* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ata_ering_entry* (%struct.ata_ering*)* @ata_ering_top to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ata_ering_entry* @ata_ering_top(%struct.ata_ering* %0) #0 {
  %2 = alloca %struct.ata_ering_entry*, align 8
  %3 = alloca %struct.ata_ering*, align 8
  %4 = alloca %struct.ata_ering_entry*, align 8
  store %struct.ata_ering* %0, %struct.ata_ering** %3, align 8
  %5 = load %struct.ata_ering*, %struct.ata_ering** %3, align 8
  %6 = getelementptr inbounds %struct.ata_ering, %struct.ata_ering* %5, i32 0, i32 1
  %7 = load %struct.ata_ering_entry*, %struct.ata_ering_entry** %6, align 8
  %8 = load %struct.ata_ering*, %struct.ata_ering** %3, align 8
  %9 = getelementptr inbounds %struct.ata_ering, %struct.ata_ering* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = getelementptr inbounds %struct.ata_ering_entry, %struct.ata_ering_entry* %7, i64 %10
  store %struct.ata_ering_entry* %11, %struct.ata_ering_entry** %4, align 8
  %12 = load %struct.ata_ering_entry*, %struct.ata_ering_entry** %4, align 8
  %13 = getelementptr inbounds %struct.ata_ering_entry, %struct.ata_ering_entry* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %1
  %17 = load %struct.ata_ering_entry*, %struct.ata_ering_entry** %4, align 8
  store %struct.ata_ering_entry* %17, %struct.ata_ering_entry** %2, align 8
  br label %19

18:                                               ; preds = %1
  store %struct.ata_ering_entry* null, %struct.ata_ering_entry** %2, align 8
  br label %19

19:                                               ; preds = %18, %16
  %20 = load %struct.ata_ering_entry*, %struct.ata_ering_entry** %2, align 8
  ret %struct.ata_ering_entry* %20
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
