; ModuleID = '/home/carl/AnghaBench/libuv/samples/socks5-proxy/extr_main.c_main.c'
source_filename = "/home/carl/AnghaBench/libuv/samples/socks5-proxy/extr_main.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32 }

@progname = common dso_local global i8* null, align 8
@DEFAULT_BIND_HOST = common dso_local global i32 0, align 4
@DEFAULT_BIND_PORT = common dso_local global i32 0, align 4
@DEFAULT_IDLE_TIMEOUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.TYPE_5__, align 4
  %7 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %8 = load i8**, i8*** %5, align 8
  %9 = getelementptr inbounds i8*, i8** %8, i64 0
  %10 = load i8*, i8** %9, align 8
  store i8* %10, i8** @progname, align 8
  %11 = call i32 @memset(%struct.TYPE_5__* %6, i32 0, i32 12)
  %12 = load i32, i32* @DEFAULT_BIND_HOST, align 4
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 2
  store i32 %12, i32* %13, align 4
  %14 = load i32, i32* @DEFAULT_BIND_PORT, align 4
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 1
  store i32 %14, i32* %15, align 4
  %16 = load i32, i32* @DEFAULT_IDLE_TIMEOUT, align 4
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  store i32 %16, i32* %17, align 4
  %18 = load i32, i32* %4, align 4
  %19 = load i8**, i8*** %5, align 8
  %20 = call i32 @parse_opts(%struct.TYPE_5__* %6, i32 %18, i8** %19)
  %21 = call i32 (...) @uv_default_loop()
  %22 = call i32 @server_run(%struct.TYPE_5__* %6, i32 %21)
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* %7, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %2
  %26 = call i32 @exit(i32 1) #3
  unreachable

27:                                               ; preds = %2
  ret i32 0
}

declare dso_local i32 @memset(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i32 @parse_opts(%struct.TYPE_5__*, i32, i8**) #1

declare dso_local i32 @server_run(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @uv_default_loop(...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
