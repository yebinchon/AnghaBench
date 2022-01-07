; ModuleID = '/home/carl/AnghaBench/libevent/extr_evdns.c_nameserver_probe_callback.c'
source_filename = "/home/carl/AnghaBench/libevent/extr_evdns.c_nameserver_probe_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nameserver = type { i32, i32* }

@DNS_ERR_CANCEL = common dso_local global i32 0, align 4
@DNS_ERR_NONE = common dso_local global i32 0, align 4
@DNS_ERR_NOTEXIST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8, i32, i32, i8*, i8*)* @nameserver_probe_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nameserver_probe_callback(i32 %0, i8 signext %1, i32 %2, i32 %3, i8* %4, i8* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i8, align 1
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.nameserver*, align 8
  store i32 %0, i32* %7, align 4
  store i8 %1, i8* %8, align 1
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i8* %4, i8** %11, align 8
  store i8* %5, i8** %12, align 8
  %14 = load i8*, i8** %12, align 8
  %15 = bitcast i8* %14 to %struct.nameserver*
  store %struct.nameserver* %15, %struct.nameserver** %13, align 8
  %16 = load i8, i8* %8, align 1
  %17 = load i32, i32* %9, align 4
  %18 = load i32, i32* %10, align 4
  %19 = load i8*, i8** %11, align 8
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* @DNS_ERR_CANCEL, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %6
  br label %49

24:                                               ; preds = %6
  %25 = load %struct.nameserver*, %struct.nameserver** %13, align 8
  %26 = getelementptr inbounds %struct.nameserver, %struct.nameserver* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @EVDNS_LOCK(i32 %27)
  %29 = load %struct.nameserver*, %struct.nameserver** %13, align 8
  %30 = getelementptr inbounds %struct.nameserver, %struct.nameserver* %29, i32 0, i32 1
  store i32* null, i32** %30, align 8
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* @DNS_ERR_NONE, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %38, label %34

34:                                               ; preds = %24
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* @DNS_ERR_NOTEXIST, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %34, %24
  %39 = load %struct.nameserver*, %struct.nameserver** %13, align 8
  %40 = call i32 @nameserver_up(%struct.nameserver* %39)
  br label %44

41:                                               ; preds = %34
  %42 = load %struct.nameserver*, %struct.nameserver** %13, align 8
  %43 = call i32 @nameserver_probe_failed(%struct.nameserver* %42)
  br label %44

44:                                               ; preds = %41, %38
  %45 = load %struct.nameserver*, %struct.nameserver** %13, align 8
  %46 = getelementptr inbounds %struct.nameserver, %struct.nameserver* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @EVDNS_UNLOCK(i32 %47)
  br label %49

49:                                               ; preds = %44, %23
  ret void
}

declare dso_local i32 @EVDNS_LOCK(i32) #1

declare dso_local i32 @nameserver_up(%struct.nameserver*) #1

declare dso_local i32 @nameserver_probe_failed(%struct.nameserver*) #1

declare dso_local i32 @EVDNS_UNLOCK(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
