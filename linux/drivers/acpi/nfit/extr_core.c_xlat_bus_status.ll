; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/nfit/extr_core.c_xlat_bus_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/nfit/extr_core.c_xlat_bus_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nd_cmd_clear_error = type { i32, i32 }
%struct.nd_cmd_ars_status = type { i32, i32 }

@NFIT_ARS_CAP_NONE = common dso_local global i32 0, align 4
@ENOTTY = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@ND_ARS_PERSISTENT = common dso_local global i32 0, align 4
@ND_ARS_VOLATILE = common dso_local global i32 0, align 4
@NFIT_ARS_START_BUSY = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@NFIT_ARS_STATUS_DONE = common dso_local global i32 0, align 4
@NFIT_ARS_STATUS_BUSY = common dso_local global i32 0, align 4
@NFIT_ARS_STATUS_NONE = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@NFIT_ARS_STATUS_INTR = common dso_local global i32 0, align 4
@NFIT_ARS_F_OVERFLOW = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i32)* @xlat_bus_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xlat_bus_status(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.nd_cmd_clear_error*, align 8
  %9 = alloca %struct.nd_cmd_ars_status*, align 8
  %10 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load i32, i32* %6, align 4
  switch i32 %11, label %142 [
    i32 131, label %12
    i32 130, label %40
    i32 129, label %56
    i32 128, label %112
  ]

12:                                               ; preds = %3
  %13 = load i32, i32* %7, align 4
  %14 = and i32 %13, 65535
  %15 = load i32, i32* @NFIT_ARS_CAP_NONE, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %12
  %18 = load i32, i32* @ENOTTY, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %4, align 4
  br label %150

20:                                               ; preds = %12
  %21 = load i32, i32* %7, align 4
  %22 = and i32 %21, 65535
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %20
  %25 = load i32, i32* @EIO, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %4, align 4
  br label %150

27:                                               ; preds = %20
  %28 = load i32, i32* @ND_ARS_PERSISTENT, align 4
  %29 = load i32, i32* @ND_ARS_VOLATILE, align 4
  %30 = or i32 %28, %29
  store i32 %30, i32* %10, align 4
  %31 = load i32, i32* %7, align 4
  %32 = ashr i32 %31, 16
  %33 = load i32, i32* %10, align 4
  %34 = and i32 %32, %33
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %27
  %37 = load i32, i32* @ENOTTY, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %4, align 4
  br label %150

39:                                               ; preds = %27
  store i32 0, i32* %4, align 4
  br label %150

40:                                               ; preds = %3
  %41 = load i32, i32* %7, align 4
  %42 = and i32 %41, 65535
  %43 = load i32, i32* @NFIT_ARS_START_BUSY, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %40
  %46 = load i32, i32* @EBUSY, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %4, align 4
  br label %150

48:                                               ; preds = %40
  %49 = load i32, i32* %7, align 4
  %50 = and i32 %49, 65535
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %48
  %53 = load i32, i32* @EIO, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %4, align 4
  br label %150

55:                                               ; preds = %48
  store i32 0, i32* %4, align 4
  br label %150

56:                                               ; preds = %3
  %57 = load i8*, i8** %5, align 8
  %58 = bitcast i8* %57 to %struct.nd_cmd_ars_status*
  store %struct.nd_cmd_ars_status* %58, %struct.nd_cmd_ars_status** %9, align 8
  %59 = load i32, i32* %7, align 4
  %60 = and i32 %59, 65535
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %56
  %63 = load i32, i32* @EIO, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %4, align 4
  br label %150

65:                                               ; preds = %56
  %66 = load i32, i32* %7, align 4
  %67 = load i32, i32* @NFIT_ARS_STATUS_DONE, align 4
  %68 = icmp eq i32 %66, %67
  br i1 %68, label %69, label %70

69:                                               ; preds = %65
  store i32 0, i32* %4, align 4
  br label %150

70:                                               ; preds = %65
  %71 = load i32, i32* %7, align 4
  %72 = load i32, i32* @NFIT_ARS_STATUS_BUSY, align 4
  %73 = icmp eq i32 %71, %72
  br i1 %73, label %74, label %77

74:                                               ; preds = %70
  %75 = load i32, i32* @EBUSY, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %4, align 4
  br label %150

77:                                               ; preds = %70
  %78 = load i32, i32* %7, align 4
  %79 = load i32, i32* @NFIT_ARS_STATUS_NONE, align 4
  %80 = icmp eq i32 %78, %79
  br i1 %80, label %81, label %84

81:                                               ; preds = %77
  %82 = load i32, i32* @EAGAIN, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %4, align 4
  br label %150

84:                                               ; preds = %77
  %85 = load i32, i32* %7, align 4
  %86 = load i32, i32* @NFIT_ARS_STATUS_INTR, align 4
  %87 = icmp eq i32 %85, %86
  br i1 %87, label %88, label %104

88:                                               ; preds = %84
  %89 = load %struct.nd_cmd_ars_status*, %struct.nd_cmd_ars_status** %9, align 8
  %90 = getelementptr inbounds %struct.nd_cmd_ars_status, %struct.nd_cmd_ars_status* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = icmp sge i32 %91, 40
  br i1 %92, label %93, label %103

93:                                               ; preds = %88
  %94 = load %struct.nd_cmd_ars_status*, %struct.nd_cmd_ars_status** %9, align 8
  %95 = getelementptr inbounds %struct.nd_cmd_ars_status, %struct.nd_cmd_ars_status* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* @NFIT_ARS_F_OVERFLOW, align 4
  %98 = and i32 %96, %97
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %103

100:                                              ; preds = %93
  %101 = load i32, i32* @ENOSPC, align 4
  %102 = sub nsw i32 0, %101
  store i32 %102, i32* %4, align 4
  br label %150

103:                                              ; preds = %93, %88
  store i32 0, i32* %4, align 4
  br label %150

104:                                              ; preds = %84
  %105 = load i32, i32* %7, align 4
  %106 = ashr i32 %105, 16
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %111

108:                                              ; preds = %104
  %109 = load i32, i32* @EIO, align 4
  %110 = sub nsw i32 0, %109
  store i32 %110, i32* %4, align 4
  br label %150

111:                                              ; preds = %104
  store i32 0, i32* %4, align 4
  br label %150

112:                                              ; preds = %3
  %113 = load i8*, i8** %5, align 8
  %114 = bitcast i8* %113 to %struct.nd_cmd_clear_error*
  store %struct.nd_cmd_clear_error* %114, %struct.nd_cmd_clear_error** %8, align 8
  %115 = load i32, i32* %7, align 4
  %116 = and i32 %115, 65535
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %121

118:                                              ; preds = %112
  %119 = load i32, i32* @EIO, align 4
  %120 = sub nsw i32 0, %119
  store i32 %120, i32* %4, align 4
  br label %150

121:                                              ; preds = %112
  %122 = load %struct.nd_cmd_clear_error*, %struct.nd_cmd_clear_error** %8, align 8
  %123 = getelementptr inbounds %struct.nd_cmd_clear_error, %struct.nd_cmd_clear_error* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %129, label %126

126:                                              ; preds = %121
  %127 = load i32, i32* @EIO, align 4
  %128 = sub nsw i32 0, %127
  store i32 %128, i32* %4, align 4
  br label %150

129:                                              ; preds = %121
  %130 = load %struct.nd_cmd_clear_error*, %struct.nd_cmd_clear_error** %8, align 8
  %131 = getelementptr inbounds %struct.nd_cmd_clear_error, %struct.nd_cmd_clear_error* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = load %struct.nd_cmd_clear_error*, %struct.nd_cmd_clear_error** %8, align 8
  %134 = getelementptr inbounds %struct.nd_cmd_clear_error, %struct.nd_cmd_clear_error* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = icmp sgt i32 %132, %135
  br i1 %136, label %137, label %141

137:                                              ; preds = %129
  %138 = load %struct.nd_cmd_clear_error*, %struct.nd_cmd_clear_error** %8, align 8
  %139 = getelementptr inbounds %struct.nd_cmd_clear_error, %struct.nd_cmd_clear_error* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  store i32 %140, i32* %4, align 4
  br label %150

141:                                              ; preds = %129
  store i32 0, i32* %4, align 4
  br label %150

142:                                              ; preds = %3
  br label %143

143:                                              ; preds = %142
  %144 = load i32, i32* %7, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %149

146:                                              ; preds = %143
  %147 = load i32, i32* @EIO, align 4
  %148 = sub nsw i32 0, %147
  store i32 %148, i32* %4, align 4
  br label %150

149:                                              ; preds = %143
  store i32 0, i32* %4, align 4
  br label %150

150:                                              ; preds = %149, %146, %141, %137, %126, %118, %111, %108, %103, %100, %81, %74, %69, %62, %55, %52, %45, %39, %36, %24, %17
  %151 = load i32, i32* %4, align 4
  ret i32 %151
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
