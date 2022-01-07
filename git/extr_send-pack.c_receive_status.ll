; ModuleID = '/home/carl/AnghaBench/git/extr_send-pack.c_receive_status.c'
source_filename = "/home/carl/AnghaBench/git/extr_send-pack.c_receive_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.packet_reader = type { i8* }
%struct.ref = type { i64, %struct.ref*, i32 }

@PACKET_READ_NORMAL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [4 x i8] c"ok \00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"ng \00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"invalid ref status from remote: %s\00", align 1
@.str.3 = private unnamed_addr constant [42 x i8] c"remote reported status on unknown ref: %s\00", align 1
@REF_STATUS_EXPECTING_REPORT = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [45 x i8] c"remote reported status on unexpected ref: %s\00", align 1
@REF_STATUS_OK = common dso_local global i64 0, align 8
@REF_STATUS_REMOTE_REJECT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.packet_reader*, %struct.ref*)* @receive_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @receive_status(%struct.packet_reader* %0, %struct.ref* %1) #0 {
  %3 = alloca %struct.packet_reader*, align 8
  %4 = alloca %struct.ref*, align 8
  %5 = alloca %struct.ref*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store %struct.packet_reader* %0, %struct.packet_reader** %3, align 8
  store %struct.ref* %1, %struct.ref** %4, align 8
  store %struct.ref* null, %struct.ref** %5, align 8
  %9 = load %struct.packet_reader*, %struct.packet_reader** %3, align 8
  %10 = call i32 @receive_unpack_status(%struct.packet_reader* %9)
  store i32 %10, i32* %6, align 4
  br label %11

11:                                               ; preds = %2, %63, %72, %99
  %12 = load %struct.packet_reader*, %struct.packet_reader** %3, align 8
  %13 = call i64 @packet_reader_read(%struct.packet_reader* %12)
  %14 = load i64, i64* @PACKET_READ_NORMAL, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %11
  br label %107

17:                                               ; preds = %11
  %18 = load %struct.packet_reader*, %struct.packet_reader** %3, align 8
  %19 = getelementptr inbounds %struct.packet_reader, %struct.packet_reader* %18, i32 0, i32 0
  %20 = load i8*, i8** %19, align 8
  %21 = call i32 @starts_with(i8* %20, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %34, label %23

23:                                               ; preds = %17
  %24 = load %struct.packet_reader*, %struct.packet_reader** %3, align 8
  %25 = getelementptr inbounds %struct.packet_reader, %struct.packet_reader* %24, i32 0, i32 0
  %26 = load i8*, i8** %25, align 8
  %27 = call i32 @starts_with(i8* %26, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %34, label %29

29:                                               ; preds = %23
  %30 = load %struct.packet_reader*, %struct.packet_reader** %3, align 8
  %31 = getelementptr inbounds %struct.packet_reader, %struct.packet_reader* %30, i32 0, i32 0
  %32 = load i8*, i8** %31, align 8
  %33 = call i32 @error(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i8* %32)
  store i32 -1, i32* %6, align 4
  br label %107

34:                                               ; preds = %23, %17
  %35 = load %struct.packet_reader*, %struct.packet_reader** %3, align 8
  %36 = getelementptr inbounds %struct.packet_reader, %struct.packet_reader* %35, i32 0, i32 0
  %37 = load i8*, i8** %36, align 8
  %38 = getelementptr inbounds i8, i8* %37, i64 3
  store i8* %38, i8** %7, align 8
  %39 = load i8*, i8** %7, align 8
  %40 = call i8* @strchr(i8* %39, i8 signext 32)
  store i8* %40, i8** %8, align 8
  %41 = load i8*, i8** %8, align 8
  %42 = icmp ne i8* %41, null
  br i1 %42, label %43, label %46

43:                                               ; preds = %34
  %44 = load i8*, i8** %8, align 8
  %45 = getelementptr inbounds i8, i8* %44, i32 1
  store i8* %45, i8** %8, align 8
  store i8 0, i8* %44, align 1
  br label %46

46:                                               ; preds = %43, %34
  %47 = load %struct.ref*, %struct.ref** %5, align 8
  %48 = icmp ne %struct.ref* %47, null
  br i1 %48, label %49, label %53

49:                                               ; preds = %46
  %50 = load %struct.ref*, %struct.ref** %5, align 8
  %51 = load i8*, i8** %7, align 8
  %52 = call %struct.ref* @find_ref_by_name(%struct.ref* %50, i8* %51)
  store %struct.ref* %52, %struct.ref** %5, align 8
  br label %53

53:                                               ; preds = %49, %46
  %54 = load %struct.ref*, %struct.ref** %5, align 8
  %55 = icmp ne %struct.ref* %54, null
  br i1 %55, label %60, label %56

56:                                               ; preds = %53
  %57 = load %struct.ref*, %struct.ref** %4, align 8
  %58 = load i8*, i8** %7, align 8
  %59 = call %struct.ref* @find_ref_by_name(%struct.ref* %57, i8* %58)
  store %struct.ref* %59, %struct.ref** %5, align 8
  br label %60

60:                                               ; preds = %56, %53
  %61 = load %struct.ref*, %struct.ref** %5, align 8
  %62 = icmp ne %struct.ref* %61, null
  br i1 %62, label %66, label %63

63:                                               ; preds = %60
  %64 = load i8*, i8** %7, align 8
  %65 = call i32 @warning(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0), i8* %64)
  br label %11

66:                                               ; preds = %60
  %67 = load %struct.ref*, %struct.ref** %5, align 8
  %68 = getelementptr inbounds %struct.ref, %struct.ref* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @REF_STATUS_EXPECTING_REPORT, align 8
  %71 = icmp ne i64 %69, %70
  br i1 %71, label %72, label %75

72:                                               ; preds = %66
  %73 = load i8*, i8** %7, align 8
  %74 = call i32 @warning(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0), i8* %73)
  br label %11

75:                                               ; preds = %66
  %76 = load %struct.packet_reader*, %struct.packet_reader** %3, align 8
  %77 = getelementptr inbounds %struct.packet_reader, %struct.packet_reader* %76, i32 0, i32 0
  %78 = load i8*, i8** %77, align 8
  %79 = getelementptr inbounds i8, i8* %78, i64 0
  %80 = load i8, i8* %79, align 1
  %81 = sext i8 %80 to i32
  %82 = icmp eq i32 %81, 111
  br i1 %82, label %83, label %95

83:                                               ; preds = %75
  %84 = load %struct.packet_reader*, %struct.packet_reader** %3, align 8
  %85 = getelementptr inbounds %struct.packet_reader, %struct.packet_reader* %84, i32 0, i32 0
  %86 = load i8*, i8** %85, align 8
  %87 = getelementptr inbounds i8, i8* %86, i64 1
  %88 = load i8, i8* %87, align 1
  %89 = sext i8 %88 to i32
  %90 = icmp eq i32 %89, 107
  br i1 %90, label %91, label %95

91:                                               ; preds = %83
  %92 = load i64, i64* @REF_STATUS_OK, align 8
  %93 = load %struct.ref*, %struct.ref** %5, align 8
  %94 = getelementptr inbounds %struct.ref, %struct.ref* %93, i32 0, i32 0
  store i64 %92, i64* %94, align 8
  br label %99

95:                                               ; preds = %83, %75
  %96 = load i64, i64* @REF_STATUS_REMOTE_REJECT, align 8
  %97 = load %struct.ref*, %struct.ref** %5, align 8
  %98 = getelementptr inbounds %struct.ref, %struct.ref* %97, i32 0, i32 0
  store i64 %96, i64* %98, align 8
  store i32 -1, i32* %6, align 4
  br label %99

99:                                               ; preds = %95, %91
  %100 = load i8*, i8** %8, align 8
  %101 = call i32 @xstrdup_or_null(i8* %100)
  %102 = load %struct.ref*, %struct.ref** %5, align 8
  %103 = getelementptr inbounds %struct.ref, %struct.ref* %102, i32 0, i32 2
  store i32 %101, i32* %103, align 8
  %104 = load %struct.ref*, %struct.ref** %5, align 8
  %105 = getelementptr inbounds %struct.ref, %struct.ref* %104, i32 0, i32 1
  %106 = load %struct.ref*, %struct.ref** %105, align 8
  store %struct.ref* %106, %struct.ref** %5, align 8
  br label %11

107:                                              ; preds = %29, %16
  %108 = load i32, i32* %6, align 4
  ret i32 %108
}

declare dso_local i32 @receive_unpack_status(%struct.packet_reader*) #1

declare dso_local i64 @packet_reader_read(%struct.packet_reader*) #1

declare dso_local i32 @starts_with(i8*, i8*) #1

declare dso_local i32 @error(i8*, i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local %struct.ref* @find_ref_by_name(%struct.ref*, i8*) #1

declare dso_local i32 @warning(i8*, i8*) #1

declare dso_local i32 @xstrdup_or_null(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
