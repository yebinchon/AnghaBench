; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/kernel/extr_perf_cpum_cf_diag.c_cf_diag_ctrset_size.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/kernel/extr_perf_cpum_cf_diag.c_cf_diag_ctrset_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpumf_ctr_info = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, %struct.cpumf_ctr_info*)* @cf_diag_ctrset_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @cf_diag_ctrset_size(i32 %0, %struct.cpumf_ctr_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cpumf_ctr_info*, align 8
  %5 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store %struct.cpumf_ctr_info* %1, %struct.cpumf_ctr_info** %4, align 8
  store i64 0, i64* %5, align 8
  %6 = load i32, i32* %3, align 4
  switch i32 %6, label %88 [
    i32 133, label %7
    i32 128, label %14
    i32 132, label %28
    i32 131, label %47
    i32 129, label %80
    i32 130, label %87
  ]

7:                                                ; preds = %2
  %8 = load %struct.cpumf_ctr_info*, %struct.cpumf_ctr_info** %4, align 8
  %9 = getelementptr inbounds %struct.cpumf_ctr_info, %struct.cpumf_ctr_info* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = icmp sge i32 %10, 1
  br i1 %11, label %12, label %13

12:                                               ; preds = %7
  store i64 6, i64* %5, align 8
  br label %13

13:                                               ; preds = %12, %7
  br label %88

14:                                               ; preds = %2
  %15 = load %struct.cpumf_ctr_info*, %struct.cpumf_ctr_info** %4, align 8
  %16 = getelementptr inbounds %struct.cpumf_ctr_info, %struct.cpumf_ctr_info* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp eq i32 %17, 1
  br i1 %18, label %19, label %20

19:                                               ; preds = %14
  store i64 6, i64* %5, align 8
  br label %27

20:                                               ; preds = %14
  %21 = load %struct.cpumf_ctr_info*, %struct.cpumf_ctr_info** %4, align 8
  %22 = getelementptr inbounds %struct.cpumf_ctr_info, %struct.cpumf_ctr_info* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp sge i32 %23, 3
  br i1 %24, label %25, label %26

25:                                               ; preds = %20
  store i64 2, i64* %5, align 8
  br label %26

26:                                               ; preds = %25, %20
  br label %27

27:                                               ; preds = %26, %19
  br label %88

28:                                               ; preds = %2
  %29 = load %struct.cpumf_ctr_info*, %struct.cpumf_ctr_info** %4, align 8
  %30 = getelementptr inbounds %struct.cpumf_ctr_info, %struct.cpumf_ctr_info* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = icmp sge i32 %31, 1
  br i1 %32, label %33, label %39

33:                                               ; preds = %28
  %34 = load %struct.cpumf_ctr_info*, %struct.cpumf_ctr_info** %4, align 8
  %35 = getelementptr inbounds %struct.cpumf_ctr_info, %struct.cpumf_ctr_info* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = icmp sle i32 %36, 5
  br i1 %37, label %38, label %39

38:                                               ; preds = %33
  store i64 16, i64* %5, align 8
  br label %46

39:                                               ; preds = %33, %28
  %40 = load %struct.cpumf_ctr_info*, %struct.cpumf_ctr_info** %4, align 8
  %41 = getelementptr inbounds %struct.cpumf_ctr_info, %struct.cpumf_ctr_info* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = icmp eq i32 %42, 6
  br i1 %43, label %44, label %45

44:                                               ; preds = %39
  store i64 20, i64* %5, align 8
  br label %45

45:                                               ; preds = %44, %39
  br label %46

46:                                               ; preds = %45, %38
  br label %88

47:                                               ; preds = %2
  %48 = load %struct.cpumf_ctr_info*, %struct.cpumf_ctr_info** %4, align 8
  %49 = getelementptr inbounds %struct.cpumf_ctr_info, %struct.cpumf_ctr_info* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = icmp eq i32 %50, 1
  br i1 %51, label %52, label %53

52:                                               ; preds = %47
  store i64 32, i64* %5, align 8
  br label %79

53:                                               ; preds = %47
  %54 = load %struct.cpumf_ctr_info*, %struct.cpumf_ctr_info** %4, align 8
  %55 = getelementptr inbounds %struct.cpumf_ctr_info, %struct.cpumf_ctr_info* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = icmp eq i32 %56, 2
  br i1 %57, label %58, label %59

58:                                               ; preds = %53
  store i64 48, i64* %5, align 8
  br label %78

59:                                               ; preds = %53
  %60 = load %struct.cpumf_ctr_info*, %struct.cpumf_ctr_info** %4, align 8
  %61 = getelementptr inbounds %struct.cpumf_ctr_info, %struct.cpumf_ctr_info* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = icmp sge i32 %62, 3
  br i1 %63, label %64, label %70

64:                                               ; preds = %59
  %65 = load %struct.cpumf_ctr_info*, %struct.cpumf_ctr_info** %4, align 8
  %66 = getelementptr inbounds %struct.cpumf_ctr_info, %struct.cpumf_ctr_info* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = icmp sle i32 %67, 5
  br i1 %68, label %69, label %70

69:                                               ; preds = %64
  store i64 128, i64* %5, align 8
  br label %77

70:                                               ; preds = %64, %59
  %71 = load %struct.cpumf_ctr_info*, %struct.cpumf_ctr_info** %4, align 8
  %72 = getelementptr inbounds %struct.cpumf_ctr_info, %struct.cpumf_ctr_info* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = icmp eq i32 %73, 6
  br i1 %74, label %75, label %76

75:                                               ; preds = %70
  store i64 160, i64* %5, align 8
  br label %76

76:                                               ; preds = %75, %70
  br label %77

77:                                               ; preds = %76, %69
  br label %78

78:                                               ; preds = %77, %58
  br label %79

79:                                               ; preds = %78, %52
  br label %88

80:                                               ; preds = %2
  %81 = load %struct.cpumf_ctr_info*, %struct.cpumf_ctr_info** %4, align 8
  %82 = getelementptr inbounds %struct.cpumf_ctr_info, %struct.cpumf_ctr_info* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = icmp sgt i32 %83, 3
  br i1 %84, label %85, label %86

85:                                               ; preds = %80
  store i64 48, i64* %5, align 8
  br label %86

86:                                               ; preds = %85, %80
  br label %88

87:                                               ; preds = %2
  br label %88

88:                                               ; preds = %2, %87, %86, %79, %46, %27, %13
  %89 = load i64, i64* %5, align 8
  ret i64 %89
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
