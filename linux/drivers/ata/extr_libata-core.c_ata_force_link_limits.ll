; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_libata-core.c_ata_force_link_limits.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_libata-core.c_ata_force_link_limits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_force_ent = type { i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.ata_link = type { i32, i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@ata_force_tbl_size = common dso_local global i32 0, align 4
@ata_force_tbl = common dso_local global %struct.ata_force_ent* null, align 8
@.str = private unnamed_addr constant [32 x i8] c"FORCE: PHY spd limit set to %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"FORCE: link flag 0x%x forced -> 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ata_link*)* @ata_force_link_limits to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ata_force_link_limits(%struct.ata_link* %0) #0 {
  %2 = alloca %struct.ata_link*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.ata_force_ent*, align 8
  store %struct.ata_link* %0, %struct.ata_link** %2, align 8
  store i32 0, i32* %3, align 4
  %7 = load %struct.ata_link*, %struct.ata_link** %2, align 8
  %8 = getelementptr inbounds %struct.ata_link, %struct.ata_link* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  store i32 %9, i32* %4, align 4
  %10 = load %struct.ata_link*, %struct.ata_link** %2, align 8
  %11 = call i64 @ata_is_host_link(%struct.ata_link* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %1
  %14 = load i32, i32* %4, align 4
  %15 = add nsw i32 %14, 15
  store i32 %15, i32* %4, align 4
  br label %16

16:                                               ; preds = %13, %1
  %17 = load i32, i32* @ata_force_tbl_size, align 4
  %18 = sub nsw i32 %17, 1
  store i32 %18, i32* %5, align 4
  br label %19

19:                                               ; preds = %103, %16
  %20 = load i32, i32* %5, align 4
  %21 = icmp sge i32 %20, 0
  br i1 %21, label %22, label %106

22:                                               ; preds = %19
  %23 = load %struct.ata_force_ent*, %struct.ata_force_ent** @ata_force_tbl, align 8
  %24 = load i32, i32* %5, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.ata_force_ent, %struct.ata_force_ent* %23, i64 %25
  store %struct.ata_force_ent* %26, %struct.ata_force_ent** %6, align 8
  %27 = load %struct.ata_force_ent*, %struct.ata_force_ent** %6, align 8
  %28 = getelementptr inbounds %struct.ata_force_ent, %struct.ata_force_ent* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, -1
  br i1 %30, label %31, label %42

31:                                               ; preds = %22
  %32 = load %struct.ata_force_ent*, %struct.ata_force_ent** %6, align 8
  %33 = getelementptr inbounds %struct.ata_force_ent, %struct.ata_force_ent* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.ata_link*, %struct.ata_link** %2, align 8
  %36 = getelementptr inbounds %struct.ata_link, %struct.ata_link* %35, i32 0, i32 3
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = icmp ne i32 %34, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %31
  br label %103

42:                                               ; preds = %31, %22
  %43 = load %struct.ata_force_ent*, %struct.ata_force_ent** %6, align 8
  %44 = getelementptr inbounds %struct.ata_force_ent, %struct.ata_force_ent* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = icmp ne i32 %45, -1
  br i1 %46, label %47, label %54

47:                                               ; preds = %42
  %48 = load %struct.ata_force_ent*, %struct.ata_force_ent** %6, align 8
  %49 = getelementptr inbounds %struct.ata_force_ent, %struct.ata_force_ent* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* %4, align 4
  %52 = icmp ne i32 %50, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %47
  br label %103

54:                                               ; preds = %47, %42
  %55 = load i32, i32* %3, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %78, label %57

57:                                               ; preds = %54
  %58 = load %struct.ata_force_ent*, %struct.ata_force_ent** %6, align 8
  %59 = getelementptr inbounds %struct.ata_force_ent, %struct.ata_force_ent* %58, i32 0, i32 2
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %78

63:                                               ; preds = %57
  %64 = load %struct.ata_force_ent*, %struct.ata_force_ent** %6, align 8
  %65 = getelementptr inbounds %struct.ata_force_ent, %struct.ata_force_ent* %64, i32 0, i32 2
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = shl i32 1, %67
  %69 = sub nsw i32 %68, 1
  %70 = load %struct.ata_link*, %struct.ata_link** %2, align 8
  %71 = getelementptr inbounds %struct.ata_link, %struct.ata_link* %70, i32 0, i32 1
  store i32 %69, i32* %71, align 4
  %72 = load %struct.ata_link*, %struct.ata_link** %2, align 8
  %73 = load %struct.ata_force_ent*, %struct.ata_force_ent** %6, align 8
  %74 = getelementptr inbounds %struct.ata_force_ent, %struct.ata_force_ent* %73, i32 0, i32 2
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 4
  %77 = call i32 (%struct.ata_link*, i8*, i32, ...) @ata_link_notice(%struct.ata_link* %72, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %76)
  store i32 1, i32* %3, align 4
  br label %78

78:                                               ; preds = %63, %57, %54
  %79 = load %struct.ata_force_ent*, %struct.ata_force_ent** %6, align 8
  %80 = getelementptr inbounds %struct.ata_force_ent, %struct.ata_force_ent* %79, i32 0, i32 2
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %102

84:                                               ; preds = %78
  %85 = load %struct.ata_force_ent*, %struct.ata_force_ent** %6, align 8
  %86 = getelementptr inbounds %struct.ata_force_ent, %struct.ata_force_ent* %85, i32 0, i32 2
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.ata_link*, %struct.ata_link** %2, align 8
  %90 = getelementptr inbounds %struct.ata_link, %struct.ata_link* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 8
  %92 = or i32 %91, %88
  store i32 %92, i32* %90, align 8
  %93 = load %struct.ata_link*, %struct.ata_link** %2, align 8
  %94 = load %struct.ata_force_ent*, %struct.ata_force_ent** %6, align 8
  %95 = getelementptr inbounds %struct.ata_force_ent, %struct.ata_force_ent* %94, i32 0, i32 2
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.ata_link*, %struct.ata_link** %2, align 8
  %99 = getelementptr inbounds %struct.ata_link, %struct.ata_link* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 8
  %101 = call i32 (%struct.ata_link*, i8*, i32, ...) @ata_link_notice(%struct.ata_link* %93, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %97, i32 %100)
  br label %102

102:                                              ; preds = %84, %78
  br label %103

103:                                              ; preds = %102, %53, %41
  %104 = load i32, i32* %5, align 4
  %105 = add nsw i32 %104, -1
  store i32 %105, i32* %5, align 4
  br label %19

106:                                              ; preds = %19
  ret void
}

declare dso_local i64 @ata_is_host_link(%struct.ata_link*) #1

declare dso_local i32 @ata_link_notice(%struct.ata_link*, i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
