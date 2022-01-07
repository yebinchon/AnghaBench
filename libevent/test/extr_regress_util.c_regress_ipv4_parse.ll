; ModuleID = '/home/carl/AnghaBench/libevent/test/extr_regress_util.c_regress_ipv4_parse.c'
source_filename = "/home/carl/AnghaBench/libevent/test/extr_regress_util.c_regress_ipv4_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipv4_entry = type { i64, i64, i64 }
%struct.in_addr = type { i32 }

@ipv4_entries = common dso_local global %struct.ipv4_entry* null, align 8
@AF_INET = common dso_local global i32 0, align 4
@BAD = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [43 x i8] c"%s did not parse, but it's a good address!\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"%s parsed, but we expected an error\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"%s parsed to %lx, but we expected %lx\00", align 1
@CANONICAL = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [33 x i8] c"Tried to write out %s; got NULL.\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"Tried to write out %s; got %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @regress_ipv4_parse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @regress_ipv4_parse(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca [128 x i8], align 16
  %5 = alloca %struct.ipv4_entry*, align 8
  %6 = alloca %struct.in_addr, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  store i32 0, i32* %3, align 4
  br label %9

9:                                                ; preds = %107, %1
  %10 = load %struct.ipv4_entry*, %struct.ipv4_entry** @ipv4_entries, align 8
  %11 = load i32, i32* %3, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds %struct.ipv4_entry, %struct.ipv4_entry* %10, i64 %12
  %14 = getelementptr inbounds %struct.ipv4_entry, %struct.ipv4_entry* %13, i32 0, i32 2
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %110

17:                                               ; preds = %9
  %18 = load %struct.ipv4_entry*, %struct.ipv4_entry** @ipv4_entries, align 8
  %19 = load i32, i32* %3, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.ipv4_entry, %struct.ipv4_entry* %18, i64 %20
  store %struct.ipv4_entry* %21, %struct.ipv4_entry** %5, align 8
  %22 = load i32, i32* @AF_INET, align 4
  %23 = load %struct.ipv4_entry*, %struct.ipv4_entry** %5, align 8
  %24 = getelementptr inbounds %struct.ipv4_entry, %struct.ipv4_entry* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = call i32 @evutil_inet_pton(i32 %22, i64 %25, %struct.in_addr* %6)
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* %7, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %42

29:                                               ; preds = %17
  %30 = load %struct.ipv4_entry*, %struct.ipv4_entry** %5, align 8
  %31 = getelementptr inbounds %struct.ipv4_entry, %struct.ipv4_entry* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @BAD, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %41

35:                                               ; preds = %29
  %36 = load %struct.ipv4_entry*, %struct.ipv4_entry** %5, align 8
  %37 = getelementptr inbounds %struct.ipv4_entry, %struct.ipv4_entry* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = inttoptr i64 %38 to i8*
  %40 = call i32 @TT_FAIL(i8* %39)
  br label %41

41:                                               ; preds = %35, %29
  br label %107

42:                                               ; preds = %17
  %43 = load %struct.ipv4_entry*, %struct.ipv4_entry** %5, align 8
  %44 = getelementptr inbounds %struct.ipv4_entry, %struct.ipv4_entry* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @BAD, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %54

48:                                               ; preds = %42
  %49 = load %struct.ipv4_entry*, %struct.ipv4_entry** %5, align 8
  %50 = getelementptr inbounds %struct.ipv4_entry, %struct.ipv4_entry* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = inttoptr i64 %51 to i8*
  %53 = call i32 @TT_FAIL(i8* %52)
  br label %107

54:                                               ; preds = %42
  %55 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %6, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i64 @ntohl(i32 %56)
  %58 = load %struct.ipv4_entry*, %struct.ipv4_entry** %5, align 8
  %59 = getelementptr inbounds %struct.ipv4_entry, %struct.ipv4_entry* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %57, %60
  br i1 %61, label %62, label %74

62:                                               ; preds = %54
  %63 = load %struct.ipv4_entry*, %struct.ipv4_entry** %5, align 8
  %64 = getelementptr inbounds %struct.ipv4_entry, %struct.ipv4_entry* %63, i32 0, i32 2
  %65 = load i64, i64* %64, align 8
  %66 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %6, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i64 @ntohl(i32 %67)
  %69 = load %struct.ipv4_entry*, %struct.ipv4_entry** %5, align 8
  %70 = getelementptr inbounds %struct.ipv4_entry, %struct.ipv4_entry* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = inttoptr i64 %71 to i8*
  %73 = call i32 @TT_FAIL(i8* %72)
  br label %107

74:                                               ; preds = %54
  %75 = load %struct.ipv4_entry*, %struct.ipv4_entry** %5, align 8
  %76 = getelementptr inbounds %struct.ipv4_entry, %struct.ipv4_entry* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @CANONICAL, align 8
  %79 = icmp eq i64 %77, %78
  br i1 %79, label %80, label %106

80:                                               ; preds = %74
  %81 = load i32, i32* @AF_INET, align 4
  %82 = getelementptr inbounds [128 x i8], [128 x i8]* %4, i64 0, i64 0
  %83 = call i8* @evutil_inet_ntop(i32 %81, %struct.in_addr* %6, i8* %82, i32 128)
  store i8* %83, i8** %8, align 8
  %84 = load i8*, i8** %8, align 8
  %85 = icmp ne i8* %84, null
  br i1 %85, label %92, label %86

86:                                               ; preds = %80
  %87 = load %struct.ipv4_entry*, %struct.ipv4_entry** %5, align 8
  %88 = getelementptr inbounds %struct.ipv4_entry, %struct.ipv4_entry* %87, i32 0, i32 2
  %89 = load i64, i64* %88, align 8
  %90 = inttoptr i64 %89 to i8*
  %91 = call i32 @TT_FAIL(i8* %90)
  br label %107

92:                                               ; preds = %80
  %93 = getelementptr inbounds [128 x i8], [128 x i8]* %4, i64 0, i64 0
  %94 = load %struct.ipv4_entry*, %struct.ipv4_entry** %5, align 8
  %95 = getelementptr inbounds %struct.ipv4_entry, %struct.ipv4_entry* %94, i32 0, i32 2
  %96 = load i64, i64* %95, align 8
  %97 = call i64 @strcmp(i8* %93, i64 %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %105

99:                                               ; preds = %92
  %100 = load %struct.ipv4_entry*, %struct.ipv4_entry** %5, align 8
  %101 = getelementptr inbounds %struct.ipv4_entry, %struct.ipv4_entry* %100, i32 0, i32 2
  %102 = load i64, i64* %101, align 8
  %103 = getelementptr inbounds [128 x i8], [128 x i8]* %4, i64 0, i64 0
  %104 = call i32 @TT_FAIL(i8* %103)
  br label %107

105:                                              ; preds = %92
  br label %106

106:                                              ; preds = %105, %74
  br label %107

107:                                              ; preds = %106, %99, %86, %62, %48, %41
  %108 = load i32, i32* %3, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %3, align 4
  br label %9

110:                                              ; preds = %9
  ret void
}

declare dso_local i32 @evutil_inet_pton(i32, i64, %struct.in_addr*) #1

declare dso_local i32 @TT_FAIL(i8*) #1

declare dso_local i64 @ntohl(i32) #1

declare dso_local i8* @evutil_inet_ntop(i32, %struct.in_addr*, i8*, i32) #1

declare dso_local i64 @strcmp(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
