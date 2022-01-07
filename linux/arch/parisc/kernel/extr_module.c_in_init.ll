; ModuleID = '/home/carl/AnghaBench/linux/arch/parisc/kernel/extr_module.c_in_init.c'
source_filename = "/home/carl/AnghaBench/linux/arch/parisc/kernel/extr_module.c_in_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.module = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.module*, i8*)* @in_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @in_init(%struct.module* %0, i8* %1) #0 {
  %3 = alloca %struct.module*, align 8
  %4 = alloca i8*, align 8
  store %struct.module* %0, %struct.module** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load i8*, i8** %4, align 8
  %6 = load %struct.module*, %struct.module** %3, align 8
  %7 = getelementptr inbounds %struct.module, %struct.module* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i8*, i8** %8, align 8
  %10 = icmp uge i8* %5, %9
  br i1 %10, label %11, label %24

11:                                               ; preds = %2
  %12 = load i8*, i8** %4, align 8
  %13 = load %struct.module*, %struct.module** %3, align 8
  %14 = getelementptr inbounds %struct.module, %struct.module* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i8*, i8** %15, align 8
  %17 = load %struct.module*, %struct.module** %3, align 8
  %18 = getelementptr inbounds %struct.module, %struct.module* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = sext i32 %20 to i64
  %22 = getelementptr i8, i8* %16, i64 %21
  %23 = icmp ule i8* %12, %22
  br label %24

24:                                               ; preds = %11, %2
  %25 = phi i1 [ false, %2 ], [ %23, %11 ]
  %26 = zext i1 %25 to i32
  ret i32 %26
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
