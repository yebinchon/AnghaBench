; ModuleID = '/home/carl/AnghaBench/git/trace2/extr_tr2_tgt_perf.c_fn_exec_fl.c'
source_filename = "/home/carl/AnghaBench/git/trace2/extr_tr2_tgt_perf.c_fn_exec_fl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"exec\00", align 1
@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"id:%d \00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"argv:[\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, i32, i32, i8*, i8**)* @fn_exec_fl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fn_exec_fl(i8* %0, i32 %1, i32 %2, i32 %3, i8* %4, i8** %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8**, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct.strbuf, align 4
  store i8* %0, i8** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i8* %4, i8** %11, align 8
  store i8** %5, i8*** %12, align 8
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8** %13, align 8
  %15 = bitcast %struct.strbuf* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %15, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 4, i1 false)
  %16 = load i32, i32* %10, align 4
  %17 = call i32 @strbuf_addf(%struct.strbuf* %14, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %16)
  %18 = call i32 @strbuf_addstr(%struct.strbuf* %14, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %19 = load i8*, i8** %11, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %21, label %31

21:                                               ; preds = %6
  %22 = load i8*, i8** %11, align 8
  %23 = call i32 @strbuf_addstr(%struct.strbuf* %14, i8* %22)
  %24 = load i8**, i8*** %12, align 8
  %25 = getelementptr inbounds i8*, i8** %24, i64 0
  %26 = load i8*, i8** %25, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %28, label %30

28:                                               ; preds = %21
  %29 = call i32 @strbuf_addch(%struct.strbuf* %14, i8 signext 32)
  br label %30

30:                                               ; preds = %28, %21
  br label %31

31:                                               ; preds = %30, %6
  %32 = load i8**, i8*** %12, align 8
  %33 = call i32 @sq_append_quote_argv_pretty(%struct.strbuf* %14, i8** %32)
  %34 = call i32 @strbuf_addch(%struct.strbuf* %14, i8 signext 93)
  %35 = load i8*, i8** %7, align 8
  %36 = load i32, i32* %8, align 4
  %37 = load i8*, i8** %13, align 8
  %38 = call i32 @perf_io_write_fl(i8* %35, i32 %36, i8* %37, i32* null, i32* %9, i32* null, i32* null, %struct.strbuf* %14)
  %39 = call i32 @strbuf_release(%struct.strbuf* %14)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @strbuf_addf(%struct.strbuf*, i8*, i32) #2

declare dso_local i32 @strbuf_addstr(%struct.strbuf*, i8*) #2

declare dso_local i32 @strbuf_addch(%struct.strbuf*, i8 signext) #2

declare dso_local i32 @sq_append_quote_argv_pretty(%struct.strbuf*, i8**) #2

declare dso_local i32 @perf_io_write_fl(i8*, i32, i8*, i32*, i32*, i32*, i32*, %struct.strbuf*) #2

declare dso_local i32 @strbuf_release(%struct.strbuf*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
