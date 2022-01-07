; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/ipmi/extr_ipmi_devintf.c_ipmi_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/ipmi/extr_ipmi_devintf.c_ipmi_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.file = type { %struct.ipmi_file_private* }
%struct.ipmi_file_private = type { i32, i64, i32, i32*, i32, i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ipmi_hndlrs = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @ipmi_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipmi_open(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ipmi_file_private*, align 8
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.file* %1, %struct.file** %5, align 8
  %9 = load %struct.inode*, %struct.inode** %4, align 8
  %10 = call i32 @iminor(%struct.inode* %9)
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.ipmi_file_private* @kmalloc(i32 48, i32 %11)
  store %struct.ipmi_file_private* %12, %struct.ipmi_file_private** %8, align 8
  %13 = load %struct.ipmi_file_private*, %struct.ipmi_file_private** %8, align 8
  %14 = icmp ne %struct.ipmi_file_private* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %53

18:                                               ; preds = %2
  %19 = load i32, i32* %6, align 4
  %20 = load %struct.ipmi_file_private*, %struct.ipmi_file_private** %8, align 8
  %21 = load %struct.ipmi_file_private*, %struct.ipmi_file_private** %8, align 8
  %22 = getelementptr inbounds %struct.ipmi_file_private, %struct.ipmi_file_private* %21, i32 0, i32 7
  %23 = call i32 @ipmi_create_user(i32 %19, i32* @ipmi_hndlrs, %struct.ipmi_file_private* %20, i32* %22)
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* %7, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %18
  %27 = load %struct.ipmi_file_private*, %struct.ipmi_file_private** %8, align 8
  %28 = call i32 @kfree(%struct.ipmi_file_private* %27)
  br label %51

29:                                               ; preds = %18
  %30 = load %struct.ipmi_file_private*, %struct.ipmi_file_private** %8, align 8
  %31 = load %struct.file*, %struct.file** %5, align 8
  %32 = getelementptr inbounds %struct.file, %struct.file* %31, i32 0, i32 0
  store %struct.ipmi_file_private* %30, %struct.ipmi_file_private** %32, align 8
  %33 = load %struct.ipmi_file_private*, %struct.ipmi_file_private** %8, align 8
  %34 = getelementptr inbounds %struct.ipmi_file_private, %struct.ipmi_file_private* %33, i32 0, i32 6
  %35 = call i32 @spin_lock_init(i32* %34)
  %36 = load %struct.ipmi_file_private*, %struct.ipmi_file_private** %8, align 8
  %37 = getelementptr inbounds %struct.ipmi_file_private, %struct.ipmi_file_private* %36, i32 0, i32 5
  %38 = call i32 @INIT_LIST_HEAD(i32* %37)
  %39 = load %struct.ipmi_file_private*, %struct.ipmi_file_private** %8, align 8
  %40 = getelementptr inbounds %struct.ipmi_file_private, %struct.ipmi_file_private* %39, i32 0, i32 4
  %41 = call i32 @init_waitqueue_head(i32* %40)
  %42 = load %struct.ipmi_file_private*, %struct.ipmi_file_private** %8, align 8
  %43 = getelementptr inbounds %struct.ipmi_file_private, %struct.ipmi_file_private* %42, i32 0, i32 3
  store i32* null, i32** %43, align 8
  %44 = load %struct.ipmi_file_private*, %struct.ipmi_file_private** %8, align 8
  %45 = getelementptr inbounds %struct.ipmi_file_private, %struct.ipmi_file_private* %44, i32 0, i32 2
  %46 = call i32 @mutex_init(i32* %45)
  %47 = load %struct.ipmi_file_private*, %struct.ipmi_file_private** %8, align 8
  %48 = getelementptr inbounds %struct.ipmi_file_private, %struct.ipmi_file_private* %47, i32 0, i32 0
  store i32 -1, i32* %48, align 8
  %49 = load %struct.ipmi_file_private*, %struct.ipmi_file_private** %8, align 8
  %50 = getelementptr inbounds %struct.ipmi_file_private, %struct.ipmi_file_private* %49, i32 0, i32 1
  store i64 0, i64* %50, align 8
  br label %51

51:                                               ; preds = %29, %26
  %52 = load i32, i32* %7, align 4
  store i32 %52, i32* %3, align 4
  br label %53

53:                                               ; preds = %51, %15
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

declare dso_local i32 @iminor(%struct.inode*) #1

declare dso_local %struct.ipmi_file_private* @kmalloc(i32, i32) #1

declare dso_local i32 @ipmi_create_user(i32, i32*, %struct.ipmi_file_private*, i32*) #1

declare dso_local i32 @kfree(%struct.ipmi_file_private*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
