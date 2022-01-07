; ModuleID = '/home/carl/AnghaBench/git/extr_remote-curl.c_parse_fetch.c'
source_filename = "/home/carl/AnghaBench/git/extr_remote-curl.c_parse_fetch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i8* }
%struct.ref = type { %struct.ref*, i32 }
%struct.object_id = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"fetch \00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"protocol error: expected sha/ref, got '%s'\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"http transport does not support %s\00", align 1
@stdin = common dso_local global i32 0, align 4
@EOF = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@stdout = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.strbuf*)* @parse_fetch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @parse_fetch(%struct.strbuf* %0) #0 {
  %2 = alloca %struct.strbuf*, align 8
  %3 = alloca %struct.ref**, align 8
  %4 = alloca %struct.ref*, align 8
  %5 = alloca %struct.ref**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.ref*, align 8
  %11 = alloca %struct.object_id, align 4
  %12 = alloca i8*, align 8
  store %struct.strbuf* %0, %struct.strbuf** %2, align 8
  store %struct.ref** null, %struct.ref*** %3, align 8
  store %struct.ref* null, %struct.ref** %4, align 8
  store %struct.ref** %4, %struct.ref*** %5, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %13

13:                                               ; preds = %89, %1
  %14 = load %struct.strbuf*, %struct.strbuf** %2, align 8
  %15 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %14, i32 0, i32 0
  %16 = load i8*, i8** %15, align 8
  %17 = call i64 @skip_prefix(i8* %16, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8** %8)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %66

19:                                               ; preds = %13
  %20 = load i8*, i8** %8, align 8
  %21 = call i64 @parse_oid_hex(i8* %20, %struct.object_id* %11, i8** %12)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %19
  %24 = call i32 @_(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0))
  %25 = load i8*, i8** %8, align 8
  %26 = call i32 @die(i32 %24, i8* %25)
  br label %27

27:                                               ; preds = %23, %19
  %28 = load i8*, i8** %12, align 8
  %29 = load i8, i8* %28, align 1
  %30 = sext i8 %29 to i32
  %31 = icmp eq i32 %30, 32
  br i1 %31, label %32, label %35

32:                                               ; preds = %27
  %33 = load i8*, i8** %12, align 8
  %34 = getelementptr inbounds i8, i8* %33, i64 1
  store i8* %34, i8** %9, align 8
  br label %45

35:                                               ; preds = %27
  %36 = load i8*, i8** %12, align 8
  %37 = load i8, i8* %36, align 1
  %38 = icmp ne i8 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %35
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), i8** %9, align 8
  br label %44

40:                                               ; preds = %35
  %41 = call i32 @_(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0))
  %42 = load i8*, i8** %8, align 8
  %43 = call i32 @die(i32 %41, i8* %42)
  br label %44

44:                                               ; preds = %40, %39
  br label %45

45:                                               ; preds = %44, %32
  %46 = load i8*, i8** %9, align 8
  %47 = call %struct.ref* @alloc_ref(i8* %46)
  store %struct.ref* %47, %struct.ref** %10, align 8
  %48 = load %struct.ref*, %struct.ref** %10, align 8
  %49 = getelementptr inbounds %struct.ref, %struct.ref* %48, i32 0, i32 1
  %50 = call i32 @oidcpy(i32* %49, %struct.object_id* %11)
  %51 = load %struct.ref*, %struct.ref** %10, align 8
  %52 = load %struct.ref**, %struct.ref*** %5, align 8
  store %struct.ref* %51, %struct.ref** %52, align 8
  %53 = load %struct.ref*, %struct.ref** %10, align 8
  %54 = getelementptr inbounds %struct.ref, %struct.ref* %53, i32 0, i32 0
  store %struct.ref** %54, %struct.ref*** %5, align 8
  %55 = load %struct.ref**, %struct.ref*** %3, align 8
  %56 = load i32, i32* %7, align 4
  %57 = add nsw i32 %56, 1
  %58 = load i32, i32* %6, align 4
  %59 = call i32 @ALLOC_GROW(%struct.ref** %55, i32 %57, i32 %58)
  %60 = load %struct.ref*, %struct.ref** %10, align 8
  %61 = load %struct.ref**, %struct.ref*** %3, align 8
  %62 = load i32, i32* %7, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %7, align 4
  %64 = sext i32 %62 to i64
  %65 = getelementptr inbounds %struct.ref*, %struct.ref** %61, i64 %64
  store %struct.ref* %60, %struct.ref** %65, align 8
  br label %72

66:                                               ; preds = %13
  %67 = call i32 @_(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0))
  %68 = load %struct.strbuf*, %struct.strbuf** %2, align 8
  %69 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %68, i32 0, i32 0
  %70 = load i8*, i8** %69, align 8
  %71 = call i32 @die(i32 %67, i8* %70)
  br label %72

72:                                               ; preds = %66, %45
  %73 = load %struct.strbuf*, %struct.strbuf** %2, align 8
  %74 = call i32 @strbuf_reset(%struct.strbuf* %73)
  %75 = load %struct.strbuf*, %struct.strbuf** %2, align 8
  %76 = load i32, i32* @stdin, align 4
  %77 = call i64 @strbuf_getline_lf(%struct.strbuf* %75, i32 %76)
  %78 = load i64, i64* @EOF, align 8
  %79 = icmp eq i64 %77, %78
  br i1 %79, label %80, label %81

80:                                               ; preds = %72
  br label %107

81:                                               ; preds = %72
  %82 = load %struct.strbuf*, %struct.strbuf** %2, align 8
  %83 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %82, i32 0, i32 0
  %84 = load i8*, i8** %83, align 8
  %85 = load i8, i8* %84, align 1
  %86 = icmp ne i8 %85, 0
  br i1 %86, label %88, label %87

87:                                               ; preds = %81
  br label %90

88:                                               ; preds = %81
  br label %89

89:                                               ; preds = %88
  br i1 true, label %13, label %90

90:                                               ; preds = %89, %87
  %91 = load i32, i32* %7, align 4
  %92 = load %struct.ref**, %struct.ref*** %3, align 8
  %93 = call i64 @fetch(i32 %91, %struct.ref** %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %97

95:                                               ; preds = %90
  %96 = call i32 @exit(i32 128) #3
  unreachable

97:                                               ; preds = %90
  %98 = load %struct.ref*, %struct.ref** %4, align 8
  %99 = call i32 @free_refs(%struct.ref* %98)
  %100 = load %struct.ref**, %struct.ref*** %3, align 8
  %101 = call i32 @free(%struct.ref** %100)
  %102 = call i32 @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %103 = load i32, i32* @stdout, align 4
  %104 = call i32 @fflush(i32 %103)
  %105 = load %struct.strbuf*, %struct.strbuf** %2, align 8
  %106 = call i32 @strbuf_reset(%struct.strbuf* %105)
  br label %107

107:                                              ; preds = %97, %80
  ret void
}

declare dso_local i64 @skip_prefix(i8*, i8*, i8**) #1

declare dso_local i64 @parse_oid_hex(i8*, %struct.object_id*, i8**) #1

declare dso_local i32 @die(i32, i8*) #1

declare dso_local i32 @_(i8*) #1

declare dso_local %struct.ref* @alloc_ref(i8*) #1

declare dso_local i32 @oidcpy(i32*, %struct.object_id*) #1

declare dso_local i32 @ALLOC_GROW(%struct.ref**, i32, i32) #1

declare dso_local i32 @strbuf_reset(%struct.strbuf*) #1

declare dso_local i64 @strbuf_getline_lf(%struct.strbuf*, i32) #1

declare dso_local i64 @fetch(i32, %struct.ref**) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @free_refs(%struct.ref*) #1

declare dso_local i32 @free(%struct.ref**) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @fflush(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
