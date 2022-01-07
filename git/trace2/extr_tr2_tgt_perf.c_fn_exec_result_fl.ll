; ModuleID = '/home/carl/AnghaBench/git/trace2/extr_tr2_tgt_perf.c_fn_exec_result_fl.c'
source_filename = "/home/carl/AnghaBench/git/trace2/extr_tr2_tgt_perf.c_fn_exec_result_fl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32 }

@.str = private unnamed_addr constant [12 x i8] c"exec_result\00", align 1
@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"id:%d code:%d\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c" err:%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, i32, i32, i32)* @fn_exec_result_fl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fn_exec_result_fl(i8* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca %struct.strbuf, align 4
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8** %11, align 8
  %13 = bitcast %struct.strbuf* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %13, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 4, i1 false)
  %14 = load i32, i32* %9, align 4
  %15 = load i32, i32* %10, align 4
  %16 = call i32 (%struct.strbuf*, i8*, i32, ...) @strbuf_addf(%struct.strbuf* %12, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 %14, i32 %15)
  %17 = load i32, i32* %10, align 4
  %18 = icmp sgt i32 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %5
  %20 = load i32, i32* %10, align 4
  %21 = call i32 @strerror(i32 %20)
  %22 = call i32 (%struct.strbuf*, i8*, i32, ...) @strbuf_addf(%struct.strbuf* %12, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 %21)
  br label %23

23:                                               ; preds = %19, %5
  %24 = load i8*, i8** %6, align 8
  %25 = load i32, i32* %7, align 4
  %26 = load i8*, i8** %11, align 8
  %27 = call i32 @perf_io_write_fl(i8* %24, i32 %25, i8* %26, i32* null, i32* %8, i32* null, i32* null, %struct.strbuf* %12)
  %28 = call i32 @strbuf_release(%struct.strbuf* %12)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @strbuf_addf(%struct.strbuf*, i8*, i32, ...) #2

declare dso_local i32 @strerror(i32) #2

declare dso_local i32 @perf_io_write_fl(i8*, i32, i8*, i32*, i32*, i32*, i32*, %struct.strbuf*) #2

declare dso_local i32 @strbuf_release(%struct.strbuf*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
