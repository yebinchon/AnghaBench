; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/kernel/extr_lgr.c_lgr_info_get.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/kernel/extr_lgr.c_lgr_info_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lgr_info = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lgr_info*)* @lgr_info_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lgr_info_get(%struct.lgr_info* %0) #0 {
  %2 = alloca %struct.lgr_info*, align 8
  %3 = alloca i32, align 4
  store %struct.lgr_info* %0, %struct.lgr_info** %2, align 8
  %4 = load %struct.lgr_info*, %struct.lgr_info** %2, align 8
  %5 = call i32 @memset(%struct.lgr_info* %4, i32 0, i32 8)
  %6 = load %struct.lgr_info*, %struct.lgr_info** %2, align 8
  %7 = getelementptr inbounds %struct.lgr_info, %struct.lgr_info* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.lgr_info*, %struct.lgr_info** %2, align 8
  %10 = getelementptr inbounds %struct.lgr_info, %struct.lgr_info* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @ARRAY_SIZE(i32 %11)
  %13 = call i32 @stfle(i32 %8, i32 %12)
  %14 = call i32 @stsi(i32* null, i32 0, i32 0, i32 0)
  store i32 %14, i32* %3, align 4
  %15 = load i32, i32* %3, align 4
  %16 = load %struct.lgr_info*, %struct.lgr_info** %2, align 8
  %17 = getelementptr inbounds %struct.lgr_info, %struct.lgr_info* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 4
  %18 = load i32, i32* %3, align 4
  %19 = icmp sge i32 %18, 1
  br i1 %19, label %20, label %23

20:                                               ; preds = %1
  %21 = load %struct.lgr_info*, %struct.lgr_info** %2, align 8
  %22 = call i32 @lgr_stsi_1_1_1(%struct.lgr_info* %21)
  br label %23

23:                                               ; preds = %20, %1
  %24 = load i32, i32* %3, align 4
  %25 = icmp sge i32 %24, 2
  br i1 %25, label %26, label %29

26:                                               ; preds = %23
  %27 = load %struct.lgr_info*, %struct.lgr_info** %2, align 8
  %28 = call i32 @lgr_stsi_2_2_2(%struct.lgr_info* %27)
  br label %29

29:                                               ; preds = %26, %23
  %30 = load i32, i32* %3, align 4
  %31 = icmp sge i32 %30, 3
  br i1 %31, label %32, label %35

32:                                               ; preds = %29
  %33 = load %struct.lgr_info*, %struct.lgr_info** %2, align 8
  %34 = call i32 @lgr_stsi_3_2_2(%struct.lgr_info* %33)
  br label %35

35:                                               ; preds = %32, %29
  ret void
}

declare dso_local i32 @memset(%struct.lgr_info*, i32, i32) #1

declare dso_local i32 @stfle(i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @stsi(i32*, i32, i32, i32) #1

declare dso_local i32 @lgr_stsi_1_1_1(%struct.lgr_info*) #1

declare dso_local i32 @lgr_stsi_2_2_2(%struct.lgr_info*) #1

declare dso_local i32 @lgr_stsi_3_2_2(%struct.lgr_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
