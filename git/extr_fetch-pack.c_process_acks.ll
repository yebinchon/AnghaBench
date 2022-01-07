; ModuleID = '/home/carl/AnghaBench/git/extr_fetch-pack.c_process_acks.c'
source_filename = "/home/carl/AnghaBench/git/extr_fetch-pack.c_process_acks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fetch_negotiator = type { i32 (%struct.fetch_negotiator*, %struct.commit*)* }
%struct.commit = type opaque
%struct.packet_reader = type { i64, i32 }
%struct.oidset = type { i32 }
%struct.object_id = type { i32 }
%struct.commit.0 = type { i32 }

@.str = private unnamed_addr constant [16 x i8] c"acknowledgments\00", align 1
@PACKET_READ_NORMAL = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [4 x i8] c"NAK\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"ACK \00", align 1
@the_repository = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [6 x i8] c"ready\00", align 1
@.str.4 = private unnamed_addr constant [37 x i8] c"unexpected acknowledgment line: '%s'\00", align 1
@PACKET_READ_FLUSH = common dso_local global i64 0, align 8
@PACKET_READ_DELIM = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [26 x i8] c"error processing acks: %d\00", align 1
@.str.6 = private unnamed_addr constant [43 x i8] c"expected packfile to be sent after 'ready'\00", align 1
@.str.7 = private unnamed_addr constant [55 x i8] c"expected no other sections to be sent after no 'ready'\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fetch_negotiator*, %struct.packet_reader*, %struct.oidset*)* @process_acks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @process_acks(%struct.fetch_negotiator* %0, %struct.packet_reader* %1, %struct.oidset* %2) #0 {
  %4 = alloca %struct.fetch_negotiator*, align 8
  %5 = alloca %struct.packet_reader*, align 8
  %6 = alloca %struct.oidset*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.object_id, align 4
  %11 = alloca %struct.commit.0*, align 8
  store %struct.fetch_negotiator* %0, %struct.fetch_negotiator** %4, align 8
  store %struct.packet_reader* %1, %struct.packet_reader** %5, align 8
  store %struct.oidset* %2, %struct.oidset** %6, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %12 = load %struct.packet_reader*, %struct.packet_reader** %5, align 8
  %13 = call i32 @process_section_header(%struct.packet_reader* %12, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 0)
  br label %14

14:                                               ; preds = %56, %55, %48, %25, %3
  %15 = load %struct.packet_reader*, %struct.packet_reader** %5, align 8
  %16 = call i64 @packet_reader_read(%struct.packet_reader* %15)
  %17 = load i64, i64* @PACKET_READ_NORMAL, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %62

19:                                               ; preds = %14
  %20 = load %struct.packet_reader*, %struct.packet_reader** %5, align 8
  %21 = getelementptr inbounds %struct.packet_reader, %struct.packet_reader* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @strcmp(i32 %22, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %19
  br label %14

26:                                               ; preds = %19
  %27 = load %struct.packet_reader*, %struct.packet_reader** %5, align 8
  %28 = getelementptr inbounds %struct.packet_reader, %struct.packet_reader* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = call i64 @skip_prefix(i32 %29, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8** %9)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %49

32:                                               ; preds = %26
  %33 = load i8*, i8** %9, align 8
  %34 = call i32 @get_oid_hex(i8* %33, %struct.object_id* %10)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %48, label %36

36:                                               ; preds = %32
  %37 = load %struct.oidset*, %struct.oidset** %6, align 8
  %38 = call i32 @oidset_insert(%struct.oidset* %37, %struct.object_id* %10)
  %39 = load i32, i32* @the_repository, align 4
  %40 = call %struct.commit.0* @lookup_commit(i32 %39, %struct.object_id* %10)
  store %struct.commit.0* %40, %struct.commit.0** %11, align 8
  %41 = load %struct.fetch_negotiator*, %struct.fetch_negotiator** %4, align 8
  %42 = getelementptr inbounds %struct.fetch_negotiator, %struct.fetch_negotiator* %41, i32 0, i32 0
  %43 = load i32 (%struct.fetch_negotiator*, %struct.commit*)*, i32 (%struct.fetch_negotiator*, %struct.commit*)** %42, align 8
  %44 = load %struct.fetch_negotiator*, %struct.fetch_negotiator** %4, align 8
  %45 = load %struct.commit.0*, %struct.commit.0** %11, align 8
  %46 = bitcast %struct.commit.0* %45 to %struct.commit*
  %47 = call i32 %43(%struct.fetch_negotiator* %44, %struct.commit* %46)
  br label %48

48:                                               ; preds = %36, %32
  br label %14

49:                                               ; preds = %26
  %50 = load %struct.packet_reader*, %struct.packet_reader** %5, align 8
  %51 = getelementptr inbounds %struct.packet_reader, %struct.packet_reader* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @strcmp(i32 %52, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %56, label %55

55:                                               ; preds = %49
  store i32 1, i32* %7, align 4
  br label %14

56:                                               ; preds = %49
  %57 = call i32 @_(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0))
  %58 = load %struct.packet_reader*, %struct.packet_reader** %5, align 8
  %59 = getelementptr inbounds %struct.packet_reader, %struct.packet_reader* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = call i32 (i32, ...) @die(i32 %57, i32 %60)
  br label %14

62:                                               ; preds = %14
  %63 = load %struct.packet_reader*, %struct.packet_reader** %5, align 8
  %64 = getelementptr inbounds %struct.packet_reader, %struct.packet_reader* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @PACKET_READ_FLUSH, align 8
  %67 = icmp ne i64 %65, %66
  br i1 %67, label %68, label %80

68:                                               ; preds = %62
  %69 = load %struct.packet_reader*, %struct.packet_reader** %5, align 8
  %70 = getelementptr inbounds %struct.packet_reader, %struct.packet_reader* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @PACKET_READ_DELIM, align 8
  %73 = icmp ne i64 %71, %72
  br i1 %73, label %74, label %80

74:                                               ; preds = %68
  %75 = call i32 @_(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0))
  %76 = load %struct.packet_reader*, %struct.packet_reader** %5, align 8
  %77 = getelementptr inbounds %struct.packet_reader, %struct.packet_reader* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = call i32 (i32, ...) @die(i32 %75, i64 %78)
  br label %80

80:                                               ; preds = %74, %68, %62
  %81 = load i32, i32* %7, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %92

83:                                               ; preds = %80
  %84 = load %struct.packet_reader*, %struct.packet_reader** %5, align 8
  %85 = getelementptr inbounds %struct.packet_reader, %struct.packet_reader* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* @PACKET_READ_DELIM, align 8
  %88 = icmp ne i64 %86, %87
  br i1 %88, label %89, label %92

89:                                               ; preds = %83
  %90 = call i32 @_(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.6, i64 0, i64 0))
  %91 = call i32 (i32, ...) @die(i32 %90)
  br label %92

92:                                               ; preds = %89, %83, %80
  %93 = load i32, i32* %7, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %104, label %95

95:                                               ; preds = %92
  %96 = load %struct.packet_reader*, %struct.packet_reader** %5, align 8
  %97 = getelementptr inbounds %struct.packet_reader, %struct.packet_reader* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* @PACKET_READ_FLUSH, align 8
  %100 = icmp ne i64 %98, %99
  br i1 %100, label %101, label %104

101:                                              ; preds = %95
  %102 = call i32 @_(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.7, i64 0, i64 0))
  %103 = call i32 (i32, ...) @die(i32 %102)
  br label %104

104:                                              ; preds = %101, %95, %92
  %105 = load i32, i32* %7, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %104
  br label %113

108:                                              ; preds = %104
  %109 = load i32, i32* %8, align 4
  %110 = icmp ne i32 %109, 0
  %111 = zext i1 %110 to i64
  %112 = select i1 %110, i32 1, i32 0
  br label %113

113:                                              ; preds = %108, %107
  %114 = phi i32 [ 2, %107 ], [ %112, %108 ]
  ret i32 %114
}

declare dso_local i32 @process_section_header(%struct.packet_reader*, i8*, i32) #1

declare dso_local i64 @packet_reader_read(%struct.packet_reader*) #1

declare dso_local i32 @strcmp(i32, i8*) #1

declare dso_local i64 @skip_prefix(i32, i8*, i8**) #1

declare dso_local i32 @get_oid_hex(i8*, %struct.object_id*) #1

declare dso_local i32 @oidset_insert(%struct.oidset*, %struct.object_id*) #1

declare dso_local %struct.commit.0* @lookup_commit(i32, %struct.object_id*) #1

declare dso_local i32 @die(i32, ...) #1

declare dso_local i32 @_(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
