; ModuleID = '/home/carl/AnghaBench/git/extr_transport-helper.c_bidirectional_transfer_loop.c'
source_filename = "/home/carl/AnghaBench/git/extr_transport-helper.c_bidirectional_transfer_loop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bidirectional_transfer_state = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32, i8*, i8*, i64, i8*, i64, i64 }
%struct.TYPE_3__ = type { i32, i32, i32, i8*, i8*, i64, i8*, i64 }

@SSTATE_TRANSFERRING = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [13 x i8] c"remote input\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"stdout\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"stdin\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"remote output\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bidirectional_transfer_loop(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.bidirectional_transfer_state, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %3, align 4
  %7 = getelementptr inbounds %struct.bidirectional_transfer_state, %struct.bidirectional_transfer_state* %5, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  store i32 %6, i32* %8, align 8
  %9 = getelementptr inbounds %struct.bidirectional_transfer_state, %struct.bidirectional_transfer_state* %5, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 1
  store i32 1, i32* %10, align 4
  %11 = load i32, i32* %3, align 4
  %12 = load i32, i32* %4, align 4
  %13 = icmp eq i32 %11, %12
  %14 = zext i1 %13 to i32
  %15 = getelementptr inbounds %struct.bidirectional_transfer_state, %struct.bidirectional_transfer_state* %5, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 2
  store i32 %14, i32* %16, align 8
  %17 = getelementptr inbounds %struct.bidirectional_transfer_state, %struct.bidirectional_transfer_state* %5, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 7
  store i64 0, i64* %18, align 8
  %19 = load i8*, i8** @SSTATE_TRANSFERRING, align 8
  %20 = getelementptr inbounds %struct.bidirectional_transfer_state, %struct.bidirectional_transfer_state* %5, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 6
  store i8* %19, i8** %21, align 8
  %22 = getelementptr inbounds %struct.bidirectional_transfer_state, %struct.bidirectional_transfer_state* %5, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 5
  store i64 0, i64* %23, align 8
  %24 = getelementptr inbounds %struct.bidirectional_transfer_state, %struct.bidirectional_transfer_state* %5, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 3
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8** %25, align 8
  %26 = getelementptr inbounds %struct.bidirectional_transfer_state, %struct.bidirectional_transfer_state* %5, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 4
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8** %27, align 8
  %28 = getelementptr inbounds %struct.bidirectional_transfer_state, %struct.bidirectional_transfer_state* %5, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 7
  store i64 0, i64* %29, align 8
  %30 = load i32, i32* %4, align 4
  %31 = getelementptr inbounds %struct.bidirectional_transfer_state, %struct.bidirectional_transfer_state* %5, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 8
  %33 = getelementptr inbounds %struct.bidirectional_transfer_state, %struct.bidirectional_transfer_state* %5, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 6
  store i64 0, i64* %34, align 8
  %35 = load i32, i32* %3, align 4
  %36 = load i32, i32* %4, align 4
  %37 = icmp eq i32 %35, %36
  %38 = zext i1 %37 to i32
  %39 = getelementptr inbounds %struct.bidirectional_transfer_state, %struct.bidirectional_transfer_state* %5, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 1
  store i32 %38, i32* %40, align 4
  %41 = load i8*, i8** @SSTATE_TRANSFERRING, align 8
  %42 = getelementptr inbounds %struct.bidirectional_transfer_state, %struct.bidirectional_transfer_state* %5, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 5
  store i8* %41, i8** %43, align 8
  %44 = getelementptr inbounds %struct.bidirectional_transfer_state, %struct.bidirectional_transfer_state* %5, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 4
  store i64 0, i64* %45, align 8
  %46 = getelementptr inbounds %struct.bidirectional_transfer_state, %struct.bidirectional_transfer_state* %5, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 2
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8** %47, align 8
  %48 = getelementptr inbounds %struct.bidirectional_transfer_state, %struct.bidirectional_transfer_state* %5, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 3
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i8** %49, align 8
  %50 = call i32 @tloop_spawnwait_tasks(%struct.bidirectional_transfer_state* %5)
  ret i32 %50
}

declare dso_local i32 @tloop_spawnwait_tasks(%struct.bidirectional_transfer_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
