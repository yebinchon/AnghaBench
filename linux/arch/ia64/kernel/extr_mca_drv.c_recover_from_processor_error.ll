; ModuleID = '/home/carl/AnghaBench/linux/arch/ia64/kernel/extr_mca_drv.c_recover_from_processor_error.c'
source_filename = "/home/carl/AnghaBench/linux/arch/ia64/kernel/extr_mca_drv.c_recover_from_processor_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i64, i64 }
%struct.ia64_sal_os_state = type { i32 }
%struct.TYPE_5__ = type { i32, i64, i64, i64, i64, i64, i64, i64 }

@.str = private unnamed_addr constant [36 x i8] c"machine check is already corrected.\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"error not contained\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"No cache or bus check\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"Too many bus checks\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"Internal Bus error\00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"External bus check fatal status\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"Strange SAL record\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*, i32*, %struct.TYPE_6__*, %struct.ia64_sal_os_state*)* @recover_from_processor_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @recover_from_processor_error(i32 %0, i32* %1, i32* %2, %struct.TYPE_6__* %3, %struct.ia64_sal_os_state* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_6__*, align 8
  %11 = alloca %struct.ia64_sal_os_state*, align 8
  %12 = alloca %struct.TYPE_5__*, align 8
  store i32 %0, i32* %7, align 4
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store %struct.TYPE_6__* %3, %struct.TYPE_6__** %10, align 8
  store %struct.ia64_sal_os_state* %4, %struct.ia64_sal_os_state** %11, align 8
  %13 = load i32*, i32** %9, align 8
  %14 = call i64 @peidx_psp(i32* %13)
  %15 = inttoptr i64 %14 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %15, %struct.TYPE_5__** %12, align 8
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp eq i32 %18, 1
  br i1 %19, label %20, label %22

20:                                               ; preds = %5
  %21 = call i32 @mca_recovered(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  store i32 %21, i32* %6, align 4
  br label %113

22:                                               ; preds = %5
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 7
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %32, label %27

27:                                               ; preds = %22
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %27, %22
  %33 = call i32 @fatal_mca(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  store i32 %33, i32* %6, align 4
  br label %113

34:                                               ; preds = %27
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 6
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %62

39:                                               ; preds = %34
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %62, label %44

44:                                               ; preds = %39
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 3
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %62, label %49

49:                                               ; preds = %44
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 5
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %62, label %54

54:                                               ; preds = %49
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 4
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %62, label %59

59:                                               ; preds = %54
  %60 = load i32*, i32** %9, align 8
  %61 = call i32 @recover_from_tlb_check(i32* %60)
  store i32 %61, i32* %6, align 4
  br label %113

62:                                               ; preds = %54, %49, %44, %39, %34
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 2
  %65 = load i64, i64* %64, align 8
  %66 = icmp eq i64 %65, 0
  br i1 %66, label %67, label %77

67:                                               ; preds = %62
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 3
  %70 = load i64, i64* %69, align 8
  %71 = icmp eq i64 %70, 0
  br i1 %71, label %75, label %72

72:                                               ; preds = %67
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %74 = icmp eq %struct.TYPE_6__* %73, null
  br i1 %74, label %75, label %77

75:                                               ; preds = %72, %67
  %76 = call i32 @fatal_mca(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  store i32 %76, i32* %6, align 4
  br label %113

77:                                               ; preds = %72, %62
  %78 = load i32*, i32** %9, align 8
  %79 = call i32 @peidx_bus_check_num(i32* %78)
  %80 = icmp sgt i32 %79, 1
  br i1 %80, label %81, label %83

81:                                               ; preds = %77
  %82 = call i32 @fatal_mca(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  store i32 %82, i32* %6, align 4
  br label %113

83:                                               ; preds = %77
  %84 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 2
  %86 = load i64, i64* %85, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %90

88:                                               ; preds = %83
  %89 = call i32 @fatal_mca(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0))
  store i32 %89, i32* %6, align 4
  br label %113

90:                                               ; preds = %83
  %91 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %102

95:                                               ; preds = %90
  %96 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = icmp sgt i64 %98, 0
  br i1 %99, label %100, label %102

100:                                              ; preds = %95
  %101 = call i32 @fatal_mca(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0))
  store i32 %101, i32* %6, align 4
  br label %113

102:                                              ; preds = %95, %90
  %103 = load i32, i32* %7, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %111

105:                                              ; preds = %102
  %106 = load i32*, i32** %8, align 8
  %107 = load i32*, i32** %9, align 8
  %108 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %109 = load %struct.ia64_sal_os_state*, %struct.ia64_sal_os_state** %11, align 8
  %110 = call i32 @recover_from_platform_error(i32* %106, i32* %107, %struct.TYPE_6__* %108, %struct.ia64_sal_os_state* %109)
  store i32 %110, i32* %6, align 4
  br label %113

111:                                              ; preds = %102
  %112 = call i32 @fatal_mca(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0))
  store i32 %112, i32* %6, align 4
  br label %113

113:                                              ; preds = %111, %105, %100, %88, %81, %75, %59, %32, %20
  %114 = load i32, i32* %6, align 4
  ret i32 %114
}

declare dso_local i64 @peidx_psp(i32*) #1

declare dso_local i32 @mca_recovered(i8*) #1

declare dso_local i32 @fatal_mca(i8*) #1

declare dso_local i32 @recover_from_tlb_check(i32*) #1

declare dso_local i32 @peidx_bus_check_num(i32*) #1

declare dso_local i32 @recover_from_platform_error(i32*, i32*, %struct.TYPE_6__*, %struct.ia64_sal_os_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
