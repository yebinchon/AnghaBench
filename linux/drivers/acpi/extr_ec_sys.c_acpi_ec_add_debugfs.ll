; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/extr_ec_sys.c_acpi_ec_add_debugfs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/extr_ec_sys.c_acpi_ec_add_debugfs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }
%struct.acpi_ec = type { i32 }
%struct.dentry = type { i32 }

@.str = private unnamed_addr constant [3 x i8] c"ec\00", align 1
@acpi_ec_debugfs_dir = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"ec%u\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"gpe\00", align 1
@first_ec = common dso_local global %struct.TYPE_2__* null, align 8
@.str.3 = private unnamed_addr constant [16 x i8] c"use_global_lock\00", align 1
@write_support = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [3 x i8] c"io\00", align 1
@acpi_ec_io_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.acpi_ec*, i32)* @acpi_ec_add_debugfs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @acpi_ec_add_debugfs(%struct.acpi_ec* %0, i32 %1) #0 {
  %3 = alloca %struct.acpi_ec*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca [64 x i8], align 16
  %7 = alloca i32, align 4
  store %struct.acpi_ec* %0, %struct.acpi_ec** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 256, i32* %7, align 4
  %8 = load i32, i32* %4, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %2
  %11 = call i8* @debugfs_create_dir(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* null)
  %12 = bitcast i8* %11 to i32*
  store i32* %12, i32** @acpi_ec_debugfs_dir, align 8
  br label %13

13:                                               ; preds = %10, %2
  %14 = getelementptr inbounds [64 x i8], [64 x i8]* %6, i64 0, i64 0
  %15 = load i32, i32* %4, align 4
  %16 = call i32 @sprintf(i8* %14, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %15)
  %17 = getelementptr inbounds [64 x i8], [64 x i8]* %6, i64 0, i64 0
  %18 = load i32*, i32** @acpi_ec_debugfs_dir, align 8
  %19 = call i8* @debugfs_create_dir(i8* %17, i32* %18)
  %20 = bitcast i8* %19 to %struct.dentry*
  store %struct.dentry* %20, %struct.dentry** %5, align 8
  %21 = load %struct.dentry*, %struct.dentry** %5, align 8
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** @first_ec, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  %24 = call i32 @debugfs_create_x32(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 292, %struct.dentry* %21, i32* %23)
  %25 = load %struct.dentry*, %struct.dentry** %5, align 8
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** @first_ec, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = call i32 @debugfs_create_bool(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i32 292, %struct.dentry* %25, i32* %27)
  %29 = load i64, i64* @write_support, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %13
  store i32 384, i32* %7, align 4
  br label %32

32:                                               ; preds = %31, %13
  %33 = load i32, i32* %7, align 4
  %34 = load %struct.dentry*, %struct.dentry** %5, align 8
  %35 = load %struct.acpi_ec*, %struct.acpi_ec** %3, align 8
  %36 = call i32 @debugfs_create_file(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i32 %33, %struct.dentry* %34, %struct.acpi_ec* %35, i32* @acpi_ec_io_ops)
  ret void
}

declare dso_local i8* @debugfs_create_dir(i8*, i32*) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i32 @debugfs_create_x32(i8*, i32, %struct.dentry*, i32*) #1

declare dso_local i32 @debugfs_create_bool(i8*, i32, %struct.dentry*, i32*) #1

declare dso_local i32 @debugfs_create_file(i8*, i32, %struct.dentry*, %struct.acpi_ec*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
