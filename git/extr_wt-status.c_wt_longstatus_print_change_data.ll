; ModuleID = '/home/carl/AnghaBench/git/extr_wt-status.c_wt_longstatus_print_change_data.c'
source_filename = "/home/carl/AnghaBench/git/extr_wt-status.c_wt_longstatus_print_change_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32, i64 }
%struct.wt_status = type { i32 }
%struct.string_list_item = type { i8*, %struct.wt_status_change_data* }
%struct.wt_status_change_data = type { i32, i32, i32, i32, i8*, i32 }

@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 8
@wt_longstatus_print_change_data.padding = internal global i8* null, align 8
@wt_longstatus_print_change_data.label_width = internal global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c" (\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"new commits, \00", align 1
@DIRTY_SUBMODULE_MODIFIED = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [19 x i8] c"modified content, \00", align 1
@DIRTY_SUBMODULE_UNTRACKED = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [20 x i8] c"untracked content, \00", align 1
@.str.5 = private unnamed_addr constant [60 x i8] c"unhandled change_type %d in wt_longstatus_print_change_data\00", align 1
@WT_STATUS_HEADER = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [2 x i8] c"\09\00", align 1
@.str.7 = private unnamed_addr constant [25 x i8] c"unhandled diff status %c\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"%s%.*s%s -> %s\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"%s%.*s%s\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@GIT_COLOR_NORMAL = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wt_status*, i32, %struct.string_list_item*)* @wt_longstatus_print_change_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wt_longstatus_print_change_data(%struct.wt_status* %0, i32 %1, %struct.string_list_item* %2) #0 {
  %4 = alloca %struct.wt_status*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.string_list_item*, align 8
  %7 = alloca %struct.wt_status_change_data*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct.strbuf, align 8
  %15 = alloca %struct.strbuf, align 8
  %16 = alloca %struct.strbuf, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  store %struct.wt_status* %0, %struct.wt_status** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.string_list_item* %2, %struct.string_list_item** %6, align 8
  %19 = load %struct.string_list_item*, %struct.string_list_item** %6, align 8
  %20 = getelementptr inbounds %struct.string_list_item, %struct.string_list_item* %19, i32 0, i32 1
  %21 = load %struct.wt_status_change_data*, %struct.wt_status_change_data** %20, align 8
  store %struct.wt_status_change_data* %21, %struct.wt_status_change_data** %7, align 8
  %22 = load i32, i32* %5, align 4
  %23 = load %struct.wt_status*, %struct.wt_status** %4, align 8
  %24 = call i8* @color(i32 %22, %struct.wt_status* %23)
  store i8* %24, i8** %8, align 8
  %25 = bitcast %struct.strbuf* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %25, i8* align 8 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 16, i1 false)
  %26 = bitcast %struct.strbuf* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %26, i8* align 8 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 16, i1 false)
  %27 = bitcast %struct.strbuf* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %27, i8* align 8 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 16, i1 false)
  %28 = load i8*, i8** @wt_longstatus_print_change_data.padding, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %42, label %30

30:                                               ; preds = %3
  %31 = call i32 @maxwidth(i8* (i32)* @wt_status_diff_status_string, i8 signext 65, i8 signext 90)
  store i32 %31, i32* @wt_longstatus_print_change_data.label_width, align 4
  %32 = call i64 @strlen(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %33 = load i32, i32* @wt_longstatus_print_change_data.label_width, align 4
  %34 = sext i32 %33 to i64
  %35 = add nsw i64 %34, %32
  %36 = trunc i64 %35 to i32
  store i32 %36, i32* @wt_longstatus_print_change_data.label_width, align 4
  %37 = load i32, i32* @wt_longstatus_print_change_data.label_width, align 4
  %38 = call i8* @xmallocz(i32 %37)
  store i8* %38, i8** @wt_longstatus_print_change_data.padding, align 8
  %39 = load i8*, i8** @wt_longstatus_print_change_data.padding, align 8
  %40 = load i32, i32* @wt_longstatus_print_change_data.label_width, align 4
  %41 = call i32 @memset(i8* %39, i8 signext 32, i32 %40)
  br label %42

42:                                               ; preds = %30, %3
  %43 = load %struct.string_list_item*, %struct.string_list_item** %6, align 8
  %44 = getelementptr inbounds %struct.string_list_item, %struct.string_list_item* %43, i32 0, i32 0
  %45 = load i8*, i8** %44, align 8
  store i8* %45, i8** %11, align 8
  store i8* %45, i8** %10, align 8
  %46 = load i32, i32* %5, align 4
  switch i32 %46, label %100 [
    i32 128, label %47
    i32 129, label %51
  ]

47:                                               ; preds = %42
  %48 = load %struct.wt_status_change_data*, %struct.wt_status_change_data** %7, align 8
  %49 = getelementptr inbounds %struct.wt_status_change_data, %struct.wt_status_change_data* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  store i32 %50, i32* %9, align 4
  br label %103

51:                                               ; preds = %42
  %52 = load %struct.wt_status_change_data*, %struct.wt_status_change_data** %7, align 8
  %53 = getelementptr inbounds %struct.wt_status_change_data, %struct.wt_status_change_data* %52, i32 0, i32 5
  %54 = load i32, i32* %53, align 8
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %61, label %56

56:                                               ; preds = %51
  %57 = load %struct.wt_status_change_data*, %struct.wt_status_change_data** %7, align 8
  %58 = getelementptr inbounds %struct.wt_status_change_data, %struct.wt_status_change_data* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %96

61:                                               ; preds = %56, %51
  %62 = call i32 @strbuf_addstr(%struct.strbuf* %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %63 = load %struct.wt_status_change_data*, %struct.wt_status_change_data** %7, align 8
  %64 = getelementptr inbounds %struct.wt_status_change_data, %struct.wt_status_change_data* %63, i32 0, i32 5
  %65 = load i32, i32* %64, align 8
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %61
  %68 = call i8* @_(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  %69 = call i32 @strbuf_addstr(%struct.strbuf* %16, i8* %68)
  br label %70

70:                                               ; preds = %67, %61
  %71 = load %struct.wt_status_change_data*, %struct.wt_status_change_data** %7, align 8
  %72 = getelementptr inbounds %struct.wt_status_change_data, %struct.wt_status_change_data* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @DIRTY_SUBMODULE_MODIFIED, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %70
  %78 = call i8* @_(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0))
  %79 = call i32 @strbuf_addstr(%struct.strbuf* %16, i8* %78)
  br label %80

80:                                               ; preds = %77, %70
  %81 = load %struct.wt_status_change_data*, %struct.wt_status_change_data** %7, align 8
  %82 = getelementptr inbounds %struct.wt_status_change_data, %struct.wt_status_change_data* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* @DIRTY_SUBMODULE_UNTRACKED, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %80
  %88 = call i8* @_(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0))
  %89 = call i32 @strbuf_addstr(%struct.strbuf* %16, i8* %88)
  br label %90

90:                                               ; preds = %87, %80
  %91 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %16, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = sub nsw i64 %92, 2
  %94 = call i32 @strbuf_setlen(%struct.strbuf* %16, i64 %93)
  %95 = call i32 @strbuf_addch(%struct.strbuf* %16, i8 signext 41)
  br label %96

96:                                               ; preds = %90, %56
  %97 = load %struct.wt_status_change_data*, %struct.wt_status_change_data** %7, align 8
  %98 = getelementptr inbounds %struct.wt_status_change_data, %struct.wt_status_change_data* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 8
  store i32 %99, i32* %9, align 4
  br label %103

100:                                              ; preds = %42
  %101 = load i32, i32* %5, align 4
  %102 = call i32 @BUG(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.5, i64 0, i64 0), i32 %101)
  br label %103

103:                                              ; preds = %100, %96, %47
  %104 = load %struct.wt_status_change_data*, %struct.wt_status_change_data** %7, align 8
  %105 = getelementptr inbounds %struct.wt_status_change_data, %struct.wt_status_change_data* %104, i32 0, i32 3
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* %9, align 4
  %108 = icmp eq i32 %106, %107
  br i1 %108, label %109, label %113

109:                                              ; preds = %103
  %110 = load %struct.wt_status_change_data*, %struct.wt_status_change_data** %7, align 8
  %111 = getelementptr inbounds %struct.wt_status_change_data, %struct.wt_status_change_data* %110, i32 0, i32 4
  %112 = load i8*, i8** %111, align 8
  store i8* %112, i8** %10, align 8
  br label %113

113:                                              ; preds = %109, %103
  %114 = load i8*, i8** %10, align 8
  %115 = load %struct.wt_status*, %struct.wt_status** %4, align 8
  %116 = getelementptr inbounds %struct.wt_status, %struct.wt_status* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = call i8* @quote_path(i8* %114, i32 %117, %struct.strbuf* %14)
  store i8* %118, i8** %12, align 8
  %119 = load i8*, i8** %11, align 8
  %120 = load %struct.wt_status*, %struct.wt_status** %4, align 8
  %121 = getelementptr inbounds %struct.wt_status, %struct.wt_status* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = call i8* @quote_path(i8* %119, i32 %122, %struct.strbuf* %15)
  store i8* %123, i8** %13, align 8
  %124 = load %struct.wt_status*, %struct.wt_status** %4, align 8
  %125 = load i32, i32* @WT_STATUS_HEADER, align 4
  %126 = load %struct.wt_status*, %struct.wt_status** %4, align 8
  %127 = call i8* @color(i32 %125, %struct.wt_status* %126)
  %128 = call i32 @status_printf(%struct.wt_status* %124, i8* %127, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  %129 = load i32, i32* %9, align 4
  %130 = call i8* @wt_status_diff_status_string(i32 %129)
  store i8* %130, i8** %17, align 8
  %131 = load i8*, i8** %17, align 8
  %132 = icmp ne i8* %131, null
  br i1 %132, label %136, label %133

133:                                              ; preds = %113
  %134 = load i32, i32* %9, align 4
  %135 = call i32 @BUG(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i64 0, i64 0), i32 %134)
  br label %136

136:                                              ; preds = %133, %113
  %137 = load i32, i32* @wt_longstatus_print_change_data.label_width, align 4
  %138 = load i8*, i8** %17, align 8
  %139 = call i32 @utf8_strwidth(i8* %138)
  %140 = sub nsw i32 %137, %139
  store i32 %140, i32* %18, align 4
  %141 = load i32, i32* %18, align 4
  %142 = icmp sge i32 %141, 0
  %143 = zext i1 %142 to i32
  %144 = call i32 @assert(i32 %143)
  %145 = load i8*, i8** %10, align 8
  %146 = load i8*, i8** %11, align 8
  %147 = icmp ne i8* %145, %146
  br i1 %147, label %148, label %157

148:                                              ; preds = %136
  %149 = load %struct.wt_status*, %struct.wt_status** %4, align 8
  %150 = load i8*, i8** %8, align 8
  %151 = load i8*, i8** %17, align 8
  %152 = load i32, i32* %18, align 4
  %153 = load i8*, i8** @wt_longstatus_print_change_data.padding, align 8
  %154 = load i8*, i8** %12, align 8
  %155 = load i8*, i8** %13, align 8
  %156 = call i32 (%struct.wt_status*, i8*, i8*, ...) @status_printf_more(%struct.wt_status* %149, i8* %150, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0), i8* %151, i32 %152, i8* %153, i8* %154, i8* %155)
  br label %165

157:                                              ; preds = %136
  %158 = load %struct.wt_status*, %struct.wt_status** %4, align 8
  %159 = load i8*, i8** %8, align 8
  %160 = load i8*, i8** %17, align 8
  %161 = load i32, i32* %18, align 4
  %162 = load i8*, i8** @wt_longstatus_print_change_data.padding, align 8
  %163 = load i8*, i8** %12, align 8
  %164 = call i32 (%struct.wt_status*, i8*, i8*, ...) @status_printf_more(%struct.wt_status* %158, i8* %159, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0), i8* %160, i32 %161, i8* %162, i8* %163)
  br label %165

165:                                              ; preds = %157, %148
  %166 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %16, i32 0, i32 1
  %167 = load i64, i64* %166, align 8
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %169, label %178

169:                                              ; preds = %165
  %170 = load %struct.wt_status*, %struct.wt_status** %4, align 8
  %171 = load i32, i32* @WT_STATUS_HEADER, align 4
  %172 = load %struct.wt_status*, %struct.wt_status** %4, align 8
  %173 = call i8* @color(i32 %171, %struct.wt_status* %172)
  %174 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %16, i32 0, i32 0
  %175 = load i32, i32* %174, align 8
  %176 = call i32 (%struct.wt_status*, i8*, i8*, ...) @status_printf_more(%struct.wt_status* %170, i8* %173, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0), i32 %175)
  %177 = call i32 @strbuf_release(%struct.strbuf* %16)
  br label %178

178:                                              ; preds = %169, %165
  %179 = load %struct.wt_status*, %struct.wt_status** %4, align 8
  %180 = load i32, i32* @GIT_COLOR_NORMAL, align 4
  %181 = sext i32 %180 to i64
  %182 = inttoptr i64 %181 to i8*
  %183 = call i32 (%struct.wt_status*, i8*, i8*, ...) @status_printf_more(%struct.wt_status* %179, i8* %182, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0))
  %184 = call i32 @strbuf_release(%struct.strbuf* %14)
  %185 = call i32 @strbuf_release(%struct.strbuf* %15)
  ret void
}

declare dso_local i8* @color(i32, %struct.wt_status*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @maxwidth(i8* (i32)*, i8 signext, i8 signext) #1

declare dso_local i8* @wt_status_diff_status_string(i32) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i8* @xmallocz(i32) #1

declare dso_local i32 @memset(i8*, i8 signext, i32) #1

declare dso_local i32 @strbuf_addstr(%struct.strbuf*, i8*) #1

declare dso_local i8* @_(i8*) #1

declare dso_local i32 @strbuf_setlen(%struct.strbuf*, i64) #1

declare dso_local i32 @strbuf_addch(%struct.strbuf*, i8 signext) #1

declare dso_local i32 @BUG(i8*, i32) #1

declare dso_local i8* @quote_path(i8*, i32, %struct.strbuf*) #1

declare dso_local i32 @status_printf(%struct.wt_status*, i8*, i8*) #1

declare dso_local i32 @utf8_strwidth(i8*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @status_printf_more(%struct.wt_status*, i8*, i8*, ...) #1

declare dso_local i32 @strbuf_release(%struct.strbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
