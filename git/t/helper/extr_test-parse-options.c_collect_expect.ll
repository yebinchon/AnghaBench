; ModuleID = '/home/carl/AnghaBench/git/t/helper/extr_test-parse-options.c_collect_expect.c'
source_filename = "/home/carl/AnghaBench/git/t/helper/extr_test-parse-options.c_collect_expect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32 }
%struct.option = type { i64 }
%struct.string_list = type { i32 }
%struct.string_list_item = type { i8* }

@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 4
@.str = private unnamed_addr constant [26 x i8] c"malformed --expect option\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"malformed --expect option, lacking a colon\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"malformed --expect option, duplicate %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.option*, i8*, i32)* @collect_expect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @collect_expect(%struct.option* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.option*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.string_list*, align 8
  %8 = alloca %struct.string_list_item*, align 8
  %9 = alloca %struct.strbuf, align 4
  %10 = alloca i8*, align 8
  store %struct.option* %0, %struct.option** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = bitcast %struct.strbuf* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %11, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 4, i1 false)
  %12 = load i8*, i8** %5, align 8
  %13 = icmp ne i8* %12, null
  br i1 %13, label %14, label %17

14:                                               ; preds = %3
  %15 = load i32, i32* %6, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %14, %3
  %18 = call i32 (i8*, ...) @die(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %19

19:                                               ; preds = %17, %14
  %20 = load %struct.option*, %struct.option** %4, align 8
  %21 = getelementptr inbounds %struct.option, %struct.option* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = inttoptr i64 %22 to %struct.string_list*
  store %struct.string_list* %23, %struct.string_list** %7, align 8
  %24 = load i8*, i8** %5, align 8
  %25 = call i8* @strchr(i8* %24, i8 signext 58)
  store i8* %25, i8** %10, align 8
  %26 = load i8*, i8** %10, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %30, label %28

28:                                               ; preds = %19
  %29 = call i32 (i8*, ...) @die(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0))
  br label %30

30:                                               ; preds = %28, %19
  %31 = load i8*, i8** %5, align 8
  %32 = load i8*, i8** %10, align 8
  %33 = load i8*, i8** %5, align 8
  %34 = ptrtoint i8* %32 to i64
  %35 = ptrtoint i8* %33 to i64
  %36 = sub i64 %34, %35
  %37 = trunc i64 %36 to i32
  %38 = call i32 @strbuf_add(%struct.strbuf* %9, i8* %31, i32 %37)
  %39 = load %struct.string_list*, %struct.string_list** %7, align 8
  %40 = call i32 @strbuf_detach(%struct.strbuf* %9, i32* null)
  %41 = call %struct.string_list_item* @string_list_insert(%struct.string_list* %39, i32 %40)
  store %struct.string_list_item* %41, %struct.string_list_item** %8, align 8
  %42 = load %struct.string_list_item*, %struct.string_list_item** %8, align 8
  %43 = getelementptr inbounds %struct.string_list_item, %struct.string_list_item* %42, i32 0, i32 0
  %44 = load i8*, i8** %43, align 8
  %45 = icmp ne i8* %44, null
  br i1 %45, label %46, label %50

46:                                               ; preds = %30
  %47 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %9, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 (i8*, ...) @die(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i32 %48)
  br label %50

50:                                               ; preds = %46, %30
  %51 = load i8*, i8** %5, align 8
  %52 = load %struct.string_list_item*, %struct.string_list_item** %8, align 8
  %53 = getelementptr inbounds %struct.string_list_item, %struct.string_list_item* %52, i32 0, i32 0
  store i8* %51, i8** %53, align 8
  ret i32 0
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @die(i8*, ...) #2

declare dso_local i8* @strchr(i8*, i8 signext) #2

declare dso_local i32 @strbuf_add(%struct.strbuf*, i8*, i32) #2

declare dso_local %struct.string_list_item* @string_list_insert(%struct.string_list*, i32) #2

declare dso_local i32 @strbuf_detach(%struct.strbuf*, i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
