; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/extr_apm_32.c_do_open.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/extr_apm_32.c_do_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.apm_user = type { i32, i32, %struct.apm_user*, i32, i64, i64, i64, i64, i64, i64, i32 }
%struct.inode = type { i32 }
%struct.file = type { i32, %struct.apm_user* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@APM_BIOS_MAGIC = common dso_local global i32 0, align 4
@CAP_SYS_ADMIN = common dso_local global i32 0, align 4
@FMODE_WRITE = common dso_local global i32 0, align 4
@FMODE_READ = common dso_local global i32 0, align 4
@user_list_lock = common dso_local global i32 0, align 4
@user_list = common dso_local global %struct.apm_user* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @do_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_open(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca %struct.apm_user*, align 8
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.file* %1, %struct.file** %5, align 8
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call %struct.apm_user* @kmalloc(i32 80, i32 %7)
  store %struct.apm_user* %8, %struct.apm_user** %6, align 8
  %9 = load %struct.apm_user*, %struct.apm_user** %6, align 8
  %10 = icmp eq %struct.apm_user* %9, null
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = load i32, i32* @ENOMEM, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %3, align 4
  br label %63

14:                                               ; preds = %2
  %15 = load i32, i32* @APM_BIOS_MAGIC, align 4
  %16 = load %struct.apm_user*, %struct.apm_user** %6, align 8
  %17 = getelementptr inbounds %struct.apm_user, %struct.apm_user* %16, i32 0, i32 10
  store i32 %15, i32* %17, align 8
  %18 = load %struct.apm_user*, %struct.apm_user** %6, align 8
  %19 = getelementptr inbounds %struct.apm_user, %struct.apm_user* %18, i32 0, i32 8
  store i64 0, i64* %19, align 8
  %20 = load %struct.apm_user*, %struct.apm_user** %6, align 8
  %21 = getelementptr inbounds %struct.apm_user, %struct.apm_user* %20, i32 0, i32 9
  store i64 0, i64* %21, align 8
  %22 = load %struct.apm_user*, %struct.apm_user** %6, align 8
  %23 = getelementptr inbounds %struct.apm_user, %struct.apm_user* %22, i32 0, i32 6
  store i64 0, i64* %23, align 8
  %24 = load %struct.apm_user*, %struct.apm_user** %6, align 8
  %25 = getelementptr inbounds %struct.apm_user, %struct.apm_user* %24, i32 0, i32 7
  store i64 0, i64* %25, align 8
  %26 = load %struct.apm_user*, %struct.apm_user** %6, align 8
  %27 = getelementptr inbounds %struct.apm_user, %struct.apm_user* %26, i32 0, i32 4
  store i64 0, i64* %27, align 8
  %28 = load %struct.apm_user*, %struct.apm_user** %6, align 8
  %29 = getelementptr inbounds %struct.apm_user, %struct.apm_user* %28, i32 0, i32 5
  store i64 0, i64* %29, align 8
  %30 = load i32, i32* @CAP_SYS_ADMIN, align 4
  %31 = call i32 @capable(i32 %30)
  %32 = load %struct.apm_user*, %struct.apm_user** %6, align 8
  %33 = getelementptr inbounds %struct.apm_user, %struct.apm_user* %32, i32 0, i32 3
  store i32 %31, i32* %33, align 8
  %34 = load %struct.file*, %struct.file** %5, align 8
  %35 = getelementptr inbounds %struct.file, %struct.file* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @FMODE_WRITE, align 4
  %38 = and i32 %36, %37
  %39 = load i32, i32* @FMODE_WRITE, align 4
  %40 = icmp eq i32 %38, %39
  %41 = zext i1 %40 to i32
  %42 = load %struct.apm_user*, %struct.apm_user** %6, align 8
  %43 = getelementptr inbounds %struct.apm_user, %struct.apm_user* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 8
  %44 = load %struct.file*, %struct.file** %5, align 8
  %45 = getelementptr inbounds %struct.file, %struct.file* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @FMODE_READ, align 4
  %48 = and i32 %46, %47
  %49 = load i32, i32* @FMODE_READ, align 4
  %50 = icmp eq i32 %48, %49
  %51 = zext i1 %50 to i32
  %52 = load %struct.apm_user*, %struct.apm_user** %6, align 8
  %53 = getelementptr inbounds %struct.apm_user, %struct.apm_user* %52, i32 0, i32 1
  store i32 %51, i32* %53, align 4
  %54 = call i32 @spin_lock(i32* @user_list_lock)
  %55 = load %struct.apm_user*, %struct.apm_user** @user_list, align 8
  %56 = load %struct.apm_user*, %struct.apm_user** %6, align 8
  %57 = getelementptr inbounds %struct.apm_user, %struct.apm_user* %56, i32 0, i32 2
  store %struct.apm_user* %55, %struct.apm_user** %57, align 8
  %58 = load %struct.apm_user*, %struct.apm_user** %6, align 8
  store %struct.apm_user* %58, %struct.apm_user** @user_list, align 8
  %59 = call i32 @spin_unlock(i32* @user_list_lock)
  %60 = load %struct.apm_user*, %struct.apm_user** %6, align 8
  %61 = load %struct.file*, %struct.file** %5, align 8
  %62 = getelementptr inbounds %struct.file, %struct.file* %61, i32 0, i32 1
  store %struct.apm_user* %60, %struct.apm_user** %62, align 8
  store i32 0, i32* %3, align 4
  br label %63

63:                                               ; preds = %14, %11
  %64 = load i32, i32* %3, align 4
  ret i32 %64
}

declare dso_local %struct.apm_user* @kmalloc(i32, i32) #1

declare dso_local i32 @capable(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
