; ModuleID = '/home/carl/AnghaBench/hashcat/src/extr_hashcat.c_hashcat_session_destroy.c'
source_filename = "/home/carl/AnghaBench/hashcat/src/extr_hashcat.c_hashcat_session_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_24__ = type { %struct.TYPE_23__* }
%struct.TYPE_23__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hashcat_session_destroy(%struct.TYPE_24__* %0) #0 {
  %2 = alloca %struct.TYPE_24__*, align 8
  store %struct.TYPE_24__* %0, %struct.TYPE_24__** %2, align 8
  %3 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %4 = call i32 @debugfile_destroy(%struct.TYPE_24__* %3)
  %5 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %6 = call i32 @dictstat_destroy(%struct.TYPE_24__* %5)
  %7 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %8 = call i32 @folder_config_destroy(%struct.TYPE_24__* %7)
  %9 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %10 = call i32 @hwmon_ctx_destroy(%struct.TYPE_24__* %9)
  %11 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %12 = call i32 @induct_ctx_destroy(%struct.TYPE_24__* %11)
  %13 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %14 = call i32 @logfile_destroy(%struct.TYPE_24__* %13)
  %15 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %16 = call i32 @loopback_destroy(%struct.TYPE_24__* %15)
  %17 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %18 = call i32 @backend_ctx_devices_destroy(%struct.TYPE_24__* %17)
  %19 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %20 = call i32 @backend_ctx_destroy(%struct.TYPE_24__* %19)
  %21 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %22 = call i32 @outcheck_ctx_destroy(%struct.TYPE_24__* %21)
  %23 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %24 = call i32 @outfile_destroy(%struct.TYPE_24__* %23)
  %25 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %26 = call i32 @pidfile_ctx_destroy(%struct.TYPE_24__* %25)
  %27 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %28 = call i32 @potfile_destroy(%struct.TYPE_24__* %27)
  %29 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %30 = call i32 @restore_ctx_destroy(%struct.TYPE_24__* %29)
  %31 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %32 = call i32 @tuning_db_destroy(%struct.TYPE_24__* %31)
  %33 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %34 = call i32 @user_options_destroy(%struct.TYPE_24__* %33)
  %35 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %36 = call i32 @user_options_extra_destroy(%struct.TYPE_24__* %35)
  %37 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %38 = call i32 @status_ctx_destroy(%struct.TYPE_24__* %37)
  %39 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %40 = call i32 @event_ctx_destroy(%struct.TYPE_24__* %39)
  ret i32 0
}

declare dso_local i32 @debugfile_destroy(%struct.TYPE_24__*) #1

declare dso_local i32 @dictstat_destroy(%struct.TYPE_24__*) #1

declare dso_local i32 @folder_config_destroy(%struct.TYPE_24__*) #1

declare dso_local i32 @hwmon_ctx_destroy(%struct.TYPE_24__*) #1

declare dso_local i32 @induct_ctx_destroy(%struct.TYPE_24__*) #1

declare dso_local i32 @logfile_destroy(%struct.TYPE_24__*) #1

declare dso_local i32 @loopback_destroy(%struct.TYPE_24__*) #1

declare dso_local i32 @backend_ctx_devices_destroy(%struct.TYPE_24__*) #1

declare dso_local i32 @backend_ctx_destroy(%struct.TYPE_24__*) #1

declare dso_local i32 @outcheck_ctx_destroy(%struct.TYPE_24__*) #1

declare dso_local i32 @outfile_destroy(%struct.TYPE_24__*) #1

declare dso_local i32 @pidfile_ctx_destroy(%struct.TYPE_24__*) #1

declare dso_local i32 @potfile_destroy(%struct.TYPE_24__*) #1

declare dso_local i32 @restore_ctx_destroy(%struct.TYPE_24__*) #1

declare dso_local i32 @tuning_db_destroy(%struct.TYPE_24__*) #1

declare dso_local i32 @user_options_destroy(%struct.TYPE_24__*) #1

declare dso_local i32 @user_options_extra_destroy(%struct.TYPE_24__*) #1

declare dso_local i32 @status_ctx_destroy(%struct.TYPE_24__*) #1

declare dso_local i32 @event_ctx_destroy(%struct.TYPE_24__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
