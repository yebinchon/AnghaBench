; ModuleID = '/home/carl/AnghaBench/libuv/src/win/extr_core.c_uv_init.c'
source_filename = "/home/carl/AnghaBench/libuv/src/win/extr_core.c_uv_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SEM_FAILCRITICALERRORS = common dso_local global i32 0, align 4
@SEM_NOGPFAULTERRORBOX = common dso_local global i32 0, align 4
@SEM_NOOPENFILEERRORBOX = common dso_local global i32 0, align 4
@uv__crt_invalid_parameter_handler = common dso_local global i32 0, align 4
@uv__crt_dbg_report_handler = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @uv_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uv_init() #0 {
  %1 = load i32, i32* @SEM_FAILCRITICALERRORS, align 4
  %2 = load i32, i32* @SEM_NOGPFAULTERRORBOX, align 4
  %3 = or i32 %1, %2
  %4 = load i32, i32* @SEM_NOOPENFILEERRORBOX, align 4
  %5 = or i32 %3, %4
  %6 = call i32 @SetErrorMode(i32 %5)
  %7 = load i32, i32* @uv__crt_invalid_parameter_handler, align 4
  %8 = call i32 @_set_invalid_parameter_handler(i32 %7)
  %9 = call i32 (...) @uv__loops_init()
  %10 = call i32 (...) @uv_winapi_init()
  %11 = call i32 (...) @uv_winsock_init()
  %12 = call i32 (...) @uv_fs_init()
  %13 = call i32 (...) @uv_signals_init()
  %14 = call i32 (...) @uv_console_init()
  %15 = call i32 (...) @uv__util_init()
  %16 = call i32 (...) @uv__init_detect_system_wakeup()
  ret void
}

declare dso_local i32 @SetErrorMode(i32) #1

declare dso_local i32 @_set_invalid_parameter_handler(i32) #1

declare dso_local i32 @uv__loops_init(...) #1

declare dso_local i32 @uv_winapi_init(...) #1

declare dso_local i32 @uv_winsock_init(...) #1

declare dso_local i32 @uv_fs_init(...) #1

declare dso_local i32 @uv_signals_init(...) #1

declare dso_local i32 @uv_console_init(...) #1

declare dso_local i32 @uv__util_init(...) #1

declare dso_local i32 @uv__init_detect_system_wakeup(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
