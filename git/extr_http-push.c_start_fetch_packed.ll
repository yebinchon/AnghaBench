; ModuleID = '/home/carl/AnghaBench/git/extr_http-push.c_start_fetch_packed.c'
source_filename = "/home/carl/AnghaBench/git/extr_http-push.c_start_fetch_packed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.transfer_request = type { i64, %struct.http_pack_request*, %struct.TYPE_6__*, %struct.transfer_request*, i32, %struct.TYPE_5__* }
%struct.http_pack_request = type { %struct.TYPE_6__*, i32, i32* }
%struct.TYPE_6__ = type { %struct.transfer_request*, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i64, i32, i32 }
%struct.packed_git = type { i32 }

@request_queue_head = common dso_local global %struct.transfer_request* null, align 8
@repo = common dso_local global %struct.TYPE_7__* null, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [65 x i8] c"Unable to fetch %s, will not be able to update server info refs\0A\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"Fetching pack %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c" which contains %s\0A\00", align 1
@RUN_FETCH_PACKED = common dso_local global i64 0, align 8
@process_response = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [29 x i8] c"Unable to start GET request\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.transfer_request*)* @start_fetch_packed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @start_fetch_packed(%struct.transfer_request* %0) #0 {
  %2 = alloca %struct.transfer_request*, align 8
  %3 = alloca %struct.packed_git*, align 8
  %4 = alloca %struct.transfer_request*, align 8
  %5 = alloca %struct.http_pack_request*, align 8
  store %struct.transfer_request* %0, %struct.transfer_request** %2, align 8
  %6 = load %struct.transfer_request*, %struct.transfer_request** @request_queue_head, align 8
  store %struct.transfer_request* %6, %struct.transfer_request** %4, align 8
  %7 = load %struct.transfer_request*, %struct.transfer_request** %2, align 8
  %8 = getelementptr inbounds %struct.transfer_request, %struct.transfer_request* %7, i32 0, i32 5
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** @repo, align 8
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = call %struct.packed_git* @find_sha1_pack(i32 %12, i32 %15)
  store %struct.packed_git* %16, %struct.packed_git** %3, align 8
  %17 = load %struct.packed_git*, %struct.packed_git** %3, align 8
  %18 = icmp ne %struct.packed_git* %17, null
  br i1 %18, label %31, label %19

19:                                               ; preds = %1
  %20 = load i32, i32* @stderr, align 4
  %21 = load %struct.transfer_request*, %struct.transfer_request** %2, align 8
  %22 = getelementptr inbounds %struct.transfer_request, %struct.transfer_request* %21, i32 0, i32 5
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = call i8* @oid_to_hex(%struct.TYPE_8__* %24)
  %26 = call i32 (i32, i8*, ...) @fprintf(i32 %20, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str, i64 0, i64 0), i8* %25)
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** @repo, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  store i64 0, i64* %28, align 8
  %29 = load %struct.transfer_request*, %struct.transfer_request** %2, align 8
  %30 = call i32 @release_request(%struct.transfer_request* %29)
  br label %123

31:                                               ; preds = %1
  %32 = load i32, i32* @stderr, align 4
  %33 = load %struct.packed_git*, %struct.packed_git** %3, align 8
  %34 = getelementptr inbounds %struct.packed_git, %struct.packed_git* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i8* @hash_to_hex(i32 %35)
  %37 = call i32 (i32, i8*, ...) @fprintf(i32 %32, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i8* %36)
  %38 = load i32, i32* @stderr, align 4
  %39 = load %struct.transfer_request*, %struct.transfer_request** %2, align 8
  %40 = getelementptr inbounds %struct.transfer_request, %struct.transfer_request* %39, i32 0, i32 5
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = call i8* @oid_to_hex(%struct.TYPE_8__* %42)
  %44 = call i32 (i32, i8*, ...) @fprintf(i32 %38, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i8* %43)
  %45 = load %struct.packed_git*, %struct.packed_git** %3, align 8
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** @repo, align 8
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = call %struct.http_pack_request* @new_http_pack_request(%struct.packed_git* %45, i32 %48)
  store %struct.http_pack_request* %49, %struct.http_pack_request** %5, align 8
  %50 = load %struct.http_pack_request*, %struct.http_pack_request** %5, align 8
  %51 = icmp eq %struct.http_pack_request* %50, null
  br i1 %51, label %52, label %55

52:                                               ; preds = %31
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** @repo, align 8
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 0
  store i64 0, i64* %54, align 8
  br label %123

55:                                               ; preds = %31
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** @repo, align 8
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 1
  %58 = load %struct.http_pack_request*, %struct.http_pack_request** %5, align 8
  %59 = getelementptr inbounds %struct.http_pack_request, %struct.http_pack_request* %58, i32 0, i32 2
  store i32* %57, i32** %59, align 8
  br label %60

60:                                               ; preds = %83, %55
  %61 = load %struct.transfer_request*, %struct.transfer_request** %4, align 8
  %62 = icmp ne %struct.transfer_request* %61, null
  br i1 %62, label %63, label %87

63:                                               ; preds = %60
  %64 = load %struct.transfer_request*, %struct.transfer_request** %4, align 8
  %65 = getelementptr inbounds %struct.transfer_request, %struct.transfer_request* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @RUN_FETCH_PACKED, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %83

69:                                               ; preds = %63
  %70 = load %struct.transfer_request*, %struct.transfer_request** %4, align 8
  %71 = getelementptr inbounds %struct.transfer_request, %struct.transfer_request* %70, i32 0, i32 4
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.http_pack_request*, %struct.http_pack_request** %5, align 8
  %74 = getelementptr inbounds %struct.http_pack_request, %struct.http_pack_request* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = call i32 @strcmp(i32 %72, i32 %75)
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %83, label %78

78:                                               ; preds = %69
  %79 = load %struct.http_pack_request*, %struct.http_pack_request** %5, align 8
  %80 = call i32 @release_http_pack_request(%struct.http_pack_request* %79)
  %81 = load %struct.transfer_request*, %struct.transfer_request** %2, align 8
  %82 = call i32 @release_request(%struct.transfer_request* %81)
  br label %123

83:                                               ; preds = %69, %63
  %84 = load %struct.transfer_request*, %struct.transfer_request** %4, align 8
  %85 = getelementptr inbounds %struct.transfer_request, %struct.transfer_request* %84, i32 0, i32 3
  %86 = load %struct.transfer_request*, %struct.transfer_request** %85, align 8
  store %struct.transfer_request* %86, %struct.transfer_request** %4, align 8
  br label %60

87:                                               ; preds = %60
  %88 = load i32, i32* @process_response, align 4
  %89 = load %struct.http_pack_request*, %struct.http_pack_request** %5, align 8
  %90 = getelementptr inbounds %struct.http_pack_request, %struct.http_pack_request* %89, i32 0, i32 0
  %91 = load %struct.TYPE_6__*, %struct.TYPE_6__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 1
  store i32 %88, i32* %92, align 8
  %93 = load %struct.transfer_request*, %struct.transfer_request** %2, align 8
  %94 = load %struct.http_pack_request*, %struct.http_pack_request** %5, align 8
  %95 = getelementptr inbounds %struct.http_pack_request, %struct.http_pack_request* %94, i32 0, i32 0
  %96 = load %struct.TYPE_6__*, %struct.TYPE_6__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 0
  store %struct.transfer_request* %93, %struct.transfer_request** %97, align 8
  %98 = load %struct.http_pack_request*, %struct.http_pack_request** %5, align 8
  %99 = getelementptr inbounds %struct.http_pack_request, %struct.http_pack_request* %98, i32 0, i32 0
  %100 = load %struct.TYPE_6__*, %struct.TYPE_6__** %99, align 8
  %101 = load %struct.transfer_request*, %struct.transfer_request** %2, align 8
  %102 = getelementptr inbounds %struct.transfer_request, %struct.transfer_request* %101, i32 0, i32 2
  store %struct.TYPE_6__* %100, %struct.TYPE_6__** %102, align 8
  %103 = load %struct.http_pack_request*, %struct.http_pack_request** %5, align 8
  %104 = load %struct.transfer_request*, %struct.transfer_request** %2, align 8
  %105 = getelementptr inbounds %struct.transfer_request, %struct.transfer_request* %104, i32 0, i32 1
  store %struct.http_pack_request* %103, %struct.http_pack_request** %105, align 8
  %106 = load i64, i64* @RUN_FETCH_PACKED, align 8
  %107 = load %struct.transfer_request*, %struct.transfer_request** %2, align 8
  %108 = getelementptr inbounds %struct.transfer_request, %struct.transfer_request* %107, i32 0, i32 0
  store i64 %106, i64* %108, align 8
  %109 = load %struct.http_pack_request*, %struct.http_pack_request** %5, align 8
  %110 = getelementptr inbounds %struct.http_pack_request, %struct.http_pack_request* %109, i32 0, i32 0
  %111 = load %struct.TYPE_6__*, %struct.TYPE_6__** %110, align 8
  %112 = call i32 @start_active_slot(%struct.TYPE_6__* %111)
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %123, label %114

114:                                              ; preds = %87
  %115 = load i32, i32* @stderr, align 4
  %116 = call i32 (i32, i8*, ...) @fprintf(i32 %115, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  %117 = load %struct.http_pack_request*, %struct.http_pack_request** %5, align 8
  %118 = call i32 @release_http_pack_request(%struct.http_pack_request* %117)
  %119 = load %struct.TYPE_7__*, %struct.TYPE_7__** @repo, align 8
  %120 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %119, i32 0, i32 0
  store i64 0, i64* %120, align 8
  %121 = load %struct.transfer_request*, %struct.transfer_request** %2, align 8
  %122 = call i32 @release_request(%struct.transfer_request* %121)
  br label %123

123:                                              ; preds = %19, %52, %78, %114, %87
  ret void
}

declare dso_local %struct.packed_git* @find_sha1_pack(i32, i32) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i8* @oid_to_hex(%struct.TYPE_8__*) #1

declare dso_local i32 @release_request(%struct.transfer_request*) #1

declare dso_local i8* @hash_to_hex(i32) #1

declare dso_local %struct.http_pack_request* @new_http_pack_request(%struct.packed_git*, i32) #1

declare dso_local i32 @strcmp(i32, i32) #1

declare dso_local i32 @release_http_pack_request(%struct.http_pack_request*) #1

declare dso_local i32 @start_active_slot(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
