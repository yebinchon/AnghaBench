; ModuleID = '/home/carl/AnghaBench/git/extr_log-tree.c_show_one_mergetag.c'
source_filename = "/home/carl/AnghaBench/git/extr_log-tree.c_show_one_mergetag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.commit = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.commit_extra_header = type { i64, i64 }
%struct.rev_info = type { i32 }
%struct.object_id = type { i32 }
%struct.tag = type { i32, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32 }
%struct.strbuf = type { i64, i32 }

@OBJ_TAG = common dso_local global i32 0, align 4
@the_repository = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"malformed mergetag\0A\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"merged tag '%s'\0A\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"tag %s names a non-parent %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"parent #%d, tagged '%s'\0A\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"No signature\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.commit*, %struct.commit_extra_header*, i8*)* @show_one_mergetag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @show_one_mergetag(%struct.commit* %0, %struct.commit_extra_header* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.commit*, align 8
  %6 = alloca %struct.commit_extra_header*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.rev_info*, align 8
  %9 = alloca %struct.object_id, align 4
  %10 = alloca %struct.tag*, align 8
  %11 = alloca %struct.strbuf, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store %struct.commit* %0, %struct.commit** %5, align 8
  store %struct.commit_extra_header* %1, %struct.commit_extra_header** %6, align 8
  store i8* %2, i8** %7, align 8
  %16 = load i8*, i8** %7, align 8
  %17 = bitcast i8* %16 to %struct.rev_info*
  store %struct.rev_info* %17, %struct.rev_info** %8, align 8
  %18 = load %struct.commit_extra_header*, %struct.commit_extra_header** %6, align 8
  %19 = getelementptr inbounds %struct.commit_extra_header, %struct.commit_extra_header* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.commit_extra_header*, %struct.commit_extra_header** %6, align 8
  %22 = getelementptr inbounds %struct.commit_extra_header, %struct.commit_extra_header* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i32, i32* @OBJ_TAG, align 4
  %25 = call i32 @type_name(i32 %24)
  %26 = call i32 @hash_object_file(i64 %20, i64 %23, i32 %25, %struct.object_id* %9)
  %27 = load i32, i32* @the_repository, align 4
  %28 = call %struct.tag* @lookup_tag(i32 %27, %struct.object_id* %9)
  store %struct.tag* %28, %struct.tag** %10, align 8
  %29 = load %struct.tag*, %struct.tag** %10, align 8
  %30 = icmp ne %struct.tag* %29, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %148

32:                                               ; preds = %3
  %33 = call i32 @strbuf_init(%struct.strbuf* %11, i32 256)
  %34 = load i32, i32* @the_repository, align 4
  %35 = load %struct.tag*, %struct.tag** %10, align 8
  %36 = load %struct.commit_extra_header*, %struct.commit_extra_header** %6, align 8
  %37 = getelementptr inbounds %struct.commit_extra_header, %struct.commit_extra_header* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.commit_extra_header*, %struct.commit_extra_header** %6, align 8
  %40 = getelementptr inbounds %struct.commit_extra_header, %struct.commit_extra_header* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = call i64 @parse_tag_buffer(i32 %34, %struct.tag* %35, i64 %38, i64 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %32
  %45 = call i32 @strbuf_addstr(%struct.strbuf* %11, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  br label %99

46:                                               ; preds = %32
  %47 = load %struct.commit*, %struct.commit** %5, align 8
  %48 = call i64 @is_common_merge(%struct.commit* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %71

50:                                               ; preds = %46
  %51 = load %struct.tag*, %struct.tag** %10, align 8
  %52 = getelementptr inbounds %struct.tag, %struct.tag* %51, i32 0, i32 1
  %53 = load %struct.TYPE_12__*, %struct.TYPE_12__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %53, i32 0, i32 0
  %55 = load %struct.commit*, %struct.commit** %5, align 8
  %56 = getelementptr inbounds %struct.commit, %struct.commit* %55, i32 0, i32 0
  %57 = load %struct.TYPE_11__*, %struct.TYPE_11__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %57, i32 0, i32 0
  %59 = load %struct.TYPE_10__*, %struct.TYPE_10__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 0
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 0
  %64 = call i64 @oideq(%struct.TYPE_13__* %54, i32* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %71

66:                                               ; preds = %50
  %67 = load %struct.tag*, %struct.tag** %10, align 8
  %68 = getelementptr inbounds %struct.tag, %struct.tag* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = call i32 (%struct.strbuf*, i8*, i32, ...) @strbuf_addf(%struct.strbuf* %11, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %69)
  br label %98

71:                                               ; preds = %50, %46
  %72 = load %struct.tag*, %struct.tag** %10, align 8
  %73 = getelementptr inbounds %struct.tag, %struct.tag* %72, i32 0, i32 1
  %74 = load %struct.TYPE_12__*, %struct.TYPE_12__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %74, i32 0, i32 0
  %76 = load %struct.commit*, %struct.commit** %5, align 8
  %77 = call i32 @which_parent(%struct.TYPE_13__* %75, %struct.commit* %76)
  store i32 %77, i32* %13, align 4
  %78 = icmp slt i32 %77, 0
  br i1 %78, label %79, label %90

79:                                               ; preds = %71
  %80 = load %struct.tag*, %struct.tag** %10, align 8
  %81 = getelementptr inbounds %struct.tag, %struct.tag* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = load %struct.tag*, %struct.tag** %10, align 8
  %84 = getelementptr inbounds %struct.tag, %struct.tag* %83, i32 0, i32 1
  %85 = load %struct.TYPE_12__*, %struct.TYPE_12__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = call i32 (%struct.strbuf*, i8*, i32, ...) @strbuf_addf(%struct.strbuf* %11, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %82, i32 %88)
  br label %97

90:                                               ; preds = %71
  %91 = load i32, i32* %13, align 4
  %92 = add nsw i32 %91, 1
  %93 = load %struct.tag*, %struct.tag** %10, align 8
  %94 = getelementptr inbounds %struct.tag, %struct.tag* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = call i32 (%struct.strbuf*, i8*, i32, ...) @strbuf_addf(%struct.strbuf* %11, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i32 %92, i32 %95)
  br label %97

97:                                               ; preds = %90, %79
  br label %98

98:                                               ; preds = %97, %66
  br label %99

99:                                               ; preds = %98, %44
  %100 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %11, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  store i64 %101, i64* %15, align 8
  %102 = load %struct.commit_extra_header*, %struct.commit_extra_header** %6, align 8
  %103 = getelementptr inbounds %struct.commit_extra_header, %struct.commit_extra_header* %102, i32 0, i32 1
  %104 = load i64, i64* %103, align 8
  %105 = load %struct.commit_extra_header*, %struct.commit_extra_header** %6, align 8
  %106 = getelementptr inbounds %struct.commit_extra_header, %struct.commit_extra_header* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = call i64 @parse_signature(i64 %104, i64 %107)
  store i64 %108, i64* %14, align 8
  store i32 -1, i32* %12, align 4
  %109 = load %struct.commit_extra_header*, %struct.commit_extra_header** %6, align 8
  %110 = getelementptr inbounds %struct.commit_extra_header, %struct.commit_extra_header* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = load i64, i64* %14, align 8
  %113 = icmp ugt i64 %111, %112
  br i1 %113, label %114, label %141

114:                                              ; preds = %99
  %115 = load %struct.commit_extra_header*, %struct.commit_extra_header** %6, align 8
  %116 = getelementptr inbounds %struct.commit_extra_header, %struct.commit_extra_header* %115, i32 0, i32 1
  %117 = load i64, i64* %116, align 8
  %118 = load i64, i64* %14, align 8
  %119 = load %struct.commit_extra_header*, %struct.commit_extra_header** %6, align 8
  %120 = getelementptr inbounds %struct.commit_extra_header, %struct.commit_extra_header* %119, i32 0, i32 1
  %121 = load i64, i64* %120, align 8
  %122 = load i64, i64* %14, align 8
  %123 = add i64 %121, %122
  %124 = load %struct.commit_extra_header*, %struct.commit_extra_header** %6, align 8
  %125 = getelementptr inbounds %struct.commit_extra_header, %struct.commit_extra_header* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = load i64, i64* %14, align 8
  %128 = sub i64 %126, %127
  %129 = call i32 @verify_signed_buffer(i64 %117, i64 %118, i64 %123, i64 %128, %struct.strbuf* %11, i32* null)
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %132, label %131

131:                                              ; preds = %114
  store i32 0, i32* %12, align 4
  br label %140

132:                                              ; preds = %114
  %133 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %11, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = load i64, i64* %15, align 8
  %136 = icmp ule i64 %134, %135
  br i1 %136, label %137, label %139

137:                                              ; preds = %132
  %138 = call i32 @strbuf_addstr(%struct.strbuf* %11, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0))
  br label %139

139:                                              ; preds = %137, %132
  br label %140

140:                                              ; preds = %139, %131
  br label %141

141:                                              ; preds = %140, %99
  %142 = load %struct.rev_info*, %struct.rev_info** %8, align 8
  %143 = load i32, i32* %12, align 4
  %144 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %11, i32 0, i32 1
  %145 = load i32, i32* %144, align 8
  %146 = call i32 @show_sig_lines(%struct.rev_info* %142, i32 %143, i32 %145)
  %147 = call i32 @strbuf_release(%struct.strbuf* %11)
  store i32 0, i32* %4, align 4
  br label %148

148:                                              ; preds = %141, %31
  %149 = load i32, i32* %4, align 4
  ret i32 %149
}

declare dso_local i32 @hash_object_file(i64, i64, i32, %struct.object_id*) #1

declare dso_local i32 @type_name(i32) #1

declare dso_local %struct.tag* @lookup_tag(i32, %struct.object_id*) #1

declare dso_local i32 @strbuf_init(%struct.strbuf*, i32) #1

declare dso_local i64 @parse_tag_buffer(i32, %struct.tag*, i64, i64) #1

declare dso_local i32 @strbuf_addstr(%struct.strbuf*, i8*) #1

declare dso_local i64 @is_common_merge(%struct.commit*) #1

declare dso_local i64 @oideq(%struct.TYPE_13__*, i32*) #1

declare dso_local i32 @strbuf_addf(%struct.strbuf*, i8*, i32, ...) #1

declare dso_local i32 @which_parent(%struct.TYPE_13__*, %struct.commit*) #1

declare dso_local i64 @parse_signature(i64, i64) #1

declare dso_local i32 @verify_signed_buffer(i64, i64, i64, i64, %struct.strbuf*, i32*) #1

declare dso_local i32 @show_sig_lines(%struct.rev_info*, i32, i32) #1

declare dso_local i32 @strbuf_release(%struct.strbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
