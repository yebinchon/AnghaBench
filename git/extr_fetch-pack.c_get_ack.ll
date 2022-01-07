; ModuleID = '/home/carl/AnghaBench/git/extr_fetch-pack.c_get_ack.c'
source_filename = "/home/carl/AnghaBench/git/extr_fetch-pack.c_get_ack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.packet_reader = type { i32, i8* }
%struct.object_id = type { i32 }

@PACKET_READ_NORMAL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [53 x i8] c"git fetch-pack: expected ACK/NAK, got a flush packet\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"NAK\00", align 1
@NAK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"ACK \00", align 1
@ACK = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [9 x i8] c"continue\00", align 1
@ACK_continue = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [7 x i8] c"common\00", align 1
@ACK_common = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [6 x i8] c"ready\00", align 1
@ACK_ready = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [43 x i8] c"git fetch-pack: expected ACK/NAK, got '%s'\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.packet_reader*, %struct.object_id*)* @get_ack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_ack(%struct.packet_reader* %0, %struct.object_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.packet_reader*, align 8
  %5 = alloca %struct.object_id*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store %struct.packet_reader* %0, %struct.packet_reader** %4, align 8
  store %struct.object_id* %1, %struct.object_id** %5, align 8
  %9 = load %struct.packet_reader*, %struct.packet_reader** %4, align 8
  %10 = call i64 @packet_reader_read(%struct.packet_reader* %9)
  %11 = load i64, i64* @PACKET_READ_NORMAL, align 8
  %12 = icmp ne i64 %10, %11
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = call i32 @_(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0))
  %15 = call i32 (i32, ...) @die(i32 %14)
  br label %16

16:                                               ; preds = %13, %2
  %17 = load %struct.packet_reader*, %struct.packet_reader** %4, align 8
  %18 = getelementptr inbounds %struct.packet_reader, %struct.packet_reader* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* %6, align 4
  %20 = load %struct.packet_reader*, %struct.packet_reader** %4, align 8
  %21 = getelementptr inbounds %struct.packet_reader, %struct.packet_reader* %20, i32 0, i32 1
  %22 = load i8*, i8** %21, align 8
  %23 = call i32 @strcmp(i8* %22, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %16
  %26 = load i32, i32* @NAK, align 4
  store i32 %26, i32* %3, align 4
  br label %81

27:                                               ; preds = %16
  %28 = load %struct.packet_reader*, %struct.packet_reader** %4, align 8
  %29 = getelementptr inbounds %struct.packet_reader, %struct.packet_reader* %28, i32 0, i32 1
  %30 = load i8*, i8** %29, align 8
  %31 = call i64 @skip_prefix(i8* %30, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8** %7)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %75

33:                                               ; preds = %27
  %34 = load i8*, i8** %7, align 8
  %35 = load %struct.object_id*, %struct.object_id** %5, align 8
  %36 = call i32 @parse_oid_hex(i8* %34, %struct.object_id* %35, i8** %8)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %74, label %38

38:                                               ; preds = %33
  %39 = load i8*, i8** %8, align 8
  %40 = load %struct.packet_reader*, %struct.packet_reader** %4, align 8
  %41 = getelementptr inbounds %struct.packet_reader, %struct.packet_reader* %40, i32 0, i32 1
  %42 = load i8*, i8** %41, align 8
  %43 = ptrtoint i8* %39 to i64
  %44 = ptrtoint i8* %42 to i64
  %45 = sub i64 %43, %44
  %46 = load i32, i32* %6, align 4
  %47 = sext i32 %46 to i64
  %48 = sub nsw i64 %47, %45
  %49 = trunc i64 %48 to i32
  store i32 %49, i32* %6, align 4
  %50 = load i32, i32* %6, align 4
  %51 = icmp slt i32 %50, 1
  br i1 %51, label %52, label %54

52:                                               ; preds = %38
  %53 = load i32, i32* @ACK, align 4
  store i32 %53, i32* %3, align 4
  br label %81

54:                                               ; preds = %38
  %55 = load i8*, i8** %8, align 8
  %56 = call i64 @strstr(i8* %55, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %54
  %59 = load i32, i32* @ACK_continue, align 4
  store i32 %59, i32* %3, align 4
  br label %81

60:                                               ; preds = %54
  %61 = load i8*, i8** %8, align 8
  %62 = call i64 @strstr(i8* %61, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %60
  %65 = load i32, i32* @ACK_common, align 4
  store i32 %65, i32* %3, align 4
  br label %81

66:                                               ; preds = %60
  %67 = load i8*, i8** %8, align 8
  %68 = call i64 @strstr(i8* %67, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %66
  %71 = load i32, i32* @ACK_ready, align 4
  store i32 %71, i32* %3, align 4
  br label %81

72:                                               ; preds = %66
  %73 = load i32, i32* @ACK, align 4
  store i32 %73, i32* %3, align 4
  br label %81

74:                                               ; preds = %33
  br label %75

75:                                               ; preds = %74, %27
  %76 = call i32 @_(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.6, i64 0, i64 0))
  %77 = load %struct.packet_reader*, %struct.packet_reader** %4, align 8
  %78 = getelementptr inbounds %struct.packet_reader, %struct.packet_reader* %77, i32 0, i32 1
  %79 = load i8*, i8** %78, align 8
  %80 = call i32 (i32, ...) @die(i32 %76, i8* %79)
  br label %81

81:                                               ; preds = %75, %72, %70, %64, %58, %52, %25
  %82 = load i32, i32* %3, align 4
  ret i32 %82
}

declare dso_local i64 @packet_reader_read(%struct.packet_reader*) #1

declare dso_local i32 @die(i32, ...) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i64 @skip_prefix(i8*, i8*, i8**) #1

declare dso_local i32 @parse_oid_hex(i8*, %struct.object_id*, i8**) #1

declare dso_local i64 @strstr(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
