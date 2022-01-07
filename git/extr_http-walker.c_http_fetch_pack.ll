; ModuleID = '/home/carl/AnghaBench/git/extr_http-walker.c_http_fetch_pack.c'
source_filename = "/home/carl/AnghaBench/git/extr_http-walker.c_http_fetch_pack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.walker = type { i64 }
%struct.alt_base = type { i32, i32 }
%struct.packed_git = type { i8* }
%struct.slot_results = type { i64 }
%struct.http_pack_request = type { i32, %struct.TYPE_3__*, i32* }
%struct.TYPE_3__ = type { %struct.slot_results* }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"Getting pack %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c" which contains %s\0A\00", align 1
@CURLE_OK = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [30 x i8] c"Unable to get pack file %s\0A%s\00", align 1
@curl_errorstr = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [24 x i8] c"Unable to start request\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.walker*, %struct.alt_base*, i8*)* @http_fetch_pack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @http_fetch_pack(%struct.walker* %0, %struct.alt_base* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.walker*, align 8
  %6 = alloca %struct.alt_base*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.packed_git*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.slot_results, align 8
  %11 = alloca %struct.http_pack_request*, align 8
  store %struct.walker* %0, %struct.walker** %5, align 8
  store %struct.alt_base* %1, %struct.alt_base** %6, align 8
  store i8* %2, i8** %7, align 8
  %12 = load %struct.walker*, %struct.walker** %5, align 8
  %13 = load %struct.alt_base*, %struct.alt_base** %6, align 8
  %14 = call i64 @fetch_indices(%struct.walker* %12, %struct.alt_base* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %94

17:                                               ; preds = %3
  %18 = load i8*, i8** %7, align 8
  %19 = load %struct.alt_base*, %struct.alt_base** %6, align 8
  %20 = getelementptr inbounds %struct.alt_base, %struct.alt_base* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call %struct.packed_git* @find_sha1_pack(i8* %18, i32 %21)
  store %struct.packed_git* %22, %struct.packed_git** %8, align 8
  %23 = load %struct.packed_git*, %struct.packed_git** %8, align 8
  %24 = icmp ne %struct.packed_git* %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %17
  store i32 -1, i32* %4, align 4
  br label %94

26:                                               ; preds = %17
  %27 = load %struct.walker*, %struct.walker** %5, align 8
  %28 = getelementptr inbounds %struct.walker, %struct.walker* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %42

31:                                               ; preds = %26
  %32 = load i32, i32* @stderr, align 4
  %33 = load %struct.packed_git*, %struct.packed_git** %8, align 8
  %34 = getelementptr inbounds %struct.packed_git, %struct.packed_git* %33, i32 0, i32 0
  %35 = load i8*, i8** %34, align 8
  %36 = call i8* @hash_to_hex(i8* %35)
  %37 = call i32 @fprintf(i32 %32, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i8* %36)
  %38 = load i32, i32* @stderr, align 4
  %39 = load i8*, i8** %7, align 8
  %40 = call i8* @hash_to_hex(i8* %39)
  %41 = call i32 @fprintf(i32 %38, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i8* %40)
  br label %42

42:                                               ; preds = %31, %26
  %43 = load %struct.packed_git*, %struct.packed_git** %8, align 8
  %44 = load %struct.alt_base*, %struct.alt_base** %6, align 8
  %45 = getelementptr inbounds %struct.alt_base, %struct.alt_base* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call %struct.http_pack_request* @new_http_pack_request(%struct.packed_git* %43, i32 %46)
  store %struct.http_pack_request* %47, %struct.http_pack_request** %11, align 8
  %48 = load %struct.http_pack_request*, %struct.http_pack_request** %11, align 8
  %49 = icmp eq %struct.http_pack_request* %48, null
  br i1 %49, label %50, label %51

50:                                               ; preds = %42
  br label %93

51:                                               ; preds = %42
  %52 = load %struct.alt_base*, %struct.alt_base** %6, align 8
  %53 = getelementptr inbounds %struct.alt_base, %struct.alt_base* %52, i32 0, i32 0
  %54 = load %struct.http_pack_request*, %struct.http_pack_request** %11, align 8
  %55 = getelementptr inbounds %struct.http_pack_request, %struct.http_pack_request* %54, i32 0, i32 2
  store i32* %53, i32** %55, align 8
  %56 = load %struct.http_pack_request*, %struct.http_pack_request** %11, align 8
  %57 = getelementptr inbounds %struct.http_pack_request, %struct.http_pack_request* %56, i32 0, i32 1
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  store %struct.slot_results* %10, %struct.slot_results** %59, align 8
  %60 = load %struct.http_pack_request*, %struct.http_pack_request** %11, align 8
  %61 = getelementptr inbounds %struct.http_pack_request, %struct.http_pack_request* %60, i32 0, i32 1
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %61, align 8
  %63 = call i64 @start_active_slot(%struct.TYPE_3__* %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %81

65:                                               ; preds = %51
  %66 = load %struct.http_pack_request*, %struct.http_pack_request** %11, align 8
  %67 = getelementptr inbounds %struct.http_pack_request, %struct.http_pack_request* %66, i32 0, i32 1
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** %67, align 8
  %69 = call i32 @run_active_slot(%struct.TYPE_3__* %68)
  %70 = getelementptr inbounds %struct.slot_results, %struct.slot_results* %10, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @CURLE_OK, align 8
  %73 = icmp ne i64 %71, %72
  br i1 %73, label %74, label %80

74:                                               ; preds = %65
  %75 = load %struct.http_pack_request*, %struct.http_pack_request** %11, align 8
  %76 = getelementptr inbounds %struct.http_pack_request, %struct.http_pack_request* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load i8*, i8** @curl_errorstr, align 8
  %79 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %77, i8* %78)
  br label %93

80:                                               ; preds = %65
  br label %83

81:                                               ; preds = %51
  %82 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  br label %93

83:                                               ; preds = %80
  %84 = load %struct.http_pack_request*, %struct.http_pack_request** %11, align 8
  %85 = call i32 @finish_http_pack_request(%struct.http_pack_request* %84)
  store i32 %85, i32* %9, align 4
  %86 = load %struct.http_pack_request*, %struct.http_pack_request** %11, align 8
  %87 = call i32 @release_http_pack_request(%struct.http_pack_request* %86)
  %88 = load i32, i32* %9, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %83
  %91 = load i32, i32* %9, align 4
  store i32 %91, i32* %4, align 4
  br label %94

92:                                               ; preds = %83
  store i32 0, i32* %4, align 4
  br label %94

93:                                               ; preds = %81, %74, %50
  store i32 -1, i32* %4, align 4
  br label %94

94:                                               ; preds = %93, %92, %90, %25, %16
  %95 = load i32, i32* %4, align 4
  ret i32 %95
}

declare dso_local i64 @fetch_indices(%struct.walker*, %struct.alt_base*) #1

declare dso_local %struct.packed_git* @find_sha1_pack(i8*, i32) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local i8* @hash_to_hex(i8*) #1

declare dso_local %struct.http_pack_request* @new_http_pack_request(%struct.packed_git*, i32) #1

declare dso_local i64 @start_active_slot(%struct.TYPE_3__*) #1

declare dso_local i32 @run_active_slot(%struct.TYPE_3__*) #1

declare dso_local i32 @error(i8*, ...) #1

declare dso_local i32 @finish_http_pack_request(%struct.http_pack_request*) #1

declare dso_local i32 @release_http_pack_request(%struct.http_pack_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
