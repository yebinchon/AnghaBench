; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/ipmi/extr_ipmi_kcs_sm.c_get_kcs_result.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/ipmi/extr_ipmi_kcs_sm.c_get_kcs_result.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.si_sm_data = type { i32, i32, i32 }

@IPMI_ERR_UNSPECIFIED = common dso_local global i8 0, align 1
@IPMI_ERR_MSG_TRUNCATED = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.si_sm_data*, i8*, i32)* @get_kcs_result to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_kcs_result(%struct.si_sm_data* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.si_sm_data*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %struct.si_sm_data* %0, %struct.si_sm_data** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.si_sm_data*, %struct.si_sm_data** %4, align 8
  %9 = getelementptr inbounds %struct.si_sm_data, %struct.si_sm_data* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = icmp ult i32 %7, %10
  br i1 %11, label %12, label %18

12:                                               ; preds = %3
  %13 = load i32, i32* %6, align 4
  %14 = load %struct.si_sm_data*, %struct.si_sm_data** %4, align 8
  %15 = getelementptr inbounds %struct.si_sm_data, %struct.si_sm_data* %14, i32 0, i32 0
  store i32 %13, i32* %15, align 4
  %16 = load %struct.si_sm_data*, %struct.si_sm_data** %4, align 8
  %17 = getelementptr inbounds %struct.si_sm_data, %struct.si_sm_data* %16, i32 0, i32 1
  store i32 1, i32* %17, align 4
  br label %18

18:                                               ; preds = %12, %3
  %19 = load i8*, i8** %5, align 8
  %20 = load %struct.si_sm_data*, %struct.si_sm_data** %4, align 8
  %21 = getelementptr inbounds %struct.si_sm_data, %struct.si_sm_data* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.si_sm_data*, %struct.si_sm_data** %4, align 8
  %24 = getelementptr inbounds %struct.si_sm_data, %struct.si_sm_data* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @memcpy(i8* %19, i32 %22, i32 %25)
  %27 = load i32, i32* %6, align 4
  %28 = icmp uge i32 %27, 3
  br i1 %28, label %29, label %40

29:                                               ; preds = %18
  %30 = load %struct.si_sm_data*, %struct.si_sm_data** %4, align 8
  %31 = getelementptr inbounds %struct.si_sm_data, %struct.si_sm_data* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = icmp ult i32 %32, 3
  br i1 %33, label %34, label %40

34:                                               ; preds = %29
  %35 = load i8, i8* @IPMI_ERR_UNSPECIFIED, align 1
  %36 = load i8*, i8** %5, align 8
  %37 = getelementptr inbounds i8, i8* %36, i64 2
  store i8 %35, i8* %37, align 1
  %38 = load %struct.si_sm_data*, %struct.si_sm_data** %4, align 8
  %39 = getelementptr inbounds %struct.si_sm_data, %struct.si_sm_data* %38, i32 0, i32 0
  store i32 3, i32* %39, align 4
  br label %40

40:                                               ; preds = %34, %29, %18
  %41 = load %struct.si_sm_data*, %struct.si_sm_data** %4, align 8
  %42 = getelementptr inbounds %struct.si_sm_data, %struct.si_sm_data* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %40
  %46 = load i8, i8* @IPMI_ERR_MSG_TRUNCATED, align 1
  %47 = load i8*, i8** %5, align 8
  %48 = getelementptr inbounds i8, i8* %47, i64 2
  store i8 %46, i8* %48, align 1
  %49 = load %struct.si_sm_data*, %struct.si_sm_data** %4, align 8
  %50 = getelementptr inbounds %struct.si_sm_data, %struct.si_sm_data* %49, i32 0, i32 1
  store i32 0, i32* %50, align 4
  br label %51

51:                                               ; preds = %45, %40
  %52 = load %struct.si_sm_data*, %struct.si_sm_data** %4, align 8
  %53 = getelementptr inbounds %struct.si_sm_data, %struct.si_sm_data* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  ret i32 %54
}

declare dso_local i32 @memcpy(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
