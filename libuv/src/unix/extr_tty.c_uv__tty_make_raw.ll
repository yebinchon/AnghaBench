; ModuleID = '/home/carl/AnghaBench/libuv/src/unix/extr_tty.c_uv__tty_make_raw.c'
source_filename = "/home/carl/AnghaBench/libuv/src/unix/extr_tty.c_uv__tty_make_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.termios = type { i32, i32, i32, i32 }

@BRKINT = common dso_local global i32 0, align 4
@CS8 = common dso_local global i32 0, align 4
@CSIZE = common dso_local global i32 0, align 4
@ECHO = common dso_local global i32 0, align 4
@ECHONL = common dso_local global i32 0, align 4
@ICANON = common dso_local global i32 0, align 4
@ICRNL = common dso_local global i32 0, align 4
@IEXTEN = common dso_local global i32 0, align 4
@IGNBRK = common dso_local global i32 0, align 4
@IGNCR = common dso_local global i32 0, align 4
@IMAXBEL = common dso_local global i32 0, align 4
@INLCR = common dso_local global i32 0, align 4
@ISIG = common dso_local global i32 0, align 4
@ISTRIP = common dso_local global i32 0, align 4
@IXON = common dso_local global i32 0, align 4
@OPOST = common dso_local global i32 0, align 4
@PARENB = common dso_local global i32 0, align 4
@PARMRK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.termios*)* @uv__tty_make_raw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uv__tty_make_raw(%struct.termios* %0) #0 {
  %2 = alloca %struct.termios*, align 8
  store %struct.termios* %0, %struct.termios** %2, align 8
  %3 = load %struct.termios*, %struct.termios** %2, align 8
  %4 = icmp ne %struct.termios* %3, null
  %5 = zext i1 %4 to i32
  %6 = call i32 @assert(i32 %5)
  %7 = load %struct.termios*, %struct.termios** %2, align 8
  %8 = call i32 @cfmakeraw(%struct.termios* %7)
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @cfmakeraw(%struct.termios*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
