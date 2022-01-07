; ModuleID = '/home/carl/AnghaBench/libevent/extr_evdns.c_evdns_getaddrinfo_fromhosts.c'
source_filename = "/home/carl/AnghaBench/libevent/extr_evdns.c_evdns_getaddrinfo_fromhosts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evdns_base = type { i32 }
%struct.evutil_addrinfo = type { i32, i32 }
%struct.hosts_entry = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }

@AF_INET = common dso_local global i64 0, align 8
@PF_INET6 = common dso_local global i32 0, align 4
@AF_INET6 = common dso_local global i64 0, align 8
@PF_INET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.evdns_base*, i8*, %struct.evutil_addrinfo*, i32, %struct.evutil_addrinfo**)* @evdns_getaddrinfo_fromhosts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @evdns_getaddrinfo_fromhosts(%struct.evdns_base* %0, i8* %1, %struct.evutil_addrinfo* %2, i32 %3, %struct.evutil_addrinfo** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.evdns_base*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.evutil_addrinfo*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.evutil_addrinfo**, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.hosts_entry*, align 8
  %14 = alloca %struct.evutil_addrinfo*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.evutil_addrinfo*, align 8
  store %struct.evdns_base* %0, %struct.evdns_base** %7, align 8
  store i8* %1, i8** %8, align 8
  store %struct.evutil_addrinfo* %2, %struct.evutil_addrinfo** %9, align 8
  store i32 %3, i32* %10, align 4
  store %struct.evutil_addrinfo** %4, %struct.evutil_addrinfo*** %11, align 8
  store i32 0, i32* %12, align 4
  store %struct.evutil_addrinfo* null, %struct.evutil_addrinfo** %14, align 8
  %17 = load %struct.evutil_addrinfo*, %struct.evutil_addrinfo** %9, align 8
  %18 = getelementptr inbounds %struct.evutil_addrinfo, %struct.evutil_addrinfo* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %15, align 4
  %20 = load %struct.evdns_base*, %struct.evdns_base** %7, align 8
  %21 = call i32 @EVDNS_LOCK(%struct.evdns_base* %20)
  %22 = load %struct.evdns_base*, %struct.evdns_base** %7, align 8
  %23 = load i8*, i8** %8, align 8
  %24 = call %struct.hosts_entry* @find_hosts_entry(%struct.evdns_base* %22, i8* %23, %struct.hosts_entry* null)
  store %struct.hosts_entry* %24, %struct.hosts_entry** %13, align 8
  br label %25

25:                                               ; preds = %76, %5
  %26 = load %struct.hosts_entry*, %struct.hosts_entry** %13, align 8
  %27 = icmp ne %struct.hosts_entry* %26, null
  br i1 %27, label %28, label %81

28:                                               ; preds = %25
  %29 = load i32, i32* %12, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %12, align 4
  %31 = load %struct.hosts_entry*, %struct.hosts_entry** %13, align 8
  %32 = getelementptr inbounds %struct.hosts_entry, %struct.hosts_entry* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @AF_INET, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %42

38:                                               ; preds = %28
  %39 = load i32, i32* %15, align 4
  %40 = load i32, i32* @PF_INET6, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %54, label %42

42:                                               ; preds = %38, %28
  %43 = load %struct.hosts_entry*, %struct.hosts_entry** %13, align 8
  %44 = getelementptr inbounds %struct.hosts_entry, %struct.hosts_entry* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @AF_INET6, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %55

50:                                               ; preds = %42
  %51 = load i32, i32* %15, align 4
  %52 = load i32, i32* @PF_INET, align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %50, %38
  br label %76

55:                                               ; preds = %50, %42
  %56 = load %struct.hosts_entry*, %struct.hosts_entry** %13, align 8
  %57 = getelementptr inbounds %struct.hosts_entry, %struct.hosts_entry* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 0
  %59 = load %struct.hosts_entry*, %struct.hosts_entry** %13, align 8
  %60 = getelementptr inbounds %struct.hosts_entry, %struct.hosts_entry* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.evutil_addrinfo*, %struct.evutil_addrinfo** %9, align 8
  %63 = call %struct.evutil_addrinfo* @evutil_new_addrinfo_(%struct.TYPE_4__* %58, i32 %61, %struct.evutil_addrinfo* %62)
  store %struct.evutil_addrinfo* %63, %struct.evutil_addrinfo** %16, align 8
  %64 = load %struct.evutil_addrinfo*, %struct.evutil_addrinfo** %16, align 8
  %65 = icmp ne %struct.evutil_addrinfo* %64, null
  br i1 %65, label %67, label %66

66:                                               ; preds = %55
  store i32 0, i32* %12, align 4
  br label %84

67:                                               ; preds = %55
  %68 = load %struct.evutil_addrinfo*, %struct.evutil_addrinfo** %16, align 8
  %69 = getelementptr inbounds %struct.evutil_addrinfo, %struct.evutil_addrinfo* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* %10, align 4
  %72 = call i32 @sockaddr_setport(i32 %70, i32 %71)
  %73 = load %struct.evutil_addrinfo*, %struct.evutil_addrinfo** %14, align 8
  %74 = load %struct.evutil_addrinfo*, %struct.evutil_addrinfo** %16, align 8
  %75 = call %struct.evutil_addrinfo* @evutil_addrinfo_append_(%struct.evutil_addrinfo* %73, %struct.evutil_addrinfo* %74)
  store %struct.evutil_addrinfo* %75, %struct.evutil_addrinfo** %14, align 8
  br label %76

76:                                               ; preds = %67, %54
  %77 = load %struct.evdns_base*, %struct.evdns_base** %7, align 8
  %78 = load i8*, i8** %8, align 8
  %79 = load %struct.hosts_entry*, %struct.hosts_entry** %13, align 8
  %80 = call %struct.hosts_entry* @find_hosts_entry(%struct.evdns_base* %77, i8* %78, %struct.hosts_entry* %79)
  store %struct.hosts_entry* %80, %struct.hosts_entry** %13, align 8
  br label %25

81:                                               ; preds = %25
  %82 = load %struct.evdns_base*, %struct.evdns_base** %7, align 8
  %83 = call i32 @EVDNS_UNLOCK(%struct.evdns_base* %82)
  br label %84

84:                                               ; preds = %81, %66
  %85 = load i32, i32* %12, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %84
  %88 = load %struct.evutil_addrinfo*, %struct.evutil_addrinfo** %14, align 8
  %89 = load %struct.evutil_addrinfo**, %struct.evutil_addrinfo*** %11, align 8
  store %struct.evutil_addrinfo* %88, %struct.evutil_addrinfo** %89, align 8
  store i32 0, i32* %6, align 4
  br label %97

90:                                               ; preds = %84
  %91 = load %struct.evutil_addrinfo*, %struct.evutil_addrinfo** %14, align 8
  %92 = icmp ne %struct.evutil_addrinfo* %91, null
  br i1 %92, label %93, label %96

93:                                               ; preds = %90
  %94 = load %struct.evutil_addrinfo*, %struct.evutil_addrinfo** %14, align 8
  %95 = call i32 @evutil_freeaddrinfo(%struct.evutil_addrinfo* %94)
  br label %96

96:                                               ; preds = %93, %90
  store i32 -1, i32* %6, align 4
  br label %97

97:                                               ; preds = %96, %87
  %98 = load i32, i32* %6, align 4
  ret i32 %98
}

declare dso_local i32 @EVDNS_LOCK(%struct.evdns_base*) #1

declare dso_local %struct.hosts_entry* @find_hosts_entry(%struct.evdns_base*, i8*, %struct.hosts_entry*) #1

declare dso_local %struct.evutil_addrinfo* @evutil_new_addrinfo_(%struct.TYPE_4__*, i32, %struct.evutil_addrinfo*) #1

declare dso_local i32 @sockaddr_setport(i32, i32) #1

declare dso_local %struct.evutil_addrinfo* @evutil_addrinfo_append_(%struct.evutil_addrinfo*, %struct.evutil_addrinfo*) #1

declare dso_local i32 @EVDNS_UNLOCK(%struct.evdns_base*) #1

declare dso_local i32 @evutil_freeaddrinfo(%struct.evutil_addrinfo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
