; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/resctrl/extr_rdtgroup.c_rdtgroup_file_write.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/resctrl/extr_rdtgroup.c_rdtgroup_file_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kernfs_open_file = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.rftype* }
%struct.rftype = type { i32 (%struct.kernfs_open_file.0*, i8*, i64, i32)* }
%struct.kernfs_open_file.0 = type opaque

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kernfs_open_file*, i8*, i64, i32)* @rdtgroup_file_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rdtgroup_file_write(%struct.kernfs_open_file* %0, i8* %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.kernfs_open_file*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.rftype*, align 8
  store %struct.kernfs_open_file* %0, %struct.kernfs_open_file** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %11 = load %struct.kernfs_open_file*, %struct.kernfs_open_file** %6, align 8
  %12 = getelementptr inbounds %struct.kernfs_open_file, %struct.kernfs_open_file* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load %struct.rftype*, %struct.rftype** %14, align 8
  store %struct.rftype* %15, %struct.rftype** %10, align 8
  %16 = load %struct.rftype*, %struct.rftype** %10, align 8
  %17 = getelementptr inbounds %struct.rftype, %struct.rftype* %16, i32 0, i32 0
  %18 = load i32 (%struct.kernfs_open_file.0*, i8*, i64, i32)*, i32 (%struct.kernfs_open_file.0*, i8*, i64, i32)** %17, align 8
  %19 = icmp ne i32 (%struct.kernfs_open_file.0*, i8*, i64, i32)* %18, null
  br i1 %19, label %20, label %30

20:                                               ; preds = %4
  %21 = load %struct.rftype*, %struct.rftype** %10, align 8
  %22 = getelementptr inbounds %struct.rftype, %struct.rftype* %21, i32 0, i32 0
  %23 = load i32 (%struct.kernfs_open_file.0*, i8*, i64, i32)*, i32 (%struct.kernfs_open_file.0*, i8*, i64, i32)** %22, align 8
  %24 = load %struct.kernfs_open_file*, %struct.kernfs_open_file** %6, align 8
  %25 = bitcast %struct.kernfs_open_file* %24 to %struct.kernfs_open_file.0*
  %26 = load i8*, i8** %7, align 8
  %27 = load i64, i64* %8, align 8
  %28 = load i32, i32* %9, align 4
  %29 = call i32 %23(%struct.kernfs_open_file.0* %25, i8* %26, i64 %27, i32 %28)
  store i32 %29, i32* %5, align 4
  br label %33

30:                                               ; preds = %4
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %5, align 4
  br label %33

33:                                               ; preds = %30, %20
  %34 = load i32, i32* %5, align 4
  ret i32 %34
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
