; ModuleID = '/home/carl/AnghaBench/git/extr_send-pack.c_receive_unpack_status.c'
source_filename = "/home/carl/AnghaBench/git/extr_send-pack.c_receive_unpack_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.packet_reader = type { i32 }

@PACKET_READ_NORMAL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [59 x i8] c"unexpected flush packet while reading remote unpack status\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"unpack \00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"unable to parse remote unpack status: %s\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"ok\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"remote unpack failed: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.packet_reader*)* @receive_unpack_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @receive_unpack_status(%struct.packet_reader* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.packet_reader*, align 8
  store %struct.packet_reader* %0, %struct.packet_reader** %3, align 8
  %4 = load %struct.packet_reader*, %struct.packet_reader** %3, align 8
  %5 = call i64 @packet_reader_read(%struct.packet_reader* %4)
  %6 = load i64, i64* @PACKET_READ_NORMAL, align 8
  %7 = icmp ne i64 %5, %6
  br i1 %7, label %8, label %11

8:                                                ; preds = %1
  %9 = call i32 @_(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0))
  %10 = call i32 (i32, ...) @error(i32 %9)
  store i32 %10, i32* %2, align 4
  br label %38

11:                                               ; preds = %1
  %12 = load %struct.packet_reader*, %struct.packet_reader** %3, align 8
  %13 = getelementptr inbounds %struct.packet_reader, %struct.packet_reader* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.packet_reader*, %struct.packet_reader** %3, align 8
  %16 = getelementptr inbounds %struct.packet_reader, %struct.packet_reader* %15, i32 0, i32 0
  %17 = call i32 @skip_prefix(i32 %14, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %25, label %19

19:                                               ; preds = %11
  %20 = call i32 @_(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0))
  %21 = load %struct.packet_reader*, %struct.packet_reader** %3, align 8
  %22 = getelementptr inbounds %struct.packet_reader, %struct.packet_reader* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 (i32, ...) @error(i32 %20, i32 %23)
  store i32 %24, i32* %2, align 4
  br label %38

25:                                               ; preds = %11
  %26 = load %struct.packet_reader*, %struct.packet_reader** %3, align 8
  %27 = getelementptr inbounds %struct.packet_reader, %struct.packet_reader* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i64 @strcmp(i32 %28, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %25
  %32 = call i32 @_(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0))
  %33 = load %struct.packet_reader*, %struct.packet_reader** %3, align 8
  %34 = getelementptr inbounds %struct.packet_reader, %struct.packet_reader* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 (i32, ...) @error(i32 %32, i32 %35)
  store i32 %36, i32* %2, align 4
  br label %38

37:                                               ; preds = %25
  store i32 0, i32* %2, align 4
  br label %38

38:                                               ; preds = %37, %31, %19, %8
  %39 = load i32, i32* %2, align 4
  ret i32 %39
}

declare dso_local i64 @packet_reader_read(%struct.packet_reader*) #1

declare dso_local i32 @error(i32, ...) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @skip_prefix(i32, i8*, i32*) #1

declare dso_local i64 @strcmp(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
