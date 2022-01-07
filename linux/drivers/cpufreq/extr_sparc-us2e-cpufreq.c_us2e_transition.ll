; ModuleID = '/home/carl/AnghaBench/linux/drivers/cpufreq/extr_sparc-us2e-cpufreq.c_us2e_transition.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/cpufreq/extr_sparc-us2e-cpufreq.c_us2e_transition.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ESTAR_MODE_DIV_MASK = common dso_local global i64 0, align 8
@HBIRD_ESTAR_MODE_ADDR = common dso_local global i32 0, align 4
@ESTAR_MODE_DIV_2 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i64, i64, i64, i64)* @us2e_transition to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @us2e_transition(i64 %0, i64 %1, i64 %2, i64 %3, i64 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store i64 %0, i64* %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store i64 %4, i64* %10, align 8
  %11 = load i64, i64* @ESTAR_MODE_DIV_MASK, align 8
  %12 = xor i64 %11, -1
  %13 = load i64, i64* %6, align 8
  %14 = and i64 %13, %12
  store i64 %14, i64* %6, align 8
  %15 = load i64, i64* %9, align 8
  %16 = icmp eq i64 %15, 2
  br i1 %16, label %17, label %31

17:                                               ; preds = %5
  %18 = load i64, i64* %10, align 8
  %19 = icmp eq i64 %18, 1
  br i1 %19, label %20, label %31

20:                                               ; preds = %17
  %21 = call i32 @self_refresh_ctl(i32 0)
  %22 = load i32, i32* @HBIRD_ESTAR_MODE_ADDR, align 4
  %23 = load i64, i64* %6, align 8
  %24 = load i64, i64* %7, align 8
  %25 = or i64 %23, %24
  %26 = call i32 @write_hbreg(i32 %22, i64 %25)
  %27 = load i64, i64* %8, align 8
  %28 = load i64, i64* %9, align 8
  %29 = load i64, i64* %10, align 8
  %30 = call i32 @frob_mem_refresh(i32 0, i64 %27, i64 %28, i64 %29)
  br label %112

31:                                               ; preds = %17, %5
  %32 = load i64, i64* %9, align 8
  %33 = icmp eq i64 %32, 1
  br i1 %33, label %34, label %48

34:                                               ; preds = %31
  %35 = load i64, i64* %10, align 8
  %36 = icmp eq i64 %35, 2
  br i1 %36, label %37, label %48

37:                                               ; preds = %34
  %38 = load i64, i64* %8, align 8
  %39 = load i64, i64* %9, align 8
  %40 = load i64, i64* %10, align 8
  %41 = call i32 @frob_mem_refresh(i32 1, i64 %38, i64 %39, i64 %40)
  %42 = load i32, i32* @HBIRD_ESTAR_MODE_ADDR, align 4
  %43 = load i64, i64* %6, align 8
  %44 = load i64, i64* %7, align 8
  %45 = or i64 %43, %44
  %46 = call i32 @write_hbreg(i32 %42, i64 %45)
  %47 = call i32 @self_refresh_ctl(i32 1)
  br label %111

48:                                               ; preds = %34, %31
  %49 = load i64, i64* %9, align 8
  %50 = icmp eq i64 %49, 1
  br i1 %50, label %51, label %62

51:                                               ; preds = %48
  %52 = load i64, i64* %10, align 8
  %53 = icmp ugt i64 %52, 2
  br i1 %53, label %54, label %62

54:                                               ; preds = %51
  %55 = load i64, i64* %6, align 8
  %56 = load i64, i64* @ESTAR_MODE_DIV_2, align 8
  %57 = load i64, i64* %8, align 8
  call void @us2e_transition(i64 %55, i64 %56, i64 %57, i64 1, i64 2)
  %58 = load i64, i64* %6, align 8
  %59 = load i64, i64* %7, align 8
  %60 = load i64, i64* %8, align 8
  %61 = load i64, i64* %10, align 8
  call void @us2e_transition(i64 %58, i64 %59, i64 %60, i64 2, i64 %61)
  br label %110

62:                                               ; preds = %51, %48
  %63 = load i64, i64* %9, align 8
  %64 = icmp ugt i64 %63, 2
  br i1 %64, label %65, label %77

65:                                               ; preds = %62
  %66 = load i64, i64* %10, align 8
  %67 = icmp eq i64 %66, 1
  br i1 %67, label %68, label %77

68:                                               ; preds = %65
  %69 = load i64, i64* %6, align 8
  %70 = load i64, i64* @ESTAR_MODE_DIV_2, align 8
  %71 = load i64, i64* %8, align 8
  %72 = load i64, i64* %9, align 8
  call void @us2e_transition(i64 %69, i64 %70, i64 %71, i64 %72, i64 2)
  %73 = load i64, i64* %6, align 8
  %74 = load i64, i64* %7, align 8
  %75 = load i64, i64* %8, align 8
  %76 = load i64, i64* %10, align 8
  call void @us2e_transition(i64 %73, i64 %74, i64 %75, i64 2, i64 %76)
  br label %109

77:                                               ; preds = %65, %62
  %78 = load i64, i64* %9, align 8
  %79 = load i64, i64* %10, align 8
  %80 = icmp ult i64 %78, %79
  br i1 %80, label %81, label %91

81:                                               ; preds = %77
  %82 = load i64, i64* %8, align 8
  %83 = load i64, i64* %9, align 8
  %84 = load i64, i64* %10, align 8
  %85 = call i32 @frob_mem_refresh(i32 0, i64 %82, i64 %83, i64 %84)
  %86 = load i32, i32* @HBIRD_ESTAR_MODE_ADDR, align 4
  %87 = load i64, i64* %6, align 8
  %88 = load i64, i64* %7, align 8
  %89 = or i64 %87, %88
  %90 = call i32 @write_hbreg(i32 %86, i64 %89)
  br label %108

91:                                               ; preds = %77
  %92 = load i64, i64* %9, align 8
  %93 = load i64, i64* %10, align 8
  %94 = icmp ugt i64 %92, %93
  br i1 %94, label %95, label %105

95:                                               ; preds = %91
  %96 = load i32, i32* @HBIRD_ESTAR_MODE_ADDR, align 4
  %97 = load i64, i64* %6, align 8
  %98 = load i64, i64* %7, align 8
  %99 = or i64 %97, %98
  %100 = call i32 @write_hbreg(i32 %96, i64 %99)
  %101 = load i64, i64* %8, align 8
  %102 = load i64, i64* %9, align 8
  %103 = load i64, i64* %10, align 8
  %104 = call i32 @frob_mem_refresh(i32 1, i64 %101, i64 %102, i64 %103)
  br label %107

105:                                              ; preds = %91
  %106 = call i32 (...) @BUG()
  br label %107

107:                                              ; preds = %105, %95
  br label %108

108:                                              ; preds = %107, %81
  br label %109

109:                                              ; preds = %108, %68
  br label %110

110:                                              ; preds = %109, %54
  br label %111

111:                                              ; preds = %110, %37
  br label %112

112:                                              ; preds = %111, %20
  ret void
}

declare dso_local i32 @self_refresh_ctl(i32) #1

declare dso_local i32 @write_hbreg(i32, i64) #1

declare dso_local i32 @frob_mem_refresh(i32, i64, i64, i64) #1

declare dso_local i32 @BUG(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
