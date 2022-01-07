; ModuleID = '/home/carl/AnghaBench/linux/arch/ia64/kernel/extr_mca_drv.c_is_mca_global.c'
source_filename = "/home/carl/AnghaBench/linux/arch/ia64/kernel/extr_mca_drv.c_is_mca_global.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i64, i64 }
%struct.ia64_sal_os_state = type { i32 }
%struct.TYPE_4__ = type { i64, i64, i64, i64 }

@MCA_IS_GLOBAL = common dso_local global i32 0, align 4
@MCA_IS_LOCAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_5__*, %struct.ia64_sal_os_state*)* @is_mca_global to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_mca_global(i32* %0, %struct.TYPE_5__* %1, %struct.ia64_sal_os_state* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca %struct.ia64_sal_os_state*, align 8
  %8 = alloca %struct.TYPE_4__*, align 8
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %6, align 8
  store %struct.ia64_sal_os_state* %2, %struct.ia64_sal_os_state** %7, align 8
  %9 = load i32*, i32** %5, align 8
  %10 = call i64 @peidx_psp(i32* %9)
  %11 = inttoptr i64 %10 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %11, %struct.TYPE_4__** %8, align 8
  %12 = load %struct.ia64_sal_os_state*, %struct.ia64_sal_os_state** %7, align 8
  %13 = getelementptr inbounds %struct.ia64_sal_os_state, %struct.ia64_sal_os_state* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  switch i32 %14, label %20 [
    i32 -1, label %15
    i32 0, label %17
    i32 1, label %19
    i32 2, label %19
  ]

15:                                               ; preds = %3
  %16 = load i32, i32* @MCA_IS_GLOBAL, align 4
  store i32 %16, i32* %4, align 4
  br label %69

17:                                               ; preds = %3
  %18 = load i32, i32* @MCA_IS_LOCAL, align 4
  store i32 %18, i32* %4, align 4
  br label %69

19:                                               ; preds = %3, %3
  br label %20

20:                                               ; preds = %3, %19
  br label %21

21:                                               ; preds = %20
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 3
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %41, label %26

26:                                               ; preds = %21
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %41, label %31

31:                                               ; preds = %26
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %41, label %36

36:                                               ; preds = %31
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %36, %31, %26, %21
  %42 = load i32, i32* @MCA_IS_LOCAL, align 4
  store i32 %42, i32* %4, align 4
  br label %69

43:                                               ; preds = %36
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %45 = icmp ne %struct.TYPE_5__* %44, null
  br i1 %45, label %46, label %51

46:                                               ; preds = %43
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %46, %43
  %52 = load i32, i32* @MCA_IS_GLOBAL, align 4
  store i32 %52, i32* %4, align 4
  br label %69

53:                                               ; preds = %46
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %67

58:                                               ; preds = %53
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  switch i32 %61, label %66 [
    i32 0, label %62
    i32 1, label %64
    i32 2, label %64
    i32 3, label %64
  ]

62:                                               ; preds = %58
  %63 = load i32, i32* @MCA_IS_LOCAL, align 4
  store i32 %63, i32* %4, align 4
  br label %69

64:                                               ; preds = %58, %58, %58
  %65 = load i32, i32* @MCA_IS_GLOBAL, align 4
  store i32 %65, i32* %4, align 4
  br label %69

66:                                               ; preds = %58
  br label %67

67:                                               ; preds = %66, %53
  %68 = load i32, i32* @MCA_IS_GLOBAL, align 4
  store i32 %68, i32* %4, align 4
  br label %69

69:                                               ; preds = %67, %64, %62, %51, %41, %17, %15
  %70 = load i32, i32* %4, align 4
  ret i32 %70
}

declare dso_local i64 @peidx_psp(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
