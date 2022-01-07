; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/resctrl/extr_rdtgroup.c_rdtgroup_seqfile_show.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/resctrl/extr_rdtgroup.c_rdtgroup_seqfile_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { %struct.kernfs_open_file* }
%struct.kernfs_open_file = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.rftype* }
%struct.rftype = type { i32 (%struct.kernfs_open_file*, %struct.seq_file*, i8*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, i8*)* @rdtgroup_seqfile_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rdtgroup_seqfile_show(%struct.seq_file* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.seq_file*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.kernfs_open_file*, align 8
  %7 = alloca %struct.rftype*, align 8
  store %struct.seq_file* %0, %struct.seq_file** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %9 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %8, i32 0, i32 0
  %10 = load %struct.kernfs_open_file*, %struct.kernfs_open_file** %9, align 8
  store %struct.kernfs_open_file* %10, %struct.kernfs_open_file** %6, align 8
  %11 = load %struct.kernfs_open_file*, %struct.kernfs_open_file** %6, align 8
  %12 = getelementptr inbounds %struct.kernfs_open_file, %struct.kernfs_open_file* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load %struct.rftype*, %struct.rftype** %14, align 8
  store %struct.rftype* %15, %struct.rftype** %7, align 8
  %16 = load %struct.rftype*, %struct.rftype** %7, align 8
  %17 = getelementptr inbounds %struct.rftype, %struct.rftype* %16, i32 0, i32 0
  %18 = load i32 (%struct.kernfs_open_file*, %struct.seq_file*, i8*)*, i32 (%struct.kernfs_open_file*, %struct.seq_file*, i8*)** %17, align 8
  %19 = icmp ne i32 (%struct.kernfs_open_file*, %struct.seq_file*, i8*)* %18, null
  br i1 %19, label %20, label %28

20:                                               ; preds = %2
  %21 = load %struct.rftype*, %struct.rftype** %7, align 8
  %22 = getelementptr inbounds %struct.rftype, %struct.rftype* %21, i32 0, i32 0
  %23 = load i32 (%struct.kernfs_open_file*, %struct.seq_file*, i8*)*, i32 (%struct.kernfs_open_file*, %struct.seq_file*, i8*)** %22, align 8
  %24 = load %struct.kernfs_open_file*, %struct.kernfs_open_file** %6, align 8
  %25 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %26 = load i8*, i8** %5, align 8
  %27 = call i32 %23(%struct.kernfs_open_file* %24, %struct.seq_file* %25, i8* %26)
  store i32 %27, i32* %3, align 4
  br label %29

28:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %29

29:                                               ; preds = %28, %20
  %30 = load i32, i32* %3, align 4
  ret i32 %30
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
