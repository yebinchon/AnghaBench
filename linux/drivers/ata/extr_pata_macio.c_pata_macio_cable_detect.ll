; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_pata_macio.c_pata_macio_cable_detect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_pata_macio.c_pata_macio_cable_detect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_port = type { %struct.pata_macio_priv* }
%struct.pata_macio_priv = type { i64, %struct.device_node* }
%struct.device_node = type { i32 }

@controller_kl_ata4 = common dso_local global i64 0, align 8
@controller_un_ata6 = common dso_local global i64 0, align 8
@controller_k2_ata6 = common dso_local global i64 0, align 8
@controller_sh_ata6 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [11 x i8] c"cable-type\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"model\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"80-\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"PowerBook\00", align 1
@ATA_CBL_PATA40_SHORT = common dso_local global i32 0, align 4
@ATA_CBL_PATA80 = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [8 x i8] c"K2-UATA\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"shasta-ata\00", align 1
@ATA_CBL_PATA40 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ata_port*)* @pata_macio_cable_detect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pata_macio_cable_detect(%struct.ata_port* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ata_port*, align 8
  %4 = alloca %struct.pata_macio_priv*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.device_node*, align 8
  %7 = alloca i8*, align 8
  store %struct.ata_port* %0, %struct.ata_port** %3, align 8
  %8 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %9 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %8, i32 0, i32 0
  %10 = load %struct.pata_macio_priv*, %struct.pata_macio_priv** %9, align 8
  store %struct.pata_macio_priv* %10, %struct.pata_macio_priv** %4, align 8
  %11 = load %struct.pata_macio_priv*, %struct.pata_macio_priv** %4, align 8
  %12 = getelementptr inbounds %struct.pata_macio_priv, %struct.pata_macio_priv* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @controller_kl_ata4, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %34, label %16

16:                                               ; preds = %1
  %17 = load %struct.pata_macio_priv*, %struct.pata_macio_priv** %4, align 8
  %18 = getelementptr inbounds %struct.pata_macio_priv, %struct.pata_macio_priv* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @controller_un_ata6, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %34, label %22

22:                                               ; preds = %16
  %23 = load %struct.pata_macio_priv*, %struct.pata_macio_priv** %4, align 8
  %24 = getelementptr inbounds %struct.pata_macio_priv, %struct.pata_macio_priv* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @controller_k2_ata6, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %34, label %28

28:                                               ; preds = %22
  %29 = load %struct.pata_macio_priv*, %struct.pata_macio_priv** %4, align 8
  %30 = getelementptr inbounds %struct.pata_macio_priv, %struct.pata_macio_priv* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @controller_sh_ata6, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %59

34:                                               ; preds = %28, %22, %16, %1
  %35 = load %struct.pata_macio_priv*, %struct.pata_macio_priv** %4, align 8
  %36 = getelementptr inbounds %struct.pata_macio_priv, %struct.pata_macio_priv* %35, i32 0, i32 1
  %37 = load %struct.device_node*, %struct.device_node** %36, align 8
  %38 = call i8* @of_get_property(%struct.device_node* %37, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32* null)
  store i8* %38, i8** %5, align 8
  %39 = call %struct.device_node* @of_find_node_by_path(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store %struct.device_node* %39, %struct.device_node** %6, align 8
  %40 = load %struct.device_node*, %struct.device_node** %6, align 8
  %41 = call i8* @of_get_property(%struct.device_node* %40, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32* null)
  store i8* %41, i8** %7, align 8
  %42 = load %struct.device_node*, %struct.device_node** %6, align 8
  %43 = call i32 @of_node_put(%struct.device_node* %42)
  %44 = load i8*, i8** %5, align 8
  %45 = icmp ne i8* %44, null
  br i1 %45, label %46, label %58

46:                                               ; preds = %34
  %47 = load i8*, i8** %5, align 8
  %48 = call i32 @strncmp(i8* %47, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 3)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %58, label %50

50:                                               ; preds = %46
  %51 = load i8*, i8** %7, align 8
  %52 = call i32 @strncmp(i8* %51, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i32 9)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %56, label %54

54:                                               ; preds = %50
  %55 = load i32, i32* @ATA_CBL_PATA40_SHORT, align 4
  store i32 %55, i32* %2, align 4
  br label %75

56:                                               ; preds = %50
  %57 = load i32, i32* @ATA_CBL_PATA80, align 4
  store i32 %57, i32* %2, align 4
  br label %75

58:                                               ; preds = %46, %34
  br label %59

59:                                               ; preds = %58, %28
  %60 = load %struct.pata_macio_priv*, %struct.pata_macio_priv** %4, align 8
  %61 = getelementptr inbounds %struct.pata_macio_priv, %struct.pata_macio_priv* %60, i32 0, i32 1
  %62 = load %struct.device_node*, %struct.device_node** %61, align 8
  %63 = call i64 @of_device_is_compatible(%struct.device_node* %62, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0))
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %71, label %65

65:                                               ; preds = %59
  %66 = load %struct.pata_macio_priv*, %struct.pata_macio_priv** %4, align 8
  %67 = getelementptr inbounds %struct.pata_macio_priv, %struct.pata_macio_priv* %66, i32 0, i32 1
  %68 = load %struct.device_node*, %struct.device_node** %67, align 8
  %69 = call i64 @of_device_is_compatible(%struct.device_node* %68, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0))
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %65, %59
  %72 = load i32, i32* @ATA_CBL_PATA80, align 4
  store i32 %72, i32* %2, align 4
  br label %75

73:                                               ; preds = %65
  %74 = load i32, i32* @ATA_CBL_PATA40, align 4
  store i32 %74, i32* %2, align 4
  br label %75

75:                                               ; preds = %73, %71, %56, %54
  %76 = load i32, i32* %2, align 4
  ret i32 %76
}

declare dso_local i8* @of_get_property(%struct.device_node*, i8*, i32*) #1

declare dso_local %struct.device_node* @of_find_node_by_path(i8*) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

declare dso_local i64 @of_device_is_compatible(%struct.device_node*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
