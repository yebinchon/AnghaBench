; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/kernel/extr_lgr.c_lgr_stsi_1_1_1.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/kernel/extr_lgr.c_lgr_stsi_1_1_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lgr_info = type { i32, i32, i32, i32, i32 }
%struct.sysinfo_1_1_1 = type { i32, i32, i32, i32, i32 }

@lgr_page = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lgr_info*)* @lgr_stsi_1_1_1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lgr_stsi_1_1_1(%struct.lgr_info* %0) #0 {
  %2 = alloca %struct.lgr_info*, align 8
  %3 = alloca %struct.sysinfo_1_1_1*, align 8
  store %struct.lgr_info* %0, %struct.lgr_info** %2, align 8
  %4 = load i64, i64* @lgr_page, align 8
  %5 = inttoptr i64 %4 to i8*
  %6 = bitcast i8* %5 to %struct.sysinfo_1_1_1*
  store %struct.sysinfo_1_1_1* %6, %struct.sysinfo_1_1_1** %3, align 8
  %7 = load %struct.sysinfo_1_1_1*, %struct.sysinfo_1_1_1** %3, align 8
  %8 = call i64 @stsi(%struct.sysinfo_1_1_1* %7, i32 1, i32 1, i32 1)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  br label %47

11:                                               ; preds = %1
  %12 = load %struct.lgr_info*, %struct.lgr_info** %2, align 8
  %13 = getelementptr inbounds %struct.lgr_info, %struct.lgr_info* %12, i32 0, i32 4
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.sysinfo_1_1_1*, %struct.sysinfo_1_1_1** %3, align 8
  %16 = getelementptr inbounds %struct.sysinfo_1_1_1, %struct.sysinfo_1_1_1* %15, i32 0, i32 4
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @cpascii(i32 %14, i32 %17, i32 4)
  %19 = load %struct.lgr_info*, %struct.lgr_info** %2, align 8
  %20 = getelementptr inbounds %struct.lgr_info, %struct.lgr_info* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.sysinfo_1_1_1*, %struct.sysinfo_1_1_1** %3, align 8
  %23 = getelementptr inbounds %struct.sysinfo_1_1_1, %struct.sysinfo_1_1_1* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @cpascii(i32 %21, i32 %24, i32 4)
  %26 = load %struct.lgr_info*, %struct.lgr_info** %2, align 8
  %27 = getelementptr inbounds %struct.lgr_info, %struct.lgr_info* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.sysinfo_1_1_1*, %struct.sysinfo_1_1_1** %3, align 8
  %30 = getelementptr inbounds %struct.sysinfo_1_1_1, %struct.sysinfo_1_1_1* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @cpascii(i32 %28, i32 %31, i32 4)
  %33 = load %struct.lgr_info*, %struct.lgr_info** %2, align 8
  %34 = getelementptr inbounds %struct.lgr_info, %struct.lgr_info* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.sysinfo_1_1_1*, %struct.sysinfo_1_1_1** %3, align 8
  %37 = getelementptr inbounds %struct.sysinfo_1_1_1, %struct.sysinfo_1_1_1* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @cpascii(i32 %35, i32 %38, i32 4)
  %40 = load %struct.lgr_info*, %struct.lgr_info** %2, align 8
  %41 = getelementptr inbounds %struct.lgr_info, %struct.lgr_info* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.sysinfo_1_1_1*, %struct.sysinfo_1_1_1** %3, align 8
  %44 = getelementptr inbounds %struct.sysinfo_1_1_1, %struct.sysinfo_1_1_1* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @cpascii(i32 %42, i32 %45, i32 4)
  br label %47

47:                                               ; preds = %11, %10
  ret void
}

declare dso_local i64 @stsi(%struct.sysinfo_1_1_1*, i32, i32, i32) #1

declare dso_local i32 @cpascii(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
