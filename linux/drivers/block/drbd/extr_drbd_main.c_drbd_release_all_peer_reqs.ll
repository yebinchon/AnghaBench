; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_main.c_drbd_release_all_peer_reqs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_main.c_drbd_release_all_peer_reqs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drbd_device = type { i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [30 x i8] c"%d EEs in active list found!\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"%d EEs in sync list found!\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"%d EEs in read list found!\0A\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"%d EEs in done list found!\0A\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"%d EEs in net list found!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drbd_device*)* @drbd_release_all_peer_reqs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @drbd_release_all_peer_reqs(%struct.drbd_device* %0) #0 {
  %2 = alloca %struct.drbd_device*, align 8
  %3 = alloca i32, align 4
  store %struct.drbd_device* %0, %struct.drbd_device** %2, align 8
  %4 = load %struct.drbd_device*, %struct.drbd_device** %2, align 8
  %5 = load %struct.drbd_device*, %struct.drbd_device** %2, align 8
  %6 = getelementptr inbounds %struct.drbd_device, %struct.drbd_device* %5, i32 0, i32 4
  %7 = call i32 @drbd_free_peer_reqs(%struct.drbd_device* %4, i32* %6)
  store i32 %7, i32* %3, align 4
  %8 = load i32, i32* %3, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %1
  %11 = load %struct.drbd_device*, %struct.drbd_device** %2, align 8
  %12 = load i32, i32* %3, align 4
  %13 = call i32 @drbd_err(%struct.drbd_device* %11, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %12)
  br label %14

14:                                               ; preds = %10, %1
  %15 = load %struct.drbd_device*, %struct.drbd_device** %2, align 8
  %16 = load %struct.drbd_device*, %struct.drbd_device** %2, align 8
  %17 = getelementptr inbounds %struct.drbd_device, %struct.drbd_device* %16, i32 0, i32 3
  %18 = call i32 @drbd_free_peer_reqs(%struct.drbd_device* %15, i32* %17)
  store i32 %18, i32* %3, align 4
  %19 = load i32, i32* %3, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %14
  %22 = load %struct.drbd_device*, %struct.drbd_device** %2, align 8
  %23 = load i32, i32* %3, align 4
  %24 = call i32 @drbd_err(%struct.drbd_device* %22, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %23)
  br label %25

25:                                               ; preds = %21, %14
  %26 = load %struct.drbd_device*, %struct.drbd_device** %2, align 8
  %27 = load %struct.drbd_device*, %struct.drbd_device** %2, align 8
  %28 = getelementptr inbounds %struct.drbd_device, %struct.drbd_device* %27, i32 0, i32 2
  %29 = call i32 @drbd_free_peer_reqs(%struct.drbd_device* %26, i32* %28)
  store i32 %29, i32* %3, align 4
  %30 = load i32, i32* %3, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %25
  %33 = load %struct.drbd_device*, %struct.drbd_device** %2, align 8
  %34 = load i32, i32* %3, align 4
  %35 = call i32 @drbd_err(%struct.drbd_device* %33, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %34)
  br label %36

36:                                               ; preds = %32, %25
  %37 = load %struct.drbd_device*, %struct.drbd_device** %2, align 8
  %38 = load %struct.drbd_device*, %struct.drbd_device** %2, align 8
  %39 = getelementptr inbounds %struct.drbd_device, %struct.drbd_device* %38, i32 0, i32 1
  %40 = call i32 @drbd_free_peer_reqs(%struct.drbd_device* %37, i32* %39)
  store i32 %40, i32* %3, align 4
  %41 = load i32, i32* %3, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %36
  %44 = load %struct.drbd_device*, %struct.drbd_device** %2, align 8
  %45 = load i32, i32* %3, align 4
  %46 = call i32 @drbd_err(%struct.drbd_device* %44, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i32 %45)
  br label %47

47:                                               ; preds = %43, %36
  %48 = load %struct.drbd_device*, %struct.drbd_device** %2, align 8
  %49 = load %struct.drbd_device*, %struct.drbd_device** %2, align 8
  %50 = getelementptr inbounds %struct.drbd_device, %struct.drbd_device* %49, i32 0, i32 0
  %51 = call i32 @drbd_free_peer_reqs(%struct.drbd_device* %48, i32* %50)
  store i32 %51, i32* %3, align 4
  %52 = load i32, i32* %3, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %47
  %55 = load %struct.drbd_device*, %struct.drbd_device** %2, align 8
  %56 = load i32, i32* %3, align 4
  %57 = call i32 @drbd_err(%struct.drbd_device* %55, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i32 %56)
  br label %58

58:                                               ; preds = %54, %47
  ret void
}

declare dso_local i32 @drbd_free_peer_reqs(%struct.drbd_device*, i32*) #1

declare dso_local i32 @drbd_err(%struct.drbd_device*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
