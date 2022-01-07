; ModuleID = '/home/carl/AnghaBench/i3/i3bar/src/extr_ipc.c_init_connection.c'
source_filename = "/home/carl/AnghaBench/i3/i3bar/src/extr_ipc.c_init_connection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@sock_path = common dso_local global i8* null, align 8
@i3_connection = common dso_local global i32 0, align 4
@got_data = common dso_local global i32 0, align 4
@EV_READ = common dso_local global i32 0, align 4
@main_loop = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @init_connection(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  store i8* %4, i8** @sock_path, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = call i32 @ipc_connect(i8* %5)
  store i32 %6, i32* %3, align 4
  %7 = call i32 @smalloc(i32 4)
  store i32 %7, i32* @i3_connection, align 4
  %8 = load i32, i32* @i3_connection, align 4
  %9 = load i32, i32* %3, align 4
  %10 = load i32, i32* @EV_READ, align 4
  %11 = call i32 @ev_io_init(i32 %8, i32* @got_data, i32 %9, i32 %10)
  %12 = load i32, i32* @main_loop, align 4
  %13 = load i32, i32* @i3_connection, align 4
  %14 = call i32 @ev_io_start(i32 %12, i32 %13)
  ret i32 1
}

declare dso_local i32 @ipc_connect(i8*) #1

declare dso_local i32 @smalloc(i32) #1

declare dso_local i32 @ev_io_init(i32, i32*, i32, i32) #1

declare dso_local i32 @ev_io_start(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
