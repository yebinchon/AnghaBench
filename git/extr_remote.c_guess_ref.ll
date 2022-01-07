; ModuleID = '/home/carl/AnghaBench/git/extr_remote.c_guess_ref.c'
source_filename = "/home/carl/AnghaBench/git/extr_remote.c_guess_ref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32 }
%struct.ref = type { i32 }

@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 4
@RESOLVE_REF_READING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"refs/heads/\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"refs/tags/\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, %struct.ref*)* @guess_ref to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @guess_ref(i8* %0, %struct.ref* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.ref*, align 8
  %6 = alloca %struct.strbuf, align 4
  %7 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.ref* %1, %struct.ref** %5, align 8
  %8 = bitcast %struct.strbuf* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %8, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 4, i1 false)
  %9 = load %struct.ref*, %struct.ref** %5, align 8
  %10 = getelementptr inbounds %struct.ref, %struct.ref* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @RESOLVE_REF_READING, align 4
  %13 = call i8* @resolve_ref_unsafe(i32 %11, i32 %12, i32* null, i32* null)
  store i8* %13, i8** %7, align 8
  %14 = load i8*, i8** %7, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %2
  store i8* null, i8** %3, align 8
  br label %35

17:                                               ; preds = %2
  %18 = load i8*, i8** %7, align 8
  %19 = call i64 @starts_with(i8* %18, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %17
  %22 = call i32 @strbuf_addstr(%struct.strbuf* %6, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  br label %31

23:                                               ; preds = %17
  %24 = load i8*, i8** %7, align 8
  %25 = call i64 @starts_with(i8* %24, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %23
  %28 = call i32 @strbuf_addstr(%struct.strbuf* %6, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  br label %30

29:                                               ; preds = %23
  store i8* null, i8** %3, align 8
  br label %35

30:                                               ; preds = %27
  br label %31

31:                                               ; preds = %30, %21
  %32 = load i8*, i8** %4, align 8
  %33 = call i32 @strbuf_addstr(%struct.strbuf* %6, i8* %32)
  %34 = call i8* @strbuf_detach(%struct.strbuf* %6, i32* null)
  store i8* %34, i8** %3, align 8
  br label %35

35:                                               ; preds = %31, %29, %16
  %36 = load i8*, i8** %3, align 8
  ret i8* %36
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i8* @resolve_ref_unsafe(i32, i32, i32*, i32*) #2

declare dso_local i64 @starts_with(i8*, i8*) #2

declare dso_local i32 @strbuf_addstr(%struct.strbuf*, i8*) #2

declare dso_local i8* @strbuf_detach(%struct.strbuf*, i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
