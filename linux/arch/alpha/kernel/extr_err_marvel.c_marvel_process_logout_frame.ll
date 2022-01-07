; ModuleID = '/home/carl/AnghaBench/linux/arch/alpha/kernel/extr_err_marvel.c_marvel_process_logout_frame.c'
source_filename = "/home/carl/AnghaBench/linux/arch/alpha/kernel/extr_err_marvel.c_marvel_process_logout_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ev7_lf_subpackets = type { %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.TYPE_3__ = type { i32 }

@MCHK_DISPOSITION_UNKNOWN_ERROR = common dso_local global i32 0, align 4
@MCHK_DISPOSITION_DISMISS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ev7_lf_subpackets*, i32)* @marvel_process_logout_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @marvel_process_logout_frame(%struct.ev7_lf_subpackets* %0, i32 %1) #0 {
  %3 = alloca %struct.ev7_lf_subpackets*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.ev7_lf_subpackets* %0, %struct.ev7_lf_subpackets** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* @MCHK_DISPOSITION_UNKNOWN_ERROR, align 4
  store i32 %6, i32* %5, align 4
  %7 = load %struct.ev7_lf_subpackets*, %struct.ev7_lf_subpackets** %3, align 8
  %8 = getelementptr inbounds %struct.ev7_lf_subpackets, %struct.ev7_lf_subpackets* %7, i32 0, i32 1
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %10 = icmp ne %struct.TYPE_3__* %9, null
  br i1 %10, label %11, label %24

11:                                               ; preds = %2
  %12 = load %struct.ev7_lf_subpackets*, %struct.ev7_lf_subpackets** %3, align 8
  %13 = getelementptr inbounds %struct.ev7_lf_subpackets, %struct.ev7_lf_subpackets* %12, i32 0, i32 1
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = sext i32 %16 to i64
  %18 = and i64 %17, 536871936
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %11
  %21 = load %struct.ev7_lf_subpackets*, %struct.ev7_lf_subpackets** %3, align 8
  %22 = load i32, i32* %4, align 4
  %23 = call i32 @marvel_process_io_error(%struct.ev7_lf_subpackets* %21, i32 %22)
  store i32 %23, i32* %5, align 4
  br label %24

24:                                               ; preds = %20, %11, %2
  %25 = load %struct.ev7_lf_subpackets*, %struct.ev7_lf_subpackets** %3, align 8
  %26 = getelementptr inbounds %struct.ev7_lf_subpackets, %struct.ev7_lf_subpackets* %25, i32 0, i32 0
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = icmp ne %struct.TYPE_4__* %27, null
  br i1 %28, label %29, label %55

29:                                               ; preds = %24
  %30 = load %struct.ev7_lf_subpackets*, %struct.ev7_lf_subpackets** %3, align 8
  %31 = getelementptr inbounds %struct.ev7_lf_subpackets, %struct.ev7_lf_subpackets* %30, i32 0, i32 0
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = icmp eq i32 %34, 20
  br i1 %35, label %36, label %55

36:                                               ; preds = %29
  %37 = load %struct.ev7_lf_subpackets*, %struct.ev7_lf_subpackets** %3, align 8
  %38 = getelementptr inbounds %struct.ev7_lf_subpackets, %struct.ev7_lf_subpackets* %37, i32 0, i32 0
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = and i32 %41, 8
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %55, label %44

44:                                               ; preds = %36
  %45 = load %struct.ev7_lf_subpackets*, %struct.ev7_lf_subpackets** %3, align 8
  %46 = getelementptr inbounds %struct.ev7_lf_subpackets, %struct.ev7_lf_subpackets* %45, i32 0, i32 0
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = sext i32 %49 to i64
  %51 = and i64 %50, 4402324701184
  %52 = icmp eq i64 %51, 4402307923968
  br i1 %52, label %53, label %55

53:                                               ; preds = %44
  %54 = load i32, i32* @MCHK_DISPOSITION_DISMISS, align 4
  store i32 %54, i32* %5, align 4
  br label %55

55:                                               ; preds = %53, %44, %36, %29, %24
  %56 = load i32, i32* %5, align 4
  ret i32 %56
}

declare dso_local i32 @marvel_process_io_error(%struct.ev7_lf_subpackets*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
