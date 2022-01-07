; ModuleID = '/home/carl/AnghaBench/git/extr_upload-pack.c_process_args.c'
source_filename = "/home/carl/AnghaBench/git/extr_upload-pack.c_process_args.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.packet_reader = type { i8* }
%struct.upload_pack_data = type { i32, i32, %struct.TYPE_3__, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.object_array = type { i32 }

@PACKET_READ_FLUSH = common dso_local global i64 0, align 8
@allow_ref_in_want = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [10 x i8] c"thin-pack\00", align 1
@use_thin_pack = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"ofs-delta\00", align 1
@use_ofs_delta = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [12 x i8] c"no-progress\00", align 1
@no_progress = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [12 x i8] c"include-tag\00", align 1
@use_include_tag = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [5 x i8] c"done\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"deepen-relative\00", align 1
@allow_filter = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [8 x i8] c"filter \00", align 1
@filter_options = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [22 x i8] c"GIT_TEST_SIDEBAND_ALL\00", align 1
@allow_sideband_all = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [13 x i8] c"sideband-all\00", align 1
@.str.9 = private unnamed_addr constant [22 x i8] c"unexpected line: '%s'\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.packet_reader*, %struct.upload_pack_data*, %struct.object_array*)* @process_args to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @process_args(%struct.packet_reader* %0, %struct.upload_pack_data* %1, %struct.object_array* %2) #0 {
  %4 = alloca %struct.packet_reader*, align 8
  %5 = alloca %struct.upload_pack_data*, align 8
  %6 = alloca %struct.object_array*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store %struct.packet_reader* %0, %struct.packet_reader** %4, align 8
  store %struct.upload_pack_data* %1, %struct.upload_pack_data** %5, align 8
  store %struct.object_array* %2, %struct.object_array** %6, align 8
  br label %9

9:                                                ; preds = %136, %132, %118, %108, %103, %94, %85, %78, %69, %64, %59, %54, %49, %44, %37, %24, %3
  %10 = load %struct.packet_reader*, %struct.packet_reader** %4, align 8
  %11 = call i64 @packet_reader_read(%struct.packet_reader* %10)
  %12 = load i64, i64* @PACKET_READ_FLUSH, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %14, label %139

14:                                               ; preds = %9
  %15 = load %struct.packet_reader*, %struct.packet_reader** %4, align 8
  %16 = getelementptr inbounds %struct.packet_reader, %struct.packet_reader* %15, i32 0, i32 0
  %17 = load i8*, i8** %16, align 8
  store i8* %17, i8** %7, align 8
  %18 = load %struct.upload_pack_data*, %struct.upload_pack_data** %5, align 8
  %19 = getelementptr inbounds %struct.upload_pack_data, %struct.upload_pack_data* %18, i32 0, i32 2
  %20 = load i8*, i8** %7, align 8
  %21 = load %struct.object_array*, %struct.object_array** %6, align 8
  %22 = call i64 @parse_want(%struct.TYPE_3__* %19, i8* %20, %struct.object_array* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %14
  br label %9

25:                                               ; preds = %14
  %26 = load i64, i64* @allow_ref_in_want, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %38

28:                                               ; preds = %25
  %29 = load %struct.upload_pack_data*, %struct.upload_pack_data** %5, align 8
  %30 = getelementptr inbounds %struct.upload_pack_data, %struct.upload_pack_data* %29, i32 0, i32 2
  %31 = load i8*, i8** %7, align 8
  %32 = load %struct.upload_pack_data*, %struct.upload_pack_data** %5, align 8
  %33 = getelementptr inbounds %struct.upload_pack_data, %struct.upload_pack_data* %32, i32 0, i32 9
  %34 = load %struct.object_array*, %struct.object_array** %6, align 8
  %35 = call i64 @parse_want_ref(%struct.TYPE_3__* %30, i8* %31, i32* %33, %struct.object_array* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %28
  br label %9

38:                                               ; preds = %28, %25
  %39 = load i8*, i8** %7, align 8
  %40 = load %struct.upload_pack_data*, %struct.upload_pack_data** %5, align 8
  %41 = getelementptr inbounds %struct.upload_pack_data, %struct.upload_pack_data* %40, i32 0, i32 8
  %42 = call i64 @parse_have(i8* %39, i32* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %38
  br label %9

45:                                               ; preds = %38
  %46 = load i8*, i8** %7, align 8
  %47 = call i32 @strcmp(i8* %46, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %45
  store i32 1, i32* @use_thin_pack, align 4
  br label %9

50:                                               ; preds = %45
  %51 = load i8*, i8** %7, align 8
  %52 = call i32 @strcmp(i8* %51, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %50
  store i32 1, i32* @use_ofs_delta, align 4
  br label %9

55:                                               ; preds = %50
  %56 = load i8*, i8** %7, align 8
  %57 = call i32 @strcmp(i8* %56, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %60, label %59

59:                                               ; preds = %55
  store i32 1, i32* @no_progress, align 4
  br label %9

60:                                               ; preds = %55
  %61 = load i8*, i8** %7, align 8
  %62 = call i32 @strcmp(i8* %61, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %65, label %64

64:                                               ; preds = %60
  store i32 1, i32* @use_include_tag, align 4
  br label %9

65:                                               ; preds = %60
  %66 = load i8*, i8** %7, align 8
  %67 = call i32 @strcmp(i8* %66, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %72, label %69

69:                                               ; preds = %65
  %70 = load %struct.upload_pack_data*, %struct.upload_pack_data** %5, align 8
  %71 = getelementptr inbounds %struct.upload_pack_data, %struct.upload_pack_data* %70, i32 0, i32 0
  store i32 1, i32* %71, align 4
  br label %9

72:                                               ; preds = %65
  %73 = load i8*, i8** %7, align 8
  %74 = load %struct.upload_pack_data*, %struct.upload_pack_data** %5, align 8
  %75 = getelementptr inbounds %struct.upload_pack_data, %struct.upload_pack_data* %74, i32 0, i32 7
  %76 = call i64 @process_shallow(i8* %73, i32* %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %72
  br label %9

79:                                               ; preds = %72
  %80 = load i8*, i8** %7, align 8
  %81 = load %struct.upload_pack_data*, %struct.upload_pack_data** %5, align 8
  %82 = getelementptr inbounds %struct.upload_pack_data, %struct.upload_pack_data* %81, i32 0, i32 6
  %83 = call i64 @process_deepen(i8* %80, i32* %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %79
  br label %9

86:                                               ; preds = %79
  %87 = load i8*, i8** %7, align 8
  %88 = load %struct.upload_pack_data*, %struct.upload_pack_data** %5, align 8
  %89 = getelementptr inbounds %struct.upload_pack_data, %struct.upload_pack_data* %88, i32 0, i32 5
  %90 = load %struct.upload_pack_data*, %struct.upload_pack_data** %5, align 8
  %91 = getelementptr inbounds %struct.upload_pack_data, %struct.upload_pack_data* %90, i32 0, i32 3
  %92 = call i64 @process_deepen_since(i8* %87, i32* %89, i32* %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %86
  br label %9

95:                                               ; preds = %86
  %96 = load i8*, i8** %7, align 8
  %97 = load %struct.upload_pack_data*, %struct.upload_pack_data** %5, align 8
  %98 = getelementptr inbounds %struct.upload_pack_data, %struct.upload_pack_data* %97, i32 0, i32 4
  %99 = load %struct.upload_pack_data*, %struct.upload_pack_data** %5, align 8
  %100 = getelementptr inbounds %struct.upload_pack_data, %struct.upload_pack_data* %99, i32 0, i32 3
  %101 = call i64 @process_deepen_not(i8* %96, i32* %98, i32* %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %95
  br label %9

104:                                              ; preds = %95
  %105 = load i8*, i8** %7, align 8
  %106 = call i32 @strcmp(i8* %105, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0))
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %111, label %108

108:                                              ; preds = %104
  %109 = load %struct.upload_pack_data*, %struct.upload_pack_data** %5, align 8
  %110 = getelementptr inbounds %struct.upload_pack_data, %struct.upload_pack_data* %109, i32 0, i32 1
  store i32 1, i32* %110, align 4
  br label %9

111:                                              ; preds = %104
  %112 = load i64, i64* @allow_filter, align 8
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %122

114:                                              ; preds = %111
  %115 = load i8*, i8** %7, align 8
  %116 = call i64 @skip_prefix(i8* %115, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i8** %8)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %122

118:                                              ; preds = %114
  %119 = call i32 @list_objects_filter_die_if_populated(i32* @filter_options)
  %120 = load i8*, i8** %8, align 8
  %121 = call i32 @parse_list_objects_filter(i32* @filter_options, i8* %120)
  br label %9

122:                                              ; preds = %114, %111
  %123 = call i64 @git_env_bool(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0), i32 0)
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %128, label %125

125:                                              ; preds = %122
  %126 = load i64, i64* @allow_sideband_all, align 8
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %136

128:                                              ; preds = %125, %122
  %129 = load i8*, i8** %7, align 8
  %130 = call i32 @strcmp(i8* %129, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i64 0, i64 0))
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %136, label %132

132:                                              ; preds = %128
  %133 = load %struct.upload_pack_data*, %struct.upload_pack_data** %5, align 8
  %134 = getelementptr inbounds %struct.upload_pack_data, %struct.upload_pack_data* %133, i32 0, i32 2
  %135 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %134, i32 0, i32 0
  store i32 1, i32* %135, align 4
  br label %9

136:                                              ; preds = %128, %125
  %137 = load i8*, i8** %7, align 8
  %138 = call i32 @die(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.9, i64 0, i64 0), i8* %137)
  br label %9

139:                                              ; preds = %9
  ret void
}

declare dso_local i64 @packet_reader_read(%struct.packet_reader*) #1

declare dso_local i64 @parse_want(%struct.TYPE_3__*, i8*, %struct.object_array*) #1

declare dso_local i64 @parse_want_ref(%struct.TYPE_3__*, i8*, i32*, %struct.object_array*) #1

declare dso_local i64 @parse_have(i8*, i32*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i64 @process_shallow(i8*, i32*) #1

declare dso_local i64 @process_deepen(i8*, i32*) #1

declare dso_local i64 @process_deepen_since(i8*, i32*, i32*) #1

declare dso_local i64 @process_deepen_not(i8*, i32*, i32*) #1

declare dso_local i64 @skip_prefix(i8*, i8*, i8**) #1

declare dso_local i32 @list_objects_filter_die_if_populated(i32*) #1

declare dso_local i32 @parse_list_objects_filter(i32*, i8*) #1

declare dso_local i64 @git_env_bool(i8*, i32) #1

declare dso_local i32 @die(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
