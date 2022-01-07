; ModuleID = '/home/carl/AnghaBench/h2o/t/00unit/lib/http2/extr_scheduler.c_test_exclusive_at_current_pos.c'
source_filename = "/home/carl/AnghaBench/h2o/t/00unit/lib/http2/extr_scheduler.c_test_exclusive_at_current_pos.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i8*, i32, i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32* }

@.str = private unnamed_addr constant [2 x i8] c"A\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"B\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@output = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [12 x i8] c"(A16B16C16)\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"(B1(A16C16))\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_exclusive_at_current_pos to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_exclusive_at_current_pos() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.TYPE_6__, align 8
  %3 = alloca %struct.TYPE_6__, align 8
  %4 = alloca %struct.TYPE_6__, align 8
  %5 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %2, i32 0, i32 0
  store i8* null, i8** %5, align 8
  %6 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %2, i32 0, i32 1
  store i32 ptrtoint ([2 x i8]* @.str to i32), i32* %6, align 8
  %7 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %2, i32 0, i32 2
  store i32 1, i32* %7, align 4
  %8 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %2, i32 0, i32 3
  store i32 0, i32* %8, align 8
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %2, i32 0, i32 4
  %10 = bitcast %struct.TYPE_4__* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %10, i8 0, i64 8, i1 false)
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 0
  store i8* null, i8** %11, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 1
  store i32 ptrtoint ([2 x i8]* @.str.1 to i32), i32* %12, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 2
  store i32 1, i32* %13, align 4
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 3
  store i32 0, i32* %14, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 4
  %16 = bitcast %struct.TYPE_4__* %15 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %16, i8 0, i64 8, i1 false)
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 0
  store i8* null, i8** %17, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 1
  store i32 ptrtoint ([2 x i8]* @.str.2 to i32), i32* %18, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 2
  store i32 1, i32* %19, align 4
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 3
  store i32 0, i32* %20, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 4
  %22 = bitcast %struct.TYPE_4__* %21 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %22, i8 0, i64 8, i1 false)
  %23 = call i32 @h2o_http2_scheduler_init(i32* %1)
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %2, i32 0, i32 2
  %25 = call i32 @h2o_http2_scheduler_open(i32* %24, i32* %1, i32 16, i32 0)
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %2, i32 0, i32 2
  %27 = call i32 @h2o_http2_scheduler_activate(i32* %26)
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 2
  %29 = call i32 @h2o_http2_scheduler_open(i32* %28, i32* %1, i32 16, i32 0)
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 2
  %31 = call i32 @h2o_http2_scheduler_activate(i32* %30)
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 2
  %33 = call i32 @h2o_http2_scheduler_open(i32* %32, i32* %1, i32 16, i32 0)
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 2
  %35 = call i32 @h2o_http2_scheduler_activate(i32* %34)
  %36 = load i8*, i8** @output, align 8
  %37 = getelementptr inbounds i8, i8* %36, i64 0
  store i8 0, i8* %37, align 1
  %38 = call i32 @dump_tree(i32* %1)
  %39 = load i8*, i8** @output, align 8
  %40 = call i64 @strcmp(i8* %39, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  %41 = icmp eq i64 %40, 0
  %42 = zext i1 %41 to i32
  %43 = call i32 @ok(i32 %42)
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 2
  %45 = call i32 @h2o_http2_scheduler_rebind(i32* %44, i32* %1, i32 1, i32 1)
  %46 = load i8*, i8** @output, align 8
  %47 = getelementptr inbounds i8, i8* %46, i64 0
  store i8 0, i8* %47, align 1
  %48 = call i32 @dump_tree(i32* %1)
  %49 = load i8*, i8** @output, align 8
  %50 = call i64 @strcmp(i8* %49, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0))
  %51 = icmp eq i64 %50, 0
  %52 = zext i1 %51 to i32
  %53 = call i32 @ok(i32 %52)
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %2, i32 0, i32 2
  %55 = call i32 @h2o_http2_scheduler_close(i32* %54)
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 2
  %57 = call i32 @h2o_http2_scheduler_close(i32* %56)
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 2
  %59 = call i32 @h2o_http2_scheduler_close(i32* %58)
  %60 = call i32 @h2o_http2_scheduler_dispose(i32* %1)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @h2o_http2_scheduler_init(i32*) #2

declare dso_local i32 @h2o_http2_scheduler_open(i32*, i32*, i32, i32) #2

declare dso_local i32 @h2o_http2_scheduler_activate(i32*) #2

declare dso_local i32 @dump_tree(i32*) #2

declare dso_local i32 @ok(i32) #2

declare dso_local i64 @strcmp(i8*, i8*) #2

declare dso_local i32 @h2o_http2_scheduler_rebind(i32*, i32*, i32, i32) #2

declare dso_local i32 @h2o_http2_scheduler_close(i32*) #2

declare dso_local i32 @h2o_http2_scheduler_dispose(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
