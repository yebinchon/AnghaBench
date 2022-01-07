; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_64_mmu_radix.c_debugfs_radix_open.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_64_mmu_radix.c_debugfs_radix_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { %struct.kvm* }
%struct.kvm = type { i32 }
%struct.file = type { %struct.debugfs_radix_state* }
%struct.debugfs_radix_state = type { i32, %struct.kvm* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @debugfs_radix_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @debugfs_radix_open(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca %struct.kvm*, align 8
  %7 = alloca %struct.debugfs_radix_state*, align 8
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.file* %1, %struct.file** %5, align 8
  %8 = load %struct.inode*, %struct.inode** %4, align 8
  %9 = getelementptr inbounds %struct.inode, %struct.inode* %8, i32 0, i32 0
  %10 = load %struct.kvm*, %struct.kvm** %9, align 8
  store %struct.kvm* %10, %struct.kvm** %6, align 8
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.debugfs_radix_state* @kzalloc(i32 16, i32 %11)
  store %struct.debugfs_radix_state* %12, %struct.debugfs_radix_state** %7, align 8
  %13 = load %struct.debugfs_radix_state*, %struct.debugfs_radix_state** %7, align 8
  %14 = icmp ne %struct.debugfs_radix_state* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %33

18:                                               ; preds = %2
  %19 = load %struct.kvm*, %struct.kvm** %6, align 8
  %20 = call i32 @kvm_get_kvm(%struct.kvm* %19)
  %21 = load %struct.kvm*, %struct.kvm** %6, align 8
  %22 = load %struct.debugfs_radix_state*, %struct.debugfs_radix_state** %7, align 8
  %23 = getelementptr inbounds %struct.debugfs_radix_state, %struct.debugfs_radix_state* %22, i32 0, i32 1
  store %struct.kvm* %21, %struct.kvm** %23, align 8
  %24 = load %struct.debugfs_radix_state*, %struct.debugfs_radix_state** %7, align 8
  %25 = getelementptr inbounds %struct.debugfs_radix_state, %struct.debugfs_radix_state* %24, i32 0, i32 0
  %26 = call i32 @mutex_init(i32* %25)
  %27 = load %struct.debugfs_radix_state*, %struct.debugfs_radix_state** %7, align 8
  %28 = load %struct.file*, %struct.file** %5, align 8
  %29 = getelementptr inbounds %struct.file, %struct.file* %28, i32 0, i32 0
  store %struct.debugfs_radix_state* %27, %struct.debugfs_radix_state** %29, align 8
  %30 = load %struct.inode*, %struct.inode** %4, align 8
  %31 = load %struct.file*, %struct.file** %5, align 8
  %32 = call i32 @nonseekable_open(%struct.inode* %30, %struct.file* %31)
  store i32 %32, i32* %3, align 4
  br label %33

33:                                               ; preds = %18, %15
  %34 = load i32, i32* %3, align 4
  ret i32 %34
}

declare dso_local %struct.debugfs_radix_state* @kzalloc(i32, i32) #1

declare dso_local i32 @kvm_get_kvm(%struct.kvm*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @nonseekable_open(%struct.inode*, %struct.file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
