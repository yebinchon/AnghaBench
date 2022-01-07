; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/kernel/extr_lgr.c_lgr_stsi_3_2_2.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/kernel/extr_lgr.c_lgr_stsi_3_2_2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lgr_info = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32 }
%struct.sysinfo_3_2_2 = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32 }

@lgr_page = common dso_local global i64 0, align 8
@u8 = common dso_local global i32 0, align 4
@VM_LEVEL_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lgr_info*)* @lgr_stsi_3_2_2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lgr_stsi_3_2_2(%struct.lgr_info* %0) #0 {
  %2 = alloca %struct.lgr_info*, align 8
  %3 = alloca %struct.sysinfo_3_2_2*, align 8
  %4 = alloca i32, align 4
  store %struct.lgr_info* %0, %struct.lgr_info** %2, align 8
  %5 = load i64, i64* @lgr_page, align 8
  %6 = inttoptr i64 %5 to i8*
  %7 = bitcast i8* %6 to %struct.sysinfo_3_2_2*
  store %struct.sysinfo_3_2_2* %7, %struct.sysinfo_3_2_2** %3, align 8
  %8 = load %struct.sysinfo_3_2_2*, %struct.sysinfo_3_2_2** %3, align 8
  %9 = call i64 @stsi(%struct.sysinfo_3_2_2* %8, i32 3, i32 2, i32 2)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  br label %66

12:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %13

13:                                               ; preds = %57, %12
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* @u8, align 4
  %16 = load %struct.sysinfo_3_2_2*, %struct.sysinfo_3_2_2** %3, align 8
  %17 = getelementptr inbounds %struct.sysinfo_3_2_2, %struct.sysinfo_3_2_2* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @VM_LEVEL_MAX, align 4
  %20 = call i32 @min_t(i32 %15, i32 %18, i32 %19)
  %21 = icmp slt i32 %14, %20
  br i1 %21, label %22, label %60

22:                                               ; preds = %13
  %23 = load %struct.lgr_info*, %struct.lgr_info** %2, align 8
  %24 = getelementptr inbounds %struct.lgr_info, %struct.lgr_info* %23, i32 0, i32 1
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %24, align 8
  %26 = load i32, i32* %4, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.sysinfo_3_2_2*, %struct.sysinfo_3_2_2** %3, align 8
  %32 = getelementptr inbounds %struct.sysinfo_3_2_2, %struct.sysinfo_3_2_2* %31, i32 0, i32 1
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = load i32, i32* %4, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @cpascii(i32 %30, i32 %38, i32 4)
  %40 = load %struct.lgr_info*, %struct.lgr_info** %2, align 8
  %41 = getelementptr inbounds %struct.lgr_info, %struct.lgr_info* %40, i32 0, i32 1
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %41, align 8
  %43 = load i32, i32* %4, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.sysinfo_3_2_2*, %struct.sysinfo_3_2_2** %3, align 8
  %49 = getelementptr inbounds %struct.sysinfo_3_2_2, %struct.sysinfo_3_2_2* %48, i32 0, i32 1
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %49, align 8
  %51 = load i32, i32* %4, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @cpascii(i32 %47, i32 %55, i32 4)
  br label %57

57:                                               ; preds = %22
  %58 = load i32, i32* %4, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %4, align 4
  br label %13

60:                                               ; preds = %13
  %61 = load %struct.sysinfo_3_2_2*, %struct.sysinfo_3_2_2** %3, align 8
  %62 = getelementptr inbounds %struct.sysinfo_3_2_2, %struct.sysinfo_3_2_2* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.lgr_info*, %struct.lgr_info** %2, align 8
  %65 = getelementptr inbounds %struct.lgr_info, %struct.lgr_info* %64, i32 0, i32 0
  store i32 %63, i32* %65, align 8
  br label %66

66:                                               ; preds = %60, %11
  ret void
}

declare dso_local i64 @stsi(%struct.sysinfo_3_2_2*, i32, i32, i32) #1

declare dso_local i32 @min_t(i32, i32, i32) #1

declare dso_local i32 @cpascii(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
