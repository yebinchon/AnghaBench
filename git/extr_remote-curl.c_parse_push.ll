; ModuleID = '/home/carl/AnghaBench/git/extr_remote-curl.c_parse_push.c'
source_filename = "/home/carl/AnghaBench/git/extr_remote-curl.c_parse_push.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.argv_array = type { i32, i32 }
%struct.strbuf = type { i32* }

@ARGV_ARRAY_INIT = common dso_local global %struct.argv_array zeroinitializer, align 4
@.str = private unnamed_addr constant [6 x i8] c"push \00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"http transport does not support %s\00", align 1
@stdin = common dso_local global i32 0, align 4
@EOF = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@stdout = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.strbuf*)* @parse_push to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @parse_push(%struct.strbuf* %0) #0 {
  %2 = alloca %struct.strbuf*, align 8
  %3 = alloca %struct.argv_array, align 4
  %4 = alloca i32, align 4
  store %struct.strbuf* %0, %struct.strbuf** %2, align 8
  %5 = bitcast %struct.argv_array* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %5, i8* align 4 bitcast (%struct.argv_array* @ARGV_ARRAY_INIT to i8*), i64 8, i1 false)
  br label %6

6:                                                ; preds = %41, %1
  %7 = load %struct.strbuf*, %struct.strbuf** %2, align 8
  %8 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %7, i32 0, i32 0
  %9 = load i32*, i32** %8, align 8
  %10 = call i64 @starts_with(i32* %9, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %18

12:                                               ; preds = %6
  %13 = load %struct.strbuf*, %struct.strbuf** %2, align 8
  %14 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 5
  %17 = call i32 @argv_array_push(%struct.argv_array* %3, i32* %16)
  br label %24

18:                                               ; preds = %6
  %19 = call i32 @_(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  %20 = load %struct.strbuf*, %struct.strbuf** %2, align 8
  %21 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = call i32 @die(i32 %19, i32* %22)
  br label %24

24:                                               ; preds = %18, %12
  %25 = load %struct.strbuf*, %struct.strbuf** %2, align 8
  %26 = call i32 @strbuf_reset(%struct.strbuf* %25)
  %27 = load %struct.strbuf*, %struct.strbuf** %2, align 8
  %28 = load i32, i32* @stdin, align 4
  %29 = call i64 @strbuf_getline_lf(%struct.strbuf* %27, i32 %28)
  %30 = load i64, i64* @EOF, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %24
  br label %56

33:                                               ; preds = %24
  %34 = load %struct.strbuf*, %struct.strbuf** %2, align 8
  %35 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = load i32, i32* %36, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %33
  br label %42

40:                                               ; preds = %33
  br label %41

41:                                               ; preds = %40
  br i1 true, label %6, label %42

42:                                               ; preds = %41, %39
  %43 = getelementptr inbounds %struct.argv_array, %struct.argv_array* %3, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = getelementptr inbounds %struct.argv_array, %struct.argv_array* %3, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @push(i32 %44, i32 %46)
  store i32 %47, i32* %4, align 4
  %48 = call i32 @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %49 = load i32, i32* @stdout, align 4
  %50 = call i32 @fflush(i32 %49)
  %51 = load i32, i32* %4, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %42
  %54 = call i32 @exit(i32 128) #4
  unreachable

55:                                               ; preds = %42
  br label %56

56:                                               ; preds = %55, %32
  %57 = call i32 @argv_array_clear(%struct.argv_array* %3)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @starts_with(i32*, i8*) #2

declare dso_local i32 @argv_array_push(%struct.argv_array*, i32*) #2

declare dso_local i32 @die(i32, i32*) #2

declare dso_local i32 @_(i8*) #2

declare dso_local i32 @strbuf_reset(%struct.strbuf*) #2

declare dso_local i64 @strbuf_getline_lf(%struct.strbuf*, i32) #2

declare dso_local i32 @push(i32, i32) #2

declare dso_local i32 @printf(i8*) #2

declare dso_local i32 @fflush(i32) #2

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #3

declare dso_local i32 @argv_array_clear(%struct.argv_array*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
