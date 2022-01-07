; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/pci/extr_pci_event.c___zpci_event_availability.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/pci/extr_pci_event.c___zpci_event_availability.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zpci_ccdf_avail = type { i32, i32, i32 }
%struct.zpci_dev = type { i8*, i32, i32, i32 }
%struct.pci_dev = type { i32 }

@ZPCI_DEVFN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"%s: Event 0x%x reconfigured PCI function 0x%x\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"n/a\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"avail CCDF:\0A\00", align 1
@ZPCI_FN_STATE_STANDBY = common dso_local global i8* null, align 8
@ZPCI_FN_STATE_CONFIGURED = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [22 x i8] c"deconf fid:%x, rc:%d\0A\00", align 1
@pci_channel_io_perm_failure = common dso_local global i32 0, align 4
@ZPCI_FN_STATE_RESERVED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.zpci_ccdf_avail*)* @__zpci_event_availability to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__zpci_event_availability(%struct.zpci_ccdf_avail* %0) #0 {
  %2 = alloca %struct.zpci_ccdf_avail*, align 8
  %3 = alloca %struct.zpci_dev*, align 8
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.zpci_ccdf_avail* %0, %struct.zpci_ccdf_avail** %2, align 8
  %7 = load %struct.zpci_ccdf_avail*, %struct.zpci_ccdf_avail** %2, align 8
  %8 = getelementptr inbounds %struct.zpci_ccdf_avail, %struct.zpci_ccdf_avail* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.zpci_dev* @get_zdev_by_fid(i32 %9)
  store %struct.zpci_dev* %10, %struct.zpci_dev** %3, align 8
  store %struct.pci_dev* null, %struct.pci_dev** %4, align 8
  %11 = load %struct.zpci_dev*, %struct.zpci_dev** %3, align 8
  %12 = icmp ne %struct.zpci_dev* %11, null
  br i1 %12, label %13, label %19

13:                                               ; preds = %1
  %14 = load %struct.zpci_dev*, %struct.zpci_dev** %3, align 8
  %15 = getelementptr inbounds %struct.zpci_dev, %struct.zpci_dev* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @ZPCI_DEVFN, align 4
  %18 = call %struct.pci_dev* @pci_get_slot(i32 %16, i32 %17)
  store %struct.pci_dev* %18, %struct.pci_dev** %4, align 8
  br label %19

19:                                               ; preds = %13, %1
  %20 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %21 = icmp ne %struct.pci_dev* %20, null
  br i1 %21, label %22, label %25

22:                                               ; preds = %19
  %23 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %24 = call i8* @pci_name(%struct.pci_dev* %23)
  br label %26

25:                                               ; preds = %19
  br label %26

26:                                               ; preds = %25, %22
  %27 = phi i8* [ %24, %22 ], [ getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), %25 ]
  %28 = load %struct.zpci_ccdf_avail*, %struct.zpci_ccdf_avail** %2, align 8
  %29 = getelementptr inbounds %struct.zpci_ccdf_avail, %struct.zpci_ccdf_avail* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.zpci_ccdf_avail*, %struct.zpci_ccdf_avail** %2, align 8
  %32 = getelementptr inbounds %struct.zpci_ccdf_avail, %struct.zpci_ccdf_avail* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @pr_info(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i8* %27, i32 %30, i32 %33)
  %35 = call i32 @zpci_err(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  %36 = load %struct.zpci_ccdf_avail*, %struct.zpci_ccdf_avail** %2, align 8
  %37 = call i32 @zpci_err_hex(%struct.zpci_ccdf_avail* %36, i32 12)
  %38 = load %struct.zpci_ccdf_avail*, %struct.zpci_ccdf_avail** %2, align 8
  %39 = getelementptr inbounds %struct.zpci_ccdf_avail, %struct.zpci_ccdf_avail* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  switch i32 %40, label %182 [
    i32 769, label %41
    i32 770, label %91
    i32 771, label %103
    i32 772, label %136
    i32 774, label %173
    i32 776, label %175
  ]

41:                                               ; preds = %26
  %42 = load %struct.zpci_dev*, %struct.zpci_dev** %3, align 8
  %43 = icmp ne %struct.zpci_dev* %42, null
  br i1 %43, label %60, label %44

44:                                               ; preds = %41
  %45 = load %struct.zpci_ccdf_avail*, %struct.zpci_ccdf_avail** %2, align 8
  %46 = getelementptr inbounds %struct.zpci_ccdf_avail, %struct.zpci_ccdf_avail* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.zpci_ccdf_avail*, %struct.zpci_ccdf_avail** %2, align 8
  %49 = getelementptr inbounds %struct.zpci_ccdf_avail, %struct.zpci_ccdf_avail* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @clp_add_pci_device(i32 %47, i32 %50, i32 0)
  store i32 %51, i32* %6, align 4
  %52 = load i32, i32* %6, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %44
  br label %183

55:                                               ; preds = %44
  %56 = load %struct.zpci_ccdf_avail*, %struct.zpci_ccdf_avail** %2, align 8
  %57 = getelementptr inbounds %struct.zpci_ccdf_avail, %struct.zpci_ccdf_avail* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call %struct.zpci_dev* @get_zdev_by_fid(i32 %58)
  store %struct.zpci_dev* %59, %struct.zpci_dev** %3, align 8
  br label %60

60:                                               ; preds = %55, %41
  %61 = load %struct.zpci_dev*, %struct.zpci_dev** %3, align 8
  %62 = icmp ne %struct.zpci_dev* %61, null
  br i1 %62, label %63, label %69

63:                                               ; preds = %60
  %64 = load %struct.zpci_dev*, %struct.zpci_dev** %3, align 8
  %65 = getelementptr inbounds %struct.zpci_dev, %struct.zpci_dev* %64, i32 0, i32 0
  %66 = load i8*, i8** %65, align 8
  %67 = load i8*, i8** @ZPCI_FN_STATE_STANDBY, align 8
  %68 = icmp ne i8* %66, %67
  br i1 %68, label %69, label %70

69:                                               ; preds = %63, %60
  br label %183

70:                                               ; preds = %63
  %71 = load i8*, i8** @ZPCI_FN_STATE_CONFIGURED, align 8
  %72 = load %struct.zpci_dev*, %struct.zpci_dev** %3, align 8
  %73 = getelementptr inbounds %struct.zpci_dev, %struct.zpci_dev* %72, i32 0, i32 0
  store i8* %71, i8** %73, align 8
  %74 = load %struct.zpci_ccdf_avail*, %struct.zpci_ccdf_avail** %2, align 8
  %75 = getelementptr inbounds %struct.zpci_ccdf_avail, %struct.zpci_ccdf_avail* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.zpci_dev*, %struct.zpci_dev** %3, align 8
  %78 = getelementptr inbounds %struct.zpci_dev, %struct.zpci_dev* %77, i32 0, i32 1
  store i32 %76, i32* %78, align 8
  %79 = load %struct.zpci_dev*, %struct.zpci_dev** %3, align 8
  %80 = call i32 @zpci_enable_device(%struct.zpci_dev* %79)
  store i32 %80, i32* %6, align 4
  %81 = load i32, i32* %6, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %70
  br label %183

84:                                               ; preds = %70
  %85 = call i32 (...) @pci_lock_rescan_remove()
  %86 = load %struct.zpci_dev*, %struct.zpci_dev** %3, align 8
  %87 = getelementptr inbounds %struct.zpci_dev, %struct.zpci_dev* %86, i32 0, i32 3
  %88 = load i32, i32* %87, align 8
  %89 = call i32 @pci_rescan_bus(i32 %88)
  %90 = call i32 (...) @pci_unlock_rescan_remove()
  br label %183

91:                                               ; preds = %26
  %92 = load %struct.zpci_dev*, %struct.zpci_dev** %3, align 8
  %93 = icmp ne %struct.zpci_dev* %92, null
  br i1 %93, label %102, label %94

94:                                               ; preds = %91
  %95 = load %struct.zpci_ccdf_avail*, %struct.zpci_ccdf_avail** %2, align 8
  %96 = getelementptr inbounds %struct.zpci_ccdf_avail, %struct.zpci_ccdf_avail* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.zpci_ccdf_avail*, %struct.zpci_ccdf_avail** %2, align 8
  %99 = getelementptr inbounds %struct.zpci_ccdf_avail, %struct.zpci_ccdf_avail* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @clp_add_pci_device(i32 %97, i32 %100, i32 0)
  br label %102

102:                                              ; preds = %94, %91
  br label %183

103:                                              ; preds = %26
  %104 = load %struct.zpci_dev*, %struct.zpci_dev** %3, align 8
  %105 = icmp ne %struct.zpci_dev* %104, null
  br i1 %105, label %107, label %106

106:                                              ; preds = %103
  br label %183

107:                                              ; preds = %103
  %108 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %109 = icmp ne %struct.pci_dev* %108, null
  br i1 %109, label %110, label %113

110:                                              ; preds = %107
  %111 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %112 = call i32 @pci_stop_and_remove_bus_device_locked(%struct.pci_dev* %111)
  br label %113

113:                                              ; preds = %110, %107
  %114 = load %struct.zpci_dev*, %struct.zpci_dev** %3, align 8
  %115 = call i32 @zpci_disable_device(%struct.zpci_dev* %114)
  store i32 %115, i32* %6, align 4
  %116 = load i32, i32* %6, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %119

118:                                              ; preds = %113
  br label %183

119:                                              ; preds = %113
  %120 = load %struct.zpci_dev*, %struct.zpci_dev** %3, align 8
  %121 = getelementptr inbounds %struct.zpci_dev, %struct.zpci_dev* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 4
  %123 = call i32 @sclp_pci_deconfigure(i32 %122)
  store i32 %123, i32* %6, align 4
  %124 = load %struct.zpci_dev*, %struct.zpci_dev** %3, align 8
  %125 = getelementptr inbounds %struct.zpci_dev, %struct.zpci_dev* %124, i32 0, i32 2
  %126 = load i32, i32* %125, align 4
  %127 = load i32, i32* %6, align 4
  %128 = call i32 @zpci_dbg(i32 3, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i32 %126, i32 %127)
  %129 = load i32, i32* %6, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %135, label %131

131:                                              ; preds = %119
  %132 = load i8*, i8** @ZPCI_FN_STATE_STANDBY, align 8
  %133 = load %struct.zpci_dev*, %struct.zpci_dev** %3, align 8
  %134 = getelementptr inbounds %struct.zpci_dev, %struct.zpci_dev* %133, i32 0, i32 0
  store i8* %132, i8** %134, align 8
  br label %135

135:                                              ; preds = %131, %119
  br label %183

136:                                              ; preds = %26
  %137 = load %struct.zpci_dev*, %struct.zpci_dev** %3, align 8
  %138 = icmp ne %struct.zpci_dev* %137, null
  br i1 %138, label %140, label %139

139:                                              ; preds = %136
  br label %183

140:                                              ; preds = %136
  %141 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %142 = icmp ne %struct.pci_dev* %141, null
  br i1 %142, label %143, label %149

143:                                              ; preds = %140
  %144 = load i32, i32* @pci_channel_io_perm_failure, align 4
  %145 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %146 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %145, i32 0, i32 0
  store i32 %144, i32* %146, align 4
  %147 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %148 = call i32 @pci_stop_and_remove_bus_device_locked(%struct.pci_dev* %147)
  br label %149

149:                                              ; preds = %143, %140
  %150 = load %struct.zpci_ccdf_avail*, %struct.zpci_ccdf_avail** %2, align 8
  %151 = getelementptr inbounds %struct.zpci_ccdf_avail, %struct.zpci_ccdf_avail* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 4
  %153 = load %struct.zpci_dev*, %struct.zpci_dev** %3, align 8
  %154 = getelementptr inbounds %struct.zpci_dev, %struct.zpci_dev* %153, i32 0, i32 1
  store i32 %152, i32* %154, align 8
  %155 = load %struct.zpci_dev*, %struct.zpci_dev** %3, align 8
  %156 = call i32 @zpci_disable_device(%struct.zpci_dev* %155)
  %157 = load i8*, i8** @ZPCI_FN_STATE_STANDBY, align 8
  %158 = load %struct.zpci_dev*, %struct.zpci_dev** %3, align 8
  %159 = getelementptr inbounds %struct.zpci_dev, %struct.zpci_dev* %158, i32 0, i32 0
  store i8* %157, i8** %159, align 8
  %160 = load %struct.zpci_ccdf_avail*, %struct.zpci_ccdf_avail** %2, align 8
  %161 = getelementptr inbounds %struct.zpci_ccdf_avail, %struct.zpci_ccdf_avail* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 4
  %163 = call i32 @clp_get_state(i32 %162, i32* %5)
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %172, label %165

165:                                              ; preds = %149
  %166 = load i32, i32* %5, align 4
  %167 = load i32, i32* @ZPCI_FN_STATE_RESERVED, align 4
  %168 = icmp eq i32 %166, %167
  br i1 %168, label %169, label %172

169:                                              ; preds = %165
  %170 = load %struct.zpci_dev*, %struct.zpci_dev** %3, align 8
  %171 = call i32 @zpci_remove_device(%struct.zpci_dev* %170)
  br label %172

172:                                              ; preds = %169, %165, %149
  br label %183

173:                                              ; preds = %26
  %174 = call i32 (...) @clp_rescan_pci_devices()
  br label %183

175:                                              ; preds = %26
  %176 = load %struct.zpci_dev*, %struct.zpci_dev** %3, align 8
  %177 = icmp ne %struct.zpci_dev* %176, null
  br i1 %177, label %179, label %178

178:                                              ; preds = %175
  br label %183

179:                                              ; preds = %175
  %180 = load %struct.zpci_dev*, %struct.zpci_dev** %3, align 8
  %181 = call i32 @zpci_remove_device(%struct.zpci_dev* %180)
  br label %183

182:                                              ; preds = %26
  br label %183

183:                                              ; preds = %182, %179, %178, %173, %172, %139, %135, %118, %106, %102, %84, %83, %69, %54
  %184 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %185 = call i32 @pci_dev_put(%struct.pci_dev* %184)
  ret void
}

declare dso_local %struct.zpci_dev* @get_zdev_by_fid(i32) #1

declare dso_local %struct.pci_dev* @pci_get_slot(i32, i32) #1

declare dso_local i32 @pr_info(i8*, i8*, i32, i32) #1

declare dso_local i8* @pci_name(%struct.pci_dev*) #1

declare dso_local i32 @zpci_err(i8*) #1

declare dso_local i32 @zpci_err_hex(%struct.zpci_ccdf_avail*, i32) #1

declare dso_local i32 @clp_add_pci_device(i32, i32, i32) #1

declare dso_local i32 @zpci_enable_device(%struct.zpci_dev*) #1

declare dso_local i32 @pci_lock_rescan_remove(...) #1

declare dso_local i32 @pci_rescan_bus(i32) #1

declare dso_local i32 @pci_unlock_rescan_remove(...) #1

declare dso_local i32 @pci_stop_and_remove_bus_device_locked(%struct.pci_dev*) #1

declare dso_local i32 @zpci_disable_device(%struct.zpci_dev*) #1

declare dso_local i32 @sclp_pci_deconfigure(i32) #1

declare dso_local i32 @zpci_dbg(i32, i8*, i32, i32) #1

declare dso_local i32 @clp_get_state(i32, i32*) #1

declare dso_local i32 @zpci_remove_device(%struct.zpci_dev*) #1

declare dso_local i32 @clp_rescan_pci_devices(...) #1

declare dso_local i32 @pci_dev_put(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
