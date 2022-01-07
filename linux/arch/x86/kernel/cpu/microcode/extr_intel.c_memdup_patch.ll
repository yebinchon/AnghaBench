; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/microcode/extr_intel.c_memdup_patch.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/microcode/extr_intel.c_memdup_patch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ucode_patch = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ucode_patch* (i8*, i32)* @memdup_patch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ucode_patch* @memdup_patch(i8* %0, i32 %1) #0 {
  %3 = alloca %struct.ucode_patch*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ucode_patch*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call %struct.ucode_patch* @kzalloc(i32 4, i32 %7)
  store %struct.ucode_patch* %8, %struct.ucode_patch** %6, align 8
  %9 = load %struct.ucode_patch*, %struct.ucode_patch** %6, align 8
  %10 = icmp ne %struct.ucode_patch* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  store %struct.ucode_patch* null, %struct.ucode_patch** %3, align 8
  br label %28

12:                                               ; preds = %2
  %13 = load i8*, i8** %4, align 8
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call i32 @kmemdup(i8* %13, i32 %14, i32 %15)
  %17 = load %struct.ucode_patch*, %struct.ucode_patch** %6, align 8
  %18 = getelementptr inbounds %struct.ucode_patch, %struct.ucode_patch* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 4
  %19 = load %struct.ucode_patch*, %struct.ucode_patch** %6, align 8
  %20 = getelementptr inbounds %struct.ucode_patch, %struct.ucode_patch* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %12
  %24 = load %struct.ucode_patch*, %struct.ucode_patch** %6, align 8
  %25 = call i32 @kfree(%struct.ucode_patch* %24)
  store %struct.ucode_patch* null, %struct.ucode_patch** %3, align 8
  br label %28

26:                                               ; preds = %12
  %27 = load %struct.ucode_patch*, %struct.ucode_patch** %6, align 8
  store %struct.ucode_patch* %27, %struct.ucode_patch** %3, align 8
  br label %28

28:                                               ; preds = %26, %23, %11
  %29 = load %struct.ucode_patch*, %struct.ucode_patch** %3, align 8
  ret %struct.ucode_patch* %29
}

declare dso_local %struct.ucode_patch* @kzalloc(i32, i32) #1

declare dso_local i32 @kmemdup(i8*, i32, i32) #1

declare dso_local i32 @kfree(%struct.ucode_patch*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
