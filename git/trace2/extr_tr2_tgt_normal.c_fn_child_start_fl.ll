; ModuleID = '/home/carl/AnghaBench/git/trace2/extr_tr2_tgt_normal.c_fn_child_start_fl.c'
source_filename = "/home/carl/AnghaBench/git/trace2/extr_tr2_tgt_normal.c_fn_child_start_fl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32 }
%struct.child_process = type { i32, i64, i32, i32 }

@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 4
@.str = private unnamed_addr constant [16 x i8] c"child_start[%d]\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c" cd \00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c";\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"git \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, i32, %struct.child_process*)* @fn_child_start_fl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fn_child_start_fl(i8* %0, i32 %1, i32 %2, %struct.child_process* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.child_process*, align 8
  %9 = alloca %struct.strbuf, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store %struct.child_process* %3, %struct.child_process** %8, align 8
  %10 = bitcast %struct.strbuf* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %10, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 4, i1 false)
  %11 = load %struct.child_process*, %struct.child_process** %8, align 8
  %12 = getelementptr inbounds %struct.child_process, %struct.child_process* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @strbuf_addf(%struct.strbuf* %9, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %13)
  %15 = load %struct.child_process*, %struct.child_process** %8, align 8
  %16 = getelementptr inbounds %struct.child_process, %struct.child_process* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 8
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %26

19:                                               ; preds = %4
  %20 = call i32 @strbuf_addstr(%struct.strbuf* %9, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %21 = load %struct.child_process*, %struct.child_process** %8, align 8
  %22 = getelementptr inbounds %struct.child_process, %struct.child_process* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @sq_quote_buf_pretty(%struct.strbuf* %9, i32 %23)
  %25 = call i32 @strbuf_addstr(%struct.strbuf* %9, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  br label %26

26:                                               ; preds = %19, %4
  %27 = call i32 @strbuf_addch(%struct.strbuf* %9, i8 signext 32)
  %28 = load %struct.child_process*, %struct.child_process** %8, align 8
  %29 = getelementptr inbounds %struct.child_process, %struct.child_process* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %26
  %33 = call i32 @strbuf_addstr(%struct.strbuf* %9, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  br label %34

34:                                               ; preds = %32, %26
  %35 = load %struct.child_process*, %struct.child_process** %8, align 8
  %36 = getelementptr inbounds %struct.child_process, %struct.child_process* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @sq_append_quote_argv_pretty(%struct.strbuf* %9, i32 %37)
  %39 = load i8*, i8** %5, align 8
  %40 = load i32, i32* %6, align 4
  %41 = call i32 @normal_io_write_fl(i8* %39, i32 %40, %struct.strbuf* %9)
  %42 = call i32 @strbuf_release(%struct.strbuf* %9)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @strbuf_addf(%struct.strbuf*, i8*, i32) #2

declare dso_local i32 @strbuf_addstr(%struct.strbuf*, i8*) #2

declare dso_local i32 @sq_quote_buf_pretty(%struct.strbuf*, i32) #2

declare dso_local i32 @strbuf_addch(%struct.strbuf*, i8 signext) #2

declare dso_local i32 @sq_append_quote_argv_pretty(%struct.strbuf*, i32) #2

declare dso_local i32 @normal_io_write_fl(i8*, i32, %struct.strbuf*) #2

declare dso_local i32 @strbuf_release(%struct.strbuf*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
