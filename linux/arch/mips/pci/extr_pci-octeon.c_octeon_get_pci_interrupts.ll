; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/pci/extr_pci-octeon.c_octeon_get_pci_interrupts.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/pci/extr_pci-octeon.c_octeon_get_pci_interrupts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [15 x i8] c"dlink,dsr-500n\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC\00", align 1
@octeon_bootinfo = common dso_local global %struct.TYPE_2__* null, align 8
@.str.2 = private unnamed_addr constant [33 x i8] c"AAAAADABAAAAAAAAAAAAAAAAAAAAAAAA\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"AAABAAAAAAAAAAAAAAAAAAAAAAAAAAAA\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"AABCD\00", align 1
@.str.5 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @octeon_get_pci_interrupts() #0 {
  %1 = alloca i8*, align 8
  %2 = call i64 @of_machine_is_compatible(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %3 = icmp ne i64 %2, 0
  br i1 %3, label %4, label %5

4:                                                ; preds = %0
  store i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i8** %1, align 8
  br label %15

5:                                                ; preds = %0
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** @octeon_bootinfo, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  switch i32 %8, label %14 [
    i32 129, label %9
    i32 130, label %10
    i32 133, label %10
    i32 134, label %10
    i32 135, label %11
    i32 132, label %12
    i32 128, label %13
    i32 131, label %13
  ]

9:                                                ; preds = %5
  store i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i8** %1, align 8
  br label %15

10:                                               ; preds = %5, %5, %5
  store i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i8** %1, align 8
  br label %15

11:                                               ; preds = %5
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i8** %1, align 8
  br label %15

12:                                               ; preds = %5
  store i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i8** %1, align 8
  br label %15

13:                                               ; preds = %5, %5
  br label %14

14:                                               ; preds = %5, %13
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0), i8** %1, align 8
  br label %15

15:                                               ; preds = %14, %12, %11, %10, %9, %4
  %16 = load i8*, i8** %1, align 8
  ret i8* %16
}

declare dso_local i64 @of_machine_is_compatible(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
