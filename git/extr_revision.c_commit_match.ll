; ModuleID = '/home/carl/AnghaBench/git/extr_revision.c_commit_match.c'
source_filename = "/home/carl/AnghaBench/git/extr_revision.c_commit_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i8*, i64 }
%struct.commit = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.rev_info = type { i64, %struct.TYPE_4__, i64, i32, i32 }
%struct.TYPE_4__ = type { i64, i64, i32 }

@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 8
@.str = private unnamed_addr constant [8 x i8] c"reflog \00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"\0Aauthor \00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"\0Acommitter \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.commit*, %struct.rev_info*)* @commit_match to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @commit_match(%struct.commit* %0, %struct.rev_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.commit*, align 8
  %5 = alloca %struct.rev_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.strbuf, align 8
  store %struct.commit* %0, %struct.commit** %4, align 8
  store %struct.rev_info* %1, %struct.rev_info** %5, align 8
  %10 = bitcast %struct.strbuf* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %10, i8* align 8 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 16, i1 false)
  %11 = load %struct.rev_info*, %struct.rev_info** %5, align 8
  %12 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 8
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %23, label %16

16:                                               ; preds = %2
  %17 = load %struct.rev_info*, %struct.rev_info** %5, align 8
  %18 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %16
  store i32 1, i32* %3, align 4
  br label %129

23:                                               ; preds = %16, %2
  %24 = load %struct.rev_info*, %struct.rev_info** %5, align 8
  %25 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %36

29:                                               ; preds = %23
  %30 = call i32 @strbuf_addstr(%struct.strbuf* %9, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %31 = load %struct.rev_info*, %struct.rev_info** %5, align 8
  %32 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %31, i32 0, i32 4
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @get_reflog_message(%struct.strbuf* %9, i32 %33)
  %35 = call i32 @strbuf_addch(%struct.strbuf* %9, i8 signext 10)
  br label %36

36:                                               ; preds = %29, %23
  %37 = call i8* (...) @get_log_output_encoding()
  store i8* %37, i8** %7, align 8
  %38 = load %struct.commit*, %struct.commit** %4, align 8
  %39 = load i8*, i8** %7, align 8
  %40 = call i8* @logmsg_reencode(%struct.commit* %38, i32* null, i8* %39)
  store i8* %40, i8** %8, align 8
  %41 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %9, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %36
  %45 = load i8*, i8** %8, align 8
  %46 = call i32 @strbuf_addstr(%struct.strbuf* %9, i8* %45)
  br label %47

47:                                               ; preds = %44, %36
  %48 = load %struct.rev_info*, %struct.rev_info** %5, align 8
  %49 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %74

53:                                               ; preds = %47
  %54 = load %struct.rev_info*, %struct.rev_info** %5, align 8
  %55 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 8
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %74

58:                                               ; preds = %53
  %59 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %9, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %65, label %62

62:                                               ; preds = %58
  %63 = load i8*, i8** %8, align 8
  %64 = call i32 @strbuf_addstr(%struct.strbuf* %9, i8* %63)
  br label %65

65:                                               ; preds = %62, %58
  %66 = load %struct.rev_info*, %struct.rev_info** %5, align 8
  %67 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @commit_rewrite_person(%struct.strbuf* %9, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %68)
  %70 = load %struct.rev_info*, %struct.rev_info** %5, align 8
  %71 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @commit_rewrite_person(%struct.strbuf* %9, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32 %72)
  br label %74

74:                                               ; preds = %65, %53, %47
  %75 = load %struct.rev_info*, %struct.rev_info** %5, align 8
  %76 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %75, i32 0, i32 2
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %92

79:                                               ; preds = %74
  %80 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %9, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %86, label %83

83:                                               ; preds = %79
  %84 = load i8*, i8** %8, align 8
  %85 = call i32 @strbuf_addstr(%struct.strbuf* %9, i8* %84)
  br label %86

86:                                               ; preds = %83, %79
  %87 = load %struct.commit*, %struct.commit** %4, align 8
  %88 = getelementptr inbounds %struct.commit, %struct.commit* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 0
  %90 = load i8*, i8** %7, align 8
  %91 = call i32 @format_display_notes(i32* %89, %struct.strbuf* %9, i8* %90, i32 1)
  br label %92

92:                                               ; preds = %86, %74
  %93 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %9, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %104

96:                                               ; preds = %92
  %97 = load %struct.rev_info*, %struct.rev_info** %5, align 8
  %98 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %97, i32 0, i32 1
  %99 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %9, i32 0, i32 0
  %100 = load i8*, i8** %99, align 8
  %101 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %9, i32 0, i32 1
  %102 = load i64, i64* %101, align 8
  %103 = call i32 @grep_buffer(%struct.TYPE_4__* %98, i8* %100, i64 %102)
  store i32 %103, i32* %6, align 4
  br label %111

104:                                              ; preds = %92
  %105 = load %struct.rev_info*, %struct.rev_info** %5, align 8
  %106 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %105, i32 0, i32 1
  %107 = load i8*, i8** %8, align 8
  %108 = load i8*, i8** %8, align 8
  %109 = call i64 @strlen(i8* %108)
  %110 = call i32 @grep_buffer(%struct.TYPE_4__* %106, i8* %107, i64 %109)
  store i32 %110, i32* %6, align 4
  br label %111

111:                                              ; preds = %104, %96
  %112 = call i32 @strbuf_release(%struct.strbuf* %9)
  %113 = load %struct.commit*, %struct.commit** %4, align 8
  %114 = load i8*, i8** %8, align 8
  %115 = call i32 @unuse_commit_buffer(%struct.commit* %113, i8* %114)
  %116 = load %struct.rev_info*, %struct.rev_info** %5, align 8
  %117 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %125

120:                                              ; preds = %111
  %121 = load i32, i32* %6, align 4
  %122 = icmp ne i32 %121, 0
  %123 = xor i1 %122, true
  %124 = zext i1 %123 to i32
  br label %127

125:                                              ; preds = %111
  %126 = load i32, i32* %6, align 4
  br label %127

127:                                              ; preds = %125, %120
  %128 = phi i32 [ %124, %120 ], [ %126, %125 ]
  store i32 %128, i32* %3, align 4
  br label %129

129:                                              ; preds = %127, %22
  %130 = load i32, i32* %3, align 4
  ret i32 %130
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @strbuf_addstr(%struct.strbuf*, i8*) #2

declare dso_local i32 @get_reflog_message(%struct.strbuf*, i32) #2

declare dso_local i32 @strbuf_addch(%struct.strbuf*, i8 signext) #2

declare dso_local i8* @get_log_output_encoding(...) #2

declare dso_local i8* @logmsg_reencode(%struct.commit*, i32*, i8*) #2

declare dso_local i32 @commit_rewrite_person(%struct.strbuf*, i8*, i32) #2

declare dso_local i32 @format_display_notes(i32*, %struct.strbuf*, i8*, i32) #2

declare dso_local i32 @grep_buffer(%struct.TYPE_4__*, i8*, i64) #2

declare dso_local i64 @strlen(i8*) #2

declare dso_local i32 @strbuf_release(%struct.strbuf*) #2

declare dso_local i32 @unuse_commit_buffer(%struct.commit*, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
