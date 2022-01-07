; ModuleID = '/home/carl/AnghaBench/linux/drivers/bluetooth/extr_btmrvl_debugfs.c_btmrvl_debugfs_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bluetooth/extr_btmrvl_debugfs.c_btmrvl_debugfs_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_dev = type { i32 }
%struct.btmrvl_private = type { %struct.TYPE_4__, %struct.TYPE_3__*, %struct.btmrvl_debugfs_data* }
%struct.TYPE_4__ = type { i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i32, i32, i32 }
%struct.btmrvl_debugfs_data = type { i8*, i8* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"Can not allocate memory for btmrvl_debugfs_data.\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"config\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"psmode\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"pscmd\00", align 1
@btmrvl_pscmd_fops = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [8 x i8] c"gpiogap\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"hsmode\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"hscmd\00", align 1
@btmrvl_hscmd_fops = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [9 x i8] c"hscfgcmd\00", align 1
@btmrvl_hscfgcmd_fops = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [7 x i8] c"status\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"curpsmode\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"psstate\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"hsstate\00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c"txdnldready\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @btmrvl_debugfs_init(%struct.hci_dev* %0) #0 {
  %2 = alloca %struct.hci_dev*, align 8
  %3 = alloca %struct.btmrvl_private*, align 8
  %4 = alloca %struct.btmrvl_debugfs_data*, align 8
  store %struct.hci_dev* %0, %struct.hci_dev** %2, align 8
  %5 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %6 = call %struct.btmrvl_private* @hci_get_drvdata(%struct.hci_dev* %5)
  store %struct.btmrvl_private* %6, %struct.btmrvl_private** %3, align 8
  %7 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %8 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  br label %102

12:                                               ; preds = %1
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.btmrvl_debugfs_data* @kzalloc(i32 16, i32 %13)
  store %struct.btmrvl_debugfs_data* %14, %struct.btmrvl_debugfs_data** %4, align 8
  %15 = load %struct.btmrvl_debugfs_data*, %struct.btmrvl_debugfs_data** %4, align 8
  %16 = load %struct.btmrvl_private*, %struct.btmrvl_private** %3, align 8
  %17 = getelementptr inbounds %struct.btmrvl_private, %struct.btmrvl_private* %16, i32 0, i32 2
  store %struct.btmrvl_debugfs_data* %15, %struct.btmrvl_debugfs_data** %17, align 8
  %18 = load %struct.btmrvl_debugfs_data*, %struct.btmrvl_debugfs_data** %4, align 8
  %19 = icmp ne %struct.btmrvl_debugfs_data* %18, null
  br i1 %19, label %22, label %20

20:                                               ; preds = %12
  %21 = call i32 @BT_ERR(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  br label %102

22:                                               ; preds = %12
  %23 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %24 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i8* @debugfs_create_dir(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %25)
  %27 = load %struct.btmrvl_debugfs_data*, %struct.btmrvl_debugfs_data** %4, align 8
  %28 = getelementptr inbounds %struct.btmrvl_debugfs_data, %struct.btmrvl_debugfs_data* %27, i32 0, i32 1
  store i8* %26, i8** %28, align 8
  %29 = load %struct.btmrvl_debugfs_data*, %struct.btmrvl_debugfs_data** %4, align 8
  %30 = getelementptr inbounds %struct.btmrvl_debugfs_data, %struct.btmrvl_debugfs_data* %29, i32 0, i32 1
  %31 = load i8*, i8** %30, align 8
  %32 = load %struct.btmrvl_private*, %struct.btmrvl_private** %3, align 8
  %33 = getelementptr inbounds %struct.btmrvl_private, %struct.btmrvl_private* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 3
  %35 = call i32 @debugfs_create_u8(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 420, i8* %31, i32* %34)
  %36 = load %struct.btmrvl_debugfs_data*, %struct.btmrvl_debugfs_data** %4, align 8
  %37 = getelementptr inbounds %struct.btmrvl_debugfs_data, %struct.btmrvl_debugfs_data* %36, i32 0, i32 1
  %38 = load i8*, i8** %37, align 8
  %39 = load %struct.btmrvl_private*, %struct.btmrvl_private** %3, align 8
  %40 = call i32 @debugfs_create_file(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32 420, i8* %38, %struct.btmrvl_private* %39, i32* @btmrvl_pscmd_fops)
  %41 = load %struct.btmrvl_debugfs_data*, %struct.btmrvl_debugfs_data** %4, align 8
  %42 = getelementptr inbounds %struct.btmrvl_debugfs_data, %struct.btmrvl_debugfs_data* %41, i32 0, i32 1
  %43 = load i8*, i8** %42, align 8
  %44 = load %struct.btmrvl_private*, %struct.btmrvl_private** %3, align 8
  %45 = getelementptr inbounds %struct.btmrvl_private, %struct.btmrvl_private* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 2
  %47 = call i32 @debugfs_create_x16(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i32 420, i8* %43, i32* %46)
  %48 = load %struct.btmrvl_debugfs_data*, %struct.btmrvl_debugfs_data** %4, align 8
  %49 = getelementptr inbounds %struct.btmrvl_debugfs_data, %struct.btmrvl_debugfs_data* %48, i32 0, i32 1
  %50 = load i8*, i8** %49, align 8
  %51 = load %struct.btmrvl_private*, %struct.btmrvl_private** %3, align 8
  %52 = getelementptr inbounds %struct.btmrvl_private, %struct.btmrvl_private* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 1
  %54 = call i32 @debugfs_create_u8(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i32 420, i8* %50, i32* %53)
  %55 = load %struct.btmrvl_debugfs_data*, %struct.btmrvl_debugfs_data** %4, align 8
  %56 = getelementptr inbounds %struct.btmrvl_debugfs_data, %struct.btmrvl_debugfs_data* %55, i32 0, i32 1
  %57 = load i8*, i8** %56, align 8
  %58 = load %struct.btmrvl_private*, %struct.btmrvl_private** %3, align 8
  %59 = call i32 @debugfs_create_file(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i32 420, i8* %57, %struct.btmrvl_private* %58, i32* @btmrvl_hscmd_fops)
  %60 = load %struct.btmrvl_debugfs_data*, %struct.btmrvl_debugfs_data** %4, align 8
  %61 = getelementptr inbounds %struct.btmrvl_debugfs_data, %struct.btmrvl_debugfs_data* %60, i32 0, i32 1
  %62 = load i8*, i8** %61, align 8
  %63 = load %struct.btmrvl_private*, %struct.btmrvl_private** %3, align 8
  %64 = call i32 @debugfs_create_file(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), i32 420, i8* %62, %struct.btmrvl_private* %63, i32* @btmrvl_hscfgcmd_fops)
  %65 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %66 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i8* @debugfs_create_dir(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), i32 %67)
  %69 = load %struct.btmrvl_debugfs_data*, %struct.btmrvl_debugfs_data** %4, align 8
  %70 = getelementptr inbounds %struct.btmrvl_debugfs_data, %struct.btmrvl_debugfs_data* %69, i32 0, i32 0
  store i8* %68, i8** %70, align 8
  %71 = load %struct.btmrvl_debugfs_data*, %struct.btmrvl_debugfs_data** %4, align 8
  %72 = getelementptr inbounds %struct.btmrvl_debugfs_data, %struct.btmrvl_debugfs_data* %71, i32 0, i32 0
  %73 = load i8*, i8** %72, align 8
  %74 = load %struct.btmrvl_private*, %struct.btmrvl_private** %3, align 8
  %75 = getelementptr inbounds %struct.btmrvl_private, %struct.btmrvl_private* %74, i32 0, i32 1
  %76 = load %struct.TYPE_3__*, %struct.TYPE_3__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 2
  %78 = call i32 @debugfs_create_u8(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0), i32 292, i8* %73, i32* %77)
  %79 = load %struct.btmrvl_debugfs_data*, %struct.btmrvl_debugfs_data** %4, align 8
  %80 = getelementptr inbounds %struct.btmrvl_debugfs_data, %struct.btmrvl_debugfs_data* %79, i32 0, i32 0
  %81 = load i8*, i8** %80, align 8
  %82 = load %struct.btmrvl_private*, %struct.btmrvl_private** %3, align 8
  %83 = getelementptr inbounds %struct.btmrvl_private, %struct.btmrvl_private* %82, i32 0, i32 1
  %84 = load %struct.TYPE_3__*, %struct.TYPE_3__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 1
  %86 = call i32 @debugfs_create_u8(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i64 0, i64 0), i32 292, i8* %81, i32* %85)
  %87 = load %struct.btmrvl_debugfs_data*, %struct.btmrvl_debugfs_data** %4, align 8
  %88 = getelementptr inbounds %struct.btmrvl_debugfs_data, %struct.btmrvl_debugfs_data* %87, i32 0, i32 0
  %89 = load i8*, i8** %88, align 8
  %90 = load %struct.btmrvl_private*, %struct.btmrvl_private** %3, align 8
  %91 = getelementptr inbounds %struct.btmrvl_private, %struct.btmrvl_private* %90, i32 0, i32 1
  %92 = load %struct.TYPE_3__*, %struct.TYPE_3__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 0
  %94 = call i32 @debugfs_create_u8(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i64 0, i64 0), i32 292, i8* %89, i32* %93)
  %95 = load %struct.btmrvl_debugfs_data*, %struct.btmrvl_debugfs_data** %4, align 8
  %96 = getelementptr inbounds %struct.btmrvl_debugfs_data, %struct.btmrvl_debugfs_data* %95, i32 0, i32 0
  %97 = load i8*, i8** %96, align 8
  %98 = load %struct.btmrvl_private*, %struct.btmrvl_private** %3, align 8
  %99 = getelementptr inbounds %struct.btmrvl_private, %struct.btmrvl_private* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 0
  %101 = call i32 @debugfs_create_u8(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i64 0, i64 0), i32 292, i8* %97, i32* %100)
  br label %102

102:                                              ; preds = %22, %20, %11
  ret void
}

declare dso_local %struct.btmrvl_private* @hci_get_drvdata(%struct.hci_dev*) #1

declare dso_local %struct.btmrvl_debugfs_data* @kzalloc(i32, i32) #1

declare dso_local i32 @BT_ERR(i8*) #1

declare dso_local i8* @debugfs_create_dir(i8*, i32) #1

declare dso_local i32 @debugfs_create_u8(i8*, i32, i8*, i32*) #1

declare dso_local i32 @debugfs_create_file(i8*, i32, i8*, %struct.btmrvl_private*, i32*) #1

declare dso_local i32 @debugfs_create_x16(i8*, i32, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
