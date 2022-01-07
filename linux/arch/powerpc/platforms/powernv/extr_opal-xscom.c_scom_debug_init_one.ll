; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/powernv/extr_opal-xscom.c_scom_debug_init_one.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/powernv/extr_opal-xscom.c_scom_debug_init_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32 }
%struct.device_node = type { i32 }
%struct.scom_debug_entry = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { %struct.scom_debug_entry*, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"%08x\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"%pOF\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"devspec\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"access\00", align 1
@scom_debug_fops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dentry*, %struct.device_node*, i32)* @scom_debug_init_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @scom_debug_init_one(%struct.dentry* %0, %struct.device_node* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca %struct.device_node*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.scom_debug_entry*, align 8
  %9 = alloca %struct.dentry*, align 8
  store %struct.dentry* %0, %struct.dentry** %5, align 8
  store %struct.device_node* %1, %struct.device_node** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.scom_debug_entry* @kzalloc(i32 32, i32 %10)
  store %struct.scom_debug_entry* %11, %struct.scom_debug_entry** %8, align 8
  %12 = load %struct.scom_debug_entry*, %struct.scom_debug_entry** %8, align 8
  %13 = icmp ne %struct.scom_debug_entry* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %3
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %4, align 4
  br label %66

17:                                               ; preds = %3
  %18 = load i32, i32* %7, align 4
  %19 = load %struct.scom_debug_entry*, %struct.scom_debug_entry** %8, align 8
  %20 = getelementptr inbounds %struct.scom_debug_entry, %struct.scom_debug_entry* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 8
  %21 = load %struct.scom_debug_entry*, %struct.scom_debug_entry** %8, align 8
  %22 = getelementptr inbounds %struct.scom_debug_entry, %struct.scom_debug_entry* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* %7, align 4
  %25 = call i32 @snprintf(i32 %23, i32 16, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %24)
  %26 = load i32, i32* @GFP_KERNEL, align 4
  %27 = load %struct.device_node*, %struct.device_node** %6, align 8
  %28 = call i64 @kasprintf(i32 %26, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), %struct.device_node* %27)
  %29 = inttoptr i64 %28 to i8*
  %30 = bitcast i8* %29 to %struct.scom_debug_entry*
  %31 = load %struct.scom_debug_entry*, %struct.scom_debug_entry** %8, align 8
  %32 = getelementptr inbounds %struct.scom_debug_entry, %struct.scom_debug_entry* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  store %struct.scom_debug_entry* %30, %struct.scom_debug_entry** %33, align 8
  %34 = load %struct.scom_debug_entry*, %struct.scom_debug_entry** %8, align 8
  %35 = getelementptr inbounds %struct.scom_debug_entry, %struct.scom_debug_entry* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load %struct.scom_debug_entry*, %struct.scom_debug_entry** %36, align 8
  %38 = bitcast %struct.scom_debug_entry* %37 to i8*
  %39 = call i32 @strlen(i8* %38)
  %40 = load %struct.scom_debug_entry*, %struct.scom_debug_entry** %8, align 8
  %41 = getelementptr inbounds %struct.scom_debug_entry, %struct.scom_debug_entry* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 1
  store i32 %39, i32* %42, align 8
  %43 = load %struct.scom_debug_entry*, %struct.scom_debug_entry** %8, align 8
  %44 = getelementptr inbounds %struct.scom_debug_entry, %struct.scom_debug_entry* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.dentry*, %struct.dentry** %5, align 8
  %47 = call %struct.dentry* @debugfs_create_dir(i32 %45, %struct.dentry* %46)
  store %struct.dentry* %47, %struct.dentry** %9, align 8
  %48 = load %struct.dentry*, %struct.dentry** %9, align 8
  %49 = icmp ne %struct.dentry* %48, null
  br i1 %49, label %58, label %50

50:                                               ; preds = %17
  %51 = load %struct.scom_debug_entry*, %struct.scom_debug_entry** %8, align 8
  %52 = getelementptr inbounds %struct.scom_debug_entry, %struct.scom_debug_entry* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load %struct.scom_debug_entry*, %struct.scom_debug_entry** %53, align 8
  %55 = call i32 @kfree(%struct.scom_debug_entry* %54)
  %56 = load %struct.scom_debug_entry*, %struct.scom_debug_entry** %8, align 8
  %57 = call i32 @kfree(%struct.scom_debug_entry* %56)
  store i32 -1, i32* %4, align 4
  br label %66

58:                                               ; preds = %17
  %59 = load %struct.dentry*, %struct.dentry** %9, align 8
  %60 = load %struct.scom_debug_entry*, %struct.scom_debug_entry** %8, align 8
  %61 = getelementptr inbounds %struct.scom_debug_entry, %struct.scom_debug_entry* %60, i32 0, i32 1
  %62 = call i32 @debugfs_create_blob(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 256, %struct.dentry* %59, %struct.TYPE_2__* %61)
  %63 = load %struct.dentry*, %struct.dentry** %9, align 8
  %64 = load %struct.scom_debug_entry*, %struct.scom_debug_entry** %8, align 8
  %65 = call i32 @debugfs_create_file(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32 384, %struct.dentry* %63, %struct.scom_debug_entry* %64, i32* @scom_debug_fops)
  store i32 0, i32* %4, align 4
  br label %66

66:                                               ; preds = %58, %50, %14
  %67 = load i32, i32* %4, align 4
  ret i32 %67
}

declare dso_local %struct.scom_debug_entry* @kzalloc(i32, i32) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i32) #1

declare dso_local i64 @kasprintf(i32, i8*, %struct.device_node*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local %struct.dentry* @debugfs_create_dir(i32, %struct.dentry*) #1

declare dso_local i32 @kfree(%struct.scom_debug_entry*) #1

declare dso_local i32 @debugfs_create_blob(i8*, i32, %struct.dentry*, %struct.TYPE_2__*) #1

declare dso_local i32 @debugfs_create_file(i8*, i32, %struct.dentry*, %struct.scom_debug_entry*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
