; ModuleID = '/home/carl/AnghaBench/git/extr_wt-status.c_wt_longstatus_print_tracking.c'
source_filename = "/home/carl/AnghaBench/git/extr_wt-status.c_wt_longstatus_print_tracking.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i8* }
%struct.wt_status = type { i32, i64, i32, i32, i32 }
%struct.branch = type { i32 }

@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 8
@.str = private unnamed_addr constant [12 x i8] c"refs/heads/\00", align 1
@advice_status_ahead_behind_warning = common dso_local global i64 0, align 8
@AHEAD_BEHIND_FULL = common dso_local global i32 0, align 4
@AB_DELAY_WARNING_IN_MS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [113 x i8] c"\0AIt took %.2f seconds to compute the branch ahead/behind values.\0AYou can use '--no-ahead-behind' to avoid this.\0A\00", align 1
@comment_line_char = common dso_local global i8 0, align 1
@WT_STATUS_HEADER = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"%s%.*s\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wt_status*)* @wt_longstatus_print_tracking to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wt_longstatus_print_tracking(%struct.wt_status* %0) #0 {
  %2 = alloca %struct.wt_status*, align 8
  %3 = alloca %struct.strbuf, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.branch*, align 8
  %8 = alloca [3 x i8], align 1
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.wt_status* %0, %struct.wt_status** %2, align 8
  %12 = bitcast %struct.strbuf* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %12, i8* align 8 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 8, i1 false)
  store i32 0, i32* %10, align 4
  %13 = load %struct.wt_status*, %struct.wt_status** %2, align 8
  %14 = getelementptr inbounds %struct.wt_status, %struct.wt_status* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %23

17:                                               ; preds = %1
  %18 = load %struct.wt_status*, %struct.wt_status** %2, align 8
  %19 = getelementptr inbounds %struct.wt_status, %struct.wt_status* %18, i32 0, i32 4
  %20 = load i32, i32* %19, align 8
  %21 = icmp ne i32 %20, 0
  %22 = xor i1 %21, true
  br label %23

23:                                               ; preds = %17, %1
  %24 = phi i1 [ false, %1 ], [ %22, %17 ]
  %25 = zext i1 %24 to i32
  %26 = call i32 @assert(i32 %25)
  %27 = load %struct.wt_status*, %struct.wt_status** %2, align 8
  %28 = getelementptr inbounds %struct.wt_status, %struct.wt_status* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @skip_prefix(i32 %29, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8** %6)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %23
  br label %135

33:                                               ; preds = %23
  %34 = load i8*, i8** %6, align 8
  %35 = call %struct.branch* @branch_get(i8* %34)
  store %struct.branch* %35, %struct.branch** %7, align 8
  %36 = call i32 (...) @getnanotime()
  store i32 %36, i32* %10, align 4
  %37 = load %struct.branch*, %struct.branch** %7, align 8
  %38 = load %struct.wt_status*, %struct.wt_status** %2, align 8
  %39 = getelementptr inbounds %struct.wt_status, %struct.wt_status* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @format_tracking_info(%struct.branch* %37, %struct.strbuf* %3, i32 %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %33
  br label %135

44:                                               ; preds = %33
  %45 = load i64, i64* @advice_status_ahead_behind_warning, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %69

47:                                               ; preds = %44
  %48 = load %struct.wt_status*, %struct.wt_status** %2, align 8
  %49 = getelementptr inbounds %struct.wt_status, %struct.wt_status* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @AHEAD_BEHIND_FULL, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %53, label %69

53:                                               ; preds = %47
  %54 = call i32 (...) @getnanotime()
  %55 = load i32, i32* %10, align 4
  %56 = sub nsw i32 %54, %55
  %57 = sdiv i32 %56, 1000000
  store i32 %57, i32* %11, align 4
  %58 = load i32, i32* %11, align 4
  %59 = load i32, i32* @AB_DELAY_WARNING_IN_MS, align 4
  %60 = icmp sgt i32 %58, %59
  br i1 %60, label %61, label %68

61:                                               ; preds = %53
  %62 = call i32 @_(i8* getelementptr inbounds ([113 x i8], [113 x i8]* @.str.1, i64 0, i64 0))
  %63 = load i32, i32* %11, align 4
  %64 = sitofp i32 %63 to double
  %65 = fdiv double %64, 1.000000e+03
  %66 = fptosi double %65 to i32
  %67 = call i32 @strbuf_addf(%struct.strbuf* %3, i32 %62, i32 %66)
  br label %68

68:                                               ; preds = %61, %53
  br label %69

69:                                               ; preds = %68, %47, %44
  store i32 0, i32* %9, align 4
  %70 = load %struct.wt_status*, %struct.wt_status** %2, align 8
  %71 = getelementptr inbounds %struct.wt_status, %struct.wt_status* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %84

74:                                               ; preds = %69
  %75 = load i8, i8* @comment_line_char, align 1
  %76 = load i32, i32* %9, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %9, align 4
  %78 = sext i32 %76 to i64
  %79 = getelementptr inbounds [3 x i8], [3 x i8]* %8, i64 0, i64 %78
  store i8 %75, i8* %79, align 1
  %80 = load i32, i32* %9, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %9, align 4
  %82 = sext i32 %80 to i64
  %83 = getelementptr inbounds [3 x i8], [3 x i8]* %8, i64 0, i64 %82
  store i8 32, i8* %83, align 1
  br label %84

84:                                               ; preds = %74, %69
  %85 = load i32, i32* %9, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds [3 x i8], [3 x i8]* %8, i64 0, i64 %86
  store i8 0, i8* %87, align 1
  %88 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %3, i32 0, i32 0
  %89 = load i8*, i8** %88, align 8
  store i8* %89, i8** %4, align 8
  br label %90

90:                                               ; preds = %110, %84
  %91 = load i8*, i8** %4, align 8
  %92 = call i8* @strchr(i8* %91, i8 signext 10)
  store i8* %92, i8** %5, align 8
  %93 = icmp ne i8* %92, null
  br i1 %93, label %94, label %113

94:                                               ; preds = %90
  %95 = load %struct.wt_status*, %struct.wt_status** %2, align 8
  %96 = getelementptr inbounds %struct.wt_status, %struct.wt_status* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = load i32, i32* @WT_STATUS_HEADER, align 4
  %99 = load %struct.wt_status*, %struct.wt_status** %2, align 8
  %100 = call i32 @color(i32 %98, %struct.wt_status* %99)
  %101 = getelementptr inbounds [3 x i8], [3 x i8]* %8, i64 0, i64 0
  %102 = load i8*, i8** %5, align 8
  %103 = load i8*, i8** %4, align 8
  %104 = ptrtoint i8* %102 to i64
  %105 = ptrtoint i8* %103 to i64
  %106 = sub i64 %104, %105
  %107 = trunc i64 %106 to i32
  %108 = load i8*, i8** %4, align 8
  %109 = call i32 (i32, i32, i8*, ...) @color_fprintf_ln(i32 %97, i32 %100, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* %101, i32 %107, i8* %108)
  br label %110

110:                                              ; preds = %94
  %111 = load i8*, i8** %5, align 8
  %112 = getelementptr inbounds i8, i8* %111, i64 1
  store i8* %112, i8** %4, align 8
  br label %90

113:                                              ; preds = %90
  %114 = load %struct.wt_status*, %struct.wt_status** %2, align 8
  %115 = getelementptr inbounds %struct.wt_status, %struct.wt_status* %114, i32 0, i32 1
  %116 = load i64, i64* %115, align 8
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %128

118:                                              ; preds = %113
  %119 = load %struct.wt_status*, %struct.wt_status** %2, align 8
  %120 = getelementptr inbounds %struct.wt_status, %struct.wt_status* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = load i32, i32* @WT_STATUS_HEADER, align 4
  %123 = load %struct.wt_status*, %struct.wt_status** %2, align 8
  %124 = call i32 @color(i32 %122, %struct.wt_status* %123)
  %125 = load i8, i8* @comment_line_char, align 1
  %126 = sext i8 %125 to i32
  %127 = call i32 (i32, i32, i8*, ...) @color_fprintf_ln(i32 %121, i32 %124, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 %126)
  br label %133

128:                                              ; preds = %113
  %129 = load %struct.wt_status*, %struct.wt_status** %2, align 8
  %130 = getelementptr inbounds %struct.wt_status, %struct.wt_status* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = call i32 @fputs(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i32 %131)
  br label %133

133:                                              ; preds = %128, %118
  %134 = call i32 @strbuf_release(%struct.strbuf* %3)
  br label %135

135:                                              ; preds = %133, %43, %32
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @assert(i32) #2

declare dso_local i32 @skip_prefix(i32, i8*, i8**) #2

declare dso_local %struct.branch* @branch_get(i8*) #2

declare dso_local i32 @getnanotime(...) #2

declare dso_local i32 @format_tracking_info(%struct.branch*, %struct.strbuf*, i32) #2

declare dso_local i32 @strbuf_addf(%struct.strbuf*, i32, i32) #2

declare dso_local i32 @_(i8*) #2

declare dso_local i8* @strchr(i8*, i8 signext) #2

declare dso_local i32 @color_fprintf_ln(i32, i32, i8*, ...) #2

declare dso_local i32 @color(i32, %struct.wt_status*) #2

declare dso_local i32 @fputs(i8*, i32) #2

declare dso_local i32 @strbuf_release(%struct.strbuf*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
