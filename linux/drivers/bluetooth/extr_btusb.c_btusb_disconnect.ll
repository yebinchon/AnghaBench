; ModuleID = '/home/carl/AnghaBench/linux/drivers/bluetooth/extr_btusb.c_btusb_disconnect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bluetooth/extr_btusb.c_btusb_disconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_interface = type { i32 }
%struct.btusb_data = type { i64, %struct.TYPE_2__*, i64, %struct.usb_interface*, %struct.usb_interface*, %struct.usb_interface*, %struct.hci_dev* }
%struct.TYPE_2__ = type { i32 }
%struct.hci_dev = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"intf %p\00", align 1
@btusb_driver = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_interface*)* @btusb_disconnect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @btusb_disconnect(%struct.usb_interface* %0) #0 {
  %2 = alloca %struct.usb_interface*, align 8
  %3 = alloca %struct.btusb_data*, align 8
  %4 = alloca %struct.hci_dev*, align 8
  store %struct.usb_interface* %0, %struct.usb_interface** %2, align 8
  %5 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %6 = call %struct.btusb_data* @usb_get_intfdata(%struct.usb_interface* %5)
  store %struct.btusb_data* %6, %struct.btusb_data** %3, align 8
  %7 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %8 = call i32 @BT_DBG(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), %struct.usb_interface* %7)
  %9 = load %struct.btusb_data*, %struct.btusb_data** %3, align 8
  %10 = icmp ne %struct.btusb_data* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  br label %136

12:                                               ; preds = %1
  %13 = load %struct.btusb_data*, %struct.btusb_data** %3, align 8
  %14 = getelementptr inbounds %struct.btusb_data, %struct.btusb_data* %13, i32 0, i32 6
  %15 = load %struct.hci_dev*, %struct.hci_dev** %14, align 8
  store %struct.hci_dev* %15, %struct.hci_dev** %4, align 8
  %16 = load %struct.btusb_data*, %struct.btusb_data** %3, align 8
  %17 = getelementptr inbounds %struct.btusb_data, %struct.btusb_data* %16, i32 0, i32 4
  %18 = load %struct.usb_interface*, %struct.usb_interface** %17, align 8
  %19 = call i32 @usb_set_intfdata(%struct.usb_interface* %18, i32* null)
  %20 = load %struct.btusb_data*, %struct.btusb_data** %3, align 8
  %21 = getelementptr inbounds %struct.btusb_data, %struct.btusb_data* %20, i32 0, i32 3
  %22 = load %struct.usb_interface*, %struct.usb_interface** %21, align 8
  %23 = icmp ne %struct.usb_interface* %22, null
  br i1 %23, label %24, label %29

24:                                               ; preds = %12
  %25 = load %struct.btusb_data*, %struct.btusb_data** %3, align 8
  %26 = getelementptr inbounds %struct.btusb_data, %struct.btusb_data* %25, i32 0, i32 3
  %27 = load %struct.usb_interface*, %struct.usb_interface** %26, align 8
  %28 = call i32 @usb_set_intfdata(%struct.usb_interface* %27, i32* null)
  br label %29

29:                                               ; preds = %24, %12
  %30 = load %struct.btusb_data*, %struct.btusb_data** %3, align 8
  %31 = getelementptr inbounds %struct.btusb_data, %struct.btusb_data* %30, i32 0, i32 5
  %32 = load %struct.usb_interface*, %struct.usb_interface** %31, align 8
  %33 = icmp ne %struct.usb_interface* %32, null
  br i1 %33, label %34, label %39

34:                                               ; preds = %29
  %35 = load %struct.btusb_data*, %struct.btusb_data** %3, align 8
  %36 = getelementptr inbounds %struct.btusb_data, %struct.btusb_data* %35, i32 0, i32 5
  %37 = load %struct.usb_interface*, %struct.usb_interface** %36, align 8
  %38 = call i32 @usb_set_intfdata(%struct.usb_interface* %37, i32* null)
  br label %39

39:                                               ; preds = %34, %29
  %40 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %41 = call i32 @hci_unregister_dev(%struct.hci_dev* %40)
  %42 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %43 = load %struct.btusb_data*, %struct.btusb_data** %3, align 8
  %44 = getelementptr inbounds %struct.btusb_data, %struct.btusb_data* %43, i32 0, i32 4
  %45 = load %struct.usb_interface*, %struct.usb_interface** %44, align 8
  %46 = icmp eq %struct.usb_interface* %42, %45
  br i1 %46, label %47, label %68

47:                                               ; preds = %39
  %48 = load %struct.btusb_data*, %struct.btusb_data** %3, align 8
  %49 = getelementptr inbounds %struct.btusb_data, %struct.btusb_data* %48, i32 0, i32 3
  %50 = load %struct.usb_interface*, %struct.usb_interface** %49, align 8
  %51 = icmp ne %struct.usb_interface* %50, null
  br i1 %51, label %52, label %57

52:                                               ; preds = %47
  %53 = load %struct.btusb_data*, %struct.btusb_data** %3, align 8
  %54 = getelementptr inbounds %struct.btusb_data, %struct.btusb_data* %53, i32 0, i32 3
  %55 = load %struct.usb_interface*, %struct.usb_interface** %54, align 8
  %56 = call i32 @usb_driver_release_interface(i32* @btusb_driver, %struct.usb_interface* %55)
  br label %57

57:                                               ; preds = %52, %47
  %58 = load %struct.btusb_data*, %struct.btusb_data** %3, align 8
  %59 = getelementptr inbounds %struct.btusb_data, %struct.btusb_data* %58, i32 0, i32 5
  %60 = load %struct.usb_interface*, %struct.usb_interface** %59, align 8
  %61 = icmp ne %struct.usb_interface* %60, null
  br i1 %61, label %62, label %67

62:                                               ; preds = %57
  %63 = load %struct.btusb_data*, %struct.btusb_data** %3, align 8
  %64 = getelementptr inbounds %struct.btusb_data, %struct.btusb_data* %63, i32 0, i32 5
  %65 = load %struct.usb_interface*, %struct.usb_interface** %64, align 8
  %66 = call i32 @usb_driver_release_interface(i32* @btusb_driver, %struct.usb_interface* %65)
  br label %67

67:                                               ; preds = %62, %57
  br label %112

68:                                               ; preds = %39
  %69 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %70 = load %struct.btusb_data*, %struct.btusb_data** %3, align 8
  %71 = getelementptr inbounds %struct.btusb_data, %struct.btusb_data* %70, i32 0, i32 3
  %72 = load %struct.usb_interface*, %struct.usb_interface** %71, align 8
  %73 = icmp eq %struct.usb_interface* %69, %72
  br i1 %73, label %74, label %89

74:                                               ; preds = %68
  %75 = load %struct.btusb_data*, %struct.btusb_data** %3, align 8
  %76 = getelementptr inbounds %struct.btusb_data, %struct.btusb_data* %75, i32 0, i32 5
  %77 = load %struct.usb_interface*, %struct.usb_interface** %76, align 8
  %78 = icmp ne %struct.usb_interface* %77, null
  br i1 %78, label %79, label %84

79:                                               ; preds = %74
  %80 = load %struct.btusb_data*, %struct.btusb_data** %3, align 8
  %81 = getelementptr inbounds %struct.btusb_data, %struct.btusb_data* %80, i32 0, i32 5
  %82 = load %struct.usb_interface*, %struct.usb_interface** %81, align 8
  %83 = call i32 @usb_driver_release_interface(i32* @btusb_driver, %struct.usb_interface* %82)
  br label %84

84:                                               ; preds = %79, %74
  %85 = load %struct.btusb_data*, %struct.btusb_data** %3, align 8
  %86 = getelementptr inbounds %struct.btusb_data, %struct.btusb_data* %85, i32 0, i32 4
  %87 = load %struct.usb_interface*, %struct.usb_interface** %86, align 8
  %88 = call i32 @usb_driver_release_interface(i32* @btusb_driver, %struct.usb_interface* %87)
  br label %111

89:                                               ; preds = %68
  %90 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %91 = load %struct.btusb_data*, %struct.btusb_data** %3, align 8
  %92 = getelementptr inbounds %struct.btusb_data, %struct.btusb_data* %91, i32 0, i32 5
  %93 = load %struct.usb_interface*, %struct.usb_interface** %92, align 8
  %94 = icmp eq %struct.usb_interface* %90, %93
  br i1 %94, label %95, label %110

95:                                               ; preds = %89
  %96 = load %struct.btusb_data*, %struct.btusb_data** %3, align 8
  %97 = getelementptr inbounds %struct.btusb_data, %struct.btusb_data* %96, i32 0, i32 4
  %98 = load %struct.usb_interface*, %struct.usb_interface** %97, align 8
  %99 = call i32 @usb_driver_release_interface(i32* @btusb_driver, %struct.usb_interface* %98)
  %100 = load %struct.btusb_data*, %struct.btusb_data** %3, align 8
  %101 = getelementptr inbounds %struct.btusb_data, %struct.btusb_data* %100, i32 0, i32 3
  %102 = load %struct.usb_interface*, %struct.usb_interface** %101, align 8
  %103 = icmp ne %struct.usb_interface* %102, null
  br i1 %103, label %104, label %109

104:                                              ; preds = %95
  %105 = load %struct.btusb_data*, %struct.btusb_data** %3, align 8
  %106 = getelementptr inbounds %struct.btusb_data, %struct.btusb_data* %105, i32 0, i32 3
  %107 = load %struct.usb_interface*, %struct.usb_interface** %106, align 8
  %108 = call i32 @usb_driver_release_interface(i32* @btusb_driver, %struct.usb_interface* %107)
  br label %109

109:                                              ; preds = %104, %95
  br label %110

110:                                              ; preds = %109, %89
  br label %111

111:                                              ; preds = %110, %84
  br label %112

112:                                              ; preds = %111, %67
  %113 = load %struct.btusb_data*, %struct.btusb_data** %3, align 8
  %114 = getelementptr inbounds %struct.btusb_data, %struct.btusb_data* %113, i32 0, i32 2
  %115 = load i64, i64* %114, align 8
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %123

117:                                              ; preds = %112
  %118 = load %struct.btusb_data*, %struct.btusb_data** %3, align 8
  %119 = getelementptr inbounds %struct.btusb_data, %struct.btusb_data* %118, i32 0, i32 1
  %120 = load %struct.TYPE_2__*, %struct.TYPE_2__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %120, i32 0, i32 0
  %122 = call i32 @device_init_wakeup(i32* %121, i32 0)
  br label %123

123:                                              ; preds = %117, %112
  %124 = load %struct.btusb_data*, %struct.btusb_data** %3, align 8
  %125 = getelementptr inbounds %struct.btusb_data, %struct.btusb_data* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %133

128:                                              ; preds = %123
  %129 = load %struct.btusb_data*, %struct.btusb_data** %3, align 8
  %130 = getelementptr inbounds %struct.btusb_data, %struct.btusb_data* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = call i32 @gpiod_put(i64 %131)
  br label %133

133:                                              ; preds = %128, %123
  %134 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %135 = call i32 @hci_free_dev(%struct.hci_dev* %134)
  br label %136

136:                                              ; preds = %133, %11
  ret void
}

declare dso_local %struct.btusb_data* @usb_get_intfdata(%struct.usb_interface*) #1

declare dso_local i32 @BT_DBG(i8*, %struct.usb_interface*) #1

declare dso_local i32 @usb_set_intfdata(%struct.usb_interface*, i32*) #1

declare dso_local i32 @hci_unregister_dev(%struct.hci_dev*) #1

declare dso_local i32 @usb_driver_release_interface(i32*, %struct.usb_interface*) #1

declare dso_local i32 @device_init_wakeup(i32*, i32) #1

declare dso_local i32 @gpiod_put(i64) #1

declare dso_local i32 @hci_free_dev(%struct.hci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
