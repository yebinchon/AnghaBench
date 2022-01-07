; ModuleID = '/home/carl/AnghaBench/git/trace2/extr_tr2_tls.c_tr2tls_create_self.c'
source_filename = "/home/carl/AnghaBench/git/trace2/extr_tr2_tls.c_tr2tls_create_self.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tr2tls_thread_ctx = type { i32, %struct.TYPE_5__, i64, i32, i32* }
%struct.TYPE_5__ = type { i64 }

@TR2_REGION_NESTING_INITIAL_SIZE = common dso_local global i32 0, align 4
@tr2_next_thread_id = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"th%02d:\00", align 1
@TR2_MAX_THREAD_NAME = common dso_local global i64 0, align 8
@tr2tls_key = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.tr2tls_thread_ctx* @tr2tls_create_self(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.tr2tls_thread_ctx*, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = call %struct.tr2tls_thread_ctx* @xcalloc(i32 1, i32 40)
  store %struct.tr2tls_thread_ctx* %6, %struct.tr2tls_thread_ctx** %5, align 8
  %7 = load i32, i32* @TR2_REGION_NESTING_INITIAL_SIZE, align 4
  %8 = load %struct.tr2tls_thread_ctx*, %struct.tr2tls_thread_ctx** %5, align 8
  %9 = getelementptr inbounds %struct.tr2tls_thread_ctx, %struct.tr2tls_thread_ctx* %8, i32 0, i32 0
  store i32 %7, i32* %9, align 8
  %10 = load %struct.tr2tls_thread_ctx*, %struct.tr2tls_thread_ctx** %5, align 8
  %11 = getelementptr inbounds %struct.tr2tls_thread_ctx, %struct.tr2tls_thread_ctx* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = call %struct.tr2tls_thread_ctx* @xcalloc(i32 %12, i32 4)
  %14 = bitcast %struct.tr2tls_thread_ctx* %13 to i32*
  %15 = load %struct.tr2tls_thread_ctx*, %struct.tr2tls_thread_ctx** %5, align 8
  %16 = getelementptr inbounds %struct.tr2tls_thread_ctx, %struct.tr2tls_thread_ctx* %15, i32 0, i32 4
  store i32* %14, i32** %16, align 8
  %17 = load i32, i32* %4, align 4
  %18 = load %struct.tr2tls_thread_ctx*, %struct.tr2tls_thread_ctx** %5, align 8
  %19 = getelementptr inbounds %struct.tr2tls_thread_ctx, %struct.tr2tls_thread_ctx* %18, i32 0, i32 4
  %20 = load i32*, i32** %19, align 8
  %21 = load %struct.tr2tls_thread_ctx*, %struct.tr2tls_thread_ctx** %5, align 8
  %22 = getelementptr inbounds %struct.tr2tls_thread_ctx, %struct.tr2tls_thread_ctx* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 8
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %22, align 8
  %25 = sext i32 %23 to i64
  %26 = getelementptr inbounds i32, i32* %20, i64 %25
  store i32 %17, i32* %26, align 4
  %27 = call i64 @tr2tls_locked_increment(i32* @tr2_next_thread_id)
  %28 = load %struct.tr2tls_thread_ctx*, %struct.tr2tls_thread_ctx** %5, align 8
  %29 = getelementptr inbounds %struct.tr2tls_thread_ctx, %struct.tr2tls_thread_ctx* %28, i32 0, i32 2
  store i64 %27, i64* %29, align 8
  %30 = load %struct.tr2tls_thread_ctx*, %struct.tr2tls_thread_ctx** %5, align 8
  %31 = getelementptr inbounds %struct.tr2tls_thread_ctx, %struct.tr2tls_thread_ctx* %30, i32 0, i32 1
  %32 = call i32 @strbuf_init(%struct.TYPE_5__* %31, i32 0)
  %33 = load %struct.tr2tls_thread_ctx*, %struct.tr2tls_thread_ctx** %5, align 8
  %34 = getelementptr inbounds %struct.tr2tls_thread_ctx, %struct.tr2tls_thread_ctx* %33, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %44

37:                                               ; preds = %2
  %38 = load %struct.tr2tls_thread_ctx*, %struct.tr2tls_thread_ctx** %5, align 8
  %39 = getelementptr inbounds %struct.tr2tls_thread_ctx, %struct.tr2tls_thread_ctx* %38, i32 0, i32 1
  %40 = load %struct.tr2tls_thread_ctx*, %struct.tr2tls_thread_ctx** %5, align 8
  %41 = getelementptr inbounds %struct.tr2tls_thread_ctx, %struct.tr2tls_thread_ctx* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = call i32 @strbuf_addf(%struct.TYPE_5__* %39, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i64 %42)
  br label %44

44:                                               ; preds = %37, %2
  %45 = load %struct.tr2tls_thread_ctx*, %struct.tr2tls_thread_ctx** %5, align 8
  %46 = getelementptr inbounds %struct.tr2tls_thread_ctx, %struct.tr2tls_thread_ctx* %45, i32 0, i32 1
  %47 = load i8*, i8** %3, align 8
  %48 = call i32 @strbuf_addstr(%struct.TYPE_5__* %46, i8* %47)
  %49 = load %struct.tr2tls_thread_ctx*, %struct.tr2tls_thread_ctx** %5, align 8
  %50 = getelementptr inbounds %struct.tr2tls_thread_ctx, %struct.tr2tls_thread_ctx* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @TR2_MAX_THREAD_NAME, align 8
  %54 = icmp sgt i64 %52, %53
  br i1 %54, label %55, label %60

55:                                               ; preds = %44
  %56 = load %struct.tr2tls_thread_ctx*, %struct.tr2tls_thread_ctx** %5, align 8
  %57 = getelementptr inbounds %struct.tr2tls_thread_ctx, %struct.tr2tls_thread_ctx* %56, i32 0, i32 1
  %58 = load i64, i64* @TR2_MAX_THREAD_NAME, align 8
  %59 = call i32 @strbuf_setlen(%struct.TYPE_5__* %57, i64 %58)
  br label %60

60:                                               ; preds = %55, %44
  %61 = load i32, i32* @tr2tls_key, align 4
  %62 = load %struct.tr2tls_thread_ctx*, %struct.tr2tls_thread_ctx** %5, align 8
  %63 = call i32 @pthread_setspecific(i32 %61, %struct.tr2tls_thread_ctx* %62)
  %64 = load %struct.tr2tls_thread_ctx*, %struct.tr2tls_thread_ctx** %5, align 8
  ret %struct.tr2tls_thread_ctx* %64
}

declare dso_local %struct.tr2tls_thread_ctx* @xcalloc(i32, i32) #1

declare dso_local i64 @tr2tls_locked_increment(i32*) #1

declare dso_local i32 @strbuf_init(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @strbuf_addf(%struct.TYPE_5__*, i8*, i64) #1

declare dso_local i32 @strbuf_addstr(%struct.TYPE_5__*, i8*) #1

declare dso_local i32 @strbuf_setlen(%struct.TYPE_5__*, i64) #1

declare dso_local i32 @pthread_setspecific(i32, %struct.tr2tls_thread_ctx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
