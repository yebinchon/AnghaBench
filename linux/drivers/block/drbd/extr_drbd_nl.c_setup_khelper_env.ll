; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_nl.c_setup_khelper_env.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_nl.c_setup_khelper_env.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drbd_connection = type { i64, i64, i32 }
%struct.sockaddr = type { i32 }
%struct.sockaddr_in6 = type { i8 }
%struct.sockaddr_in = type { i8 }

@.str = private unnamed_addr constant [5 x i8] c"ipv6\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"DRBD_PEER_ADDRESS=%pI6\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"ipv4\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"DRBD_PEER_ADDRESS=%pI4\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"ssocks\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"DRBD_PEER_AF=%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drbd_connection*, i8**)* @setup_khelper_env to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setup_khelper_env(%struct.drbd_connection* %0, i8** %1) #0 {
  %3 = alloca %struct.drbd_connection*, align 8
  %4 = alloca i8**, align 8
  %5 = alloca i8*, align 8
  store %struct.drbd_connection* %0, %struct.drbd_connection** %3, align 8
  store i8** %1, i8*** %4, align 8
  %6 = load %struct.drbd_connection*, %struct.drbd_connection** %3, align 8
  %7 = getelementptr inbounds %struct.drbd_connection, %struct.drbd_connection* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %15, label %10

10:                                               ; preds = %2
  %11 = load %struct.drbd_connection*, %struct.drbd_connection** %3, align 8
  %12 = getelementptr inbounds %struct.drbd_connection, %struct.drbd_connection* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %10, %2
  br label %55

16:                                               ; preds = %10
  %17 = load %struct.drbd_connection*, %struct.drbd_connection** %3, align 8
  %18 = getelementptr inbounds %struct.drbd_connection, %struct.drbd_connection* %17, i32 0, i32 2
  %19 = bitcast i32* %18 to %struct.sockaddr*
  %20 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  switch i32 %21, label %40 [
    i32 128, label %22
    i32 129, label %31
  ]

22:                                               ; preds = %16
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8** %5, align 8
  %23 = load i8**, i8*** %4, align 8
  %24 = getelementptr inbounds i8*, i8** %23, i64 4
  %25 = load i8*, i8** %24, align 8
  %26 = load %struct.drbd_connection*, %struct.drbd_connection** %3, align 8
  %27 = getelementptr inbounds %struct.drbd_connection, %struct.drbd_connection* %26, i32 0, i32 2
  %28 = bitcast i32* %27 to %struct.sockaddr_in6*
  %29 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %28, i32 0, i32 0
  %30 = call i32 @snprintf(i8* %25, i32 60, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* %29)
  br label %49

31:                                               ; preds = %16
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8** %5, align 8
  %32 = load i8**, i8*** %4, align 8
  %33 = getelementptr inbounds i8*, i8** %32, i64 4
  %34 = load i8*, i8** %33, align 8
  %35 = load %struct.drbd_connection*, %struct.drbd_connection** %3, align 8
  %36 = getelementptr inbounds %struct.drbd_connection, %struct.drbd_connection* %35, i32 0, i32 2
  %37 = bitcast i32* %36 to %struct.sockaddr_in*
  %38 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %37, i32 0, i32 0
  %39 = call i32 @snprintf(i8* %34, i32 60, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i8* %38)
  br label %49

40:                                               ; preds = %16
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i8** %5, align 8
  %41 = load i8**, i8*** %4, align 8
  %42 = getelementptr inbounds i8*, i8** %41, i64 4
  %43 = load i8*, i8** %42, align 8
  %44 = load %struct.drbd_connection*, %struct.drbd_connection** %3, align 8
  %45 = getelementptr inbounds %struct.drbd_connection, %struct.drbd_connection* %44, i32 0, i32 2
  %46 = bitcast i32* %45 to %struct.sockaddr_in*
  %47 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %46, i32 0, i32 0
  %48 = call i32 @snprintf(i8* %43, i32 60, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i8* %47)
  br label %49

49:                                               ; preds = %40, %31, %22
  %50 = load i8**, i8*** %4, align 8
  %51 = getelementptr inbounds i8*, i8** %50, i64 3
  %52 = load i8*, i8** %51, align 8
  %53 = load i8*, i8** %5, align 8
  %54 = call i32 @snprintf(i8* %52, i32 20, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i8* %53)
  br label %55

55:                                               ; preds = %49, %15
  ret void
}

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
