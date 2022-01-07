; ModuleID = '/home/carl/AnghaBench/linux/arch/ia64/kernel/extr_salinfo.c_salinfo_log_open.c'
source_filename = "/home/carl/AnghaBench/linux/arch/ia64/kernel/extr_salinfo.c_salinfo_log_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.file = type { i32 }
%struct.salinfo_data = type { i32, i64, i32, i32 }

@CAP_SYS_ADMIN = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@data_lock = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@STATE_NO_DATA = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @salinfo_log_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @salinfo_log_open(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca %struct.salinfo_data*, align 8
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.file* %1, %struct.file** %5, align 8
  %7 = load %struct.inode*, %struct.inode** %4, align 8
  %8 = call %struct.salinfo_data* @PDE_DATA(%struct.inode* %7)
  store %struct.salinfo_data* %8, %struct.salinfo_data** %6, align 8
  %9 = load i32, i32* @CAP_SYS_ADMIN, align 4
  %10 = call i32 @capable(i32 %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* @EPERM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %3, align 4
  br label %49

15:                                               ; preds = %2
  %16 = call i32 @spin_lock(i32* @data_lock)
  %17 = load %struct.salinfo_data*, %struct.salinfo_data** %6, align 8
  %18 = getelementptr inbounds %struct.salinfo_data, %struct.salinfo_data* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %15
  %22 = call i32 @spin_unlock(i32* @data_lock)
  %23 = load i32, i32* @EBUSY, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %49

25:                                               ; preds = %15
  %26 = load %struct.salinfo_data*, %struct.salinfo_data** %6, align 8
  %27 = getelementptr inbounds %struct.salinfo_data, %struct.salinfo_data* %26, i32 0, i32 0
  store i32 1, i32* %27, align 8
  %28 = call i32 @spin_unlock(i32* @data_lock)
  %29 = load %struct.salinfo_data*, %struct.salinfo_data** %6, align 8
  %30 = getelementptr inbounds %struct.salinfo_data, %struct.salinfo_data* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @STATE_NO_DATA, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %48

34:                                               ; preds = %25
  %35 = load %struct.salinfo_data*, %struct.salinfo_data** %6, align 8
  %36 = getelementptr inbounds %struct.salinfo_data, %struct.salinfo_data* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @ia64_sal_get_state_info_size(i32 %37)
  %39 = call i32 @vmalloc(i32 %38)
  %40 = load %struct.salinfo_data*, %struct.salinfo_data** %6, align 8
  %41 = getelementptr inbounds %struct.salinfo_data, %struct.salinfo_data* %40, i32 0, i32 3
  store i32 %39, i32* %41, align 4
  %42 = icmp ne i32 %39, 0
  br i1 %42, label %48, label %43

43:                                               ; preds = %34
  %44 = load %struct.salinfo_data*, %struct.salinfo_data** %6, align 8
  %45 = getelementptr inbounds %struct.salinfo_data, %struct.salinfo_data* %44, i32 0, i32 0
  store i32 0, i32* %45, align 8
  %46 = load i32, i32* @ENOMEM, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %3, align 4
  br label %49

48:                                               ; preds = %34, %25
  store i32 0, i32* %3, align 4
  br label %49

49:                                               ; preds = %48, %43, %21, %12
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

declare dso_local %struct.salinfo_data* @PDE_DATA(%struct.inode*) #1

declare dso_local i32 @capable(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @vmalloc(i32) #1

declare dso_local i32 @ia64_sal_get_state_info_size(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
