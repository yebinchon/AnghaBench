; ModuleID = '/home/carl/AnghaBench/git/extr_wt-status.c_wt_shortstatus_status.c'
source_filename = "/home/carl/AnghaBench/git/extr_wt-status.c_wt_shortstatus_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i8* }
%struct.string_list_item = type { i8*, %struct.wt_status_change_data* }
%struct.wt_status_change_data = type { i8*, i64, i64 }
%struct.wt_status = type { i32, i64, i32 }

@WT_STATUS_UPDATED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@WT_STATUS_CHANGED = common dso_local global i32 0, align 4
@stdout = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"%s%c\00", align 1
@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 8
@.str.2 = private unnamed_addr constant [7 x i8] c"%s -> \00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.string_list_item*, %struct.wt_status*)* @wt_shortstatus_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wt_shortstatus_status(%struct.string_list_item* %0, %struct.wt_status* %1) #0 {
  %3 = alloca %struct.string_list_item*, align 8
  %4 = alloca %struct.wt_status*, align 8
  %5 = alloca %struct.wt_status_change_data*, align 8
  %6 = alloca %struct.strbuf, align 8
  %7 = alloca i8*, align 8
  store %struct.string_list_item* %0, %struct.string_list_item** %3, align 8
  store %struct.wt_status* %1, %struct.wt_status** %4, align 8
  %8 = load %struct.string_list_item*, %struct.string_list_item** %3, align 8
  %9 = getelementptr inbounds %struct.string_list_item, %struct.string_list_item* %8, i32 0, i32 1
  %10 = load %struct.wt_status_change_data*, %struct.wt_status_change_data** %9, align 8
  store %struct.wt_status_change_data* %10, %struct.wt_status_change_data** %5, align 8
  %11 = load %struct.wt_status_change_data*, %struct.wt_status_change_data** %5, align 8
  %12 = getelementptr inbounds %struct.wt_status_change_data, %struct.wt_status_change_data* %11, i32 0, i32 2
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %26

15:                                               ; preds = %2
  %16 = load %struct.wt_status*, %struct.wt_status** %4, align 8
  %17 = getelementptr inbounds %struct.wt_status, %struct.wt_status* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @WT_STATUS_UPDATED, align 4
  %20 = load %struct.wt_status*, %struct.wt_status** %4, align 8
  %21 = call i32 @color(i32 %19, %struct.wt_status* %20)
  %22 = load %struct.wt_status_change_data*, %struct.wt_status_change_data** %5, align 8
  %23 = getelementptr inbounds %struct.wt_status_change_data, %struct.wt_status_change_data* %22, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = call i32 @color_fprintf(i32 %18, i32 %21, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i64 %24)
  br label %28

26:                                               ; preds = %2
  %27 = call i32 @putchar(i8 signext 32)
  br label %28

28:                                               ; preds = %26, %15
  %29 = load %struct.wt_status_change_data*, %struct.wt_status_change_data** %5, align 8
  %30 = getelementptr inbounds %struct.wt_status_change_data, %struct.wt_status_change_data* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %44

33:                                               ; preds = %28
  %34 = load %struct.wt_status*, %struct.wt_status** %4, align 8
  %35 = getelementptr inbounds %struct.wt_status, %struct.wt_status* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @WT_STATUS_CHANGED, align 4
  %38 = load %struct.wt_status*, %struct.wt_status** %4, align 8
  %39 = call i32 @color(i32 %37, %struct.wt_status* %38)
  %40 = load %struct.wt_status_change_data*, %struct.wt_status_change_data** %5, align 8
  %41 = getelementptr inbounds %struct.wt_status_change_data, %struct.wt_status_change_data* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = call i32 @color_fprintf(i32 %36, i32 %39, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i64 %42)
  br label %46

44:                                               ; preds = %28
  %45 = call i32 @putchar(i8 signext 32)
  br label %46

46:                                               ; preds = %44, %33
  %47 = call i32 @putchar(i8 signext 32)
  %48 = load %struct.wt_status*, %struct.wt_status** %4, align 8
  %49 = getelementptr inbounds %struct.wt_status, %struct.wt_status* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %69

52:                                               ; preds = %46
  %53 = load i32, i32* @stdout, align 4
  %54 = load %struct.string_list_item*, %struct.string_list_item** %3, align 8
  %55 = getelementptr inbounds %struct.string_list_item, %struct.string_list_item* %54, i32 0, i32 0
  %56 = load i8*, i8** %55, align 8
  %57 = call i32 @fprintf(i32 %53, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* %56, i32 0)
  %58 = load %struct.wt_status_change_data*, %struct.wt_status_change_data** %5, align 8
  %59 = getelementptr inbounds %struct.wt_status_change_data, %struct.wt_status_change_data* %58, i32 0, i32 0
  %60 = load i8*, i8** %59, align 8
  %61 = icmp ne i8* %60, null
  br i1 %61, label %62, label %68

62:                                               ; preds = %52
  %63 = load i32, i32* @stdout, align 4
  %64 = load %struct.wt_status_change_data*, %struct.wt_status_change_data** %5, align 8
  %65 = getelementptr inbounds %struct.wt_status_change_data, %struct.wt_status_change_data* %64, i32 0, i32 0
  %66 = load i8*, i8** %65, align 8
  %67 = call i32 @fprintf(i32 %63, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* %66, i32 0)
  br label %68

68:                                               ; preds = %62, %52
  br label %125

69:                                               ; preds = %46
  %70 = bitcast %struct.strbuf* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %70, i8* align 8 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 8, i1 false)
  %71 = load %struct.wt_status_change_data*, %struct.wt_status_change_data** %5, align 8
  %72 = getelementptr inbounds %struct.wt_status_change_data, %struct.wt_status_change_data* %71, i32 0, i32 0
  %73 = load i8*, i8** %72, align 8
  %74 = icmp ne i8* %73, null
  br i1 %74, label %75, label %100

75:                                               ; preds = %69
  %76 = load %struct.wt_status_change_data*, %struct.wt_status_change_data** %5, align 8
  %77 = getelementptr inbounds %struct.wt_status_change_data, %struct.wt_status_change_data* %76, i32 0, i32 0
  %78 = load i8*, i8** %77, align 8
  %79 = load %struct.wt_status*, %struct.wt_status** %4, align 8
  %80 = getelementptr inbounds %struct.wt_status, %struct.wt_status* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = call i8* @quote_path(i8* %78, i32 %81, %struct.strbuf* %6)
  store i8* %82, i8** %7, align 8
  %83 = load i8*, i8** %7, align 8
  %84 = load i8, i8* %83, align 1
  %85 = sext i8 %84 to i32
  %86 = icmp ne i32 %85, 34
  br i1 %86, label %87, label %96

87:                                               ; preds = %75
  %88 = load i8*, i8** %7, align 8
  %89 = call i32* @strchr(i8* %88, i8 signext 32)
  %90 = icmp ne i32* %89, null
  br i1 %90, label %91, label %96

91:                                               ; preds = %87
  %92 = call i32 @putchar(i8 signext 34)
  %93 = call i32 @strbuf_addch(%struct.strbuf* %6, i8 signext 34)
  %94 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %6, i32 0, i32 0
  %95 = load i8*, i8** %94, align 8
  store i8* %95, i8** %7, align 8
  br label %96

96:                                               ; preds = %91, %87, %75
  %97 = load i8*, i8** %7, align 8
  %98 = call i32 @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* %97)
  %99 = call i32 @strbuf_release(%struct.strbuf* %6)
  br label %100

100:                                              ; preds = %96, %69
  %101 = load %struct.string_list_item*, %struct.string_list_item** %3, align 8
  %102 = getelementptr inbounds %struct.string_list_item, %struct.string_list_item* %101, i32 0, i32 0
  %103 = load i8*, i8** %102, align 8
  %104 = load %struct.wt_status*, %struct.wt_status** %4, align 8
  %105 = getelementptr inbounds %struct.wt_status, %struct.wt_status* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = call i8* @quote_path(i8* %103, i32 %106, %struct.strbuf* %6)
  store i8* %107, i8** %7, align 8
  %108 = load i8*, i8** %7, align 8
  %109 = load i8, i8* %108, align 1
  %110 = sext i8 %109 to i32
  %111 = icmp ne i32 %110, 34
  br i1 %111, label %112, label %121

112:                                              ; preds = %100
  %113 = load i8*, i8** %7, align 8
  %114 = call i32* @strchr(i8* %113, i8 signext 32)
  %115 = icmp ne i32* %114, null
  br i1 %115, label %116, label %121

116:                                              ; preds = %112
  %117 = call i32 @putchar(i8 signext 34)
  %118 = call i32 @strbuf_addch(%struct.strbuf* %6, i8 signext 34)
  %119 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %6, i32 0, i32 0
  %120 = load i8*, i8** %119, align 8
  store i8* %120, i8** %7, align 8
  br label %121

121:                                              ; preds = %116, %112, %100
  %122 = load i8*, i8** %7, align 8
  %123 = call i32 @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* %122)
  %124 = call i32 @strbuf_release(%struct.strbuf* %6)
  br label %125

125:                                              ; preds = %121, %68
  ret void
}

declare dso_local i32 @color_fprintf(i32, i32, i8*, i64) #1

declare dso_local i32 @color(i32, %struct.wt_status*) #1

declare dso_local i32 @putchar(i8 signext) #1

declare dso_local i32 @fprintf(i32, i8*, i8*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i8* @quote_path(i8*, i32, %struct.strbuf*) #1

declare dso_local i32* @strchr(i8*, i8 signext) #1

declare dso_local i32 @strbuf_addch(%struct.strbuf*, i8 signext) #1

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i32 @strbuf_release(%struct.strbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
