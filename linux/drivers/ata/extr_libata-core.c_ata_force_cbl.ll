; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_libata-core.c_ata_force_cbl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_libata-core.c_ata_force_cbl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_force_ent = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32 }
%struct.ata_port = type { i32, i64 }

@ata_force_tbl_size = common dso_local global i32 0, align 4
@ata_force_tbl = common dso_local global %struct.ata_force_ent* null, align 8
@ATA_CBL_NONE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [24 x i8] c"FORCE: cable set to %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ata_force_cbl(%struct.ata_port* %0) #0 {
  %2 = alloca %struct.ata_port*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.ata_force_ent*, align 8
  store %struct.ata_port* %0, %struct.ata_port** %2, align 8
  %5 = load i32, i32* @ata_force_tbl_size, align 4
  %6 = sub nsw i32 %5, 1
  store i32 %6, i32* %3, align 4
  br label %7

7:                                                ; preds = %49, %1
  %8 = load i32, i32* %3, align 4
  %9 = icmp sge i32 %8, 0
  br i1 %9, label %10, label %52

10:                                               ; preds = %7
  %11 = load %struct.ata_force_ent*, %struct.ata_force_ent** @ata_force_tbl, align 8
  %12 = load i32, i32* %3, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.ata_force_ent, %struct.ata_force_ent* %11, i64 %13
  store %struct.ata_force_ent* %14, %struct.ata_force_ent** %4, align 8
  %15 = load %struct.ata_force_ent*, %struct.ata_force_ent** %4, align 8
  %16 = getelementptr inbounds %struct.ata_force_ent, %struct.ata_force_ent* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp ne i32 %17, -1
  br i1 %18, label %19, label %28

19:                                               ; preds = %10
  %20 = load %struct.ata_force_ent*, %struct.ata_force_ent** %4, align 8
  %21 = getelementptr inbounds %struct.ata_force_ent, %struct.ata_force_ent* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.ata_port*, %struct.ata_port** %2, align 8
  %24 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp ne i32 %22, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %19
  br label %49

28:                                               ; preds = %19, %10
  %29 = load %struct.ata_force_ent*, %struct.ata_force_ent** %4, align 8
  %30 = getelementptr inbounds %struct.ata_force_ent, %struct.ata_force_ent* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @ATA_CBL_NONE, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %28
  br label %49

36:                                               ; preds = %28
  %37 = load %struct.ata_force_ent*, %struct.ata_force_ent** %4, align 8
  %38 = getelementptr inbounds %struct.ata_force_ent, %struct.ata_force_ent* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.ata_port*, %struct.ata_port** %2, align 8
  %42 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %41, i32 0, i32 1
  store i64 %40, i64* %42, align 8
  %43 = load %struct.ata_port*, %struct.ata_port** %2, align 8
  %44 = load %struct.ata_force_ent*, %struct.ata_force_ent** %4, align 8
  %45 = getelementptr inbounds %struct.ata_force_ent, %struct.ata_force_ent* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @ata_port_notice(%struct.ata_port* %43, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %47)
  br label %52

49:                                               ; preds = %35, %27
  %50 = load i32, i32* %3, align 4
  %51 = add nsw i32 %50, -1
  store i32 %51, i32* %3, align 4
  br label %7

52:                                               ; preds = %36, %7
  ret void
}

declare dso_local i32 @ata_port_notice(%struct.ata_port*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
