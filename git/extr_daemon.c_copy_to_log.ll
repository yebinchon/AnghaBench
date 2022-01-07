; ModuleID = '/home/carl/AnghaBench/git/extr_daemon.c_copy_to_log.c'
source_filename = "/home/carl/AnghaBench/git/extr_daemon.c_copy_to_log.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32 }

@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 4
@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"fdopen of error channel failed\00", align 1
@EOF = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @copy_to_log to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @copy_to_log(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.strbuf, align 4
  %4 = alloca i32*, align 8
  store i32 %0, i32* %2, align 4
  %5 = bitcast %struct.strbuf* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %5, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 4, i1 false)
  %6 = load i32, i32* %2, align 4
  %7 = call i32* @fdopen(i32 %6, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32* %7, i32** %4, align 8
  %8 = load i32*, i32** %4, align 8
  %9 = icmp eq i32* %8, null
  br i1 %9, label %10, label %14

10:                                               ; preds = %1
  %11 = call i32 (i8*, ...) @logerror(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %12 = load i32, i32* %2, align 4
  %13 = call i32 @close(i32 %12)
  br label %29

14:                                               ; preds = %1
  br label %15

15:                                               ; preds = %20, %14
  %16 = load i32*, i32** %4, align 8
  %17 = call i64 @strbuf_getline_lf(%struct.strbuf* %3, i32* %16)
  %18 = load i64, i64* @EOF, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %25

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %3, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 (i8*, ...) @logerror(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %22)
  %24 = call i32 @strbuf_setlen(%struct.strbuf* %3, i32 0)
  br label %15

25:                                               ; preds = %15
  %26 = call i32 @strbuf_release(%struct.strbuf* %3)
  %27 = load i32*, i32** %4, align 8
  %28 = call i32 @fclose(i32* %27)
  br label %29

29:                                               ; preds = %25, %10
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32* @fdopen(i32, i8*) #2

declare dso_local i32 @logerror(i8*, ...) #2

declare dso_local i32 @close(i32) #2

declare dso_local i64 @strbuf_getline_lf(%struct.strbuf*, i32*) #2

declare dso_local i32 @strbuf_setlen(%struct.strbuf*, i32) #2

declare dso_local i32 @strbuf_release(%struct.strbuf*) #2

declare dso_local i32 @fclose(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
