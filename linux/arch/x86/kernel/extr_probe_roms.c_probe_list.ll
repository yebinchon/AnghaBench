; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/extr_probe_roms.c_probe_list.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/extr_probe_roms.c_probe_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, i16, i8*)* @probe_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @probe_list(%struct.pci_dev* %0, i16 zeroext %1, i8* %2) #0 {
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca i16, align 2
  %6 = alloca i8*, align 8
  %7 = alloca i16, align 2
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store i16 %1, i16* %5, align 2
  store i8* %2, i8** %6, align 8
  br label %8

8:                                                ; preds = %28, %3
  %9 = load i8*, i8** %6, align 8
  %10 = load i16, i16* %7, align 2
  %11 = call i64 @probe_kernel_address(i8* %9, i16 zeroext %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %8
  store i16 0, i16* %7, align 2
  br label %14

14:                                               ; preds = %13, %8
  %15 = load i16, i16* %7, align 2
  %16 = zext i16 %15 to i32
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %25

18:                                               ; preds = %14
  %19 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %20 = load i16, i16* %5, align 2
  %21 = load i16, i16* %7, align 2
  %22 = call i64 @match_id(%struct.pci_dev* %19, i16 zeroext %20, i16 zeroext %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %18
  br label %31

25:                                               ; preds = %18, %14
  %26 = load i8*, i8** %6, align 8
  %27 = getelementptr inbounds i8, i8* %26, i64 2
  store i8* %27, i8** %6, align 8
  br label %28

28:                                               ; preds = %25
  %29 = load i16, i16* %7, align 2
  %30 = icmp ne i16 %29, 0
  br i1 %30, label %8, label %31

31:                                               ; preds = %28, %24
  %32 = load i16, i16* %7, align 2
  %33 = icmp ne i16 %32, 0
  %34 = xor i1 %33, true
  %35 = xor i1 %34, true
  %36 = zext i1 %35 to i32
  ret i32 %36
}

declare dso_local i64 @probe_kernel_address(i8*, i16 zeroext) #1

declare dso_local i64 @match_id(%struct.pci_dev*, i16 zeroext, i16 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
