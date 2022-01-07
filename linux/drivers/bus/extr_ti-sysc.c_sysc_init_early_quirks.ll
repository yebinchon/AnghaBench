; ModuleID = '/home/carl/AnghaBench/linux/drivers/bus/extr_ti-sysc.c_sysc_init_early_quirks.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bus/extr_ti-sysc.c_sysc_init_early_quirks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sysc_revision_quirk = type { i64, i64, i64, i64, i32, i32 }
%struct.sysc = type { i64, i64*, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@sysc_revision_quirks = common dso_local global %struct.sysc_revision_quirk* null, align 8
@SYSC_REVISION = common dso_local global i64 0, align 8
@SYSC_SYSCONFIG = common dso_local global i64 0, align 8
@SYSC_SYSSTATUS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sysc*)* @sysc_init_early_quirks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sysc_init_early_quirks(%struct.sysc* %0) #0 {
  %2 = alloca %struct.sysc*, align 8
  %3 = alloca %struct.sysc_revision_quirk*, align 8
  %4 = alloca i32, align 4
  store %struct.sysc* %0, %struct.sysc** %2, align 8
  store i32 0, i32* %4, align 4
  br label %5

5:                                                ; preds = %94, %1
  %6 = load i32, i32* %4, align 4
  %7 = load %struct.sysc_revision_quirk*, %struct.sysc_revision_quirk** @sysc_revision_quirks, align 8
  %8 = call i32 @ARRAY_SIZE(%struct.sysc_revision_quirk* %7)
  %9 = icmp slt i32 %6, %8
  br i1 %9, label %10, label %97

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
  br i1 %18, label %20, label %19

19:                                               ; preds = %10
  br label %94

20:                                               ; preds = %10
  %21 = load %struct.sysc_revision_quirk*, %struct.sysc_revision_quirk** %3, align 8
  %22 = getelementptr inbounds %struct.sysc_revision_quirk, %struct.sysc_revision_quirk* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.sysc*, %struct.sysc** %2, align 8
  %25 = getelementptr inbounds %struct.sysc, %struct.sysc* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %23, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %20
  br label %94

29:                                               ; preds = %20
  %30 = load %struct.sysc_revision_quirk*, %struct.sysc_revision_quirk** %3, align 8
  %31 = getelementptr inbounds %struct.sysc_revision_quirk, %struct.sysc_revision_quirk* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = icmp sge i64 %32, 0
  br i1 %33, label %34, label %46

34:                                               ; preds = %29
  %35 = load %struct.sysc_revision_quirk*, %struct.sysc_revision_quirk** %3, align 8
  %36 = getelementptr inbounds %struct.sysc_revision_quirk, %struct.sysc_revision_quirk* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.sysc*, %struct.sysc** %2, align 8
  %39 = getelementptr inbounds %struct.sysc, %struct.sysc* %38, i32 0, i32 1
  %40 = load i64*, i64** %39, align 8
  %41 = load i64, i64* @SYSC_REVISION, align 8
  %42 = getelementptr inbounds i64, i64* %40, i64 %41
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %37, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %34
  br label %94

46:                                               ; preds = %34, %29
  %47 = load %struct.sysc_revision_quirk*, %struct.sysc_revision_quirk** %3, align 8
  %48 = getelementptr inbounds %struct.sysc_revision_quirk, %struct.sysc_revision_quirk* %47, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = icmp sge i64 %49, 0
  br i1 %50, label %51, label %63

51:                                               ; preds = %46
  %52 = load %struct.sysc_revision_quirk*, %struct.sysc_revision_quirk** %3, align 8
  %53 = getelementptr inbounds %struct.sysc_revision_quirk, %struct.sysc_revision_quirk* %52, i32 0, i32 2
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.sysc*, %struct.sysc** %2, align 8
  %56 = getelementptr inbounds %struct.sysc, %struct.sysc* %55, i32 0, i32 1
  %57 = load i64*, i64** %56, align 8
  %58 = load i64, i64* @SYSC_SYSCONFIG, align 8
  %59 = getelementptr inbounds i64, i64* %57, i64 %58
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %54, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %51
  br label %94

63:                                               ; preds = %51, %46
  %64 = load %struct.sysc_revision_quirk*, %struct.sysc_revision_quirk** %3, align 8
  %65 = getelementptr inbounds %struct.sysc_revision_quirk, %struct.sysc_revision_quirk* %64, i32 0, i32 3
  %66 = load i64, i64* %65, align 8
  %67 = icmp sge i64 %66, 0
  br i1 %67, label %68, label %80

68:                                               ; preds = %63
  %69 = load %struct.sysc_revision_quirk*, %struct.sysc_revision_quirk** %3, align 8
  %70 = getelementptr inbounds %struct.sysc_revision_quirk, %struct.sysc_revision_quirk* %69, i32 0, i32 3
  %71 = load i64, i64* %70, align 8
  %72 = load %struct.sysc*, %struct.sysc** %2, align 8
  %73 = getelementptr inbounds %struct.sysc, %struct.sysc* %72, i32 0, i32 1
  %74 = load i64*, i64** %73, align 8
  %75 = load i64, i64* @SYSC_SYSSTATUS, align 8
  %76 = getelementptr inbounds i64, i64* %74, i64 %75
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %71, %77
  br i1 %78, label %79, label %80

79:                                               ; preds = %68
  br label %94

80:                                               ; preds = %68, %63
  %81 = load %struct.sysc_revision_quirk*, %struct.sysc_revision_quirk** %3, align 8
  %82 = getelementptr inbounds %struct.sysc_revision_quirk, %struct.sysc_revision_quirk* %81, i32 0, i32 5
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.sysc*, %struct.sysc** %2, align 8
  %85 = getelementptr inbounds %struct.sysc, %struct.sysc* %84, i32 0, i32 3
  store i32 %83, i32* %85, align 4
  %86 = load %struct.sysc_revision_quirk*, %struct.sysc_revision_quirk** %3, align 8
  %87 = getelementptr inbounds %struct.sysc_revision_quirk, %struct.sysc_revision_quirk* %86, i32 0, i32 4
  %88 = load i32, i32* %87, align 8
  %89 = load %struct.sysc*, %struct.sysc** %2, align 8
  %90 = getelementptr inbounds %struct.sysc, %struct.sysc* %89, i32 0, i32 2
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = or i32 %92, %88
  store i32 %93, i32* %91, align 8
  br label %94

94:                                               ; preds = %80, %79, %62, %45, %28, %19
  %95 = load i32, i32* %4, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %4, align 4
  br label %5

97:                                               ; preds = %5
  ret void
}

declare dso_local i32 @ARRAY_SIZE(%struct.sysc_revision_quirk*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
