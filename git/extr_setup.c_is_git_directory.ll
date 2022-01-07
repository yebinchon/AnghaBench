; ModuleID = '/home/carl/AnghaBench/git/extr_setup.c_is_git_directory.c'
source_filename = "/home/carl/AnghaBench/git/extr_setup.c_is_git_directory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i64, i64 }

@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 8
@.str = private unnamed_addr constant [5 x i8] c"HEAD\00", align 1
@DB_ENVIRONMENT = common dso_local global i32 0, align 4
@X_OK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"/objects\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"/refs\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @is_git_directory(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.strbuf, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  %6 = bitcast %struct.strbuf* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %6, i8* align 8 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 16, i1 false)
  store i32 0, i32* %4, align 4
  %7 = load i8*, i8** %2, align 8
  %8 = call i32 @strbuf_addstr(%struct.strbuf* %3, i8* %7)
  %9 = call i32 @strbuf_complete(%struct.strbuf* %3, i8 signext 47)
  %10 = call i32 @strbuf_addstr(%struct.strbuf* %3, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %11 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %3, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = call i64 @validate_headref(i64 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  br label %55

16:                                               ; preds = %1
  %17 = call i32 @strbuf_reset(%struct.strbuf* %3)
  %18 = load i8*, i8** %2, align 8
  %19 = call i32 @get_common_dir(%struct.strbuf* %3, i8* %18)
  %20 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %3, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  store i64 %21, i64* %5, align 8
  %22 = load i32, i32* @DB_ENVIRONMENT, align 4
  %23 = call i64 @getenv(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %33

25:                                               ; preds = %16
  %26 = load i32, i32* @DB_ENVIRONMENT, align 4
  %27 = call i64 @getenv(i32 %26)
  %28 = load i32, i32* @X_OK, align 4
  %29 = call i64 @access(i64 %27, i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %25
  br label %55

32:                                               ; preds = %25
  br label %44

33:                                               ; preds = %16
  %34 = load i64, i64* %5, align 8
  %35 = call i32 @strbuf_setlen(%struct.strbuf* %3, i64 %34)
  %36 = call i32 @strbuf_addstr(%struct.strbuf* %3, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %37 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %3, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = load i32, i32* @X_OK, align 4
  %40 = call i64 @access(i64 %38, i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %33
  br label %55

43:                                               ; preds = %33
  br label %44

44:                                               ; preds = %43, %32
  %45 = load i64, i64* %5, align 8
  %46 = call i32 @strbuf_setlen(%struct.strbuf* %3, i64 %45)
  %47 = call i32 @strbuf_addstr(%struct.strbuf* %3, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %48 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %3, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = load i32, i32* @X_OK, align 4
  %51 = call i64 @access(i64 %49, i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %44
  br label %55

54:                                               ; preds = %44
  store i32 1, i32* %4, align 4
  br label %55

55:                                               ; preds = %54, %53, %42, %31, %15
  %56 = call i32 @strbuf_release(%struct.strbuf* %3)
  %57 = load i32, i32* %4, align 4
  ret i32 %57
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @strbuf_addstr(%struct.strbuf*, i8*) #2

declare dso_local i32 @strbuf_complete(%struct.strbuf*, i8 signext) #2

declare dso_local i64 @validate_headref(i64) #2

declare dso_local i32 @strbuf_reset(%struct.strbuf*) #2

declare dso_local i32 @get_common_dir(%struct.strbuf*, i8*) #2

declare dso_local i64 @getenv(i32) #2

declare dso_local i64 @access(i64, i32) #2

declare dso_local i32 @strbuf_setlen(%struct.strbuf*, i64) #2

declare dso_local i32 @strbuf_release(%struct.strbuf*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
