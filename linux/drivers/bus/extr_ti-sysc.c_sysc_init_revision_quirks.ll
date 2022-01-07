; ModuleID = '/home/carl/AnghaBench/linux/drivers/bus/extr_ti-sysc.c_sysc_init_revision_quirks.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bus/extr_ti-sysc.c_sysc_init_revision_quirks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sysc_revision_quirk = type { i64, i64, i64, i64, i32, i32, i32, i32 }
%struct.sysc = type { i64, i64*, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@sysc_revision_quirks = common dso_local global %struct.sysc_revision_quirk* null, align 8
@SYSC_REVISION = common dso_local global i64 0, align 8
@SYSC_SYSCONFIG = common dso_local global i64 0, align 8
@SYSC_SYSSTATUS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sysc*)* @sysc_init_revision_quirks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sysc_init_revision_quirks(%struct.sysc* %0) #0 {
  %2 = alloca %struct.sysc*, align 8
  %3 = alloca %struct.sysc_revision_quirk*, align 8
  %4 = alloca i32, align 4
  store %struct.sysc* %0, %struct.sysc** %2, align 8
  store i32 0, i32* %4, align 4
  br label %5

5:                                                ; preds = %118, %1
  %6 = load i32, i32* %4, align 4
  %7 = load %struct.sysc_revision_quirk*, %struct.sysc_revision_quirk** @sysc_revision_quirks, align 8
  %8 = call i32 @ARRAY_SIZE(%struct.sysc_revision_quirk* %7)
  %9 = icmp slt i32 %6, %8
  br i1 %9, label %10, label %121

10:                                               ; preds = %5
  %11 = load %struct.sysc_revision_quirk*, %struct.sysc_revision_quirk** @sysc_revision_quirks, align 8
  %12 = load i32, i32* %4, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.sysc_revision_quirk, %struct.sysc_revision_quirk* %11, i64 %13
  store %struct.sysc_revision_quirk* %14, %struct.sysc_revision_quirk** %3, align 8
  %15 = load %struct.sysc_revision_quirk*, %struct.sysc_revision_quirk** %3, align 8
  %16 = getelementptr inbounds %struct.sysc_revision_quirk, %struct.sysc_revision_quirk* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %28

19:                                               ; preds = %10
  %20 = load %struct.sysc_revision_quirk*, %struct.sysc_revision_quirk** %3, align 8
  %21 = getelementptr inbounds %struct.sysc_revision_quirk, %struct.sysc_revision_quirk* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.sysc*, %struct.sysc** %2, align 8
  %24 = getelementptr inbounds %struct.sysc, %struct.sysc* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %22, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %19
  br label %118

28:                                               ; preds = %19, %10
  %29 = load %struct.sysc_revision_quirk*, %struct.sysc_revision_quirk** %3, align 8
  %30 = getelementptr inbounds %struct.sysc_revision_quirk, %struct.sysc_revision_quirk* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = icmp sge i64 %31, 0
  br i1 %32, label %33, label %45

33:                                               ; preds = %28
  %34 = load %struct.sysc_revision_quirk*, %struct.sysc_revision_quirk** %3, align 8
  %35 = getelementptr inbounds %struct.sysc_revision_quirk, %struct.sysc_revision_quirk* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.sysc*, %struct.sysc** %2, align 8
  %38 = getelementptr inbounds %struct.sysc, %struct.sysc* %37, i32 0, i32 1
  %39 = load i64*, i64** %38, align 8
  %40 = load i64, i64* @SYSC_REVISION, align 8
  %41 = getelementptr inbounds i64, i64* %39, i64 %40
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %36, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %33
  br label %118

45:                                               ; preds = %33, %28
  %46 = load %struct.sysc_revision_quirk*, %struct.sysc_revision_quirk** %3, align 8
  %47 = getelementptr inbounds %struct.sysc_revision_quirk, %struct.sysc_revision_quirk* %46, i32 0, i32 2
  %48 = load i64, i64* %47, align 8
  %49 = icmp sge i64 %48, 0
  br i1 %49, label %50, label %62

50:                                               ; preds = %45
  %51 = load %struct.sysc_revision_quirk*, %struct.sysc_revision_quirk** %3, align 8
  %52 = getelementptr inbounds %struct.sysc_revision_quirk, %struct.sysc_revision_quirk* %51, i32 0, i32 2
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.sysc*, %struct.sysc** %2, align 8
  %55 = getelementptr inbounds %struct.sysc, %struct.sysc* %54, i32 0, i32 1
  %56 = load i64*, i64** %55, align 8
  %57 = load i64, i64* @SYSC_SYSCONFIG, align 8
  %58 = getelementptr inbounds i64, i64* %56, i64 %57
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %53, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %50
  br label %118

62:                                               ; preds = %50, %45
  %63 = load %struct.sysc_revision_quirk*, %struct.sysc_revision_quirk** %3, align 8
  %64 = getelementptr inbounds %struct.sysc_revision_quirk, %struct.sysc_revision_quirk* %63, i32 0, i32 3
  %65 = load i64, i64* %64, align 8
  %66 = icmp sge i64 %65, 0
  br i1 %66, label %67, label %79

67:                                               ; preds = %62
  %68 = load %struct.sysc_revision_quirk*, %struct.sysc_revision_quirk** %3, align 8
  %69 = getelementptr inbounds %struct.sysc_revision_quirk, %struct.sysc_revision_quirk* %68, i32 0, i32 3
  %70 = load i64, i64* %69, align 8
  %71 = load %struct.sysc*, %struct.sysc** %2, align 8
  %72 = getelementptr inbounds %struct.sysc, %struct.sysc* %71, i32 0, i32 1
  %73 = load i64*, i64** %72, align 8
  %74 = load i64, i64* @SYSC_SYSSTATUS, align 8
  %75 = getelementptr inbounds i64, i64* %73, i64 %74
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %70, %76
  br i1 %77, label %78, label %79

78:                                               ; preds = %67
  br label %118

79:                                               ; preds = %67, %62
  %80 = load %struct.sysc_revision_quirk*, %struct.sysc_revision_quirk** %3, align 8
  %81 = getelementptr inbounds %struct.sysc_revision_quirk, %struct.sysc_revision_quirk* %80, i32 0, i32 4
  %82 = load i32, i32* %81, align 8
  %83 = load %struct.sysc*, %struct.sysc** %2, align 8
  %84 = getelementptr inbounds %struct.sysc, %struct.sysc* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 8
  %86 = icmp eq i32 %82, %85
  br i1 %86, label %103, label %87

87:                                               ; preds = %79
  %88 = load %struct.sysc_revision_quirk*, %struct.sysc_revision_quirk** %3, align 8
  %89 = getelementptr inbounds %struct.sysc_revision_quirk, %struct.sysc_revision_quirk* %88, i32 0, i32 4
  %90 = load i32, i32* %89, align 8
  %91 = load %struct.sysc_revision_quirk*, %struct.sysc_revision_quirk** %3, align 8
  %92 = getelementptr inbounds %struct.sysc_revision_quirk, %struct.sysc_revision_quirk* %91, i32 0, i32 5
  %93 = load i32, i32* %92, align 4
  %94 = and i32 %90, %93
  %95 = load %struct.sysc*, %struct.sysc** %2, align 8
  %96 = getelementptr inbounds %struct.sysc, %struct.sysc* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 8
  %98 = load %struct.sysc_revision_quirk*, %struct.sysc_revision_quirk** %3, align 8
  %99 = getelementptr inbounds %struct.sysc_revision_quirk, %struct.sysc_revision_quirk* %98, i32 0, i32 5
  %100 = load i32, i32* %99, align 4
  %101 = and i32 %97, %100
  %102 = icmp eq i32 %94, %101
  br i1 %102, label %103, label %117

103:                                              ; preds = %87, %79
  %104 = load %struct.sysc_revision_quirk*, %struct.sysc_revision_quirk** %3, align 8
  %105 = getelementptr inbounds %struct.sysc_revision_quirk, %struct.sysc_revision_quirk* %104, i32 0, i32 7
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.sysc*, %struct.sysc** %2, align 8
  %108 = getelementptr inbounds %struct.sysc, %struct.sysc* %107, i32 0, i32 4
  store i32 %106, i32* %108, align 8
  %109 = load %struct.sysc_revision_quirk*, %struct.sysc_revision_quirk** %3, align 8
  %110 = getelementptr inbounds %struct.sysc_revision_quirk, %struct.sysc_revision_quirk* %109, i32 0, i32 6
  %111 = load i32, i32* %110, align 8
  %112 = load %struct.sysc*, %struct.sysc** %2, align 8
  %113 = getelementptr inbounds %struct.sysc, %struct.sysc* %112, i32 0, i32 3
  %114 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = or i32 %115, %111
  store i32 %116, i32* %114, align 4
  br label %117

117:                                              ; preds = %103, %87
  br label %118

118:                                              ; preds = %117, %78, %61, %44, %27
  %119 = load i32, i32* %4, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %4, align 4
  br label %5

121:                                              ; preds = %5
  ret void
}

declare dso_local i32 @ARRAY_SIZE(%struct.sysc_revision_quirk*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
