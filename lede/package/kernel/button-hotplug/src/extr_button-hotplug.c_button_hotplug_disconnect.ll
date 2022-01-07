; ModuleID = '/home/carl/AnghaBench/lede/package/kernel/button-hotplug/src/extr_button-hotplug.c_button_hotplug_disconnect.c'
source_filename = "/home/carl/AnghaBench/lede/package/kernel/button-hotplug/src/extr_button-hotplug.c_button_hotplug_disconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.input_handle = type { %struct.bh_priv* }
%struct.bh_priv = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.input_handle*)* @button_hotplug_disconnect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @button_hotplug_disconnect(%struct.input_handle* %0) #0 {
  %2 = alloca %struct.input_handle*, align 8
  %3 = alloca %struct.bh_priv*, align 8
  store %struct.input_handle* %0, %struct.input_handle** %2, align 8
  %4 = load %struct.input_handle*, %struct.input_handle** %2, align 8
  %5 = getelementptr inbounds %struct.input_handle, %struct.input_handle* %4, i32 0, i32 0
  %6 = load %struct.bh_priv*, %struct.bh_priv** %5, align 8
  store %struct.bh_priv* %6, %struct.bh_priv** %3, align 8
  %7 = load %struct.input_handle*, %struct.input_handle** %2, align 8
  %8 = call i32 @input_close_device(%struct.input_handle* %7)
  %9 = load %struct.input_handle*, %struct.input_handle** %2, align 8
  %10 = call i32 @input_unregister_handle(%struct.input_handle* %9)
  %11 = load %struct.bh_priv*, %struct.bh_priv** %3, align 8
  %12 = call i32 @kfree(%struct.bh_priv* %11)
  ret void
}

declare dso_local i32 @input_close_device(%struct.input_handle*) #1

declare dso_local i32 @input_unregister_handle(%struct.input_handle*) #1

declare dso_local i32 @kfree(%struct.bh_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
