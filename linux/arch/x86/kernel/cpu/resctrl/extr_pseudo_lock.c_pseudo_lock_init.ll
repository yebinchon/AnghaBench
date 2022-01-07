; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/resctrl/extr_pseudo_lock.c_pseudo_lock_init.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/resctrl/extr_pseudo_lock.c_pseudo_lock_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rdtgroup = type { %struct.pseudo_lock_region* }
%struct.pseudo_lock_region = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rdtgroup*)* @pseudo_lock_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pseudo_lock_init(%struct.rdtgroup* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rdtgroup*, align 8
  %4 = alloca %struct.pseudo_lock_region*, align 8
  store %struct.rdtgroup* %0, %struct.rdtgroup** %3, align 8
  %5 = load i32, i32* @GFP_KERNEL, align 4
  %6 = call %struct.pseudo_lock_region* @kzalloc(i32 8, i32 %5)
  store %struct.pseudo_lock_region* %6, %struct.pseudo_lock_region** %4, align 8
  %7 = load %struct.pseudo_lock_region*, %struct.pseudo_lock_region** %4, align 8
  %8 = icmp ne %struct.pseudo_lock_region* %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %1
  %10 = load i32, i32* @ENOMEM, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %2, align 4
  br label %22

12:                                               ; preds = %1
  %13 = load %struct.pseudo_lock_region*, %struct.pseudo_lock_region** %4, align 8
  %14 = getelementptr inbounds %struct.pseudo_lock_region, %struct.pseudo_lock_region* %13, i32 0, i32 1
  %15 = call i32 @init_waitqueue_head(i32* %14)
  %16 = load %struct.pseudo_lock_region*, %struct.pseudo_lock_region** %4, align 8
  %17 = getelementptr inbounds %struct.pseudo_lock_region, %struct.pseudo_lock_region* %16, i32 0, i32 0
  %18 = call i32 @INIT_LIST_HEAD(i32* %17)
  %19 = load %struct.pseudo_lock_region*, %struct.pseudo_lock_region** %4, align 8
  %20 = load %struct.rdtgroup*, %struct.rdtgroup** %3, align 8
  %21 = getelementptr inbounds %struct.rdtgroup, %struct.rdtgroup* %20, i32 0, i32 0
  store %struct.pseudo_lock_region* %19, %struct.pseudo_lock_region** %21, align 8
  store i32 0, i32* %2, align 4
  br label %22

22:                                               ; preds = %12, %9
  %23 = load i32, i32* %2, align 4
  ret i32 %23
}

declare dso_local %struct.pseudo_lock_region* @kzalloc(i32, i32) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
