; ModuleID = '/home/carl/AnghaBench/git/extr_environment.c_expand_namespace.c'
source_filename = "/home/carl/AnghaBench/git/extr_environment.c_expand_namespace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32 }

@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"refs/namespaces/%s\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"bad git namespace path \22%s\22\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @expand_namespace to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @expand_namespace(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.strbuf, align 4
  %5 = alloca %struct.strbuf**, align 8
  %6 = alloca %struct.strbuf**, align 8
  store i8* %0, i8** %3, align 8
  %7 = bitcast %struct.strbuf* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %7, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 4, i1 false)
  %8 = load i8*, i8** %3, align 8
  %9 = icmp ne i8* %8, null
  br i1 %9, label %10, label %14

10:                                               ; preds = %1
  %11 = load i8*, i8** %3, align 8
  %12 = load i8, i8* %11, align 1
  %13 = icmp ne i8 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %10, %1
  %15 = call i8* @xstrdup(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  store i8* %15, i8** %2, align 8
  br label %57

16:                                               ; preds = %10
  %17 = load i8*, i8** %3, align 8
  %18 = call i32 @strbuf_addstr(%struct.strbuf* %4, i8* %17)
  %19 = call %struct.strbuf** @strbuf_split(%struct.strbuf* %4, i8 signext 47)
  store %struct.strbuf** %19, %struct.strbuf*** %5, align 8
  %20 = call i32 @strbuf_reset(%struct.strbuf* %4)
  %21 = load %struct.strbuf**, %struct.strbuf*** %5, align 8
  store %struct.strbuf** %21, %struct.strbuf*** %6, align 8
  br label %22

22:                                               ; preds = %40, %16
  %23 = load %struct.strbuf**, %struct.strbuf*** %6, align 8
  %24 = load %struct.strbuf*, %struct.strbuf** %23, align 8
  %25 = icmp ne %struct.strbuf* %24, null
  br i1 %25, label %26, label %43

26:                                               ; preds = %22
  %27 = load %struct.strbuf**, %struct.strbuf*** %6, align 8
  %28 = load %struct.strbuf*, %struct.strbuf** %27, align 8
  %29 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i64 @strcmp(i32 %30, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %26
  %34 = load %struct.strbuf**, %struct.strbuf*** %6, align 8
  %35 = load %struct.strbuf*, %struct.strbuf** %34, align 8
  %36 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @strbuf_addf(%struct.strbuf* %4, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 %37)
  br label %39

39:                                               ; preds = %33, %26
  br label %40

40:                                               ; preds = %39
  %41 = load %struct.strbuf**, %struct.strbuf*** %6, align 8
  %42 = getelementptr inbounds %struct.strbuf*, %struct.strbuf** %41, i32 1
  store %struct.strbuf** %42, %struct.strbuf*** %6, align 8
  br label %22

43:                                               ; preds = %22
  %44 = load %struct.strbuf**, %struct.strbuf*** %5, align 8
  %45 = call i32 @strbuf_list_free(%struct.strbuf** %44)
  %46 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %4, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i64 @check_refname_format(i32 %47, i32 0)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %43
  %51 = call i32 @_(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  %52 = load i8*, i8** %3, align 8
  %53 = call i32 @die(i32 %51, i8* %52)
  br label %54

54:                                               ; preds = %50, %43
  %55 = call i32 @strbuf_addch(%struct.strbuf* %4, i8 signext 47)
  %56 = call i8* @strbuf_detach(%struct.strbuf* %4, i32* null)
  store i8* %56, i8** %2, align 8
  br label %57

57:                                               ; preds = %54, %14
  %58 = load i8*, i8** %2, align 8
  ret i8* %58
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i8* @xstrdup(i8*) #2

declare dso_local i32 @strbuf_addstr(%struct.strbuf*, i8*) #2

declare dso_local %struct.strbuf** @strbuf_split(%struct.strbuf*, i8 signext) #2

declare dso_local i32 @strbuf_reset(%struct.strbuf*) #2

declare dso_local i64 @strcmp(i32, i8*) #2

declare dso_local i32 @strbuf_addf(%struct.strbuf*, i8*, i32) #2

declare dso_local i32 @strbuf_list_free(%struct.strbuf**) #2

declare dso_local i64 @check_refname_format(i32, i32) #2

declare dso_local i32 @die(i32, i8*) #2

declare dso_local i32 @_(i8*) #2

declare dso_local i32 @strbuf_addch(%struct.strbuf*, i8 signext) #2

declare dso_local i8* @strbuf_detach(%struct.strbuf*, i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
