; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/powernv/extr_opal-hmi.c_print_checkstop_reason.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/powernv/extr_opal-hmi.c_print_checkstop_reason.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.OpalHMIEvent = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [41 x i8] c"%s\09Unknown Malfunction Alert of type %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.OpalHMIEvent*)* @print_checkstop_reason to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_checkstop_reason(i8* %0, %struct.OpalHMIEvent* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.OpalHMIEvent*, align 8
  %5 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store %struct.OpalHMIEvent* %1, %struct.OpalHMIEvent** %4, align 8
  %6 = load %struct.OpalHMIEvent*, %struct.OpalHMIEvent** %4, align 8
  %7 = getelementptr inbounds %struct.OpalHMIEvent, %struct.OpalHMIEvent* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  switch i32 %11, label %24 [
    i32 130, label %12
    i32 128, label %16
    i32 129, label %20
  ]

12:                                               ; preds = %2
  %13 = load i8*, i8** %3, align 8
  %14 = load %struct.OpalHMIEvent*, %struct.OpalHMIEvent** %4, align 8
  %15 = call i32 @print_core_checkstop_reason(i8* %13, %struct.OpalHMIEvent* %14)
  br label %28

16:                                               ; preds = %2
  %17 = load i8*, i8** %3, align 8
  %18 = load %struct.OpalHMIEvent*, %struct.OpalHMIEvent** %4, align 8
  %19 = call i32 @print_nx_checkstop_reason(i8* %17, %struct.OpalHMIEvent* %18)
  br label %28

20:                                               ; preds = %2
  %21 = load i8*, i8** %3, align 8
  %22 = load %struct.OpalHMIEvent*, %struct.OpalHMIEvent** %4, align 8
  %23 = call i32 @print_npu_checkstop_reason(i8* %21, %struct.OpalHMIEvent* %22)
  br label %28

24:                                               ; preds = %2
  %25 = load i8*, i8** %3, align 8
  %26 = load i32, i32* %5, align 4
  %27 = call i32 @printk(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i8* %25, i32 %26)
  br label %28

28:                                               ; preds = %24, %20, %16, %12
  ret void
}

declare dso_local i32 @print_core_checkstop_reason(i8*, %struct.OpalHMIEvent*) #1

declare dso_local i32 @print_nx_checkstop_reason(i8*, %struct.OpalHMIEvent*) #1

declare dso_local i32 @print_npu_checkstop_reason(i8*, %struct.OpalHMIEvent*) #1

declare dso_local i32 @printk(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
