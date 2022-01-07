; ModuleID = '/home/carl/AnghaBench/git/extr_diff.c_show_file_mode_name.c'
source_filename = "/home/carl/AnghaBench/git/extr_diff.c_show_file_mode_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32, i32 }
%struct.diff_options = type { i32 }
%struct.diff_filespec = type { i32, i32 }

@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 4
@.str = private unnamed_addr constant [15 x i8] c" %s mode %06o \00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c" %s \00", align 1
@DIFF_SYMBOL_SUMMARY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.diff_options*, i8*, %struct.diff_filespec*)* @show_file_mode_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @show_file_mode_name(%struct.diff_options* %0, i8* %1, %struct.diff_filespec* %2) #0 {
  %4 = alloca %struct.diff_options*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.diff_filespec*, align 8
  %7 = alloca %struct.strbuf, align 4
  store %struct.diff_options* %0, %struct.diff_options** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.diff_filespec* %2, %struct.diff_filespec** %6, align 8
  %8 = bitcast %struct.strbuf* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %8, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 8, i1 false)
  %9 = load %struct.diff_filespec*, %struct.diff_filespec** %6, align 8
  %10 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %19

13:                                               ; preds = %3
  %14 = load i8*, i8** %5, align 8
  %15 = load %struct.diff_filespec*, %struct.diff_filespec** %6, align 8
  %16 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i32 (%struct.strbuf*, i8*, i8*, ...) @strbuf_addf(%struct.strbuf* %7, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8* %14, i32 %17)
  br label %22

19:                                               ; preds = %3
  %20 = load i8*, i8** %5, align 8
  %21 = call i32 (%struct.strbuf*, i8*, i8*, ...) @strbuf_addf(%struct.strbuf* %7, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* %20)
  br label %22

22:                                               ; preds = %19, %13
  %23 = load %struct.diff_filespec*, %struct.diff_filespec** %6, align 8
  %24 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @quote_c_style(i32 %25, %struct.strbuf* %7, i32* null, i32 0)
  %27 = call i32 @strbuf_addch(%struct.strbuf* %7, i8 signext 10)
  %28 = load %struct.diff_options*, %struct.diff_options** %4, align 8
  %29 = load i32, i32* @DIFF_SYMBOL_SUMMARY, align 4
  %30 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %7, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %7, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @emit_diff_symbol(%struct.diff_options* %28, i32 %29, i32 %31, i32 %33, i32 0)
  %35 = call i32 @strbuf_release(%struct.strbuf* %7)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @strbuf_addf(%struct.strbuf*, i8*, i8*, ...) #2

declare dso_local i32 @quote_c_style(i32, %struct.strbuf*, i32*, i32) #2

declare dso_local i32 @strbuf_addch(%struct.strbuf*, i8 signext) #2

declare dso_local i32 @emit_diff_symbol(%struct.diff_options*, i32, i32, i32, i32) #2

declare dso_local i32 @strbuf_release(%struct.strbuf*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
