; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/extr_apm-emulation.c_apm_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/extr_apm-emulation.c_apm_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.file = type { i32, %struct.apm_user* }
%struct.apm_user = type { i32, i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@CAP_SYS_ADMIN = common dso_local global i32 0, align 4
@FMODE_WRITE = common dso_local global i32 0, align 4
@FMODE_READ = common dso_local global i32 0, align 4
@user_list_lock = common dso_local global i32 0, align 4
@apm_user_list = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @apm_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @apm_open(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.apm_user*, align 8
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.file* %1, %struct.file** %4, align 8
  %6 = load i32, i32* @GFP_KERNEL, align 4
  %7 = call %struct.apm_user* @kzalloc(i32 16, i32 %6)
  store %struct.apm_user* %7, %struct.apm_user** %5, align 8
  %8 = load %struct.apm_user*, %struct.apm_user** %5, align 8
  %9 = icmp ne %struct.apm_user* %8, null
  br i1 %9, label %10, label %43

10:                                               ; preds = %2
  %11 = load i32, i32* @CAP_SYS_ADMIN, align 4
  %12 = call i32 @capable(i32 %11)
  %13 = load %struct.apm_user*, %struct.apm_user** %5, align 8
  %14 = getelementptr inbounds %struct.apm_user, %struct.apm_user* %13, i32 0, i32 3
  store i32 %12, i32* %14, align 4
  %15 = load %struct.file*, %struct.file** %4, align 8
  %16 = getelementptr inbounds %struct.file, %struct.file* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @FMODE_WRITE, align 4
  %19 = and i32 %17, %18
  %20 = load i32, i32* @FMODE_WRITE, align 4
  %21 = icmp eq i32 %19, %20
  %22 = zext i1 %21 to i32
  %23 = load %struct.apm_user*, %struct.apm_user** %5, align 8
  %24 = getelementptr inbounds %struct.apm_user, %struct.apm_user* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 4
  %25 = load %struct.file*, %struct.file** %4, align 8
  %26 = getelementptr inbounds %struct.file, %struct.file* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @FMODE_READ, align 4
  %29 = and i32 %27, %28
  %30 = load i32, i32* @FMODE_READ, align 4
  %31 = icmp eq i32 %29, %30
  %32 = zext i1 %31 to i32
  %33 = load %struct.apm_user*, %struct.apm_user** %5, align 8
  %34 = getelementptr inbounds %struct.apm_user, %struct.apm_user* %33, i32 0, i32 1
  store i32 %32, i32* %34, align 4
  %35 = call i32 @down_write(i32* @user_list_lock)
  %36 = load %struct.apm_user*, %struct.apm_user** %5, align 8
  %37 = getelementptr inbounds %struct.apm_user, %struct.apm_user* %36, i32 0, i32 2
  %38 = call i32 @list_add(i32* %37, i32* @apm_user_list)
  %39 = call i32 @up_write(i32* @user_list_lock)
  %40 = load %struct.apm_user*, %struct.apm_user** %5, align 8
  %41 = load %struct.file*, %struct.file** %4, align 8
  %42 = getelementptr inbounds %struct.file, %struct.file* %41, i32 0, i32 1
  store %struct.apm_user* %40, %struct.apm_user** %42, align 8
  br label %43

43:                                               ; preds = %10, %2
  %44 = load %struct.apm_user*, %struct.apm_user** %5, align 8
  %45 = icmp ne %struct.apm_user* %44, null
  br i1 %45, label %46, label %47

46:                                               ; preds = %43
  br label %50

47:                                               ; preds = %43
  %48 = load i32, i32* @ENOMEM, align 4
  %49 = sub nsw i32 0, %48
  br label %50

50:                                               ; preds = %47, %46
  %51 = phi i32 [ 0, %46 ], [ %49, %47 ]
  ret i32 %51
}

declare dso_local %struct.apm_user* @kzalloc(i32, i32) #1

declare dso_local i32 @capable(i32) #1

declare dso_local i32 @down_write(i32*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @up_write(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
