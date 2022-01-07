; ModuleID = '/home/carl/AnghaBench/git/extr_reflog-walk.c_show_reflog_message.c'
source_filename = "/home/carl/AnghaBench/git/extr_reflog-walk.c_show_reflog_message.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i8* }
%struct.reflog_walk_info = type { %struct.commit_reflog* }
%struct.commit_reflog = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.reflog_info* }
%struct.reflog_info = type { i8*, i8* }
%struct.date_mode = type { i32 }

@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 8
@.str = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"Reflog: %s (%s)\0AReflog message: %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @show_reflog_message(%struct.reflog_walk_info* %0, i32 %1, %struct.date_mode* %2, i32 %3) #0 {
  %5 = alloca %struct.reflog_walk_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.date_mode*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.commit_reflog*, align 8
  %10 = alloca %struct.reflog_info*, align 8
  %11 = alloca %struct.strbuf, align 8
  store %struct.reflog_walk_info* %0, %struct.reflog_walk_info** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.date_mode* %2, %struct.date_mode** %7, align 8
  store i32 %3, i32* %8, align 4
  %12 = load %struct.reflog_walk_info*, %struct.reflog_walk_info** %5, align 8
  %13 = icmp ne %struct.reflog_walk_info* %12, null
  br i1 %13, label %14, label %60

14:                                               ; preds = %4
  %15 = load %struct.reflog_walk_info*, %struct.reflog_walk_info** %5, align 8
  %16 = getelementptr inbounds %struct.reflog_walk_info, %struct.reflog_walk_info* %15, i32 0, i32 0
  %17 = load %struct.commit_reflog*, %struct.commit_reflog** %16, align 8
  %18 = icmp ne %struct.commit_reflog* %17, null
  br i1 %18, label %19, label %60

19:                                               ; preds = %14
  %20 = load %struct.reflog_walk_info*, %struct.reflog_walk_info** %5, align 8
  %21 = getelementptr inbounds %struct.reflog_walk_info, %struct.reflog_walk_info* %20, i32 0, i32 0
  %22 = load %struct.commit_reflog*, %struct.commit_reflog** %21, align 8
  store %struct.commit_reflog* %22, %struct.commit_reflog** %9, align 8
  %23 = bitcast %struct.strbuf* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %23, i8* align 8 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 8, i1 false)
  %24 = load %struct.commit_reflog*, %struct.commit_reflog** %9, align 8
  %25 = getelementptr inbounds %struct.commit_reflog, %struct.commit_reflog* %24, i32 0, i32 1
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load %struct.reflog_info*, %struct.reflog_info** %27, align 8
  %29 = load %struct.commit_reflog*, %struct.commit_reflog** %9, align 8
  %30 = getelementptr inbounds %struct.commit_reflog, %struct.commit_reflog* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = add nsw i32 %31, 1
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.reflog_info, %struct.reflog_info* %28, i64 %33
  store %struct.reflog_info* %34, %struct.reflog_info** %10, align 8
  %35 = load %struct.reflog_walk_info*, %struct.reflog_walk_info** %5, align 8
  %36 = load %struct.date_mode*, %struct.date_mode** %7, align 8
  %37 = load i32, i32* %8, align 4
  %38 = call i32 @get_reflog_selector(%struct.strbuf* %11, %struct.reflog_walk_info* %35, %struct.date_mode* %36, i32 %37, i32 0)
  %39 = load i32, i32* %6, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %48

41:                                               ; preds = %19
  %42 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %11, i32 0, i32 0
  %43 = load i8*, i8** %42, align 8
  %44 = load %struct.reflog_info*, %struct.reflog_info** %10, align 8
  %45 = getelementptr inbounds %struct.reflog_info, %struct.reflog_info* %44, i32 0, i32 0
  %46 = load i8*, i8** %45, align 8
  %47 = call i32 (i8*, i8*, i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* %43, i8* %46)
  br label %58

48:                                               ; preds = %19
  %49 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %11, i32 0, i32 0
  %50 = load i8*, i8** %49, align 8
  %51 = load %struct.reflog_info*, %struct.reflog_info** %10, align 8
  %52 = getelementptr inbounds %struct.reflog_info, %struct.reflog_info* %51, i32 0, i32 1
  %53 = load i8*, i8** %52, align 8
  %54 = load %struct.reflog_info*, %struct.reflog_info** %10, align 8
  %55 = getelementptr inbounds %struct.reflog_info, %struct.reflog_info* %54, i32 0, i32 0
  %56 = load i8*, i8** %55, align 8
  %57 = call i32 (i8*, i8*, i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i8* %50, i8* %53, i8* %56)
  br label %58

58:                                               ; preds = %48, %41
  %59 = call i32 @strbuf_release(%struct.strbuf* %11)
  br label %60

60:                                               ; preds = %58, %14, %4
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @get_reflog_selector(%struct.strbuf*, %struct.reflog_walk_info*, %struct.date_mode*, i32, i32) #2

declare dso_local i32 @printf(i8*, i8*, i8*, ...) #2

declare dso_local i32 @strbuf_release(%struct.strbuf*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
