; ModuleID = '/home/carl/AnghaBench/git/extr_credential-cache.c_do_cache.c'
source_filename = "/home/carl/AnghaBench/git/extr_credential-cache.c_do_cache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32 }

@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 4
@.str = private unnamed_addr constant [11 x i8] c"action=%s\0A\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"timeout=%d\0A\00", align 1
@FLAG_RELAY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"unable to relay credential\00", align 1
@errno = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i64 0, align 8
@ECONNREFUSED = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [34 x i8] c"unable to connect to cache daemon\00", align 1
@FLAG_SPAWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, i32, i32)* @do_cache to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_cache(i8* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.strbuf, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = bitcast %struct.strbuf* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %10, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 4, i1 false)
  %11 = load i8*, i8** %6, align 8
  %12 = call i32 (%struct.strbuf*, i8*, ...) @strbuf_addf(%struct.strbuf* %9, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* %11)
  %13 = load i32, i32* %7, align 4
  %14 = call i32 (%struct.strbuf*, i8*, ...) @strbuf_addf(%struct.strbuf* %9, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 %13)
  %15 = load i32, i32* %8, align 4
  %16 = load i32, i32* @FLAG_RELAY, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %4
  %20 = call i64 @strbuf_read(%struct.strbuf* %9, i32 0, i32 0)
  %21 = icmp slt i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %19
  %23 = call i32 @die_errno(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  br label %24

24:                                               ; preds = %22, %19
  br label %25

25:                                               ; preds = %24, %4
  %26 = load i8*, i8** %5, align 8
  %27 = call i64 @send_request(i8* %26, %struct.strbuf* %9)
  %28 = icmp slt i64 %27, 0
  br i1 %28, label %29, label %54

29:                                               ; preds = %25
  %30 = load i64, i64* @errno, align 8
  %31 = load i64, i64* @ENOENT, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %39

33:                                               ; preds = %29
  %34 = load i64, i64* @errno, align 8
  %35 = load i64, i64* @ECONNREFUSED, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %33
  %38 = call i32 @die_errno(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0))
  br label %39

39:                                               ; preds = %37, %33, %29
  %40 = load i32, i32* %8, align 4
  %41 = load i32, i32* @FLAG_SPAWN, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %53

44:                                               ; preds = %39
  %45 = load i8*, i8** %5, align 8
  %46 = call i32 @spawn_daemon(i8* %45)
  %47 = load i8*, i8** %5, align 8
  %48 = call i64 @send_request(i8* %47, %struct.strbuf* %9)
  %49 = icmp slt i64 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %44
  %51 = call i32 @die_errno(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0))
  br label %52

52:                                               ; preds = %50, %44
  br label %53

53:                                               ; preds = %52, %39
  br label %54

54:                                               ; preds = %53, %25
  %55 = call i32 @strbuf_release(%struct.strbuf* %9)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @strbuf_addf(%struct.strbuf*, i8*, ...) #2

declare dso_local i64 @strbuf_read(%struct.strbuf*, i32, i32) #2

declare dso_local i32 @die_errno(i8*) #2

declare dso_local i64 @send_request(i8*, %struct.strbuf*) #2

declare dso_local i32 @spawn_daemon(i8*) #2

declare dso_local i32 @strbuf_release(%struct.strbuf*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
