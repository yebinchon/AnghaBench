; ModuleID = '/home/carl/AnghaBench/libevent/extr_evdns.c_nameserver_ready_callback.c'
source_filename = "/home/carl/AnghaBench/libevent/extr_evdns.c_nameserver_ready_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nameserver = type { i32, i64 }

@EV_WRITE = common dso_local global i16 0, align 2
@EV_READ = common dso_local global i16 0, align 2
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i16, i8*)* @nameserver_ready_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nameserver_ready_callback(i32 %0, i16 signext %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i16, align 2
  %6 = alloca i8*, align 8
  %7 = alloca %struct.nameserver*, align 8
  store i32 %0, i32* %4, align 4
  store i16 %1, i16* %5, align 2
  store i8* %2, i8** %6, align 8
  %8 = load i8*, i8** %6, align 8
  %9 = bitcast i8* %8 to %struct.nameserver*
  store %struct.nameserver* %9, %struct.nameserver** %7, align 8
  %10 = load i32, i32* %4, align 4
  %11 = load %struct.nameserver*, %struct.nameserver** %7, align 8
  %12 = getelementptr inbounds %struct.nameserver, %struct.nameserver* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @EVDNS_LOCK(i32 %13)
  %15 = load i16, i16* %5, align 2
  %16 = sext i16 %15 to i32
  %17 = load i16, i16* @EV_WRITE, align 2
  %18 = sext i16 %17 to i32
  %19 = and i32 %16, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %33

21:                                               ; preds = %3
  %22 = load %struct.nameserver*, %struct.nameserver** %7, align 8
  %23 = getelementptr inbounds %struct.nameserver, %struct.nameserver* %22, i32 0, i32 1
  store i64 0, i64* %23, align 8
  %24 = load %struct.nameserver*, %struct.nameserver** %7, align 8
  %25 = getelementptr inbounds %struct.nameserver, %struct.nameserver* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @evdns_transmit(i32 %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %21
  %30 = load %struct.nameserver*, %struct.nameserver** %7, align 8
  %31 = call i32 @nameserver_write_waiting(%struct.nameserver* %30, i32 0)
  br label %32

32:                                               ; preds = %29, %21
  br label %33

33:                                               ; preds = %32, %3
  %34 = load i16, i16* %5, align 2
  %35 = sext i16 %34 to i32
  %36 = load i16, i16* @EV_READ, align 2
  %37 = sext i16 %36 to i32
  %38 = and i32 %35, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %33
  %41 = load %struct.nameserver*, %struct.nameserver** %7, align 8
  %42 = call i32 @nameserver_read(%struct.nameserver* %41)
  br label %43

43:                                               ; preds = %40, %33
  %44 = load %struct.nameserver*, %struct.nameserver** %7, align 8
  %45 = getelementptr inbounds %struct.nameserver, %struct.nameserver* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @EVDNS_UNLOCK(i32 %46)
  ret void
}

declare dso_local i32 @EVDNS_LOCK(i32) #1

declare dso_local i32 @evdns_transmit(i32) #1

declare dso_local i32 @nameserver_write_waiting(%struct.nameserver*, i32) #1

declare dso_local i32 @nameserver_read(%struct.nameserver*) #1

declare dso_local i32 @EVDNS_UNLOCK(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
