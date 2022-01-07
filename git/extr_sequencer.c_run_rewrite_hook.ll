; ModuleID = '/home/carl/AnghaBench/git/extr_sequencer.c_run_rewrite_hook.c'
source_filename = "/home/carl/AnghaBench/git/extr_sequencer.c_run_rewrite_hook.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.child_process = type { i8**, i32, i32, i8* }
%struct.strbuf = type { i32, i32 }
%struct.object_id = type { i32 }

@CHILD_PROCESS_INIT = common dso_local global %struct.child_process zeroinitializer, align 8
@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 4
@.str = private unnamed_addr constant [13 x i8] c"post-rewrite\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"amend\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@SIGPIPE = common dso_local global i32 0, align 4
@SIG_IGN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.object_id*, %struct.object_id*)* @run_rewrite_hook to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @run_rewrite_hook(%struct.object_id* %0, %struct.object_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.object_id*, align 8
  %5 = alloca %struct.object_id*, align 8
  %6 = alloca %struct.child_process, align 8
  %7 = alloca [3 x i8*], align 16
  %8 = alloca i32, align 4
  %9 = alloca %struct.strbuf, align 4
  store %struct.object_id* %0, %struct.object_id** %4, align 8
  store %struct.object_id* %1, %struct.object_id** %5, align 8
  %10 = bitcast %struct.child_process* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %10, i8* align 8 bitcast (%struct.child_process* @CHILD_PROCESS_INIT to i8*), i64 24, i1 false)
  %11 = bitcast %struct.strbuf* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %11, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 8, i1 false)
  %12 = call i8* @find_hook(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %13 = getelementptr inbounds [3 x i8*], [3 x i8*]* %7, i64 0, i64 0
  store i8* %12, i8** %13, align 16
  %14 = getelementptr inbounds [3 x i8*], [3 x i8*]* %7, i64 0, i64 0
  %15 = load i8*, i8** %14, align 16
  %16 = icmp ne i8* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %54

18:                                               ; preds = %2
  %19 = getelementptr inbounds [3 x i8*], [3 x i8*]* %7, i64 0, i64 1
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8** %19, align 8
  %20 = getelementptr inbounds [3 x i8*], [3 x i8*]* %7, i64 0, i64 2
  store i8* null, i8** %20, align 16
  %21 = getelementptr inbounds [3 x i8*], [3 x i8*]* %7, i64 0, i64 0
  %22 = getelementptr inbounds %struct.child_process, %struct.child_process* %6, i32 0, i32 0
  store i8** %21, i8*** %22, align 8
  %23 = getelementptr inbounds %struct.child_process, %struct.child_process* %6, i32 0, i32 1
  store i32 -1, i32* %23, align 8
  %24 = getelementptr inbounds %struct.child_process, %struct.child_process* %6, i32 0, i32 2
  store i32 1, i32* %24, align 4
  %25 = getelementptr inbounds %struct.child_process, %struct.child_process* %6, i32 0, i32 3
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8** %25, align 8
  %26 = call i32 @start_command(%struct.child_process* %6)
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* %8, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %18
  %30 = load i32, i32* %8, align 4
  store i32 %30, i32* %3, align 4
  br label %54

31:                                               ; preds = %18
  %32 = load %struct.object_id*, %struct.object_id** %4, align 8
  %33 = call i32 @oid_to_hex(%struct.object_id* %32)
  %34 = load %struct.object_id*, %struct.object_id** %5, align 8
  %35 = call i32 @oid_to_hex(%struct.object_id* %34)
  %36 = call i32 @strbuf_addf(%struct.strbuf* %9, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 %33, i32 %35)
  %37 = load i32, i32* @SIGPIPE, align 4
  %38 = load i32, i32* @SIG_IGN, align 4
  %39 = call i32 @sigchain_push(i32 %37, i32 %38)
  %40 = getelementptr inbounds %struct.child_process, %struct.child_process* %6, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %9, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %9, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @write_in_full(i32 %41, i32 %43, i32 %45)
  %47 = getelementptr inbounds %struct.child_process, %struct.child_process* %6, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @close(i32 %48)
  %50 = call i32 @strbuf_release(%struct.strbuf* %9)
  %51 = load i32, i32* @SIGPIPE, align 4
  %52 = call i32 @sigchain_pop(i32 %51)
  %53 = call i32 @finish_command(%struct.child_process* %6)
  store i32 %53, i32* %3, align 4
  br label %54

54:                                               ; preds = %31, %29, %17
  %55 = load i32, i32* %3, align 4
  ret i32 %55
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i8* @find_hook(i8*) #2

declare dso_local i32 @start_command(%struct.child_process*) #2

declare dso_local i32 @strbuf_addf(%struct.strbuf*, i8*, i32, i32) #2

declare dso_local i32 @oid_to_hex(%struct.object_id*) #2

declare dso_local i32 @sigchain_push(i32, i32) #2

declare dso_local i32 @write_in_full(i32, i32, i32) #2

declare dso_local i32 @close(i32) #2

declare dso_local i32 @strbuf_release(%struct.strbuf*) #2

declare dso_local i32 @sigchain_pop(i32) #2

declare dso_local i32 @finish_command(%struct.child_process*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
