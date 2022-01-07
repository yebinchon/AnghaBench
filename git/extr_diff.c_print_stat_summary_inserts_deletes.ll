; ModuleID = '/home/carl/AnghaBench/git/extr_diff.c_print_stat_summary_inserts_deletes.c'
source_filename = "/home/carl/AnghaBench/git/extr_diff.c_print_stat_summary_inserts_deletes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32, i32* }
%struct.diff_options = type { i32 }

@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 8
@DIFF_SYMBOL_STATS_SUMMARY_NO_FILES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c" %d file changed\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c" %d files changed\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c", %d insertion(+)\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c", %d insertions(+)\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c", %d deletion(-)\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c", %d deletions(-)\00", align 1
@DIFF_SYMBOL_STATS_SUMMARY_INSERTS_DELETES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.diff_options*, i32, i32, i32)* @print_stat_summary_inserts_deletes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_stat_summary_inserts_deletes(%struct.diff_options* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.diff_options*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.strbuf, align 8
  store %struct.diff_options* %0, %struct.diff_options** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = bitcast %struct.strbuf* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %10, i8* align 8 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 16, i1 false)
  %11 = load i32, i32* %6, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %26, label %13

13:                                               ; preds = %4
  %14 = load i32, i32* %7, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %13
  %17 = load i32, i32* %8, align 4
  %18 = icmp eq i32 %17, 0
  br label %19

19:                                               ; preds = %16, %13
  %20 = phi i1 [ false, %13 ], [ %18, %16 ]
  %21 = zext i1 %20 to i32
  %22 = call i32 @assert(i32 %21)
  %23 = load %struct.diff_options*, %struct.diff_options** %5, align 8
  %24 = load i32, i32* @DIFF_SYMBOL_STATS_SUMMARY_NO_FILES, align 4
  %25 = call i32 @emit_diff_symbol(%struct.diff_options* %23, i32 %24, i32* null, i32 0, i32 0)
  br label %68

26:                                               ; preds = %4
  %27 = load i32, i32* %6, align 4
  %28 = icmp eq i32 %27, 1
  %29 = zext i1 %28 to i64
  %30 = select i1 %28, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0)
  %31 = load i32, i32* %6, align 4
  %32 = call i32 @strbuf_addf(%struct.strbuf* %9, i8* %30, i32 %31)
  %33 = load i32, i32* %7, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %26
  %36 = load i32, i32* %8, align 4
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %45

38:                                               ; preds = %35, %26
  %39 = load i32, i32* %7, align 4
  %40 = icmp eq i32 %39, 1
  %41 = zext i1 %40 to i64
  %42 = select i1 %40, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0)
  %43 = load i32, i32* %7, align 4
  %44 = call i32 @strbuf_addf(%struct.strbuf* %9, i8* %42, i32 %43)
  br label %45

45:                                               ; preds = %38, %35
  %46 = load i32, i32* %8, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %51, label %48

48:                                               ; preds = %45
  %49 = load i32, i32* %7, align 4
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %58

51:                                               ; preds = %48, %45
  %52 = load i32, i32* %8, align 4
  %53 = icmp eq i32 %52, 1
  %54 = zext i1 %53 to i64
  %55 = select i1 %53, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0)
  %56 = load i32, i32* %8, align 4
  %57 = call i32 @strbuf_addf(%struct.strbuf* %9, i8* %55, i32 %56)
  br label %58

58:                                               ; preds = %51, %48
  %59 = call i32 @strbuf_addch(%struct.strbuf* %9, i8 signext 10)
  %60 = load %struct.diff_options*, %struct.diff_options** %5, align 8
  %61 = load i32, i32* @DIFF_SYMBOL_STATS_SUMMARY_INSERTS_DELETES, align 4
  %62 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %9, i32 0, i32 1
  %63 = load i32*, i32** %62, align 8
  %64 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %9, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @emit_diff_symbol(%struct.diff_options* %60, i32 %61, i32* %63, i32 %65, i32 0)
  %67 = call i32 @strbuf_release(%struct.strbuf* %9)
  br label %68

68:                                               ; preds = %58, %19
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @assert(i32) #2

declare dso_local i32 @emit_diff_symbol(%struct.diff_options*, i32, i32*, i32, i32) #2

declare dso_local i32 @strbuf_addf(%struct.strbuf*, i8*, i32) #2

declare dso_local i32 @strbuf_addch(%struct.strbuf*, i8 signext) #2

declare dso_local i32 @strbuf_release(%struct.strbuf*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
