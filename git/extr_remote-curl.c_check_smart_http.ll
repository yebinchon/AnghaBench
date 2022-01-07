; ModuleID = '/home/carl/AnghaBench/git/extr_remote-curl.c_check_smart_http.c'
source_filename = "/home/carl/AnghaBench/git/extr_remote-curl.c_check_smart_http.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.discovery = type { i32, i32, i32 }
%struct.strbuf = type { i8* }
%struct.packet_reader = type { i8*, i64, i32, i32 }

@.str = private unnamed_addr constant [15 x i8] c"application/x-\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"-advertisement\00", align 1
@PACKET_READ_CHOMP_NEWLINE = common dso_local global i32 0, align 4
@PACKET_READ_DIE_ON_ERR_PACKET = common dso_local global i32 0, align 4
@PACKET_READ_NORMAL = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [60 x i8] c"invalid server response; expected service, got flush packet\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"# service=\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"version 2\00", align 1
@.str.5 = private unnamed_addr constant [34 x i8] c"invalid server response; got '%s'\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.discovery*, i8*, %struct.strbuf*)* @check_smart_http to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_smart_http(%struct.discovery* %0, i8* %1, %struct.strbuf* %2) #0 {
  %4 = alloca %struct.discovery*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.strbuf*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.packet_reader, align 8
  store %struct.discovery* %0, %struct.discovery** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.strbuf* %2, %struct.strbuf** %6, align 8
  %9 = load %struct.strbuf*, %struct.strbuf** %6, align 8
  %10 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %9, i32 0, i32 0
  %11 = load i8*, i8** %10, align 8
  %12 = call i64 @skip_prefix(i8* %11, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8** %7)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %23

14:                                               ; preds = %3
  %15 = load i8*, i8** %7, align 8
  %16 = load i8*, i8** %5, align 8
  %17 = call i64 @skip_prefix(i8* %15, i8* %16, i8** %7)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %14
  %20 = load i8*, i8** %7, align 8
  %21 = call i64 @strcmp(i8* %20, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %19, %14, %3
  br label %84

24:                                               ; preds = %19
  %25 = load %struct.discovery*, %struct.discovery** %4, align 8
  %26 = getelementptr inbounds %struct.discovery, %struct.discovery* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.discovery*, %struct.discovery** %4, align 8
  %29 = getelementptr inbounds %struct.discovery, %struct.discovery* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @PACKET_READ_CHOMP_NEWLINE, align 4
  %32 = load i32, i32* @PACKET_READ_DIE_ON_ERR_PACKET, align 4
  %33 = or i32 %31, %32
  %34 = call i32 @packet_reader_init(%struct.packet_reader* %8, i32 -1, i32 %27, i32 %30, i32 %33)
  %35 = call i64 @packet_reader_read(%struct.packet_reader* %8)
  %36 = load i64, i64* @PACKET_READ_NORMAL, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %24
  %39 = call i32 @_(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.2, i64 0, i64 0))
  %40 = call i32 (i32, ...) @die(i32 %39)
  br label %41

41:                                               ; preds = %38, %24
  %42 = getelementptr inbounds %struct.packet_reader, %struct.packet_reader* %8, i32 0, i32 0
  %43 = load i8*, i8** %42, align 8
  %44 = call i64 @skip_prefix(i8* %43, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i8** %7)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %70

46:                                               ; preds = %41
  %47 = load i8*, i8** %7, align 8
  %48 = load i8*, i8** %5, align 8
  %49 = call i64 @strcmp(i8* %47, i8* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %70, label %51

51:                                               ; preds = %46
  br label %52

52:                                               ; preds = %58, %51
  %53 = call i64 @packet_reader_read(%struct.packet_reader* %8)
  %54 = getelementptr inbounds %struct.packet_reader, %struct.packet_reader* %8, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = icmp sle i64 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %52
  br label %59

58:                                               ; preds = %52
  br label %52

59:                                               ; preds = %57
  %60 = getelementptr inbounds %struct.packet_reader, %struct.packet_reader* %8, i32 0, i32 3
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.discovery*, %struct.discovery** %4, align 8
  %63 = getelementptr inbounds %struct.discovery, %struct.discovery* %62, i32 0, i32 2
  store i32 %61, i32* %63, align 4
  %64 = getelementptr inbounds %struct.packet_reader, %struct.packet_reader* %8, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.discovery*, %struct.discovery** %4, align 8
  %67 = getelementptr inbounds %struct.discovery, %struct.discovery* %66, i32 0, i32 1
  store i32 %65, i32* %67, align 4
  %68 = load %struct.discovery*, %struct.discovery** %4, align 8
  %69 = getelementptr inbounds %struct.discovery, %struct.discovery* %68, i32 0, i32 0
  store i32 1, i32* %69, align 4
  br label %84

70:                                               ; preds = %46, %41
  %71 = getelementptr inbounds %struct.packet_reader, %struct.packet_reader* %8, i32 0, i32 0
  %72 = load i8*, i8** %71, align 8
  %73 = call i64 @strcmp(i8* %72, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0))
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %78, label %75

75:                                               ; preds = %70
  %76 = load %struct.discovery*, %struct.discovery** %4, align 8
  %77 = getelementptr inbounds %struct.discovery, %struct.discovery* %76, i32 0, i32 0
  store i32 1, i32* %77, align 4
  br label %83

78:                                               ; preds = %70
  %79 = call i32 @_(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0))
  %80 = getelementptr inbounds %struct.packet_reader, %struct.packet_reader* %8, i32 0, i32 0
  %81 = load i8*, i8** %80, align 8
  %82 = call i32 (i32, ...) @die(i32 %79, i8* %81)
  br label %83

83:                                               ; preds = %78, %75
  br label %84

84:                                               ; preds = %23, %83, %59
  ret void
}

declare dso_local i64 @skip_prefix(i8*, i8*, i8**) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @packet_reader_init(%struct.packet_reader*, i32, i32, i32, i32) #1

declare dso_local i64 @packet_reader_read(%struct.packet_reader*) #1

declare dso_local i32 @die(i32, ...) #1

declare dso_local i32 @_(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
