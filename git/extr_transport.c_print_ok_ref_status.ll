; ModuleID = '/home/carl/AnghaBench/git/extr_transport.c_print_ok_ref_status.c'
source_filename = "/home/carl/AnghaBench/git/extr_transport.c_print_ok_ref_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i8* }
%struct.ref = type { i32*, i32, i64, i32, i32, i64 }

@.str = private unnamed_addr constant [10 x i8] c"[deleted]\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"refs/tags/\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"[new tag]\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"[new branch]\00", align 1
@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 8
@DEFAULT_ABBREV = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [4 x i8] c"...\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"forced update\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"..\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ref*, i32, i32)* @print_ok_ref_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_ok_ref_status(%struct.ref* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.ref*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.strbuf, align 8
  %8 = alloca i8, align 1
  %9 = alloca i8*, align 8
  store %struct.ref* %0, %struct.ref** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load %struct.ref*, %struct.ref** %4, align 8
  %11 = getelementptr inbounds %struct.ref, %struct.ref* %10, i32 0, i32 5
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %3
  %15 = load %struct.ref*, %struct.ref** %4, align 8
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* %6, align 4
  %18 = call i32 @print_ref_status(i8 signext 45, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), %struct.ref* %15, i32* null, i8* null, i32 %16, i32 %17)
  br label %71

19:                                               ; preds = %3
  %20 = load %struct.ref*, %struct.ref** %4, align 8
  %21 = getelementptr inbounds %struct.ref, %struct.ref* %20, i32 0, i32 3
  %22 = call i64 @is_null_oid(i32* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %39

24:                                               ; preds = %19
  %25 = load %struct.ref*, %struct.ref** %4, align 8
  %26 = getelementptr inbounds %struct.ref, %struct.ref* %25, i32 0, i32 4
  %27 = load i32, i32* %26, align 4
  %28 = call i64 @starts_with(i32 %27, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %29 = icmp ne i64 %28, 0
  %30 = zext i1 %29 to i64
  %31 = select i1 %29, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0)
  %32 = load %struct.ref*, %struct.ref** %4, align 8
  %33 = load %struct.ref*, %struct.ref** %4, align 8
  %34 = getelementptr inbounds %struct.ref, %struct.ref* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = load i32, i32* %5, align 4
  %37 = load i32, i32* %6, align 4
  %38 = call i32 @print_ref_status(i8 signext 42, i8* %31, %struct.ref* %32, i32* %35, i8* null, i32 %36, i32 %37)
  br label %70

39:                                               ; preds = %19
  %40 = bitcast %struct.strbuf* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %40, i8* align 8 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 8, i1 false)
  %41 = load %struct.ref*, %struct.ref** %4, align 8
  %42 = getelementptr inbounds %struct.ref, %struct.ref* %41, i32 0, i32 3
  %43 = load i32, i32* @DEFAULT_ABBREV, align 4
  %44 = call i32 @strbuf_add_unique_abbrev(%struct.strbuf* %7, i32* %42, i32 %43)
  %45 = load %struct.ref*, %struct.ref** %4, align 8
  %46 = getelementptr inbounds %struct.ref, %struct.ref* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %39
  %50 = call i32 @strbuf_addstr(%struct.strbuf* %7, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  store i8 43, i8* %8, align 1
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0), i8** %9, align 8
  br label %53

51:                                               ; preds = %39
  %52 = call i32 @strbuf_addstr(%struct.strbuf* %7, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0))
  store i8 32, i8* %8, align 1
  store i8* null, i8** %9, align 8
  br label %53

53:                                               ; preds = %51, %49
  %54 = load %struct.ref*, %struct.ref** %4, align 8
  %55 = getelementptr inbounds %struct.ref, %struct.ref* %54, i32 0, i32 1
  %56 = load i32, i32* @DEFAULT_ABBREV, align 4
  %57 = call i32 @strbuf_add_unique_abbrev(%struct.strbuf* %7, i32* %55, i32 %56)
  %58 = load i8, i8* %8, align 1
  %59 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %7, i32 0, i32 0
  %60 = load i8*, i8** %59, align 8
  %61 = load %struct.ref*, %struct.ref** %4, align 8
  %62 = load %struct.ref*, %struct.ref** %4, align 8
  %63 = getelementptr inbounds %struct.ref, %struct.ref* %62, i32 0, i32 0
  %64 = load i32*, i32** %63, align 8
  %65 = load i8*, i8** %9, align 8
  %66 = load i32, i32* %5, align 4
  %67 = load i32, i32* %6, align 4
  %68 = call i32 @print_ref_status(i8 signext %58, i8* %60, %struct.ref* %61, i32* %64, i8* %65, i32 %66, i32 %67)
  %69 = call i32 @strbuf_release(%struct.strbuf* %7)
  br label %70

70:                                               ; preds = %53, %24
  br label %71

71:                                               ; preds = %70, %14
  ret void
}

declare dso_local i32 @print_ref_status(i8 signext, i8*, %struct.ref*, i32*, i8*, i32, i32) #1

declare dso_local i64 @is_null_oid(i32*) #1

declare dso_local i64 @starts_with(i32, i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @strbuf_add_unique_abbrev(%struct.strbuf*, i32*, i32) #1

declare dso_local i32 @strbuf_addstr(%struct.strbuf*, i8*) #1

declare dso_local i32 @strbuf_release(%struct.strbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
