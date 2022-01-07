; ModuleID = '/home/carl/AnghaBench/git/extr_diff.c_diff_summary.c'
source_filename = "/home/carl/AnghaBench/git/extr_diff.c_diff_summary.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32, i32 }
%struct.diff_options = type { i32 }
%struct.diff_filepair = type { i32, i32, %struct.TYPE_2__*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"delete\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"create\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"copy\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"rename\00", align 1
@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 4
@.str.4 = private unnamed_addr constant [10 x i8] c" rewrite \00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c" (%d%%)\0A\00", align 1
@DIFF_SYMBOL_SUMMARY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.diff_options*, %struct.diff_filepair*)* @diff_summary to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @diff_summary(%struct.diff_options* %0, %struct.diff_filepair* %1) #0 {
  %3 = alloca %struct.diff_options*, align 8
  %4 = alloca %struct.diff_filepair*, align 8
  %5 = alloca %struct.strbuf, align 4
  store %struct.diff_options* %0, %struct.diff_options** %3, align 8
  store %struct.diff_filepair* %1, %struct.diff_filepair** %4, align 8
  %6 = load %struct.diff_filepair*, %struct.diff_filepair** %4, align 8
  %7 = getelementptr inbounds %struct.diff_filepair, %struct.diff_filepair* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  switch i32 %8, label %29 [
    i32 129, label %9
    i32 131, label %15
    i32 130, label %21
    i32 128, label %25
  ]

9:                                                ; preds = %2
  %10 = load %struct.diff_options*, %struct.diff_options** %3, align 8
  %11 = load %struct.diff_filepair*, %struct.diff_filepair** %4, align 8
  %12 = getelementptr inbounds %struct.diff_filepair, %struct.diff_filepair* %11, i32 0, i32 3
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = call i32 @show_file_mode_name(%struct.diff_options* %10, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), %struct.TYPE_2__* %13)
  br label %64

15:                                               ; preds = %2
  %16 = load %struct.diff_options*, %struct.diff_options** %3, align 8
  %17 = load %struct.diff_filepair*, %struct.diff_filepair** %4, align 8
  %18 = getelementptr inbounds %struct.diff_filepair, %struct.diff_filepair* %17, i32 0, i32 2
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = call i32 @show_file_mode_name(%struct.diff_options* %16, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_2__* %19)
  br label %64

21:                                               ; preds = %2
  %22 = load %struct.diff_options*, %struct.diff_options** %3, align 8
  %23 = load %struct.diff_filepair*, %struct.diff_filepair** %4, align 8
  %24 = call i32 @show_rename_copy(%struct.diff_options* %22, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), %struct.diff_filepair* %23)
  br label %64

25:                                               ; preds = %2
  %26 = load %struct.diff_options*, %struct.diff_options** %3, align 8
  %27 = load %struct.diff_filepair*, %struct.diff_filepair** %4, align 8
  %28 = call i32 @show_rename_copy(%struct.diff_options* %26, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), %struct.diff_filepair* %27)
  br label %64

29:                                               ; preds = %2
  %30 = load %struct.diff_filepair*, %struct.diff_filepair** %4, align 8
  %31 = getelementptr inbounds %struct.diff_filepair, %struct.diff_filepair* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %54

34:                                               ; preds = %29
  %35 = bitcast %struct.strbuf* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %35, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 8, i1 false)
  %36 = call i32 @strbuf_addstr(%struct.strbuf* %5, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0))
  %37 = load %struct.diff_filepair*, %struct.diff_filepair** %4, align 8
  %38 = getelementptr inbounds %struct.diff_filepair, %struct.diff_filepair* %37, i32 0, i32 2
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @quote_c_style(i32 %41, %struct.strbuf* %5, i32* null, i32 0)
  %43 = load %struct.diff_filepair*, %struct.diff_filepair** %4, align 8
  %44 = call i32 @similarity_index(%struct.diff_filepair* %43)
  %45 = call i32 @strbuf_addf(%struct.strbuf* %5, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i32 %44)
  %46 = load %struct.diff_options*, %struct.diff_options** %3, align 8
  %47 = load i32, i32* @DIFF_SYMBOL_SUMMARY, align 4
  %48 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %5, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %5, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @emit_diff_symbol(%struct.diff_options* %46, i32 %47, i32 %49, i32 %51, i32 0)
  %53 = call i32 @strbuf_release(%struct.strbuf* %5)
  br label %54

54:                                               ; preds = %34, %29
  %55 = load %struct.diff_options*, %struct.diff_options** %3, align 8
  %56 = load %struct.diff_filepair*, %struct.diff_filepair** %4, align 8
  %57 = load %struct.diff_filepair*, %struct.diff_filepair** %4, align 8
  %58 = getelementptr inbounds %struct.diff_filepair, %struct.diff_filepair* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = icmp ne i32 %59, 0
  %61 = xor i1 %60, true
  %62 = zext i1 %61 to i32
  %63 = call i32 @show_mode_change(%struct.diff_options* %55, %struct.diff_filepair* %56, i32 %62)
  br label %64

64:                                               ; preds = %54, %25, %21, %15, %9
  ret void
}

declare dso_local i32 @show_file_mode_name(%struct.diff_options*, i8*, %struct.TYPE_2__*) #1

declare dso_local i32 @show_rename_copy(%struct.diff_options*, i8*, %struct.diff_filepair*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @strbuf_addstr(%struct.strbuf*, i8*) #1

declare dso_local i32 @quote_c_style(i32, %struct.strbuf*, i32*, i32) #1

declare dso_local i32 @strbuf_addf(%struct.strbuf*, i8*, i32) #1

declare dso_local i32 @similarity_index(%struct.diff_filepair*) #1

declare dso_local i32 @emit_diff_symbol(%struct.diff_options*, i32, i32, i32, i32) #1

declare dso_local i32 @strbuf_release(%struct.strbuf*) #1

declare dso_local i32 @show_mode_change(%struct.diff_options*, %struct.diff_filepair*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
