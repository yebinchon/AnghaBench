; ModuleID = '/home/carl/AnghaBench/git/trace2/extr_tr2_tgt_perf.c_fn_child_start_fl.c'
source_filename = "/home/carl/AnghaBench/git/trace2/extr_tr2_tgt_perf.c_fn_child_start_fl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32 }
%struct.child_process = type { i8*, i8*, i64*, i64, i32, i32 }

@.str = private unnamed_addr constant [12 x i8] c"child_start\00", align 1
@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"[ch%d] class:hook hook:%s\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"[ch%d] class:%s\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c" cd:\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c" argv:[\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"git\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, i32, %struct.child_process*)* @fn_child_start_fl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fn_child_start_fl(i8* %0, i32 %1, i32 %2, %struct.child_process* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.child_process*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.strbuf, align 4
  %11 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store %struct.child_process* %3, %struct.child_process** %8, align 8
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8** %9, align 8
  %12 = bitcast %struct.strbuf* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %12, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 4, i1 false)
  %13 = load %struct.child_process*, %struct.child_process** %8, align 8
  %14 = getelementptr inbounds %struct.child_process, %struct.child_process* %13, i32 0, i32 0
  %15 = load i8*, i8** %14, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %17, label %25

17:                                               ; preds = %4
  %18 = load %struct.child_process*, %struct.child_process** %8, align 8
  %19 = getelementptr inbounds %struct.child_process, %struct.child_process* %18, i32 0, i32 5
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.child_process*, %struct.child_process** %8, align 8
  %22 = getelementptr inbounds %struct.child_process, %struct.child_process* %21, i32 0, i32 0
  %23 = load i8*, i8** %22, align 8
  %24 = call i32 @strbuf_addf(%struct.strbuf* %10, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %20, i8* %23)
  br label %42

25:                                               ; preds = %4
  %26 = load %struct.child_process*, %struct.child_process** %8, align 8
  %27 = getelementptr inbounds %struct.child_process, %struct.child_process* %26, i32 0, i32 1
  %28 = load i8*, i8** %27, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %30, label %34

30:                                               ; preds = %25
  %31 = load %struct.child_process*, %struct.child_process** %8, align 8
  %32 = getelementptr inbounds %struct.child_process, %struct.child_process* %31, i32 0, i32 1
  %33 = load i8*, i8** %32, align 8
  br label %35

34:                                               ; preds = %25
  br label %35

35:                                               ; preds = %34, %30
  %36 = phi i8* [ %33, %30 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), %34 ]
  store i8* %36, i8** %11, align 8
  %37 = load %struct.child_process*, %struct.child_process** %8, align 8
  %38 = getelementptr inbounds %struct.child_process, %struct.child_process* %37, i32 0, i32 5
  %39 = load i32, i32* %38, align 4
  %40 = load i8*, i8** %11, align 8
  %41 = call i32 @strbuf_addf(%struct.strbuf* %10, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i32 %39, i8* %40)
  br label %42

42:                                               ; preds = %35, %17
  %43 = load %struct.child_process*, %struct.child_process** %8, align 8
  %44 = getelementptr inbounds %struct.child_process, %struct.child_process* %43, i32 0, i32 4
  %45 = load i32, i32* %44, align 8
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %53

47:                                               ; preds = %42
  %48 = call i32 @strbuf_addstr(%struct.strbuf* %10, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %49 = load %struct.child_process*, %struct.child_process** %8, align 8
  %50 = getelementptr inbounds %struct.child_process, %struct.child_process* %49, i32 0, i32 4
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @sq_quote_buf_pretty(%struct.strbuf* %10, i32 %51)
  br label %53

53:                                               ; preds = %47, %42
  %54 = call i32 @strbuf_addstr(%struct.strbuf* %10, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0))
  %55 = load %struct.child_process*, %struct.child_process** %8, align 8
  %56 = getelementptr inbounds %struct.child_process, %struct.child_process* %55, i32 0, i32 3
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %70

59:                                               ; preds = %53
  %60 = call i32 @strbuf_addstr(%struct.strbuf* %10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0))
  %61 = load %struct.child_process*, %struct.child_process** %8, align 8
  %62 = getelementptr inbounds %struct.child_process, %struct.child_process* %61, i32 0, i32 2
  %63 = load i64*, i64** %62, align 8
  %64 = getelementptr inbounds i64, i64* %63, i64 0
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %59
  %68 = call i32 @strbuf_addch(%struct.strbuf* %10, i8 signext 32)
  br label %69

69:                                               ; preds = %67, %59
  br label %70

70:                                               ; preds = %69, %53
  %71 = load %struct.child_process*, %struct.child_process** %8, align 8
  %72 = getelementptr inbounds %struct.child_process, %struct.child_process* %71, i32 0, i32 2
  %73 = load i64*, i64** %72, align 8
  %74 = call i32 @sq_append_quote_argv_pretty(%struct.strbuf* %10, i64* %73)
  %75 = call i32 @strbuf_addch(%struct.strbuf* %10, i8 signext 93)
  %76 = load i8*, i8** %5, align 8
  %77 = load i32, i32* %6, align 4
  %78 = load i8*, i8** %9, align 8
  %79 = call i32 @perf_io_write_fl(i8* %76, i32 %77, i8* %78, i32* null, i32* %7, i32* null, i32* null, %struct.strbuf* %10)
  %80 = call i32 @strbuf_release(%struct.strbuf* %10)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @strbuf_addf(%struct.strbuf*, i8*, i32, i8*) #2

declare dso_local i32 @strbuf_addstr(%struct.strbuf*, i8*) #2

declare dso_local i32 @sq_quote_buf_pretty(%struct.strbuf*, i32) #2

declare dso_local i32 @strbuf_addch(%struct.strbuf*, i8 signext) #2

declare dso_local i32 @sq_append_quote_argv_pretty(%struct.strbuf*, i64*) #2

declare dso_local i32 @perf_io_write_fl(i8*, i32, i8*, i32*, i32*, i32*, i32*, %struct.strbuf*) #2

declare dso_local i32 @strbuf_release(%struct.strbuf*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
