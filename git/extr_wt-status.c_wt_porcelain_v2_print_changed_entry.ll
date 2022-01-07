; ModuleID = '/home/carl/AnghaBench/git/extr_wt-status.c_wt_porcelain_v2_print_changed_entry.c'
source_filename = "/home/carl/AnghaBench/git/extr_wt-status.c_wt_porcelain_v2_print_changed_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32 }
%struct.string_list_item = type { i8*, %struct.wt_status_change_data* }
%struct.wt_status_change_data = type { i8, i8, i8*, i32, i32, i32, i32, i8*, i32, i32 }
%struct.wt_status = type { i32, i32, i64 }

@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 4
@.str = private unnamed_addr constant [43 x i8] c"2 %s %s %06o %06o %06o %s %s %c%d %s%c%s%c\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"1 %s %s %06o %06o %06o %s %s %s%c\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.string_list_item*, %struct.wt_status*)* @wt_porcelain_v2_print_changed_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wt_porcelain_v2_print_changed_entry(%struct.string_list_item* %0, %struct.wt_status* %1) #0 {
  %3 = alloca %struct.string_list_item*, align 8
  %4 = alloca %struct.wt_status*, align 8
  %5 = alloca %struct.wt_status_change_data*, align 8
  %6 = alloca %struct.strbuf, align 4
  %7 = alloca %struct.strbuf, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca [3 x i8], align 1
  %11 = alloca [5 x i8], align 1
  %12 = alloca i8, align 1
  %13 = alloca i8, align 1
  store %struct.string_list_item* %0, %struct.string_list_item** %3, align 8
  store %struct.wt_status* %1, %struct.wt_status** %4, align 8
  %14 = load %struct.string_list_item*, %struct.string_list_item** %3, align 8
  %15 = getelementptr inbounds %struct.string_list_item, %struct.string_list_item* %14, i32 0, i32 1
  %16 = load %struct.wt_status_change_data*, %struct.wt_status_change_data** %15, align 8
  store %struct.wt_status_change_data* %16, %struct.wt_status_change_data** %5, align 8
  %17 = bitcast %struct.strbuf* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %17, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 4, i1 false)
  %18 = bitcast %struct.strbuf* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %18, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 4, i1 false)
  store i8* null, i8** %8, align 8
  store i8* null, i8** %9, align 8
  %19 = load %struct.string_list_item*, %struct.string_list_item** %3, align 8
  %20 = call i32 @wt_porcelain_v2_fix_up_changed(%struct.string_list_item* %19)
  %21 = load %struct.wt_status_change_data*, %struct.wt_status_change_data** %5, align 8
  %22 = getelementptr inbounds [5 x i8], [5 x i8]* %11, i64 0, i64 0
  %23 = call i32 @wt_porcelain_v2_submodule_state(%struct.wt_status_change_data* %21, i8* %22)
  %24 = load %struct.wt_status_change_data*, %struct.wt_status_change_data** %5, align 8
  %25 = getelementptr inbounds %struct.wt_status_change_data, %struct.wt_status_change_data* %24, i32 0, i32 0
  %26 = load i8, i8* %25, align 8
  %27 = sext i8 %26 to i32
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %2
  %30 = load %struct.wt_status_change_data*, %struct.wt_status_change_data** %5, align 8
  %31 = getelementptr inbounds %struct.wt_status_change_data, %struct.wt_status_change_data* %30, i32 0, i32 0
  %32 = load i8, i8* %31, align 8
  %33 = sext i8 %32 to i32
  br label %35

34:                                               ; preds = %2
  br label %35

35:                                               ; preds = %34, %29
  %36 = phi i32 [ %33, %29 ], [ 46, %34 ]
  %37 = trunc i32 %36 to i8
  %38 = getelementptr inbounds [3 x i8], [3 x i8]* %10, i64 0, i64 0
  store i8 %37, i8* %38, align 1
  %39 = load %struct.wt_status_change_data*, %struct.wt_status_change_data** %5, align 8
  %40 = getelementptr inbounds %struct.wt_status_change_data, %struct.wt_status_change_data* %39, i32 0, i32 1
  %41 = load i8, i8* %40, align 1
  %42 = sext i8 %41 to i32
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %35
  %45 = load %struct.wt_status_change_data*, %struct.wt_status_change_data** %5, align 8
  %46 = getelementptr inbounds %struct.wt_status_change_data, %struct.wt_status_change_data* %45, i32 0, i32 1
  %47 = load i8, i8* %46, align 1
  %48 = sext i8 %47 to i32
  br label %50

49:                                               ; preds = %35
  br label %50

50:                                               ; preds = %49, %44
  %51 = phi i32 [ %48, %44 ], [ 46, %49 ]
  %52 = trunc i32 %51 to i8
  %53 = getelementptr inbounds [3 x i8], [3 x i8]* %10, i64 0, i64 1
  store i8 %52, i8* %53, align 1
  %54 = getelementptr inbounds [3 x i8], [3 x i8]* %10, i64 0, i64 2
  store i8 0, i8* %54, align 1
  %55 = load %struct.wt_status*, %struct.wt_status** %4, align 8
  %56 = getelementptr inbounds %struct.wt_status, %struct.wt_status* %55, i32 0, i32 2
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %66

59:                                               ; preds = %50
  store i8 0, i8* %12, align 1
  store i8 0, i8* %13, align 1
  %60 = load %struct.string_list_item*, %struct.string_list_item** %3, align 8
  %61 = getelementptr inbounds %struct.string_list_item, %struct.string_list_item* %60, i32 0, i32 0
  %62 = load i8*, i8** %61, align 8
  store i8* %62, i8** %8, align 8
  %63 = load %struct.wt_status_change_data*, %struct.wt_status_change_data** %5, align 8
  %64 = getelementptr inbounds %struct.wt_status_change_data, %struct.wt_status_change_data* %63, i32 0, i32 2
  %65 = load i8*, i8** %64, align 8
  store i8* %65, i8** %9, align 8
  br label %87

66:                                               ; preds = %50
  store i8 9, i8* %12, align 1
  store i8 10, i8* %13, align 1
  %67 = load %struct.string_list_item*, %struct.string_list_item** %3, align 8
  %68 = getelementptr inbounds %struct.string_list_item, %struct.string_list_item* %67, i32 0, i32 0
  %69 = load i8*, i8** %68, align 8
  %70 = load %struct.wt_status*, %struct.wt_status** %4, align 8
  %71 = getelementptr inbounds %struct.wt_status, %struct.wt_status* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = call i8* @quote_path(i8* %69, i32 %72, %struct.strbuf* %6)
  store i8* %73, i8** %8, align 8
  %74 = load %struct.wt_status_change_data*, %struct.wt_status_change_data** %5, align 8
  %75 = getelementptr inbounds %struct.wt_status_change_data, %struct.wt_status_change_data* %74, i32 0, i32 2
  %76 = load i8*, i8** %75, align 8
  %77 = icmp ne i8* %76, null
  br i1 %77, label %78, label %86

78:                                               ; preds = %66
  %79 = load %struct.wt_status_change_data*, %struct.wt_status_change_data** %5, align 8
  %80 = getelementptr inbounds %struct.wt_status_change_data, %struct.wt_status_change_data* %79, i32 0, i32 2
  %81 = load i8*, i8** %80, align 8
  %82 = load %struct.wt_status*, %struct.wt_status** %4, align 8
  %83 = getelementptr inbounds %struct.wt_status, %struct.wt_status* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = call i8* @quote_path(i8* %81, i32 %84, %struct.strbuf* %7)
  store i8* %85, i8** %9, align 8
  br label %86

86:                                               ; preds = %78, %66
  br label %87

87:                                               ; preds = %86, %59
  %88 = load i8*, i8** %9, align 8
  %89 = icmp ne i8* %88, null
  br i1 %89, label %90, label %124

90:                                               ; preds = %87
  %91 = load %struct.wt_status*, %struct.wt_status** %4, align 8
  %92 = getelementptr inbounds %struct.wt_status, %struct.wt_status* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = getelementptr inbounds [3 x i8], [3 x i8]* %10, i64 0, i64 0
  %95 = getelementptr inbounds [5 x i8], [5 x i8]* %11, i64 0, i64 0
  %96 = load %struct.wt_status_change_data*, %struct.wt_status_change_data** %5, align 8
  %97 = getelementptr inbounds %struct.wt_status_change_data, %struct.wt_status_change_data* %96, i32 0, i32 3
  %98 = load i32, i32* %97, align 8
  %99 = load %struct.wt_status_change_data*, %struct.wt_status_change_data** %5, align 8
  %100 = getelementptr inbounds %struct.wt_status_change_data, %struct.wt_status_change_data* %99, i32 0, i32 4
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.wt_status_change_data*, %struct.wt_status_change_data** %5, align 8
  %103 = getelementptr inbounds %struct.wt_status_change_data, %struct.wt_status_change_data* %102, i32 0, i32 5
  %104 = load i32, i32* %103, align 8
  %105 = load %struct.wt_status_change_data*, %struct.wt_status_change_data** %5, align 8
  %106 = getelementptr inbounds %struct.wt_status_change_data, %struct.wt_status_change_data* %105, i32 0, i32 9
  %107 = call i8* @oid_to_hex(i32* %106)
  %108 = load %struct.wt_status_change_data*, %struct.wt_status_change_data** %5, align 8
  %109 = getelementptr inbounds %struct.wt_status_change_data, %struct.wt_status_change_data* %108, i32 0, i32 8
  %110 = call i8* @oid_to_hex(i32* %109)
  %111 = load %struct.wt_status_change_data*, %struct.wt_status_change_data** %5, align 8
  %112 = getelementptr inbounds %struct.wt_status_change_data, %struct.wt_status_change_data* %111, i32 0, i32 6
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.wt_status_change_data*, %struct.wt_status_change_data** %5, align 8
  %115 = getelementptr inbounds %struct.wt_status_change_data, %struct.wt_status_change_data* %114, i32 0, i32 7
  %116 = load i8*, i8** %115, align 8
  %117 = load i8*, i8** %8, align 8
  %118 = load i8, i8* %12, align 1
  %119 = sext i8 %118 to i32
  %120 = load i8*, i8** %9, align 8
  %121 = load i8, i8* %13, align 1
  %122 = sext i8 %121 to i32
  %123 = call i32 (i32, i8*, i8*, i8*, i32, i32, i32, i8*, i8*, ...) @fprintf(i32 %93, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i8* %94, i8* %95, i32 %98, i32 %101, i32 %104, i8* %107, i8* %110, i32 %113, i8* %116, i8* %117, i32 %119, i8* %120, i32 %122)
  br label %149

124:                                              ; preds = %87
  %125 = load %struct.wt_status*, %struct.wt_status** %4, align 8
  %126 = getelementptr inbounds %struct.wt_status, %struct.wt_status* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = getelementptr inbounds [3 x i8], [3 x i8]* %10, i64 0, i64 0
  %129 = getelementptr inbounds [5 x i8], [5 x i8]* %11, i64 0, i64 0
  %130 = load %struct.wt_status_change_data*, %struct.wt_status_change_data** %5, align 8
  %131 = getelementptr inbounds %struct.wt_status_change_data, %struct.wt_status_change_data* %130, i32 0, i32 3
  %132 = load i32, i32* %131, align 8
  %133 = load %struct.wt_status_change_data*, %struct.wt_status_change_data** %5, align 8
  %134 = getelementptr inbounds %struct.wt_status_change_data, %struct.wt_status_change_data* %133, i32 0, i32 4
  %135 = load i32, i32* %134, align 4
  %136 = load %struct.wt_status_change_data*, %struct.wt_status_change_data** %5, align 8
  %137 = getelementptr inbounds %struct.wt_status_change_data, %struct.wt_status_change_data* %136, i32 0, i32 5
  %138 = load i32, i32* %137, align 8
  %139 = load %struct.wt_status_change_data*, %struct.wt_status_change_data** %5, align 8
  %140 = getelementptr inbounds %struct.wt_status_change_data, %struct.wt_status_change_data* %139, i32 0, i32 9
  %141 = call i8* @oid_to_hex(i32* %140)
  %142 = load %struct.wt_status_change_data*, %struct.wt_status_change_data** %5, align 8
  %143 = getelementptr inbounds %struct.wt_status_change_data, %struct.wt_status_change_data* %142, i32 0, i32 8
  %144 = call i8* @oid_to_hex(i32* %143)
  %145 = load i8*, i8** %8, align 8
  %146 = load i8, i8* %13, align 1
  %147 = sext i8 %146 to i32
  %148 = call i32 (i32, i8*, i8*, i8*, i32, i32, i32, i8*, i8*, ...) @fprintf(i32 %127, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i8* %128, i8* %129, i32 %132, i32 %135, i32 %138, i8* %141, i8* %144, i8* %145, i32 %147)
  br label %149

149:                                              ; preds = %124, %90
  %150 = call i32 @strbuf_release(%struct.strbuf* %6)
  %151 = call i32 @strbuf_release(%struct.strbuf* %7)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @wt_porcelain_v2_fix_up_changed(%struct.string_list_item*) #2

declare dso_local i32 @wt_porcelain_v2_submodule_state(%struct.wt_status_change_data*, i8*) #2

declare dso_local i8* @quote_path(i8*, i32, %struct.strbuf*) #2

declare dso_local i32 @fprintf(i32, i8*, i8*, i8*, i32, i32, i32, i8*, i8*, ...) #2

declare dso_local i8* @oid_to_hex(i32*) #2

declare dso_local i32 @strbuf_release(%struct.strbuf*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
