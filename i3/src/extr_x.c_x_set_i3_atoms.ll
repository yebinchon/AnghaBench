; ModuleID = '/home/carl/AnghaBench/i3/src/extr_x.c_x_set_i3_atoms.c'
source_filename = "/home/carl/AnghaBench/i3/src/extr_x.c_x_set_i3_atoms.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@conn = common dso_local global i32 0, align 4
@XCB_PROP_MODE_REPLACE = common dso_local global i32 0, align 4
@root = common dso_local global i32 0, align 4
@A_I3_SOCKET_PATH = common dso_local global i32 0, align 4
@A_UTF8_STRING = common dso_local global i32 0, align 4
@current_socketpath = common dso_local global i32* null, align 8
@A_I3_PID = common dso_local global i32 0, align 4
@XCB_ATOM_CARDINAL = common dso_local global i32 0, align 4
@A_I3_CONFIG_PATH = common dso_local global i32 0, align 4
@current_configpath = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @x_set_i3_atoms() #0 {
  %1 = alloca i32, align 4
  %2 = call i32 (...) @getpid()
  store i32 %2, i32* %1, align 4
  %3 = load i32, i32* @conn, align 4
  %4 = load i32, i32* @XCB_PROP_MODE_REPLACE, align 4
  %5 = load i32, i32* @root, align 4
  %6 = load i32, i32* @A_I3_SOCKET_PATH, align 4
  %7 = load i32, i32* @A_UTF8_STRING, align 4
  %8 = load i32*, i32** @current_socketpath, align 8
  %9 = icmp eq i32* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %0
  br label %14

11:                                               ; preds = %0
  %12 = load i32*, i32** @current_socketpath, align 8
  %13 = call i32 @strlen(i32* %12)
  br label %14

14:                                               ; preds = %11, %10
  %15 = phi i32 [ 0, %10 ], [ %13, %11 ]
  %16 = load i32*, i32** @current_socketpath, align 8
  %17 = call i32 @xcb_change_property(i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 8, i32 %15, i32* %16)
  %18 = load i32, i32* @conn, align 4
  %19 = load i32, i32* @XCB_PROP_MODE_REPLACE, align 4
  %20 = load i32, i32* @root, align 4
  %21 = load i32, i32* @A_I3_PID, align 4
  %22 = load i32, i32* @XCB_ATOM_CARDINAL, align 4
  %23 = call i32 @xcb_change_property(i32 %18, i32 %19, i32 %20, i32 %21, i32 %22, i32 32, i32 1, i32* %1)
  %24 = load i32, i32* @conn, align 4
  %25 = load i32, i32* @XCB_PROP_MODE_REPLACE, align 4
  %26 = load i32, i32* @root, align 4
  %27 = load i32, i32* @A_I3_CONFIG_PATH, align 4
  %28 = load i32, i32* @A_UTF8_STRING, align 4
  %29 = load i32*, i32** @current_configpath, align 8
  %30 = call i32 @strlen(i32* %29)
  %31 = load i32*, i32** @current_configpath, align 8
  %32 = call i32 @xcb_change_property(i32 %24, i32 %25, i32 %26, i32 %27, i32 %28, i32 8, i32 %30, i32* %31)
  %33 = call i32 (...) @update_shmlog_atom()
  ret void
}

declare dso_local i32 @getpid(...) #1

declare dso_local i32 @xcb_change_property(i32, i32, i32, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @strlen(i32*) #1

declare dso_local i32 @update_shmlog_atom(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
