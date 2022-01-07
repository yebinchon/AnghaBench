; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/mce/extr_severity.c_mce_severity_intel.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/mce/extr_severity.c_mce_severity_intel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.severity = type { i32, i32, i32, i32, i64, i32, i32, i8*, i32, i64 }
%struct.TYPE_2__ = type { i64 }
%struct.mce = type { i32, i32 }

@EXCP_CONTEXT = common dso_local global i32 0, align 4
@NO_EXCP = common dso_local global i32 0, align 4
@severities = common dso_local global %struct.severity* null, align 8
@SER_REQUIRED = common dso_local global i64 0, align 8
@mca_cfg = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@NO_SER = common dso_local global i64 0, align 8
@MCE_UC_SEVERITY = common dso_local global i64 0, align 8
@IN_KERNEL = common dso_local global i32 0, align 4
@MCE_PANIC_SEVERITY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mce*, i32, i8**, i32)* @mce_severity_intel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mce_severity_intel(%struct.mce* %0, i32 %1, i8** %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mce*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8**, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.severity*, align 8
  store %struct.mce* %0, %struct.mce** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8** %2, i8*** %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = load i32, i32* %9, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %4
  %16 = load i32, i32* @EXCP_CONTEXT, align 4
  br label %19

17:                                               ; preds = %4
  %18 = load i32, i32* @NO_EXCP, align 4
  br label %19

19:                                               ; preds = %17, %15
  %20 = phi i32 [ %16, %15 ], [ %18, %17 ]
  store i32 %20, i32* %10, align 4
  %21 = load %struct.mce*, %struct.mce** %6, align 8
  %22 = call i32 @error_context(%struct.mce* %21)
  store i32 %22, i32* %11, align 4
  %23 = load %struct.severity*, %struct.severity** @severities, align 8
  store %struct.severity* %23, %struct.severity** %12, align 8
  br label %24

24:                                               ; preds = %125, %19
  %25 = load %struct.mce*, %struct.mce** %6, align 8
  %26 = getelementptr inbounds %struct.mce, %struct.mce* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.severity*, %struct.severity** %12, align 8
  %29 = getelementptr inbounds %struct.severity, %struct.severity* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = and i32 %27, %30
  %32 = load %struct.severity*, %struct.severity** %12, align 8
  %33 = getelementptr inbounds %struct.severity, %struct.severity* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = icmp ne i32 %31, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %24
  br label %125

37:                                               ; preds = %24
  %38 = load %struct.mce*, %struct.mce** %6, align 8
  %39 = getelementptr inbounds %struct.mce, %struct.mce* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.severity*, %struct.severity** %12, align 8
  %42 = getelementptr inbounds %struct.severity, %struct.severity* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = and i32 %40, %43
  %45 = load %struct.severity*, %struct.severity** %12, align 8
  %46 = getelementptr inbounds %struct.severity, %struct.severity* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 4
  %48 = icmp ne i32 %44, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %37
  br label %125

50:                                               ; preds = %37
  %51 = load %struct.severity*, %struct.severity** %12, align 8
  %52 = getelementptr inbounds %struct.severity, %struct.severity* %51, i32 0, i32 4
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @SER_REQUIRED, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %60

56:                                               ; preds = %50
  %57 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mca_cfg, i32 0, i32 0), align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %60, label %59

59:                                               ; preds = %56
  br label %125

60:                                               ; preds = %56, %50
  %61 = load %struct.severity*, %struct.severity** %12, align 8
  %62 = getelementptr inbounds %struct.severity, %struct.severity* %61, i32 0, i32 4
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @NO_SER, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %70

66:                                               ; preds = %60
  %67 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mca_cfg, i32 0, i32 0), align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %66
  br label %125

70:                                               ; preds = %66, %60
  %71 = load %struct.severity*, %struct.severity** %12, align 8
  %72 = getelementptr inbounds %struct.severity, %struct.severity* %71, i32 0, i32 5
  %73 = load i32, i32* %72, align 8
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %82

75:                                               ; preds = %70
  %76 = load i32, i32* %11, align 4
  %77 = load %struct.severity*, %struct.severity** %12, align 8
  %78 = getelementptr inbounds %struct.severity, %struct.severity* %77, i32 0, i32 5
  %79 = load i32, i32* %78, align 8
  %80 = icmp ne i32 %76, %79
  br i1 %80, label %81, label %82

81:                                               ; preds = %75
  br label %125

82:                                               ; preds = %75, %70
  %83 = load %struct.severity*, %struct.severity** %12, align 8
  %84 = getelementptr inbounds %struct.severity, %struct.severity* %83, i32 0, i32 6
  %85 = load i32, i32* %84, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %94

87:                                               ; preds = %82
  %88 = load i32, i32* %10, align 4
  %89 = load %struct.severity*, %struct.severity** %12, align 8
  %90 = getelementptr inbounds %struct.severity, %struct.severity* %89, i32 0, i32 6
  %91 = load i32, i32* %90, align 4
  %92 = icmp ne i32 %88, %91
  br i1 %92, label %93, label %94

93:                                               ; preds = %87
  br label %125

94:                                               ; preds = %87, %82
  %95 = load i8**, i8*** %8, align 8
  %96 = icmp ne i8** %95, null
  br i1 %96, label %97, label %102

97:                                               ; preds = %94
  %98 = load %struct.severity*, %struct.severity** %12, align 8
  %99 = getelementptr inbounds %struct.severity, %struct.severity* %98, i32 0, i32 7
  %100 = load i8*, i8** %99, align 8
  %101 = load i8**, i8*** %8, align 8
  store i8* %100, i8** %101, align 8
  br label %102

102:                                              ; preds = %97, %94
  %103 = load %struct.severity*, %struct.severity** %12, align 8
  %104 = getelementptr inbounds %struct.severity, %struct.severity* %103, i32 0, i32 8
  store i32 1, i32* %104, align 8
  %105 = load %struct.severity*, %struct.severity** %12, align 8
  %106 = getelementptr inbounds %struct.severity, %struct.severity* %105, i32 0, i32 9
  %107 = load i64, i64* %106, align 8
  %108 = load i64, i64* @MCE_UC_SEVERITY, align 8
  %109 = icmp sge i64 %107, %108
  br i1 %109, label %110, label %120

110:                                              ; preds = %102
  %111 = load i32, i32* %11, align 4
  %112 = load i32, i32* @IN_KERNEL, align 4
  %113 = icmp eq i32 %111, %112
  br i1 %113, label %114, label %120

114:                                              ; preds = %110
  %115 = load i32, i32* %7, align 4
  %116 = icmp slt i32 %115, 1
  br i1 %116, label %117, label %119

117:                                              ; preds = %114
  %118 = load i32, i32* @MCE_PANIC_SEVERITY, align 4
  store i32 %118, i32* %5, align 4
  br label %128

119:                                              ; preds = %114
  br label %120

120:                                              ; preds = %119, %110, %102
  %121 = load %struct.severity*, %struct.severity** %12, align 8
  %122 = getelementptr inbounds %struct.severity, %struct.severity* %121, i32 0, i32 9
  %123 = load i64, i64* %122, align 8
  %124 = trunc i64 %123 to i32
  store i32 %124, i32* %5, align 4
  br label %128

125:                                              ; preds = %93, %81, %69, %59, %49, %36
  %126 = load %struct.severity*, %struct.severity** %12, align 8
  %127 = getelementptr inbounds %struct.severity, %struct.severity* %126, i32 1
  store %struct.severity* %127, %struct.severity** %12, align 8
  br label %24

128:                                              ; preds = %120, %117
  %129 = load i32, i32* %5, align 4
  ret i32 %129
}

declare dso_local i32 @error_context(%struct.mce*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
