; ModuleID = '/home/carl/AnghaBench/kphp-kdb/mc-proxy/extr_mc-proxy.c_rotate_target.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/mc-proxy/extr_mc-proxy.c_rotate_target.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.conn_target = type { %struct.connection*, %struct.connection* }
%struct.connection = type { %struct.connection*, %struct.connection* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.conn_target*, %struct.connection*)* @rotate_target to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rotate_target(%struct.conn_target* %0, %struct.connection* %1) #0 {
  %3 = alloca %struct.conn_target*, align 8
  %4 = alloca %struct.connection*, align 8
  store %struct.conn_target* %0, %struct.conn_target** %3, align 8
  store %struct.connection* %1, %struct.connection** %4, align 8
  %5 = load %struct.conn_target*, %struct.conn_target** %3, align 8
  %6 = getelementptr inbounds %struct.conn_target, %struct.conn_target* %5, i32 0, i32 1
  %7 = load %struct.connection*, %struct.connection** %6, align 8
  %8 = load %struct.conn_target*, %struct.conn_target** %3, align 8
  %9 = getelementptr inbounds %struct.conn_target, %struct.conn_target* %8, i32 0, i32 0
  %10 = load %struct.connection*, %struct.connection** %9, align 8
  %11 = getelementptr inbounds %struct.connection, %struct.connection* %10, i32 0, i32 0
  store %struct.connection* %7, %struct.connection** %11, align 8
  %12 = load %struct.conn_target*, %struct.conn_target** %3, align 8
  %13 = getelementptr inbounds %struct.conn_target, %struct.conn_target* %12, i32 0, i32 0
  %14 = load %struct.connection*, %struct.connection** %13, align 8
  %15 = load %struct.conn_target*, %struct.conn_target** %3, align 8
  %16 = getelementptr inbounds %struct.conn_target, %struct.conn_target* %15, i32 0, i32 1
  %17 = load %struct.connection*, %struct.connection** %16, align 8
  %18 = getelementptr inbounds %struct.connection, %struct.connection* %17, i32 0, i32 1
  store %struct.connection* %14, %struct.connection** %18, align 8
  %19 = load %struct.connection*, %struct.connection** %4, align 8
  %20 = getelementptr inbounds %struct.connection, %struct.connection* %19, i32 0, i32 0
  %21 = load %struct.connection*, %struct.connection** %20, align 8
  %22 = load %struct.conn_target*, %struct.conn_target** %3, align 8
  %23 = getelementptr inbounds %struct.conn_target, %struct.conn_target* %22, i32 0, i32 1
  store %struct.connection* %21, %struct.connection** %23, align 8
  %24 = load %struct.connection*, %struct.connection** %4, align 8
  %25 = load %struct.conn_target*, %struct.conn_target** %3, align 8
  %26 = getelementptr inbounds %struct.conn_target, %struct.conn_target* %25, i32 0, i32 0
  store %struct.connection* %24, %struct.connection** %26, align 8
  %27 = load %struct.conn_target*, %struct.conn_target** %3, align 8
  %28 = bitcast %struct.conn_target* %27 to %struct.connection*
  %29 = load %struct.conn_target*, %struct.conn_target** %3, align 8
  %30 = getelementptr inbounds %struct.conn_target, %struct.conn_target* %29, i32 0, i32 0
  %31 = load %struct.connection*, %struct.connection** %30, align 8
  %32 = getelementptr inbounds %struct.connection, %struct.connection* %31, i32 0, i32 0
  store %struct.connection* %28, %struct.connection** %32, align 8
  %33 = load %struct.conn_target*, %struct.conn_target** %3, align 8
  %34 = getelementptr inbounds %struct.conn_target, %struct.conn_target* %33, i32 0, i32 1
  %35 = load %struct.connection*, %struct.connection** %34, align 8
  %36 = getelementptr inbounds %struct.connection, %struct.connection* %35, i32 0, i32 1
  store %struct.connection* %28, %struct.connection** %36, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
